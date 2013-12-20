unit F1ScriptEngine;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/ScriptEngine/F1ScriptEngine.pas"
// �����: 20.04.2011 20:14
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 ��������� ��������::ScriptEngine::ScriptEngine::TF1ScriptEngine
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\GbaNemesis\nsDefine.inc}

interface

uses
  Classes
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngineEX
  {$IfEnd} //not NoScripts
  
  ;

type
 _F1WordsUser_Parent_ = TtfwScriptEngineEX;
 {$Include w:\garant6x\implementation\Garant\GbaNemesis\F1_Words\F1WordsUser.imp.pas}
 TF1ScriptEngine = class(_F1WordsUser_)
 end;//TF1ScriptEngine

implementation

uses
  kwAttributeSearch,
  kwMainMenu,
  kwOk,
  kwOpenDocument,
  F1ShellWordsPack
  {$If not defined(NoVCM)}
  ,
  TaskPanelWords
  {$IfEnd} //not NoVCM
  ,
  TreeViewWordsPack,
  Integration,
  f1WordsPack
  {$If not defined(NoScripts)}
  ,
  kwPopEditorDeleteUserComment
  {$IfEnd} //not NoScripts
  
  ;

{$Include w:\garant6x\implementation\Garant\GbaNemesis\F1_Words\F1WordsUser.imp.pas}

end.