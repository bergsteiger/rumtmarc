unit DocumentUserTypes_dftRelatedDoc_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/DocumentUserTypes_dftRelatedDoc_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::DocumentUserTypes::dftRelatedDoc
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
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  DocumentUserTypes_dftDocument_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� dftRelatedDoc }
  dftRelatedDocName = 'dftRelatedDoc';
   { ��������� ������������� ����������������� ���� "�������" }
  dftRelatedDoc = TvcmUserType(dftDocument + 1);
   { ������� }

type
  Tkw_FormUserType_dftRelatedDoc = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� dftRelatedDoc }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_dftRelatedDoc
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_dftRelatedDoc

{$If not defined(NoScripts)}
function Tkw_FormUserType_dftRelatedDoc.GetInteger: Integer;
 {-}
begin
 Result := dftRelatedDoc;
end;//Tkw_FormUserType_dftRelatedDoc.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_dftRelatedDoc
 Tkw_FormUserType_dftRelatedDoc.Register('���_�����::dftRelatedDoc');
{$IfEnd} //not Admin AND not Monitorings

end.