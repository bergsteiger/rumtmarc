unit vtReminderModelPart;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "VT$Rem"
// Автор: Люлин А.В
// Модуль: "w:/common/components/gui/Garant/VT/vtReminderModelPart.pas"
// Начат: 28.03.2011 13:36
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<GuiControl::Class>> Shared Delphi::VT$Rem::Reminders::TvtReminderModelPart
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\VT\vtDefine.inc}

interface

{$If not defined(NoVCM)}
uses
  vcmExternalInterfaces,
  vtReminder,
  Controls
  ;
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
type
 TvtReminderModelPart = class(TvtReminder, IvcmDatasourceChangeListener)
 protected
 // realized methods
   procedure DataSourceChanged(aControl: TControl);
 end;//TvtReminderModelPart
{$IfEnd} //not NoVCM

implementation

{$If not defined(NoVCM)}

// start class TvtReminderModelPart

procedure TvtReminderModelPart.DataSourceChanged(aControl: TControl);
//#UC START# *4D905A2A00D6_4D90568B003B_var*
//#UC END# *4D905A2A00D6_4D90568B003B_var*
begin
//#UC START# *4D905A2A00D6_4D90568B003B_impl*
 ShowDockingControl(aControl, GetPopupFormBoundsRect(aControl, false));
//#UC END# *4D905A2A00D6_4D90568B003B_impl*
end;//TvtReminderModelPart.DataSourceChanged

{$IfEnd} //not NoVCM

end.