unit kwDIV;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwDIV.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::StandartWords::TkwDIV
//
// DIV
// ( n1 n2 -- n3 )
// ����� n1 �� n2, ���������� ������� n3.
// ��������� ���������� /
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
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\kwDivide.imp.pas}
 TkwDIV = {final} class(_kwDivide_)
  {* DIV
( n1 n2 -- n3 )
            ����� n1 �� n2, ���������� ������� n3.
��������� ���������� / }
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwDIV
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwDIV;

{$Include ..\ScriptEngine\kwDivide.imp.pas}

// start class TkwDIV

class function TkwDIV.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4F912119008A_var*
//#UC END# *4DB0614603C8_4F912119008A_var*
begin
//#UC START# *4DB0614603C8_4F912119008A_impl*
 Result := 'DIV';
//#UC END# *4DB0614603C8_4F912119008A_impl*
end;//TkwDIV.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwDivide.imp.pas}
{$IfEnd} //not NoScripts

end.