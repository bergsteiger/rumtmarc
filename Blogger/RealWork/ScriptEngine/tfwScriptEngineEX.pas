unit tfwScriptEngineEX;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/tfwScriptEngineEX.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::ScriptEngine::TtfwScriptEngineEX
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TtfwScriptEngineEX = class(TtfwScriptEngine)
 end;//TtfwScriptEngineEX
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  EditorWordsPack,
  VCLSupportPack
  {$If not defined(NoScripts) AND not defined(NoVCM)}
  ,
  VCMSupportPack
  {$IfEnd} //not NoScripts AND not NoVCM
  ,
  StandartWordsPack,
  tfwStringWords,
  CodeFlowWordsPack,
  CompilationPack,
  StereotypingPack,
  ModifiersPack,
  BasicsPack,
  WordsDefinitionPack,
  VarProducingPack,
  IncludesAndUsesPack,
  MembersWorkingPack,
  TypeCheckingPack,
  EditorFromStackKeyWordsPack,
  FileProcessingPack,
  ArrayProcessingPack,
  ExtendedPrimitivesPack,
  SysUtilsPack,
  EtalonsWorkingPack,
  kwVTControlsPack,
  QueryCardProcessingPack
  {$If not defined(NoScripts) AND not defined(NoVCM)}
  ,
  VCMWordsPack
  {$IfEnd} //not NoScripts AND not NoVCM
  ,
  ControlsProcessingPack,
  CurrentEditorWordsPack,
  WinUtilsPack,
  MouseInputPack,
  EditorParaCoordsToScreenPack,
  MenuWordsPack,
  ModalDialogsKeywordsPack,
  RTTIPack,
  KeyboardInputPack,
  vtOutlinerWordsPack,
  kwFiltersAndGeneratorsPack
  {$If defined(Nemesis) AND not defined(NoScripts)}
  ,
  StatusBarWords
  {$IfEnd} //Nemesis AND not NoScripts
  ,
  FormsProcessingPack
  {$If not defined(NoScripts) AND not defined(NoVGScene)}
  ,
  VGSceneWordsPack
  {$IfEnd} //not NoScripts AND not NoVGScene
  ,
  ObjectFromstackWords,
  TreeViewWordsPack,
  FontWordsPack
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}


{$IfEnd} //not NoScripts
end.