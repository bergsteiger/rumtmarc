unit vtRemindersLineModelPart;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "VT$Rem"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/VT/vtRemindersLineModelPart.pas"
// Начат: 15.04.2011 16:05
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::VT$Rem::Reminders::TvtRemindersLineModelPart
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\VT\vtDefine.inc}

interface

uses
  vtRemindersLine,
  afwDockingInterfaces,
  Controls
  ;

type
 TvtRemindersLineModelPart = class(TvtRemindersLine, IafwControlDock)
 protected
 // realized methods
   function GetDockControl(const aDockable: IafwDockableControl): TWinControl;
 end;//TvtRemindersLineModelPart

implementation

// start class TvtRemindersLineModelPart

function TvtRemindersLineModelPart.GetDockControl(const aDockable: IafwDockableControl): TWinControl;
//#UC START# *4DA835AB02CC_4DA834560256_var*
var
 l_Index : Integer;
 l_R     : TWinControl;
//#UC END# *4DA835AB02CC_4DA834560256_var*
begin
//#UC START# *4DA835AB02CC_4DA834560256_impl*
 Result := nil;
 for l_Index := 0 to Reminders.Count - 1 do
 begin
  l_R := Reminders.Items[l_Index];
  if aDockable.CanBeDockedInto(l_R) then
  begin
   Result := l_R;
   break;
  end;//aDockable.CanBeDockedInto(l_R)
 end;//for l_Index
//#UC END# *4DA835AB02CC_4DA834560256_impl*
end;//TvtRemindersLineModelPart.GetDockControl

end.