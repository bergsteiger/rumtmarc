unit moFilters;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/moFilters.pas"
// �����: 29.10.2010 15:00
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMUseCaseRealization::Class>> F1 �������� ����������::Filters::Filters$UC
//
// �������
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
  Filters_Module,
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
Tmo_Filters = {final formspack} class(TFiltersModule)
 {* ������� }
end;//Tmo_Filters
{$IfEnd} //not Admin AND not Monitorings

implementation

end.