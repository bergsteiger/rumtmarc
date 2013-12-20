unit F1AutoScripter;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "F1 Shell Tests Core"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/F1AutoScripter.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<TestCase::Class>> F1 ��������� ������::F1 Shell Tests Core::Core::TF1AutoScripter
//
// ������ � ���������� ���������������
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
  InsiderOwnScripter
  ;
{$IfEnd} //nsTest

{$If defined(nsTest)}
type
 TF1AutoScripter = {abstract} class(TInsiderOwnScripter)
  {* ������ � ���������� ��������������� }
 protected
 // overridden protected methods
   function GetFolder: AnsiString; override;
     {* ����� � ������� ������ ���� }
   function GetModelElementGUID: AnsiString; override;
     {* ������������� �������� ������, ������� ��������� ���� }
    {$If not defined(NoScripts)}
   function ResolveScriptFilePath(const aFileName: AnsiString): AnsiString; override;
    {$IfEnd} //not NoScripts
   class function IsScript: Boolean; override;
     {* ��� ��� ������������ - ��-�� ������ �������� � ���� ������������� � TTestSuite. }
 end;//TF1AutoScripter
{$IfEnd} //nsTest

implementation

{$If defined(nsTest)}
uses
  SysUtils,
  TestFrameWork
  ;
{$IfEnd} //nsTest

{$If defined(nsTest)}

// start class TF1AutoScripter

function TF1AutoScripter.GetFolder: AnsiString;
 {-}
begin
 Result := 'Core';
end;//TF1AutoScripter.GetFolder

function TF1AutoScripter.GetModelElementGUID: AnsiString;
 {-}
begin
 Result := '4DC3F6DD00F1';
end;//TF1AutoScripter.GetModelElementGUID

{$If not defined(NoScripts)}
function TF1AutoScripter.ResolveScriptFilePath(const aFileName: AnsiString): AnsiString;
//#UC START# *4DB03121022B_4DC3F6DD00F1_var*
//#UC END# *4DB03121022B_4DC3F6DD00F1_var*
begin
//#UC START# *4DB03121022B_4DC3F6DD00F1_impl*
 if (ExtractFilePath(aFileName) <> '') then
  Result := aFileName
 else
  Result := FileFromCurrent('Auto') + '\'+ aFileName;
//#UC END# *4DB03121022B_4DC3F6DD00F1_impl*
end;//TF1AutoScripter.ResolveScriptFilePath
{$IfEnd} //not NoScripts

class function TF1AutoScripter.IsScript: Boolean;
//#UC START# *4DC395670274_4DC3F6DD00F1_var*
//#UC END# *4DC395670274_4DC3F6DD00F1_var*
begin
//#UC START# *4DC395670274_4DC3F6DD00F1_impl*
 Result := True;
//#UC END# *4DC395670274_4DC3F6DD00F1_impl*
end;//TF1AutoScripter.IsScript

{$IfEnd} //nsTest

end.