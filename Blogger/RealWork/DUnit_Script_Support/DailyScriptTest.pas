unit DailyScriptTest;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "DUnit Script Support"
// Модуль: "w:/common/components/rtl/Garant/DUnit_Script_Support/DailyScriptTest.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi DUnit Scripting::DUnit Script Support::DUnitKeyWordsSupport::TDailyScriptTest
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