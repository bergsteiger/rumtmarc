unit l3_Base;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "L3"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/L3/l3_Base.pas"
// Начат: 05.02.2008 16:57
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Low Level::L3::l3CoreObjects::Tl3_Base
//
// ! Базовый класс объектов библиотеки L3. Рекомендуется для наследования от него остальных
// разрабатываемых объектов. Поддерживает контроль за распределением памяти и освобождением
// объектов.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\L3\l3Define.inc}

interface

uses
  l3Types,
  l3CBase,
  Classes
  ;

type
 Tl3_Base = class(Tl3CBase)
  {* ! Базовый класс объектов библиотеки L3. Рекомендуется для наследования от него остальных разрабатываемых объектов. Поддерживает контроль за распределением памяти и освобождением объектов. }
 protected
 // property methods
   function pm_GetHandle: Tl3Handle; virtual;
   procedure pm_SetHandle(aValue: Tl3Handle); virtual;
 public
 // overridden public methods
   procedure Assign(Source: TPersistent); override;
 public
 // public methods
   function Clone(anOwner: TObject = nil): Pointer; virtual;
     {* функция для получения копии объекта. }
   function OCompare(anObject: TObject): Integer; virtual;
     {* функция сравнения объекта с другим объектом. }
 public
 // public properties
   property Handle: Tl3Handle
     read pm_GetHandle
     write pm_SetHandle;
     {* идентификатор объекта. }
 end;//Tl3_Base

implementation

uses
  l3Base
  ;

// start class Tl3_Base

function Tl3_Base.pm_GetHandle: Tl3Handle;
//#UC START# *478798730050_47879856035Fget_var*
//#UC END# *478798730050_47879856035Fget_var*
begin
//#UC START# *478798730050_47879856035Fget_impl*
 Result := 0;
//#UC END# *478798730050_47879856035Fget_impl*
end;//Tl3_Base.pm_GetHandle

procedure Tl3_Base.pm_SetHandle(aValue: Tl3Handle);
//#UC START# *478798730050_47879856035Fset_var*
//#UC END# *478798730050_47879856035Fset_var*
begin
//#UC START# *478798730050_47879856035Fset_impl*
//#UC END# *478798730050_47879856035Fset_impl*
end;//Tl3_Base.pm_SetHandle

function Tl3_Base.Clone(anOwner: TObject = nil): Pointer;
//#UC START# *478CEE4C0225_47879856035F_var*
type
 Rl3_Base = class of Tl3_Base;
//#UC END# *478CEE4C0225_47879856035F_var*
begin
//#UC START# *478CEE4C0225_47879856035F_impl*
 Result := Rl3_Base(ClassType).Create(anOwner);
 Tl3_Base(Result).Assign(Self);
//#UC END# *478CEE4C0225_47879856035F_impl*
end;//Tl3_Base.Clone

function Tl3_Base.OCompare(anObject: TObject): Integer;
//#UC START# *478CEE670214_47879856035F_var*
//#UC END# *478CEE670214_47879856035F_var*
begin
//#UC START# *478CEE670214_47879856035F_impl*
 Assert(false);
 Result := -1;
//#UC END# *478CEE670214_47879856035F_impl*
end;//Tl3_Base.OCompare

procedure Tl3_Base.Assign(Source: TPersistent);
//#UC START# *478CF34E02CE_47879856035F_var*
//#UC END# *478CF34E02CE_47879856035F_var*
begin
//#UC START# *478CF34E02CE_47879856035F_impl*
 inherited;
 if (Source Is Tl3_Base) then
  Handle := Tl3_Base(Source).Handle;
//#UC END# *478CF34E02CE_47879856035F_impl*
end;//Tl3_Base.Assign

end.