unit ListUserTypes_lftSimilarDocumentsSynchroView_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/ListUserTypes_lftSimilarDocumentsSynchroView_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::ListUserTypes::lftSimilarDocumentsSynchroView
//
// ���������� �������� (������� ���������)
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
  ListUserTypes_lftSimilarDocuments_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� lftSimilarDocumentsSynchroView }
  lftSimilarDocumentsSynchroViewName = 'lftSimilarDocumentsSynchroView';
   { ��������� ������������� ����������������� ���� "���������� �������� (������� ���������)" }
  lftSimilarDocumentsSynchroView = TvcmUserType(lftSimilarDocuments + 1);
   { ���������� �������� (������� ���������) }

type
  Tkw_FormUserType_lftSimilarDocumentsSynchroView = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� lftSimilarDocumentsSynchroView }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_lftSimilarDocumentsSynchroView
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_lftSimilarDocumentsSynchroView

{$If not defined(NoScripts)}
function Tkw_FormUserType_lftSimilarDocumentsSynchroView.GetInteger: Integer;
 {-}
begin
 Result := lftSimilarDocumentsSynchroView;
end;//Tkw_FormUserType_lftSimilarDocumentsSynchroView.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_lftSimilarDocumentsSynchroView
 Tkw_FormUserType_lftSimilarDocumentsSynchroView.Register('���_�����::lftSimilarDocumentsSynchroView');
{$IfEnd} //not Admin AND not Monitorings

end.