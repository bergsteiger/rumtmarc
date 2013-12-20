unit evSbLHandle_Wrap;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "EVD"
// Модуль: "w:/common/components/rtl/Garant/EVD/evSbLHandle_Wrap.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Wrapper::Class>> Shared Delphi::EVD::Standard::WevSbLHandle
//
// Обёртка слоя меток.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  evdTypes,
  Long_Wrap,
  SbLHandle_Const,
  k2Interfaces
  ;

type
 WevSbLHandle = class(WLong)
  {* Обёртка слоя меток. }
 protected
 // overridden protected methods
   function AsString(const A: Ik2Tag): AnsiString; override;
   function StrToTag(const aValue: AnsiString): Ik2Tag; override;
 end;//WevSbLHandle

implementation

uses
  k2Base,
  SysUtils
  ;

type
  TevSubLayerPrim = ev_sbtSub..ev_sbtMark;
  TevSubLayerNames = array [TevSubLayerPrim] of AnsiString;
const
   { SubLayerNames }
  SubLayerNames : TevSubLayerNames = ('Sub', 'Marker', 'Bookmark', 'Mark');

// start class WevSbLHandle

function WevSbLHandle.AsString(const A: Ik2Tag): AnsiString;
//#UC START# *484CCE970073_484CE0E8017C_var*
var
 L : Integer;
//#UC END# *484CCE970073_484CE0E8017C_var*
begin
//#UC START# *484CCE970073_484CE0E8017C_impl*
 if A.IsNull then
  Result := EmptyStr
 else
 begin
  L := A.AsLong;
  if (L >= Low(SubLayerNames)) AND (L <= High(SubLayerNames)) then
   Result := SubLayerNames[L]
  else
   Result := inherited AsString(A);
 end;//A.IsNull
//#UC END# *484CCE970073_484CE0E8017C_impl*
end;//WevSbLHandle.AsString

function WevSbLHandle.StrToTag(const aValue: AnsiString): Ik2Tag;
//#UC START# *484CCEBC00DC_484CE0E8017C_var*
var
 i : Integer;
//#UC END# *484CCEBC00DC_484CE0E8017C_var*
begin
//#UC START# *484CCEBC00DC_484CE0E8017C_impl*
 if (aValue = EmptyStr) then
  Result := k2NullTag
 else
 begin
  for i := Low(SubLayerNames) to High(SubLayerNames) do
  begin
   if (SubLayerNames[i] = aValue) then
   begin
    Result := AtomType.IntToTag(i);
    Exit;
   end;{SubLayerNames[i] = Value}
  end;{for i}
  Result := inherited StrToTag(aValue);
 end;//aValue = EmptyStr
//#UC END# *484CCEBC00DC_484CE0E8017C_impl*
end;//WevSbLHandle.StrToTag

end.