unit l3StringIDEx;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "L3"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/L3/l3StringIDEx.pas"
// Начат: 30.12.2009 14:18
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi Low Level::L3::Поддержка локализованных сообщений::l3StringIDEx
//
// Строка для локализации
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\L3\l3Define.inc}

interface

uses
  l3Interfaces,
  l3Types,
  l3ProtoDataContainer,
  l3Memory,
  l3Core,
  l3Except,
  Classes
  ;

type
 Tl3StringIDExPrim = object(Tl3StringID)
 public
   rLocalized : Boolean; // Строка локализована
 end;//Tl3StringIDExPrim

 Tl3StringIDEx = object(Tl3StringIDExPrim)
 public
   rKey : AnsiString; // Ключ
   rValue : AnsiString; // Значение
 public
    procedure Localize(const aRus: AnsiString;
     const anAlien: AnsiString);
     {* Локализовать }
    function AsWideString: WideString;
    function AsWStr: Tl3PCharLen;
    function AsCStr: Il3CString;
    function AsStr: AnsiString;
    procedure Init;
     {* Инициализирует строку }
 end;//Tl3StringIDEx

 Tl3StringIDExHelper = class
 protected
 // protected methods
   class function AsCStr(const aStr: Tl3StringIDEx): Il3CString; virtual;
   class function AsStr(const aStr: Tl3StringIDEx): AnsiString; virtual;
   class procedure Init(var theStr: Tl3StringIDEx); virtual;
 end;//Tl3StringIDExHelper

 Pl3StringIDEx = ^Tl3StringIDEx;

 {$Undef l3Items_NoSort}

 _ItemType_ = Pl3StringIDEx;
 _l3AtomicListPrim_Parent_ = Tl3ProtoDataContainer;
 {$Define l3Items_IsProto}
 {$Include ..\L3\l3AtomicListPrim.imp.pas}
 Tl3ConstStringsPrim = class(_l3AtomicListPrim_)
 protected
 // overridden protected methods
   procedure InitFields; override;
 end;//Tl3ConstStringsPrim

 Rl3StringIDExHelper = class of Tl3StringIDExHelper;

var g_StringIDHelper : Rl3StringIDExHelper = Tl3StringIDExHelper;

implementation

uses
  l3Base,
  l3ConstStrings,
  l3String,
  l3MinMax,
  RTLConsts,
  SysUtils
  ;

// start class Tl3StringIDEx

procedure Tl3StringIDEx.Localize(const aRus: AnsiString;
  const anAlien: AnsiString);
//#UC START# *4BB9D8550292_4B3B3728004C_var*
//#UC END# *4BB9D8550292_4B3B3728004C_var*
begin
//#UC START# *4BB9D8550292_4B3B3728004C_impl*
 rLocalized := true;
 rValue := anAlien;
//#UC END# *4BB9D8550292_4B3B3728004C_impl*
end;//Tl3StringIDEx.Localize

function Tl3StringIDEx.AsWideString: WideString;
//#UC START# *4CFE25B202FA_4B3B3728004C_var*
//#UC END# *4CFE25B202FA_4B3B3728004C_var*
begin
//#UC START# *4CFE25B202FA_4B3B3728004C_impl*
 Result := l3WideString(AsCStr);
//#UC END# *4CFE25B202FA_4B3B3728004C_impl*
end;//Tl3StringIDEx.AsWideString

function Tl3StringIDEx.AsWStr: Tl3PCharLen;
//#UC START# *4D7258F003D4_4B3B3728004C_var*
//#UC END# *4D7258F003D4_4B3B3728004C_var*
begin
//#UC START# *4D7258F003D4_4B3B3728004C_impl*
 Result := l3PCharLen(AsCStr);
//#UC END# *4D7258F003D4_4B3B3728004C_impl*
end;//Tl3StringIDEx.AsWStr

function Tl3StringIDEx.AsCStr: Il3CString;
//#UC START# *4B3B3B51012A_4B3B3728004C_var*
//#UC END# *4B3B3B51012A_4B3B3728004C_var*
begin
//#UC START# *4B3B3B51012A_4B3B3728004C_impl*
 Result := g_StringIDHelper.AsCStr(Self);
//#UC END# *4B3B3B51012A_4B3B3728004C_impl*
end;//Tl3StringIDEx.AsCStr

