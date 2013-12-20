unit kwFindMember;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwFindMember.pas"
// �����: 15.02.2012 21:25
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::MembersWorking::MembersWorkingPack::FindMember
//
// ���� ����� ������ ����, ������� ����� �� �����
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
  tfwScriptingInterfaces,
  kwCompiledWord,
  kwCompiledWordWorker,
  l3Interfaces,
  l3ParserInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\tfwWordWorker.imp.pas}
 TkwFindMember = {final} class(_tfwWordWorker_)
  {* ���� ����� ������ ����, ������� ����� �� ����� }
 protected
 // realized methods
   function CompiledWorkerClass: RkwCompiledWordWorker; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwFindMember
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledFindMember,
  l3Parser,
  kwInteger,
  kwString,
  SysUtils,
  TypInfo,
  l3Base,
  kwIntegerFactory,
  kwStringFactory,
  l3String,
  l3Chars,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwFindMember;

{$Include ..\ScriptEngine\tfwWordWorker.imp.pas}

// start class TkwFindMember

function TkwFindMember.CompiledWorkerClass: RkwCompiledWordWorker;
//#UC START# *4DCBD67C0362_4F3BEA4F0240_var*
//#UC END# *4DCBD67C0362_4F3BEA4F0240_var*
begin
//#UC START# *4DCBD67C0362_4F3BEA4F0240_impl*
 Result := TkwCompiledFindMember;
//#UC END# *4DCBD67C0362_4F3BEA4F0240_impl*
end;//TkwFindMember.CompiledWorkerClass

class function TkwFindMember.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := '%%';
end;//TkwFindMember.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwWordWorker.imp.pas}
{$IfEnd} //not NoScripts

end.