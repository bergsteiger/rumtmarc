unit moRubricator;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/moRubricator.pas"
// �����: 09.09.2009 14:55
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMUseCaseRealization::Class>> F1 �������� ����������::Rubricator::Rubricator$UC
//
// �������� ���������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  Rubricator_Module,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmModule {a},
  Classes {a},
  l3InterfacedComponent {a},
  vcmComponent {a},
  vcmOperations {a},
  vcmModuleDef {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
Tmo_Rubricator = {final formspack} class(TRubricatorModule)
 {* �������� ��������� }
end;//Tmo_Rubricator
{$IfEnd} //not Admin AND not Monitorings

implementation

end.