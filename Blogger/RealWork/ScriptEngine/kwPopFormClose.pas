unit kwPopFormClose;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopFormClose.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::FormsProcessing::pop_form_Close
//
// ������� �����.
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
  Forms,
  tfwScriptingInterfaces,
  Controls,
  Classes
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\kwFormFromStackWord.imp.pas}
 TkwPopFormClose = class(_kwFormFromStackWord_)
  {* ������� �����. }
 protected
 // realized methods
   procedure DoForm(aForm: TForm;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopFormClose
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine,
  Windows,
  afwFacade
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwPopFormClose;

{$Include ..\ScriptEngine\kwFormFromStackWord.imp.pas}

// start class TkwPopFormClose

procedure TkwPopFormClose.DoForm(aForm: TForm;
  const aCtx: TtfwContext);
//#UC START# *4F2145550317_4E4CBC5D004E_var*
//#UC END# *4F2145550317_4E4CBC5D004E_var*
begin
//#UC START# *4F2145550317_4E4CBC5D004E_impl*
 aForm.Close;
//#UC END# *4F2145550317_4E4CBC5D004E_impl*
end;//TkwPopFormClose.DoForm

class function TkwPopFormClose.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:form:Close';
end;//TkwPopFormClose.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwFormFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.