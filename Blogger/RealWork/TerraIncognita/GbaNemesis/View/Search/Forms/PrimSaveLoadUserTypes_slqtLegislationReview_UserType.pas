unit PrimSaveLoadUserTypes_slqtLegislationReview_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View$For F1 and Monitorings"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/PrimSaveLoadUserTypes_slqtLegislationReview_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Common For Shell And Monitoring::Search::View$For F1 and Monitorings::Search$Presentation for F1 and Monitorings::PrimSaveLoadUserTypes::slqtLegislationReview
//
// �����: �����. ����� ��������� ����������������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin)}
uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  PrimSaveLoadUserTypes_slqtFilters_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� slqtLegislationReview }
  slqtLegislationReviewName = 'slqtLegislationReview';
   { ��������� ������������� ����������������� ���� "�����: �����. ����� ��������� ����������������" }
  slqtLegislationReview = TvcmUserType(slqtFilters + 1);
   { �����: �����. ����� ��������� ���������������� }

type
  Tkw_FormUserType_slqtLegislationReview = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� slqtLegislationReview }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_slqtLegislationReview
{$IfEnd} //not Admin

implementation

{$If not defined(Admin)}
// start class Tkw_FormUserType_slqtLegislationReview

{$If not defined(NoScripts)}
function Tkw_FormUserType_slqtLegislationReview.GetInteger: Integer;
 {-}
begin
 Result := slqtLegislationReview;
end;//Tkw_FormUserType_slqtLegislationReview.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin

initialization
{$If not defined(Admin)}
// ����������� Tkw_FormUserType_slqtLegislationReview
 Tkw_FormUserType_slqtLegislationReview.Register('���_�����::slqtLegislationReview');
{$IfEnd} //not Admin

end.