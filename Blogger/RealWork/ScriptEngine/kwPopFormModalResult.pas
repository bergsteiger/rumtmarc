unit kwPopFormModalResult;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopFormModalResult.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::FormsProcessing::pop_form_ModalResult
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
 TkwPopFormModalResult = {final} class(_kwFormFromStackWord_)
 protected
 // realized methods
   procedure DoForm(aForm: TForm;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopFormModalResult
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

type _Instance_R_ = TkwPopFormModalResult;

{$Include ..\ScriptEngine\kwFormFromStackWord.imp.pas}

// start class TkwPopFormModalResult

procedure TkwPopFormModalResult.DoForm(aForm: TForm;
  const aCtx: TtfwContext);
//#UC START# *4F2145550317_51A5DEC70213_var*
//#UC END# *4F2145550317_51A5DEC70213_var*
begin
//#UC START# *4F2145550317_51A5DEC70213_impl*
 RunnerAssert(fsModal in aForm.FormState, '��� �� ��������� �����!', aCtx);
 aCtx.rEngine.PushInt(aForm.ModalResult);
//#UC END# *4F2145550317_51A5DEC70213_impl*
end;//TkwPopFormModalResult.DoForm

class function TkwPopFormModalResult.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:form:ModalResult';
end;//TkwPopFormModalResult.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwFormFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.