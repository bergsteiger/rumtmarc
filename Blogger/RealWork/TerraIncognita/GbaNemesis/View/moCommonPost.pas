unit moCommonPost;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/moCommonPost.pas"
// �����: 15.09.2009 19:19
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMUseCaseRealization::Class>> F1 ������� �����::NewsLineTuning::CommonPost
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

{$If defined(Monitorings) AND not defined(Admin)}
uses
  CommonPost_Module,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmModule {a},
  Classes {a},
  l3InterfacedComponent {a},
  vcmComponent {a},
  vcmOperations {a},
  vcmModuleDef {a}
  ;
{$IfEnd} //Monitorings AND not Admin

{$If defined(Monitorings) AND not defined(Admin)}
type
Tmo_CommonPost = {final formspack} class(TCommonPostModule)
 {* ���� }
end;//Tmo_CommonPost
{$IfEnd} //Monitorings AND not Admin

implementation

end.