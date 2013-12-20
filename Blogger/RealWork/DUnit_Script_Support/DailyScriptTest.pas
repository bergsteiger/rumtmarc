unit DailyScriptTest;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "DUnit Script Support"
// ������: "w:/common/components/rtl/Garant/DUnit_Script_Support/DailyScriptTest.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi DUnit Scripting::DUnit Script Support::DUnitKeyWordsSupport::TDailyScriptTest
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\DUnit_Script_Support\dsDefine.inc}

interface

uses
  Classes
  {$If defined(nsTest) AND not defined(NoScripts)}
  ,
  AutoTest
  {$IfEnd} //nsTest AND not NoScripts
  
  ;

type
 TDailyScriptTest = {abstract} class(TAutoTest)
 end;//TDailyScriptTest

implementation

uses
  SysUtils
  ;

end.