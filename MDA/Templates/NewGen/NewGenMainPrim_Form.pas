unit NewGenMainPrim_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ������: "w:/MDProcess/NewGen/NewGenMainPrim_Form.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMMainForm::Class>> MDProcess$NewGen$Interface::NewGen::NewGen::NewGenMainPrim
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\MDProcess\NewGen\ngDefine.inc}

interface

{$If defined(NewGen)}
uses
  MainPrim_Form,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //NewGen

{$If defined(NewGen)}
type
 TNewGenMainPrimForm = {form} class(TMainPrimForm)
 end;//TNewGenMainPrimForm

 TvcmMainFormRef = TNewGenMainPrimForm;
{$IfEnd} //NewGen

implementation

{$If defined(NewGen)}
uses
  StdRes {a}
  ;
{$IfEnd} //NewGen

end.