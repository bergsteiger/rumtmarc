unit EtalonsWorkingPack;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/EtalonsWorkingPack.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeywordsPack::Class>> Shared Delphi Scripting::ScriptEngine::EtalonsWorking::EtalonsWorkingPack
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCheckOutputWithInput,
  kwCheckEtalon
  {$If defined(nsTest) AND not defined(NoScripts)}
  ,
  kwBeginWaitPrint
  {$IfEnd} //nsTest AND not NoScripts
  
  {$If defined(nsTest) AND not defined(NoScripts)}
  ,
  kwEndWaitPrint
  {$IfEnd} //nsTest AND not NoScripts
  
  ;

{$IfEnd} //not NoScripts
end.