unit PrimChangesBetweenEditons_DocumentChanges_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/ChangesBetweenEditons/Forms/PrimChangesBetweenEditons_DocumentChanges_UserType.pas"
// �����: 25.05.2011 14:13
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 ���������������� �������::ChangesBetweenEditions::View::ChangesBetweenEditons::PrimChangesBetweenEditons::DocumentChanges
//
// ��������� � ���������
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
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� DocumentChanges }
  DocumentChangesName = 'DocumentChanges';
   { ��������� ������������� ����������������� ���� "��������� � ���������" }
  DocumentChanges = TvcmUserType(0);
   { ��������� � ��������� }

type
  Tkw_FormUserType_DocumentChanges = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� DocumentChanges }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_DocumentChanges
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_DocumentChanges

{$If not defined(NoScripts)}
function Tkw_FormUserType_DocumentChanges.GetInteger: Integer;
 {-}
begin
 Result := DocumentChanges;
end;//Tkw_FormUserType_DocumentChanges.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_DocumentChanges
 Tkw_FormUserType_DocumentChanges.Register('���_�����::DocumentChanges');
{$IfEnd} //not Admin AND not Monitorings

end.