function Tl3StringIDEx.AsStr: AnsiString;
//#UC START# *4B3B3F25003B_4B3B3728004C_var*
//#UC END# *4B3B3F25003B_4B3B3728004C_var*
begin
//#UC START# *4B3B3F25003B_4B3B3728004C_impl*
 Result := g_StringIDHelper.AsStr(Self);
//#UC END# *4B3B3F25003B_4B3B3728004C_impl*
end;//Tl3StringIDEx.AsStr

procedure Tl3StringIDEx.Init;
//#UC START# *4B3B4D0A0026_4B3B3728004C_var*
//#UC END# *4B3B4D0A0026_4B3B3728004C_var*
begin
//#UC START# *4B3B4D0A0026_4B3B3728004C_impl*
 g_StringIDHelper.Init(Self);
//#UC END# *4B3B4D0A0026_4B3B3728004C_impl*
end;//Tl3StringIDEx.Init
// start class Tl3StringIDExHelper

class function Tl3StringIDExHelper.AsCStr(const aStr: Tl3StringIDEx): Il3CString;
//#UC START# *4B98D78501E1_4B98D6C201AD_var*
//#UC END# *4B98D78501E1_4B98D6C201AD_var*
begin
//#UC START# *4B98D78501E1_4B98D6C201AD_impl*
 Result := l3CStr(aStr.rValue);
//#UC END# *4B98D78501E1_4B98D6C201AD_impl*
end;//Tl3StringIDExHelper.AsCStr

class function Tl3StringIDExHelper.AsStr(const aStr: Tl3StringIDEx): AnsiString;
//#UC START# *4B98D7A50160_4B98D6C201AD_var*
//#UC END# *4B98D7A50160_4B98D6C201AD_var*
begin
//#UC START# *4B98D7A50160_4B98D6C201AD_impl*
 Result := aStr.rValue;
//#UC END# *4B98D7A50160_4B98D6C201AD_impl*
end;//Tl3StringIDExHelper.AsStr

class procedure Tl3StringIDExHelper.Init(var theStr: Tl3StringIDEx);
//#UC START# *4B98D7BA00C6_4B98D6C201AD_var*
//#UC END# *4B98D7BA00C6_4B98D6C201AD_var*
begin
//#UC START# *4B98D7BA00C6_4B98D6C201AD_impl*
 {$IfDef Nemesis}
  {$IfNDef NoVCM}
   Assert(not g_l3ConstStringsSealed);
  {$EndIf  NoVCM}
 {$EndIf Nemesis}
 {$IfNDef DesignTimeLibrary}
 if (theStr.rValue <> '') then
  Tl3ConstStrings.Instance.Add(@theStr);
 {$EndIf  DesignTimeLibrary}
 theStr.rS := -1;
//#UC END# *4B98D7BA00C6_4B98D6C201AD_impl*
end;//Tl3StringIDExHelper.Init
// start class Tl3ConstStringsPrim

function CompareExistingItems(const CI: CompareItemsRec): Integer;
//#UC START# *47B99D4503A2_4BA223D801B3_var*
//#UC END# *47B99D4503A2_4BA223D801B3_var*
begin
//#UC START# *47B99D4503A2_4BA223D801B3_impl*
 {$IfDef l3Items_HasCustomSort}
 Assert(CI.rSortIndex = l3_siNative);
 {$EndIf l3Items_HasCustomSort}
 //Result := CompareStr(CI.rA^.rKey, CI.rB^.rKey);
 //Result := l3Compare(l3PCharLen(CI.rA^.rKey), l3PCharLen(CI.rB^.rKey), CI.rSortIndex);
 Result := Integer(CI.rA^) - Integer(CI.rB^);
 // - надо сравнивать именно адреса, а не ключи, т.к. ключи могут быть одинаковыми - из примесей
 // http://mdp.garant.ru/pages/viewpage.action?pageId=265404457&focusedCommentId=265407436#comment-265407436
//#UC END# *47B99D4503A2_4BA223D801B3_impl*
end;//CompareExistingItems

type _Instance_R_ = Tl3ConstStringsPrim;

{$Include ..\L3\l3AtomicListPrim.imp.pas}

// start class Tl3ConstStringsPrim

procedure Tl3ConstStringsPrim.InitFields;
//#UC START# *47A042E100E2_4BA223D801B3_var*
//#UC END# *47A042E100E2_4BA223D801B3_var*
begin
//#UC START# *47A042E100E2_4BA223D801B3_impl*
 inherited;
 Sorted := true;
//#UC END# *47A042E100E2_4BA223D801B3_impl*
end;//Tl3ConstStringsPrim.InitFields

end.