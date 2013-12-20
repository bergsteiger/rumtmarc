unit AutoTestSuiteWithDUnitSupport;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "DUnit Script Support"
// ������: "w:/common/components/rtl/Garant/DUnit_Script_Support/AutoTestSuiteWithDUnitSupport.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi DUnit Scripting::DUnit Script Support::DUnitKeyWordsSupport::TAutoTestSuiteWithDUnitSupport
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
  CustomAutoTestsSuite
  {$IfEnd} //nsTest AND not NoScripts
  
  ;

type
 TAutoTestSuiteWithDUnitSupport = class(TCustomAutoTestSuite)
 end;//TAutoTestSuiteWithDUnitSupport

implementation

uses
  SysUtils
  {$If defined(nsTest)}
  ,
  kwKeyWordsPack
  {$IfEnd} //nsTest
  
  ;

end.