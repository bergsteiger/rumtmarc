unit kwInvertROT;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwInvertROT.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::StandartWords::TkwInvertROT
//
// ���������� ��� ������� �������� �����: ( x1 x2 x3 -- x3 x1 x2 )
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
 TkwInvertROT = class(_tfwAutoregisteringWord_)
  {* ���������� ��� ������� �������� �����: ( x1 x2 x3 -- x3 x1 x2 ) }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwInvertROT
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwInvertROT;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwInvertROT

procedure TkwInvertROT.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DEF5F770177_var*
//#UC END# *4DAEEDE10285_4DEF5F770177_var*
begin
//#UC START# *4DAEEDE10285_4DEF5F770177_impl*
 aCtx.rEngine.InvertRot;
//#UC END# *4DAEEDE10285_4DEF5F770177_impl*
end;//TkwInvertROT.DoDoIt

class function TkwInvertROT.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DEF5F770177_var*
//#UC END# *4DB0614603C8_4DEF5F770177_var*
begin
//#UC START# *4DB0614603C8_4DEF5F770177_impl*
 Result := '-ROT';
//#UC END# *4DB0614603C8_4DEF5F770177_impl*
end;//TkwInvertROT.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.