unit PrimQueryCard_utqcLegislationReview_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View$For F1 and Monitorings"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/PrimQueryCard_utqcLegislationReview_UserType.pas"
// �����: 27.01.2009 10:40
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Common For Shell And Monitoring::Search::View$For F1 and Monitorings::Search$Presentation for F1 and Monitorings::PrimQueryCard::utqcLegislationReview
//
// ����� ��������� ����������������
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
  PrimQueryCard_utqcPostingOrder_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� utqcLegislationReview }
  utqcLegislationReviewName = 'utqcLegislationReview';
   { ��������� ������������� ����������������� ���� "����� ��������� ����������������" }
  utqcLegislationReview = TvcmUserType(utqcPostingOrder + 1);
   { ����� ��������� ���������������� }

type
  Tkw_FormUserType_utqcLegislationReview = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� utqcLegislationReview }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utqcLegislationReview
{$IfEnd} //not Admin

implementation

{$If not defined(Admin)}
// start class Tkw_FormUserType_utqcLegislationReview

{$If not defined(NoScripts)}
function Tkw_FormUserType_utqcLegislationReview.GetInteger: Integer;
 {-}
begin
 Result := utqcLegislationReview;
end;//Tkw_FormUserType_utqcLegislationReview.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin

initialization
{$If not defined(Admin)}
// ����������� Tkw_FormUserType_utqcLegislationReview
 Tkw_FormUserType_utqcLegislationReview.Register('���_�����::utqcLegislationReview');
{$IfEnd} //not Admin

end.