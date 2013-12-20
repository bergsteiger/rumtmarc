unit vcmUserInteractiveForm;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "VCM$Visual"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/VCM/implementation/Visual/vcmUserInteractiveForm.pas"
// �����: 22.06.2011 15:44
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::VCM$Visual::Visual::TvcmUserInteractiveForm
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

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