unit DictionContainerUserTypes_slqtDiction_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/DictionContainerUserTypes_slqtDiction_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 ���������� ��������::DictionLike::View::DictionLikeForms::DictionContainerUserTypes::slqtDiction
//
// �������� �������
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
   { ��������� ��� ���� ����� slqtDiction }
  slqtDictionName = 'slqtDiction';
   { ��������� ������������� ����������������� ���� "�������� �������" }
  slqtDiction = TvcmUserType(0);
   { �������� ������� }

type
  Tkw_FormUserType_slqtDiction = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� slqtDiction }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_slqtDiction
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_slqtDiction

{$If not defined(NoScripts)}
function Tkw_FormUserType_slqtDiction.GetInteger: Integer;
 {-}
begin
 Result := slqtDiction;
end;//Tkw_FormUserType_slqtDiction.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_slqtDiction
 Tkw_FormUserType_slqtDiction.Register('���_�����::slqtDiction');
{$IfEnd} //not Admin AND not Monitorings

end.