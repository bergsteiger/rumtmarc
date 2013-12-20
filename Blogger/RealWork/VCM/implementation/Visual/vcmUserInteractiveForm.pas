unit vcmUserInteractiveForm;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "VCM$Visual"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/VCM/implementation/Visual/vcmUserInteractiveForm.pas"
// Начат: 22.06.2011 15:44
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::VCM$Visual::Visual::TvcmUserInteractiveForm
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\common\components\gui\Garant\VCM\vcmDefine.inc}

interface

{$If not defined(NoVCM)}
uses
  l3Forms,
  vcmGUI,
  vcmExternalInterfaces,
  Dialogs,
  l3MessageID
  ;
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
type
 _vcmUserInteractiveForm_Parent_ = Tl3Form;
 {$Include ..\Visual\vcmUserInteractiveForm.imp.pas}
 TvcmUserInteractiveForm = class(_vcmUserInteractiveForm_)
 end;//TvcmUserInteractiveForm
{$IfEnd} //not NoVCM

implementation

{$If not defined(NoVCM)}
uses
  Classes
  {$If not defined(NoVCM) AND not defined(NoVGScene)}
  ,
  vcmDialogs
  {$IfEnd} //not NoVCM AND not NoVGScene
  ,
  vcmMessagesSupport
  ;
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}

{$Include ..\Visual\vcmUserInteractiveForm.imp.pas}


{$IfEnd} //not NoVCM
end.