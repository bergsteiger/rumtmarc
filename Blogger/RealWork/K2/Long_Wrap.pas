unit Long_Wrap;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/K2/Long_Wrap.pas"
// Начат: 07.09.1998 12:46
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Wrapper::Class>> Shared Delphi::K2::Standard::WLong
//
// WLong
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\K2\k2Define.inc}

interface

uses
  k2Base,
  k2Long_Const,
  k2Interfaces
  ;

type
 WLong = class(Wk2Atom)
  {* WLong }
 protected
 // overridden protected methods
   function AsString(const A: Ik2Tag): AnsiString; override;
   function StrToTag(const aValue: AnsiString): Ik2Tag; override;
   function New(aType: Tk2Type): Ik2Tag; override;
     {* создает атом данного типа. }
   function ObjToTag(aValue: TObject): Ik2Tag; override;
   function AsLong(const A: Ik2Tag): Integer; override;
   function IntToTag(aValue: Integer): Ik2Tag; override;
 end;//WLong

implementation

uses
  SysUtils,
  l3PrimString,
  l3Const,
  k2AtomicTag
  ;

// start class WLong

function WLong.AsString(const A: Ik2Tag): AnsiString;
//#UC START# *484CCE970073_4849423C0299_var*
//#UC END# *484CCE970073_4849423C0299_var*
begin
//#UC START# *484CCE970073_4849423C0299_impl*
 if A.IsNull then
  Result := ''
 else
  Result := IntToStr(A.AsLong);
//#UC END# *484CCE970073_4849423C0299_impl*
end;//WLong.AsString

function WLong.StrToTag(const aValue: AnsiString): Ik2Tag;
//#UC START# *484CCEBC00DC_4849423C0299_var*
//#UC END# *484CCEBC00DC_4849423C0299_var*
begin
//#UC START# *484CCEBC00DC_4849423C0299_impl*
 Result := IntToTag(StrToInt(aValue));
//#UC END# *484CCEBC00DC_4849423C0299_impl*
end;//WLong.StrToTag

function WLong.New(aType: Tk2Type): Ik2Tag;
//#UC START# *484CEAAF03C5_4849423C0299_var*
//#UC END# *484CEAAF03C5_4849423C0299_var*
begin
//#UC START# *484CEAAF03C5_4849423C0299_impl*
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(Tk2AtomicTag.Create(0, aType)));
//#UC END# *484CEAAF03C5_4849423C0299_impl*
end;//WLong.New

function WLong.ObjToTag(aValue: TObject): Ik2Tag;
//#UC START# *484CEAD301AE_4849423C0299_var*
//#UC END# *484CEAD301AE_4849423C0299_var*
begin
//#UC START# *484CEAD301AE_4849423C0299_impl*
 if (aValue = nil) then
  Result := k2NullTag
 else
 if (aValue Is Tl3PrimString) then
  Result := AtomType.StrToTag(Tl3PrimString(aValue).AsString)
 else
  REsult := inherited ObjToTag(aValue);
//#UC END# *484CEAD301AE_4849423C0299_impl*
end;//WLong.ObjToTag

function WLong.AsLong(const A: Ik2Tag): Integer;
//#UC START# *484D314401B6_4849423C0299_var*
//#UC END# *484D314401B6_4849423C0299_var*
begin
//#UC START# *484D314401B6_4849423C0299_impl*
 if A.IsNull then
 begin
  ConvertError(l3NULLStr, '<Value>');
  Result := 0;
 end
 else
  Result := A.IntRef; 
//#UC END# *484D314401B6_4849423C0299_impl*
end;//WLong.AsLong

function WLong.IntToTag(aValue: Integer): Ik2Tag;
//#UC START# *484D31710018_4849423C0299_var*
//#UC END# *484D31710018_4849423C0299_var*
begin
//#UC START# *484D31710018_4849423C0299_impl*
 Result := AtomType.TagFromIntRef(aValue);
//#UC END# *484D31710018_4849423C0299_impl*
end;//WLong.IntToTag

end.