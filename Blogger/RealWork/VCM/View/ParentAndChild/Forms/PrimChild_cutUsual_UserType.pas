unit PrimChild_cutUsual_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/common/components/gui/Garant/VCM/View/ParentAndChild/Forms/PrimChild_cutUsual_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> Shared Delphi F1 Like Application::F1Like::View::ParentAndChild::PrimChild::cutUsual
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
   { ��������� ��� ���� ����� cutUsual }
  cutUsualName = 'cutUsual';
   { ��������� ������������� ����������������� ���� "" }
  cutUsual = TvcmUserType(0);

type
  Tkw_FormUserType_cutUsual = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� cutUsual }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_cutUsual

implementation

// start class Tkw_FormUserType_cutUsual

{$If not defined(NoScripts)}
function Tkw_FormUserType_cutUsual.GetInteger: Integer;
 {-}
begin
 Result := cutUsual;
end;//Tkw_FormUserType_cutUsual.GetInteger
{$IfEnd} //not NoScripts

initialization
// ����������� Tkw_FormUserType_cutUsual
 Tkw_FormUserType_cutUsual.Register('���_�����::cutUsual');

end.