unit BaseSearchCard_ut_BaseSearchCard_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/BaseSearch/Forms/BaseSearchCard_ut_BaseSearchCard_UserType.pas"
// �����: 21.09.2009 20:01
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 �������� ����������::BaseSearch::View::BaseSearch$Module::BaseSearch::BaseSearchCard::ut_BaseSearchCard
//
// ������� �����
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
    { ��������� ��� ���� ����� ut_BaseSearchCard }
   ut_BaseSearchCardName = 'ut_BaseSearchCard';
    { ��������� ������������� ����������������� ���� "������� �����" }
   ut_BaseSearchCard = TvcmUserType(0);
    { ������� ����� }

type
   Tkw_FormUserType_ut_BaseSearchCard = class(TtfwInteger)
    {* ����� ������� ��� ���� ����� ut_BaseSearchCard }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_FormUserType_ut_BaseSearchCard
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_ut_BaseSearchCard

{$If not defined(NoScripts)}
function Tkw_FormUserType_ut_BaseSearchCard.GetInteger: Integer;
 {-}
begin
 Result := ut_BaseSearchCard;
end;//Tkw_FormUserType_ut_BaseSearchCard.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_ut_BaseSearchCard
 Tkw_FormUserType_ut_BaseSearchCard.Register('���_�����::ut_BaseSearchCard');
{$IfEnd} //not Admin AND not Monitorings

end.