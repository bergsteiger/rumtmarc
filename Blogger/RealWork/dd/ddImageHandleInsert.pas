unit ddImageHandleInsert;

{ $Id: ddImageHandleInsert.pas,v 1.1 2012/02/27 09:45:48 fireton Exp $ }

// $Log: ddImageHandleInsert.pas,v $
// Revision 1.1  2012/02/27 09:45:48  fireton
// - модуль для подстановки ExternalHandle картинкам в тексте
//

interface
uses
 Classes,

 l3Types,

 k2Types,
 k2Interfaces,
 k2Base,
 k2TagGen,

 evdBufferedFilter;

type
 TddImageHandleInsertFilter = class(TevdBufferedFilter)
 private
  f_HasExternalHandle: Boolean;
  f_OnError: TNotifyEvent;
  procedure DoOnError;
 protected
  procedure DoAddAtomEx(AtomIndex: Long; const Value: Tk2Variant); override;
  procedure DoFlushBuffer(const aLeaf: Ik2Tag; aTagId: Integer; aNeedCloseBracket : Boolean); override;
  function NeedStartBuffering(aID : Integer): Boolean; override;
 public
  class function SetTo(var theGenerator: Tk2TagGenerator; aOnError: TNotifyEvent = nil): Pointer; overload;
  property OnError: TNotifyEvent read f_OnError write f_OnError;
 end;

 function CheckExternalHandlesInBitmapParagraphs(const aDocRoot: Ik2Tag): Boolean;

implementation
uses       
 SysUtils,

 l3Base,

 BitmapPara_Const,

 k2Tags,

 evTypes,
 evSearch,
 evBitmapSearcher,

 nevTools,
 nevConfirm,

 DT_Const,
 DT_Serv;

const
 c_SROptions = [ev_soFind, ev_soGlobal, ev_soConfirm, ev_soReplaceAll, ev_soNoException];

type
 TMissingExternalHandleInBitmapSearcher = class(TevBitmapSearcher)
 protected
  function DoCheckBitmap(aBitmapPara: Ik2Tag): Boolean; override;
 end;

 TNewHandleForBitmapReplacer = class(TevBaseReplacer)
 public
  class function Make: IevReplacer; reintroduce;
  function ReplaceFunc(const aView : InevView; const Container : InevOp; const aBlock : InevRange): Bool; override;
 end;

function CheckExternalHandlesInBitmapParagraphs(const aDocRoot: Ik2Tag): Boolean;
var
 l_Doc: InevObject;
 l_Confirm: InevConfirm;
 l_Block   : InevRange;
 l_Searcher: IevSearcher;
 l_Replacer: IevReplacer;
begin
 if (aDocRoot <> nil) and aDocRoot.QT(InevObject, l_Doc) then
 begin
  l_Block := l_Doc.Range;
  l_Confirm := TnevConfirm.Make;
  l_Searcher := TMissingExternalHandleInBitmapSearcher.Make;
  l_Searcher.Options :=  c_SROptions;
  l_Replacer := TNewHandleForBitmapReplacer.Make;
  l_Replacer.Options := c_SROptions;
  l_Replacer.Searcher := l_Searcher;
  l_Block.SearchReplace(l_Searcher, l_Replacer, l_Confirm, nil, nil, False);
 end;
end;

procedure TddImageHandleInsertFilter.DoAddAtomEx(AtomIndex: Long; const Value: Tk2Variant);
begin
 if CurrentType.InheritsFrom(k2_idBitmapPara) and (AtomIndex = k2_tiExternalHandle) and
    (Value.AsInteger > 0) then
  f_HasExternalHandle := True;
 inherited;   
end;

procedure TddImageHandleInsertFilter.DoFlushBuffer(const aLeaf: Ik2Tag; aTagId: Integer; aNeedCloseBracket : Boolean);
var
 l_Handle: LongWord;
begin
 if not f_HasExternalHandle then
 begin
  if GlobalHtServer.CheckFreeResource(CurrentFamily, ftnObjIDExternal) then
  begin
   try
    l_Handle := GlobalHtServer.FreeTbl[CurrentFamily].GetFree(ftnImgHandle);
    aLeaf.IntW[k2_tiExternalHandle, Context] := l_Handle;
   except
    DoOnError;
   end;
  end
  else
   DoOnError;
 end;
 inherited;
end;

procedure TddImageHandleInsertFilter.DoOnError;
begin
 if Assigned(f_OnError) then
  f_OnError(Self);
end;

function TddImageHandleInsertFilter.NeedStartBuffering(aID : Integer): Boolean;
begin
 Result := aID = -k2_idBitmapPara;
 if Result then
  f_HasExternalHandle := False;
end;

class function TddImageHandleInsertFilter.SetTo(var theGenerator: Tk2TagGenerator; aOnError: TNotifyEvent = nil):
    Pointer;
  {-}
var
 l_Filter : TddImageHandleInsertFilter;
begin
 l_Filter := Create;
 try
  l_Filter.Generator := theGenerator;
  l_Filter.OnError:= aOnError;
  l3Set(theGenerator, l_Filter);
 finally
  l3Free(l_Filter);
 end;//try..finally
 Result := theGenerator;
end;

function TMissingExternalHandleInBitmapSearcher.DoCheckBitmap(aBitmapPara: Ik2Tag): Boolean;
begin
 Result :=  (not aBitmapPara.Attr[k2_tiExternalHandle].IsValid) or (aBitmapPara.IntA[k2_tiExternalHandle] <= 0);
end;

class function TNewHandleForBitmapReplacer.Make: IevReplacer;
begin
 Result := inherited Make('');
end;

function TNewHandleForBitmapReplacer.ReplaceFunc(const aView : InevView; const Container : InevOp; const aBlock :
    InevRange): Bool;
var
 l_Handle: LongWord;
 l_TS: IevTagSearcher;
begin
 Assert(Supports(Searcher, IevTagSearcher, l_TS), 'TNewHandleForBitmapReplacer needs IevTagSearcher!');
 l_Handle := GlobalHtServer.FreeTbl[CurrentFamily].GetFree(ftnImgHandle);
 l_TS.FoundTag.IntW[k2_tiExternalHandle, Container] := l_Handle;
 Result := True;
end;

end.