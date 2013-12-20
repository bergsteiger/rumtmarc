unit ListUserTypes_lftSimilarDocuments_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/ListUserTypes_lftSimilarDocuments_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::ListUserTypes::lftSimilarDocuments
//
// ������� ���������
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
  ListUserTypes_lftConsultation_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� lftSimilarDocuments }
  lftSimilarDocumentsName = 'lftSimilarDocuments';
   { ��������� ������������� ����������������� ���� "������� ���������" }
  lftSimilarDocuments = TvcmUserType(lftConsultation + 1);
   { ������� ��������� }

type
  Tkw_FormUserType_lftSimilarDocuments = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� lftSimilarDocuments }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_lftSimilarDocuments
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_lftSimilarDocuments

{$If not defined(NoScripts)}
function Tkw_FormUserType_lftSimilarDocuments.GetInteger: Integer;
 {-}
begin
 Result := lftSimilarDocuments;
end;//Tkw_FormUserType_lftSimilarDocuments.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_lftSimilarDocuments
 Tkw_FormUserType_lftSimilarDocuments.Register('���_�����::lftSimilarDocuments');
{$IfEnd} //not Admin AND not Monitorings

end.