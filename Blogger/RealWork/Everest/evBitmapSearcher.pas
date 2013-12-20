unit evBitmapSearcher;

{ $Id: evBitmapSearcher.pas,v 1.1 2012/02/27 09:32:29 fireton Exp $ }

// $Log: evBitmapSearcher.pas,v $
// Revision 1.1  2012/02/27 09:32:29  fireton
// - searcher для изображений в тексте
//

interface
uses
 l3Types,
 l3CustomString,

 evTypes,
 evSearch,

 nevBase,
 nevTools,

 k2Interfaces;

type
 IevTagSearcher = interface(InevBase)
 ['{A8261BE3-A8B9-466B-8D2C-839DF0E170FF}']
  function pm_GetFoundTag: Ik2Tag;
  property FoundTag: Ik2Tag read pm_GetFoundTag;
 end;

 TevBitmapSearcher = class(TevStyleSearcher, IevTagSearcher)
 private
  f_FoundTag: Ik2Tag;
 protected
  function DoCheckBitmap(aBitmapPara: Ik2Tag): Boolean; virtual;
  function pm_GetFoundTag: Ik2Tag;
 public
  class function Make(anOptions: TevSearchOptionSet = []; aNext: IevSearcher = nil): IevSearcher; reintroduce;
  function DoCheckText(const aPara : Ik2Tag;
                       aText       : Tl3CustomString;
                       const aSel  : TevPair;
                       out theSel : TevPair): Bool; override;

 end;

implementation
uses
 evdTypes,
 evdStyles,
 BitmapPara_Const;

function TevBitmapSearcher.DoCheckBitmap(aBitmapPara: Ik2Tag): Boolean;
begin
 // базовый класс ищет вообще все картинки
 Result := True;
end;

class function TevBitmapSearcher.Make(anOptions: TevSearchOptionSet = []; aNext: IevSearcher = nil): IevSearcher;
begin
 Result := inherited Make(ev_saObject, ev_slObjects, ev_spSegments, anOptions, aNext);
end;

function TevBitmapSearcher.DoCheckText(const aPara : Ik2Tag;
                                       aText       : Tl3CustomString;
                                       const aSel  : TevPair;
                                        out theSel : TevPair): Bool;
begin
 Result := inherited DoCheckText(aPara, aText, aSel, theSel);
 if Result then
 begin
  Result := (f_CurrentSeg <> nil) and
            f_CurrentSeg.Child[0].InheritsFrom(k2_idBitmapPara) and
            DoCheckBitmap(f_CurrentSeg.Child[0]);
  if Result then
   f_FoundTag := f_CurrentSeg.Child[0];
 end;
end;

function TevBitmapSearcher.pm_GetFoundTag: Ik2Tag;
begin
 Result := f_FoundTag;
end;


end.