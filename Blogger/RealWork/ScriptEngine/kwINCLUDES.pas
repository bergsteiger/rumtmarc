unit kwINCLUDES;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwINCLUDES.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::IncludesAndUses::IncludesAndUsesPack::INCLUDES
//
// ��� USES, �� ��������� �������� ����� �� ���������� ������� - ������ ����� ���� �������
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
  kwIncluded,
  l3Interfaces,
  kwCompiledWord,
  l3ParserInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\kwUsesLike.imp.pas}
 TkwINCLUDES = {final} class(_kwUsesLike_)
  {* ��� USES, �� ��������� �������� ����� �� ���������� ������� - ������ ����� ���� ������� }
 protected
 // overridden protected methods
   function GetIncludedClass: RkwIncluded; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwINCLUDES
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwInnerIncluded,
  l3String,
  SysUtils,
  l3Types,
  l3Parser,
  kwInteger,
  kwString,
  TypInfo,
  l3Base,
  kwIntegerFactory,
  kwStringFactory,
  l3Chars,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwINCLUDES;

{$Include ..\ScriptEngine\kwUsesLike.imp.pas}

// start class TkwINCLUDES

class function TkwINCLUDES.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'INCLUDES';
end;//TkwINCLUDES.GetWordNameForRegister

function TkwINCLUDES.GetIncludedClass: RkwIncluded;
//#UC START# *4F3AA4E10327_4F3AA502005F_var*
//#UC END# *4F3AA4E10327_4F3AA502005F_var*
begin
//#UC START# *4F3AA4E10327_4F3AA502005F_impl*
 Result := TkwInnerIncluded;
//#UC END# *4F3AA4E10327_4F3AA502005F_impl*
end;//TkwINCLUDES.GetIncludedClass

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwUsesLike.imp.pas}
{$IfEnd} //not NoScripts

end.