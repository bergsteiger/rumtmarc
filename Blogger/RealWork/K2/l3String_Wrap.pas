unit l3String_Wrap;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/K2/l3String_Wrap.pas"
// Начат: 07.09.1998 12:46
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Wrapper::Class>> Shared Delphi::K2::Standard::Wl3String
//
// Wl3String
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\K2\k2Define.inc}

interface

uses
  k2String_Const,
  Persistent_Wrap,
  k2Interfaces,
  k2Base
  ;

type
 Wl3String = class(WPersistent)
  {* Wl3String }
 protected
 // overridden protected methods
   function AsString(const A: Ik2Tag): AnsiString; override;
   function StrToTag(const aValue: AnsiString): Ik2Tag; override;
   function New(aType: Tk2Type): Ik2Tag; override;
     {* создает атом данного типа. }
   function ObjToTag(aValue: TObject): Ik2Tag; override;
   function IntToTag(aValue: Integer): Ik2Tag; override;
 end;//Wl3String

implementation

uses
  l3_String,
  l3CustomString,
  SysUtils
  ;

// start class Wl3String

function Wl3String.AsString(const A: Ik2Tag): AnsiString;
//#UC START# *484CCE970073_484945C0000E_var*
//#UC END# *484CCE970073_484945C0000E_var*
begin
//#UC START# *484CCE970073_484945C0000E_impl*
 if A.IsNull then
  Result := ''
 else
  Result := Tl3CustomString(A.AsObject).AsString;
//#UC END# *484CCE970073_484945C0000E_impl*
end;//Wl3String.AsString

function Wl3String.StrToTag(const aValue: AnsiString): Ik2Tag;
//#UC START# *484CCEBC00DC_484945C0000E_var*
var
 S : Ik2Tag;
//#UC END# *484CCEBC00DC_484945C0000E_var*
begin
//#UC START# *484CCEBC00DC_484945C0000E_impl*
 if (aValue = '') then
  Result := k2NullTag
 else
 begin
  S := AtomType.MakeTag;
  try
   Result := S;
   Tl3CustomString(Result.AsObject).AsString := aValue;
  finally
   S := nil;
  end;//try..finally
 end;//aValue = ''
//#UC END# *484CCEBC00DC_484945C0000E_impl*
end;//Wl3String.StrToTag

function Wl3String.New(aType: Tk2Type): Ik2Tag;
//#UC START# *484CEAAF03C5_484945C0000E_var*
var
 l_Inst : Tl3_String;
//#UC END# *484CEAAF03C5_484945C0000E_var*
begin
//#UC START# *484CEAAF03C5_484945C0000E_impl*
 l_Inst := Tl3_String.Create;
 try
  Result := aType.TagFromIntRef(Integer(l_Inst));
 finally
  FreeAndNil(l_Inst);
 end;//try..finally
//#UC END# *484CEAAF03C5_484945C0000E_impl*
end;//Wl3String.New

function Wl3String.ObjToTag(aValue: TObject): Ik2Tag;
//#UC START# *484CEAD301AE_484945C0000E_var*
//#UC END# *484CEAD301AE_484945C0000E_var*
begin
//#UC START# *484CEAD301AE_484945C0000E_impl*
 Assert(aValue Is Tl3CustomString);
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(Tk2StringTag.Create(Integer(aValue), AtomType)));
//#UC END# *484CEAD301AE_484945C0000E_impl*
end;//Wl3String.ObjToTag

function Wl3String.IntToTag(aValue: Integer): Ik2Tag;
//#UC START# *484D31710018_484945C0000E_var*
//#UC END# *484D31710018_484945C0000E_var*
begin
//#UC START# *484D31710018_484945C0000E_impl*
 Result := AtomType.StrToTag(IntToStr(aValue));
//#UC END# *484D31710018_484945C0000E_impl*
end;//Wl3String.IntToTag

end.