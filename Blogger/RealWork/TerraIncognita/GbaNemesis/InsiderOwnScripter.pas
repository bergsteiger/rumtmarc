unit InsiderOwnScripter;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "F1 Shell Tests Core"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/InsiderOwnScripter.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<TestCase::Class>> F1 ��������� ������::F1 Shell Tests Core::Core::InsiderOwnScripter
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\GbaNemesis\nsDefine.inc}

interface

{$If defined(nsTest)}
uses
  Classes
  {$If defined(nsTest) AND not defined(NoScripts)}
  ,
  CustomInsiderScripter
  {$IfEnd} //nsTest AND not NoScripts
  
  ;
{$IfEnd} //nsTest

{$If defined(nsTest)}
type
 _F1Test_Parent_ = TCustomInsiderScripter;
 {$Include w:\garant6x\implementation\Garant\GbaNemesis\F1_Words\F1Test.imp.pas}
 TInsiderOwnScripter = {abstract} class(_F1Test_)
 protected
 // realized methods
    {$If defined(nsTest) AND not defined(NoScripts)}
   procedure Run; override;
    {$IfEnd} //nsTest AND not NoScripts
   {$If defined(nsTest) AND not defined(NoScripts)}
   procedure Prepare; override;
     {* ���������� � ������ DoIt }
   {$IfEnd} //nsTest AND not NoScripts
 protected
 // overridden protected methods
   function GetFolder: AnsiString; override;
     {* ����� � ������� ������ ���� }
   function GetModelElementGUID: AnsiString; override;
     {* ������������� �������� ������, ������� ��������� ���� }
 end;//TInsiderOwnScripter
{$IfEnd} //nsTest

implementation

{$If defined(nsTest)}
uses
  TestFrameWork,
  StdRes,
  lgTypes
  {$If not defined(NoVCM)}
  ,
  vcmBase
  {$IfEnd} //not NoVCM
  ,
  OfficeLike_Result_Controls,
  afwFacade,
  nsUtils,
  nsConst,
  bsTypesNew
  ;
{$IfEnd} //nsTest

{$If defined(nsTest)}

{$Include w:\garant6x\implementation\Garant\GbaNemesis\F1_Words\F1Test.imp.pas}

// start class TInsiderOwnScripter

{$If defined(nsTest) AND not defined(NoScripts)}
procedure TInsiderOwnScripter.Run;
//#UC START# *4DC3D2E00153_4DB03B1B0055_var*
//#UC END# *4DC3D2E00153_4DB03B1B0055_var*
begin
//#UC START# *4DC3D2E00153_4DB03B1B0055_impl*
 OwnScriptFromFile;
//#UC END# *4DC3D2E00153_4DB03B1B0055_impl*
end;//TInsiderOwnScripter.Run
{$IfEnd} //nsTest AND not NoScripts

{$If defined(nsTest) AND not defined(NoScripts)}
procedure TInsiderOwnScripter.Prepare;
//#UC START# *4DC3DE630030_4DB03B1B0055_var*
//#UC END# *4DC3DE630030_4DB03B1B0055_var*
begin
//#UC START# *4DC3DE630030_4DB03B1B0055_impl*
 g_WasBeep := false;
 Script('"������� ��� ���� ����� ��������" StyleTable:Restore ������������ "���������� ������� �� � ������������� ���������" "��������� ������ �������" clipboard:clear');
//#UC END# *4DC3DE630030_4DB03B1B0055_impl*
end;//TInsiderOwnScripter.Prepare
{$IfEnd} //nsTest AND not NoScripts

function TInsiderOwnScripter.GetFolder: AnsiString;
 {-}
begin
 Result := 'Core';
end;//TInsiderOwnScripter.GetFolder

function TInsiderOwnScripter.GetModelElementGUID: AnsiString;
 {-}
begin
 Result := '4DB03B1B0055';
end;//TInsiderOwnScripter.GetModelElementGUID

{$IfEnd} //nsTest

end.