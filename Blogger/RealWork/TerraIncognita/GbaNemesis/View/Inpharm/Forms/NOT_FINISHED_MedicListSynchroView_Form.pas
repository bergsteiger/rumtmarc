unit NOT_FINISHED_MedicListSynchroView_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Inpharm/Forms/NOT_FINISHED_MedicListSynchroView_Form.pas"
// �����: 04.09.2009 12:57
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 ���������� ��������::Inpharm::View::Inpharm::Inpharm::MedicListSynchroView
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
  PrimMedicListSynchroView_Form,
  Common_FormDefinitions_Controls,
  vtPanel,
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
  Ten_MedicListSynchroView = {final form} class(TvcmContainerFormRef, MedicListSynchroViewFormDef)
  Entities : TvcmEntities;
  ztChild: TvtPanel;
  end;//Ten_MedicListSynchroView

  TMedicListSynchroViewForm = Ten_MedicListSynchroView;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$R *.DFM}

end.