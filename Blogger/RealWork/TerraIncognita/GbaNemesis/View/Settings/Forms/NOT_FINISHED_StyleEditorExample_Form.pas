unit NOT_FINISHED_StyleEditorExample_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Settings/Forms/NOT_FINISHED_StyleEditorExample_Form.pas"
// �����: 09.09.2009 16:29
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 �������� ����������::Settings::View::Settings::Settings::StyleEditorExample
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ���� ���� ������������ ������ ��� �������������, � �� ��� ����������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  PrimStyleEditorExample_Form
  {$If defined(Nemesis)}
  ,
  nscTextSource
  {$IfEnd} //Nemesis
  ,
  Classes {a},
  l3InterfacedComponent {a},
  vcmComponent {a},
  vcmBaseEntities {a},
  vcmEntities {a},
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
  TStyleEditorExampleForm = {final form} class(TvcmEntityFormRef)
  Entities : TvcmEntities;
  f_TextSource: TnscTextSource;
  end;//TStyleEditorExampleForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$R *.DFM}

end.