unit evStyle_Wrap;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "EVD"
// Модуль: "w:/common/components/rtl/Garant/EVD/evStyle_Wrap.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Wrapper::Class>> Shared Delphi::EVD::Standard::WevStyle
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Interfaces,
  evdStyles,
  k2DictRec_Wrap,
  Style_Const,
  k2Prim
  ;

type
 TevStandardStylesArray = array [TevStandardCachedStyle] of Ik2Tag;

 WevStyle = class(Wk2DictRec)
 private
 // private fields
   f_Styles : TevStandardStylesArray;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   function AsString(const A: Ik2Tag): AnsiString; override;
   function AsLong(const A: Ik2Tag): Integer; override;
   function IntToTag(aValue: Integer): Ik2Tag; override;
   procedure DoFire(const anEvent: Tk2Event;
    const anOp: Ik2Op); override;
   function AddItemIfNotExists: Boolean; override;
 end;//WevStyle

implementation

uses
  l3Dict,
  k2Base,
  k2Tags
  ;

// start class WevStyle

procedure WevStyle.Cleanup;
//#UC START# *479731C50290_484D30E40278_var*
//#UC END# *479731C50290_484D30E40278_var*
begin
//#UC START# *479731C50290_484D30E40278_impl*
 Finalize(f_Styles);
 inherited;
//#UC END# *479731C50290_484D30E40278_impl*
end;//WevStyle.Cleanup

function WevStyle.AsString(const A: Ik2Tag): AnsiString;
//#UC START# *484CCE970073_484D30E40278_var*
var
 VT : Tl3Dictionary;
 ST : Ik2Tag;
//#UC END# *484CCE970073_484D30E40278_var*
begin
//#UC START# *484CCE970073_484D30E40278_impl*
 if A.IsNull then
 begin
  VT := AtomType.ValueTable;
  if (VT <> nil) then
  begin
   ST := Tk2TypeTable(AtomType.TypeTable).ObjToTag(VT.Default);
   //ST := k2Tag(VT.Default);
   Result := ST.Attr[k2_tiName].AsString;
  end;//VT <> nil
 end//A.IsNull
 else
  Result := inherited AsString(A);
//#UC END# *484CCE970073_484D30E40278_impl*
end;//WevStyle.AsString

function WevStyle.AsLong(const A: Ik2Tag): Integer;
//#UC START# *484D314401B6_484D30E40278_var*
//#UC END# *484D314401B6_484D30E40278_var*
begin
//#UC START# *484D314401B6_484D30E40278_impl*
 if A.IsNull then
  Result := ev_saTxtNormalANSI
 else
  Result := inherited AsLong(A);
//#UC END# *484D314401B6_484D30E40278_impl*
end;//WevStyle.AsLong

function WevStyle.IntToTag(aValue: Integer): Ik2Tag;
//#UC START# *484D31710018_484D30E40278_var*
//#UC END# *484D31710018_484D30E40278_var*
begin
//#UC START# *484D31710018_484D30E40278_impl*
(* if (aValue = ev_saTxtNormalANSI) then
  Result := k2NullTag
 else*)
 // - это закомметрировал Люлин А.В. ибо - http://mdp.garant.ru/pages/viewpage.action?pageId=171969944
 begin
  if (aValue >= Low(TevStandardCachedStyle)) AND
     (aValue <= High(TevStandardCachedStyle)) then
  begin
   Result := f_Styles[aValue];
   if (Result = nil) then
   begin
    Result := inherited IntToTag(aValue);
    f_Styles[aValue] := Result;
   end;//Result = nil
  end//aValue >= Low(TevStandardCachedStyle)..
  else
   Result := inherited IntToTag(aValue);
 end;//aValue = ev_saTxtNormalANSI
//#UC END# *484D31710018_484D30E40278_impl*
end;//WevStyle.IntToTag

procedure WevStyle.DoFire(const anEvent: Tk2Event;
  const anOp: Ik2Op);
//#UC START# *484D31850186_484D30E40278_var*
var
 l_Index : Integer;
 l_VT : Tl3Dictionary;
//#UC END# *484D31850186_484D30E40278_var*
begin
//#UC START# *484D31850186_484D30E40278_impl*
 inherited;
 if (anEvent.ID = k2_eidTypeTableWillBeDestroyed) then
 begin
  l_VT := AtomType.ValueTable;
  if (l_VT <> nil) then
  for l_Index := 0 to Pred(l_VT.Count) do
   with Tk2TypeTable(AtomType.TypeTable).ObjToTag(l_VT.Items[l_Index]) do
   begin
    Attr[k2_tiHeader] := nil;
    Attr[k2_tiFooter] := nil;
   end;//with l_VT.Items[l_Index]
  Finalize(f_Styles);
 end;//anEvent.ID = k2_eidTypeTableWillBeDestroyed
//#UC END# *484D31850186_484D30E40278_impl*
end;//WevStyle.DoFire

function WevStyle.AddItemIfNotExists: Boolean;
//#UC START# *4E96F8CD0223_484D30E40278_var*
//#UC END# *4E96F8CD0223_484D30E40278_var*
begin
//#UC START# *4E96F8CD0223_484D30E40278_impl*
 Result := true;
//#UC END# *4E96F8CD0223_484D30E40278_impl*
end;//WevStyle.AddItemIfNotExists

end.