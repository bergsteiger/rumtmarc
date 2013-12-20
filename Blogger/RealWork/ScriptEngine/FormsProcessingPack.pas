unit FormsProcessingPack;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/FormsProcessingPack.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeywordsPack::Class>> Shared Delphi Scripting::ScriptEngine::FormsProcessing::FormsProcessingPack
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
  kwPopFormFormStyle,
  kwPopFormSetWindowState,
  kwPopFormGetWindowState
  {$If not defined(NoScripts) AND not defined(NoVCM)}
  ,
  kwPopVcmFormUserType
  {$IfEnd} //not NoScripts AND not NoVCM
  
  {$If not defined(NoScripts) AND not defined(NoVCM)}
  ,
  kwPopVcmFormFormID
  {$IfEnd} //not NoScripts AND not NoVCM
  
  {$If not defined(NoScripts) AND not defined(NoVCM)}
  ,
  kwPopVcmFormIsFloatingState
  {$IfEnd} //not NoScripts AND not NoVCM
  
  {$If not defined(NoScripts) AND not defined(NoVCM)}
  ,
  kwPopVcmFormIsFloatingStateAndParentNotVisible
  {$IfEnd} //not NoScripts AND not NoVCM
  ,
  kwPopFormNext,
  kwPopFormHasControl,
  kwPopFormMDIChildCount,
  kwPopFormMDIChildren,
  kwPopFormClose
  {$If not defined(NoScripts) AND not defined(NoVCM)}
  ,
  kwTryFocusOnForm
  {$IfEnd} //not NoScripts AND not NoVCM
  ,
  kwIterateForms,
  kwPopFormActiveMDIChild,
  kwPopFormModalResult
  ;

{$IfEnd} //not NoScripts
end.