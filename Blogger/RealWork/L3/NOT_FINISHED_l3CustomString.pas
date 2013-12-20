unit NOT_FINISHED_l3CustomString;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "L3"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/L3/NOT_FINISHED_l3CustomString.pas"
// Начат: 05.02.2008 15:53
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Low Level::L3::l3CoreObjects::Tl3CustomString
//
// Базовый класс для "строк". Определяет операции и свойства, но не способ хранения данных.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

{$Include ..\L3\l3Define.inc}

interface

uses
  l3Types,
  l3PrimString
  ;

type
 Tl3CustomString = {abstract} class(Tl3PrimString)
  {* Базовый класс для "строк". Определяет операции и свойства, но не способ хранения данных. }
 protected
 // property methods
   function pm_GetCodePage: Integer;
   procedure pm_SetCodePage(aValue: Integer);
   function pm_GetIsOEM: Boolean;
   function pm_GetIsANSI: Boolean;
   function pm_GetAsPCharLen: Tl3PCharLen;
   procedure pm_SetAsPCharLen(const aValue: Tl3PCharLen);
 protected
 // protected methods
   procedure DoSetCodePage(aValue: Integer); virtual;
   procedure Pm_SetLen(Value: Integer); virtual;
 public
 // public methods
   function Offset(Delta: Integer): Tl3CustomString; virtual;
   function JoinWith(P: Tl3PrimString): Integer; virtual;
     {* операция объединения двух объектов. }
 public
 // public properties
   property CodePage: Integer
     read pm_GetCodePage
     write pm_SetCodePage;
     {* кодовая страница для символов строки. }
   property IsOEM: Boolean
     read pm_GetIsOEM;
     {* строка в кодировке OEM? }
   property IsANSI: Boolean
     read pm_GetIsANSI;
     {* строка в кодировке ANSI? }
   property AsPCharLen: Tl3PCharLen
     read pm_GetAsPCharLen
     write pm_SetAsPCharLen;
     {* свойство для преобразования к типу Tl3PCharLen и обратно. }
 end;//Tl3CustomString

implementation

// start class Tl3CustomString

function Tl3CustomString.Offset(Delta: Integer): Tl3CustomString;
//#UC START# *4E568A7E0120_4773DEF0021B_var*
//#UC END# *4E568A7E0120_4773DEF0021B_var*
begin
//#UC START# *4E568A7E0120_4773DEF0021B_impl*
 !!! Needs to be implemented !!!
//#UC END# *4E568A7E0120_4773DEF0021B_impl*
end;//Tl3CustomString.Offset

procedure Tl3CustomString.DoSetCodePage(aValue: Integer);
//#UC START# *4E568AB6016C_4773DEF0021B_var*
//#UC END# *4E568AB6016C_4773DEF0021B_var*
begin
//#UC START# *4E568AB6016C_4773DEF0021B_impl*
 !!! Needs to be implemented !!!
//#UC END# *4E568AB6016C_4773DEF0021B_impl*
end;//Tl3CustomString.DoSetCodePage

procedure Tl3CustomString.Pm_SetLen(Value: Integer);
//#UC START# *4E568B0A0323_4773DEF0021B_var*
//#UC END# *4E568B0A0323_4773DEF0021B_var*
begin
//#UC START# *4E568B0A0323_4773DEF0021B_impl*
 !!! Needs to be implemented !!!
//#UC END# *4E568B0A0323_4773DEF0021B_impl*
end;//Tl3CustomString.Pm_SetLen

function Tl3CustomString.pm_GetCodePage: Integer;
//#UC START# *478CED810109_4773DEF0021Bget_var*
//#UC END# *478CED810109_4773DEF0021Bget_var*
begin
//#UC START# *478CED810109_4773DEF0021Bget_impl*
 assert(false, 'Tl3_CustomString.pm_GetCodePage not implemented');
//#UC END# *478CED810109_4773DEF0021Bget_impl*
end;//Tl3CustomString.pm_GetCodePage

procedure Tl3CustomString.pm_SetCodePage(aValue: Integer);
//#UC START# *478CED810109_4773DEF0021Bset_var*
//#UC END# *478CED810109_4773DEF0021Bset_var*
begin
//#UC START# *478CED810109_4773DEF0021Bset_impl*
 assert(false, 'Tl3_CustomString.pm_SetCodePage not implemented');
//#UC END# *478CED810109_4773DEF0021Bset_impl*
end;//Tl3CustomString.pm_SetCodePage

function Tl3CustomString.pm_GetIsOEM: Boolean;
//#UC START# *478CED9400CF_4773DEF0021Bget_var*
//#UC END# *478CED9400CF_4773DEF0021Bget_var*
begin
//#UC START# *478CED9400CF_4773DEF0021Bget_impl*
 assert(false, 'Tl3_CustomString.pm_GetIsOEM not implemented');
//#UC END# *478CED9400CF_4773DEF0021Bget_impl*
end;//Tl3CustomString.pm_GetIsOEM

function Tl3CustomString.pm_GetIsANSI: Boolean;
//#UC START# *478CEDA80145_4773DEF0021Bget_var*
//#UC END# *478CEDA80145_4773DEF0021Bget_var*
begin
//#UC START# *478CEDA80145_4773DEF0021Bget_impl*
 assert(false, 'Tl3_CustomString.pm_GetIsANSI not implemented');
//#UC END# *478CEDA80145_4773DEF0021Bget_impl*
end;//Tl3CustomString.pm_GetIsANSI

function Tl3CustomString.pm_GetAsPCharLen: Tl3PCharLen;
//#UC START# *478CEDDF02BC_4773DEF0021Bget_var*
//#UC END# *478CEDDF02BC_4773DEF0021Bget_var*
begin
//#UC START# *478CEDDF02BC_4773DEF0021Bget_impl*
 assert(false, 'Tl3_CustomString.pm_GetAsPCharLen not implemented');
//#UC END# *478CEDDF02BC_4773DEF0021Bget_impl*
end;//Tl3CustomString.pm_GetAsPCharLen

procedure Tl3CustomString.pm_SetAsPCharLen(const aValue: Tl3PCharLen);
//#UC START# *478CEDDF02BC_4773DEF0021Bset_var*
//#UC END# *478CEDDF02BC_4773DEF0021Bset_var*
begin
//#UC START# *478CEDDF02BC_4773DEF0021Bset_impl*
 assert(false, 'Tl3_CustomString.pm_SetAsPCharLen not implemented');
//#UC END# *478CEDDF02BC_4773DEF0021Bset_impl*
end;//Tl3CustomString.pm_SetAsPCharLen

function Tl3CustomString.JoinWith(P: Tl3PrimString): Integer;
//#UC START# *47B0959E03A7_4773DEF0021B_var*
//#UC END# *47B0959E03A7_4773DEF0021B_var*
begin
//#UC START# *47B0959E03A7_4773DEF0021B_impl*
 Result := -1;
//#UC END# *47B0959E03A7_4773DEF0021B_impl*
end;//Tl3CustomString.JoinWith

end.