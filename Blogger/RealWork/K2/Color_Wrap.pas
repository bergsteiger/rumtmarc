unit Color_Wrap;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/K2/Color_Wrap.pas"
// Начат: 07.09.1998 12:46
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Wrapper::Class>> Shared Delphi::K2::Standard::WColor
//
// WColor
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\K2\k2Define.inc}

interface

uses
  k2Color_Const,
  Long_Wrap,
  k2Interfaces
  ;

type
 WColor = class(WLong)
  {* WColor }
 protected
 // overridden protected methods
   function AsString(const A: Ik2Tag): AnsiString; override;
   function StrToTag(const aValue: AnsiString): Ik2Tag; override;
 end;//WColor

implementation

uses
  Graphics,
  k2Base,
  SysUtils
  ;

// start class WColor

function WColor.AsString(const A: Ik2Tag): AnsiString;
//#UC START# *484CCE970073_4849457201A4_var*
//#UC END# *484CCE970073_4849457201A4_var*
begin
//#UC START# *484CCE970073_4849457201A4_impl*
 if A.IsNull then
  Result := ''
 else
  Result := ColorToString(A.AsLong);
//#UC END# *484CCE970073_4849457201A4_impl*
end;//WColor.AsString

function WColor.StrToTag(const aValue: AnsiString): Ik2Tag;
//#UC START# *484CCEBC00DC_4849457201A4_var*

 function StringToColor(const S: string): TColor;
 begin//StringToColor
  if not IdentToColor(S, Longint(Result)) then
   if not IdentToColor('cl' + S, Longint(Result)) then
    Result := TColor(StrToInt(S));
 end;//StringToColor

//#UC END# *484CCEBC00DC_4849457201A4_var*
begin
//#UC START# *484CCEBC00DC_4849457201A4_impl*
 if (aValue = '') then
  Result := k2NullTag
 else
  Result := AtomType.IntToTag(StringToColor(aValue));
//#UC END# *484CCEBC00DC_4849457201A4_impl*
end;//WColor.StrToTag

end.