unit l3PrimString;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "L3"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/L3/l3PrimString.pas"
// Начат: 05.02.2008 16:57
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Low Level::L3::l3CoreObjects::Tl3PrimString
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
  l3DataContainerWithoutIUnknown
  ;

type
 Tl3PrimString = {abstract} class(Tl3DataContainerWithoutIUnknown)
 protected
 // property methods
   function pm_GetAsString: AnsiString;
   procedure pm_SetAsString(const aValue: AnsiString);
   function pm_GetAsWStr: Tl3WString;
   procedure pm_SetAsWStr(const aValue: Tl3WString);
   function pm_GetStringID: Integer; virtual;
   procedure pm_SetStringID(aValue: Integer); virtual;
   function pm_GetLinkedObject: TObject; virtual;
   procedure pm_SetLinkedObject(aValue: TObject); virtual;
 protected
 // overridden protected methods
   function GetEmpty: Boolean; override;
 protected
 // protected methods
   function GetAsPCharLen: Tl3WString; virtual;
   procedure DoSetAsPCharLen(const Value: Tl3PCharLen); virtual;
 public
 // public methods
   procedure Clear; virtual;
     {* Функция очистки объекта.  Для перекрытия в потомках. }
   procedure AssignString(aStr: Tl3PrimString); virtual;
     {* Присвает другую строку данной. }
   function Clone(anOwner: TObject = nil): Pointer; virtual;
     {* Создайт копию строки. }
 public
 // public properties
   property AsString: AnsiString
     read pm_GetAsString
     write pm_SetAsString;
     {* свойство для преобразования к строкам Delphi и обратно. }
   property AsWStr: Tl3WString
     read pm_GetAsWStr
     write pm_SetAsWStr;
   property StringID: Integer
     read pm_GetStringID
     write pm_SetStringID;
     {* Идентификатор. }
   property LinkedObject: TObject
     read pm_GetLinkedObject
     write pm_SetLinkedObject;
     {* Объект, привязанный к строке. }
 end;//Tl3PrimString

implementation

uses
  l3String
  ;

// start class Tl3PrimString

function Tl3PrimString.pm_GetAsString: AnsiString;
//#UC START# *47A869930282_47A8693601A1get_var*
var
 l_S : Tl3WString;
//#UC END# *47A869930282_47A8693601A1get_var*
begin
//#UC START# *47A869930282_47A8693601A1get_impl*
 if (Self = nil) then
  Result := ''
 else
 begin
  l_S := GetAsPCharLen;
  if (l_S.SCodePage = CP_Unicode) then
   Result := l3PCharLen2String(l_S, CP_ANSI)
  else
   Result := l3PCharLen2String(l_S, l_S.SCodePage);
 end;//Self = nil
//#UC END# *47A869930282_47A8693601A1get_impl*
end;//Tl3PrimString.pm_GetAsString

procedure Tl3PrimString.pm_SetAsString(const aValue: AnsiString);
//#UC START# *47A869930282_47A8693601A1set_var*
//#UC END# *47A869930282_47A8693601A1set_var*
begin
//#UC START# *47A869930282_47A8693601A1set_impl*
 if (Self <> nil) then
 begin
  if (aValue = '') then
   Clear
  else
   AsWStr := l3PCharLen(aValue, AsWStr.SCodePage);
 end;//Self <> nil
//#UC END# *47A869930282_47A8693601A1set_impl*
end;//Tl3PrimString.pm_SetAsString

function Tl3PrimString.pm_GetAsWStr: Tl3WString;
//#UC START# *47A869A600BF_47A8693601A1get_var*
//#UC END# *47A869A600BF_47A8693601A1get_var*
begin
//#UC START# *47A869A600BF_47A8693601A1get_impl*
 if (Self = nil) then
  l3AssignNil(Result)
 else
  Result := GetAsPCharLen;
//#UC END# *47A869A600BF_47A8693601A1get_impl*
end;//Tl3PrimString.pm_GetAsWStr

procedure Tl3PrimString.pm_SetAsWStr(const aValue: Tl3WString);
//#UC START# *47A869A600BF_47A8693601A1set_var*
//#UC END# *47A869A600BF_47A8693601A1set_var*
begin
//#UC START# *47A869A600BF_47A8693601A1set_impl*
 if (Self <> nil) then
  DoSetAsPCharLen(Tl3PCharLen(aValue));
//#UC END# *47A869A600BF_47A8693601A1set_impl*
end;//Tl3PrimString.pm_SetAsWStr

