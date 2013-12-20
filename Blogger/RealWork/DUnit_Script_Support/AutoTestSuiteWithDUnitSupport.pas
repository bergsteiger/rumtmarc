unit AutoTestSuiteWithDUnitSupport;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "DUnit Script Support"
// Модуль: "w:/common/components/rtl/Garant/DUnit_Script_Support/AutoTestSuiteWithDUnitSupport.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi DUnit Scripting::DUnit Script Support::DUnitKeyWordsSupport::TAutoTestSuiteWithDUnitSupport
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

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