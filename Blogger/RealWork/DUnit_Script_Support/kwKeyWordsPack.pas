unit kwKeyWordsPack;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "DUnit Script Support"
// ������: "w:/common/components/rtl/Garant/DUnit_Script_Support/kwKeyWordsPack.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeywordsPack::Class>> Shared Delphi DUnit Scripting::DUnit Script Support::DUnit Keywords::kwKeyWordsPack
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\DUnit_Script_Support\dsDefine.inc}

interface

{$If defined(nsTest)}
{$IfEnd} //nsTest

implementation

{$If defined(nsTest)}
uses
  kwPushDUnitForm,
  kwPopNodeToTest,
  kwPopITestGetName,
  kwPopITestHasScriptChildren,
  kwPopITestEnabled,
  kwPopITestGetSubFolder,
  kwIsNodeFolder,
  kwDeleteEtalons
  ;

{$IfEnd} //nsTest
end.