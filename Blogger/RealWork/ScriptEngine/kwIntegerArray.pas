unit kwIntegerArray;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwIntegerArray.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::PrimitiveWords::TkwIntegerArray
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
  kwIntegerList
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 _l3OpenArray_Parent_ = TkwIntegerList;
 {$Include w:\common\components\rtl\Garant\L3\l3OpenArray.imp.pas}
 TkwIntegerArray = class(_l3OpenArray_)
 end;//TkwIntegerArray
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  l3Base
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwIntegerArray;

{$Include w:\common\components\rtl\Garant\L3\l3OpenArray.imp.pas}


{$IfEnd} //not NoScripts
end.