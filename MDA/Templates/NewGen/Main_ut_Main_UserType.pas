unit Main_ut_Main_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ������: "w:/MDProcess/NewGen/Main_ut_Main_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> MDProcess$NewGen$Interface::NewGen::NewGen::Main::ut_Main
//
// �� ����
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\MDProcess\NewGen\ngDefine.inc}

interface

{$If defined(NewGen)}
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
   { ��������� ��� ���� ����� ut_Main }
  ut_MainName = 'ut_Main';
   { ��������� ������������� ����������������� ���� "�� ����" }
  ut_Main = TvcmUserType(0);
   { �� ���� }

type
  Tkw_FormUserType_ut_Main = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� ut_Main }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_ut_Main
{$IfEnd} //NewGen

implementation

{$If defined(NewGen)}
// start class Tkw_FormUserType_ut_Main

{$If not defined(NoScripts)}
function Tkw_FormUserType_ut_Main.GetInteger: Integer;
 {-}
begin
 Result := ut_Main;
end;//Tkw_FormUserType_ut_Main.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //NewGen

initialization
{$If defined(NewGen)}
// ����������� Tkw_FormUserType_ut_Main
 Tkw_FormUserType_ut_Main.Register('���_�����::ut_Main');
{$IfEnd} //NewGen

end.