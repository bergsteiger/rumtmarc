unit kwCompiledMembersPath;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledMembersPath.pas"
// �����: 15.02.2012 19:27
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::MembersWorking::TkwCompiledMembersPath
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
  kwCompiledWord
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwCompiledMembersPath = class(TkwCompiledWord)
 protected
 // overridden protected methods
   function AllowLocalDictionary: Boolean; override;
 end;//TkwCompiledMembersPath
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}

// start class TkwCompiledMembersPath

function TkwCompiledMembersPath.AllowLocalDictionary: Boolean;
//#UC START# *4DC98A4801B6_4F3BCEC00027_var*
//#UC END# *4DC98A4801B6_4F3BCEC00027_var*
begin
//#UC START# *4DC98A4801B6_4F3BCEC00027_impl*
 Result := false;
//#UC END# *4DC98A4801B6_4F3BCEC00027_impl*
end;//TkwCompiledMembersPath.AllowLocalDictionary

{$IfEnd} //not NoScripts

end.