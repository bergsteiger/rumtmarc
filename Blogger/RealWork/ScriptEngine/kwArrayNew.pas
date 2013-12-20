unit kwArrayNew;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwArrayNew.pas"
// �����: 01.12.2011 19:39
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::ArrayProcessing::array_New
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
  tfwArray,
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
 TkwArrayNew = class(_tfwAutoregisteringWord_)
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwArrayNew
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwArrayNew;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwArrayNew

procedure TkwArrayNew.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4ED79F90007E_var*
//#UC END# *4DAEEDE10285_4ED79F90007E_var*
begin
//#UC START# *4DAEEDE10285_4ED79F90007E_impl*
 aCtx.rEngine.Push(TtfwStackValue_C(TtfwArray.Make));
//#UC END# *4DAEEDE10285_4ED79F90007E_impl*
end;//TkwArrayNew.DoDoIt

class function TkwArrayNew.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'array:New';
end;//TkwArrayNew.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.