function Tl3PrimString.pm_GetStringID: Integer;
//#UC START# *47BC3BFD017F_47A8693601A1get_var*
//#UC END# *47BC3BFD017F_47A8693601A1get_var*
begin
//#UC START# *47BC3BFD017F_47A8693601A1get_impl*
 Result := 0;
//#UC END# *47BC3BFD017F_47A8693601A1get_impl*
end;//Tl3PrimString.pm_GetStringID

procedure Tl3PrimString.pm_SetStringID(aValue: Integer);
//#UC START# *47BC3BFD017F_47A8693601A1set_var*
//#UC END# *47BC3BFD017F_47A8693601A1set_var*
begin
//#UC START# *47BC3BFD017F_47A8693601A1set_impl*
//#UC END# *47BC3BFD017F_47A8693601A1set_impl*
end;//Tl3PrimString.pm_SetStringID

function Tl3PrimString.pm_GetLinkedObject: TObject;
//#UC START# *47BC3CCE00A6_47A8693601A1get_var*
//#UC END# *47BC3CCE00A6_47A8693601A1get_var*
begin
//#UC START# *47BC3CCE00A6_47A8693601A1get_impl*
 Result := nil;
//#UC END# *47BC3CCE00A6_47A8693601A1get_impl*
end;//Tl3PrimString.pm_GetLinkedObject

procedure Tl3PrimString.pm_SetLinkedObject(aValue: TObject);
//#UC START# *47BC3CCE00A6_47A8693601A1set_var*
//#UC END# *47BC3CCE00A6_47A8693601A1set_var*
begin
//#UC START# *47BC3CCE00A6_47A8693601A1set_impl*
//#UC END# *47BC3CCE00A6_47A8693601A1set_impl*
end;//Tl3PrimString.pm_SetLinkedObject

function Tl3PrimString.GetAsPCharLen: Tl3WString;
//#UC START# *47A869BB02DE_47A8693601A1_var*
//#UC END# *47A869BB02DE_47A8693601A1_var*
begin
//#UC START# *47A869BB02DE_47A8693601A1_impl*
 l3AssignNil(Result);
//#UC END# *47A869BB02DE_47A8693601A1_impl*
end;//Tl3PrimString.GetAsPCharLen

procedure Tl3PrimString.DoSetAsPCharLen(const Value: Tl3PCharLen);
//#UC START# *47A869D10074_47A8693601A1_var*
//#UC END# *47A869D10074_47A8693601A1_var*
begin
//#UC START# *47A869D10074_47A8693601A1_impl*
 Assert(false);
//#UC END# *47A869D10074_47A8693601A1_impl*
end;//Tl3PrimString.DoSetAsPCharLen

procedure Tl3PrimString.Clear;
//#UC START# *47BC02A50131_47A8693601A1_var*
//#UC END# *47BC02A50131_47A8693601A1_var*
begin
//#UC START# *47BC02A50131_47A8693601A1_impl*
 // - ничего не делаем
//#UC END# *47BC02A50131_47A8693601A1_impl*
end;//Tl3PrimString.Clear

procedure Tl3PrimString.AssignString(aStr: Tl3PrimString);
//#UC START# *47BC3C950296_47A8693601A1_var*
//#UC END# *47BC3C950296_47A8693601A1_var*
begin
//#UC START# *47BC3C950296_47A8693601A1_impl*
 StringID := aStr.StringID;
 AsWStr := aStr.AsWStr;
 LinkedObject := aStr.LinkedObject;
//#UC END# *47BC3C950296_47A8693601A1_impl*
end;//Tl3PrimString.AssignString

function Tl3PrimString.Clone(anOwner: TObject = nil): Pointer;
//#UC START# *47BC3FC40111_47A8693601A1_var*
type
  Rl3PrimString = class of Tl3PrimString;
//#UC END# *47BC3FC40111_47A8693601A1_var*
begin
//#UC START# *47BC3FC40111_47A8693601A1_impl*
 Result := Rl3PrimString(ClassType).Create;
 if (anOwner <> nil) then
  Tl3PrimString(Result).DoSetOwner(anOwner);
 Tl3PrimString(Result).AssignString(Self);
//#UC END# *47BC3FC40111_47A8693601A1_impl*
end;//Tl3PrimString.Clone

function Tl3PrimString.GetEmpty: Boolean;
//#UC START# *4A54E03B009A_47A8693601A1_var*
//#UC END# *4A54E03B009A_47A8693601A1_var*
begin
//#UC START# *4A54E03B009A_47A8693601A1_impl*
 Result := l3IsNil(AsWStr);
//#UC END# *4A54E03B009A_47A8693601A1_impl*
end;//Tl3PrimString.GetEmpty

end.