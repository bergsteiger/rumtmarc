unit moCommon;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// �����: ������ �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/moCommon.pas"
// �����: 2003/05/23 14:19:16
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFormsPack::Class>> F1 Core::Common::Common$FP
//
// ����
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
  PrimF1Common_Module,
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
Tmo_Common = {final formspack} class(TPrimF1CommonModule)
 {* ���� }
end;//Tmo_Common
{$IfEnd} //not Admin AND not Monitorings

implementation

end.