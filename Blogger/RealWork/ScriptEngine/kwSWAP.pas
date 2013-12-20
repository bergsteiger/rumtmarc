unit kwSWAP;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwSWAP.pas"
// �����: 26.04.2011 21:41
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::StandartWords::TkwSWAP
//
// ������������ ��� ������� �������� �����. ( x1 x2 -- x2 x1 )
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
 TkwSWAP = class(_tfwAutoregisteringWord_)
  {* ������������ ��� ������� �������� �����. ( x1 x2 -- x2 x1 ) }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwSWAP
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwSWAP;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwSWAP

procedure TkwSWAP.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DB703A1001C_var*
//#UC END# *4DAEEDE10285_4DB703A1001C_var*
begin
//#UC START# *4DAEEDE10285_4DB703A1001C_impl*
 aCtx.rEngine.Swap;
//#UC END# *4DAEEDE10285_4DB703A1001C_impl*
end;//TkwSWAP.DoDoIt

class function TkwSWAP.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DB703A1001C_var*
//#UC END# *4DB0614603C8_4DB703A1001C_var*
begin
//#UC START# *4DB0614603C8_4DB703A1001C_impl*
 Result := 'SWAP';
//#UC END# *4DB0614603C8_4DB703A1001C_impl*
end;//TkwSWAP.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.