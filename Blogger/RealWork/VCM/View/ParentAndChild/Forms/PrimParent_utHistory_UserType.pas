unit PrimParent_utHistory_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/common/components/gui/Garant/VCM/View/ParentAndChild/Forms/PrimParent_utHistory_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> Shared Delphi F1 Like Application::F1Like::View::ParentAndChild::PrimParent::utHistory
//
// ������� ���������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\common\components\gui\f1LikeAppDefine.inc}

interface

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
   { ��������� ��� ���� ����� utHistory }
  utHistoryName = 'utHistory';
   { ��������� ������������� ����������������� ���� "������� ���������" }
  utHistory = TvcmUserType(0);
   { ������� ��������� }

type
  Tkw_FormUserType_utHistory = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� utHistory }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utHistory

implementation

// start class Tkw_FormUserType_utHistory

{$If not defined(NoScripts)}
function Tkw_FormUserType_utHistory.GetInteger: Integer;
 {-}
begin
 Result := utHistory;
end;//Tkw_FormUserType_utHistory.GetInteger
{$IfEnd} //not NoScripts

initialization
// ����������� Tkw_FormUserType_utHistory
 Tkw_FormUserType_utHistory.Register('���_�����::utHistory');

end.