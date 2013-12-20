unit kwSub;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwSub.pas"
// �����: 26.04.2011 20:50
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::StandartWords::TkwSub
//
// -                                  "minus"
// ( n1|u1 n2|u2 -- n3|u3 )
// �������� n2|u2 �� n1|u1, � ���������� ������� n3|u3.
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
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
 TkwSub = class(_tfwAutoregisteringWord_)
  {* -                                  "minus"                      
( n1|u1 n2|u2 -- n3|u3 )
            �������� n2|u2 �� n1|u1, � ���������� ������� n3|u3. }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwSub
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwSub;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwSub

procedure TkwSub.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DB6F7C202AB_var*
var
 l_A : Integer;
//#UC END# *4DAEEDE10285_4DB6F7C202AB_var*
begin
//#UC START# *4DAEEDE10285_4DB6F7C202AB_impl*
 l_A := aCtx.rEngine.PopInt;
 aCtx.rEngine.PushInt(aCtx.rEngine.PopInt - l_A);
//#UC END# *4DAEEDE10285_4DB6F7C202AB_impl*
end;//TkwSub.DoDoIt

class function TkwSub.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DB6F7C202AB_var*
//#UC END# *4DB0614603C8_4DB6F7C202AB_var*
begin
//#UC START# *4DB0614603C8_4DB6F7C202AB_impl*
 Result := '-';
//#UC END# *4DB0614603C8_4DB6F7C202AB_impl*
end;//TkwSub.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.