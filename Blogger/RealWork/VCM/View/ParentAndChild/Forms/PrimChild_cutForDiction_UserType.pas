unit PrimChild_cutForDiction_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/common/components/gui/Garant/VCM/View/ParentAndChild/Forms/PrimChild_cutForDiction_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> Shared Delphi F1 Like Application::F1Like::View::ParentAndChild::PrimChild::cutForDiction
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
  ,
  PrimChild_cutUsual_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� cutForDiction }
  cutForDictionName = 'cutForDiction';
   { ��������� ������������� ����������������� ���� "" }
  cutForDiction = TvcmUserType(cutUsual + 1);

type
  Tkw_FormUserType_cutForDiction = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� cutForDiction }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_cutForDiction

implementation

// start class Tkw_FormUserType_cutForDiction

{$If not defined(NoScripts)}
function Tkw_FormUserType_cutForDiction.GetInteger: Integer;
 {-}
begin
 Result := cutForDiction;
end;//Tkw_FormUserType_cutForDiction.GetInteger
{$IfEnd} //not NoScripts

initialization
// ����������� Tkw_FormUserType_cutForDiction
 Tkw_FormUserType_cutForDiction.Register('���_�����::cutForDiction');

end.