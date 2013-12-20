unit kwPopFormNext;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopFormNext.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::FormsProcessing::pop_form_Next
//
// form:Next
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
 TkwPopFormNext = class(_kwFormFromStackWord_)
  {* form:Next }
 protected
 // realized methods
   procedure DoForm(aForm: TForm;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopFormNext
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

type _Instance_R_ = TkwPopFormNext;

{$Include ..\ScriptEngine\kwFormFromStackWord.imp.pas}

// start class TkwPopFormNext

procedure TkwPopFormNext.DoForm(aForm: TForm;
  const aCtx: TtfwContext);
//#UC START# *4F2145550317_4EF1E1DD01A1_var*
//#UC END# *4F2145550317_4EF1E1DD01A1_var*
begin
//#UC START# *4F2145550317_4EF1E1DD01A1_impl*
 aForm.Next;
//#UC END# *4F2145550317_4EF1E1DD01A1_impl*
end;//TkwPopFormNext.DoForm

class function TkwPopFormNext.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:form:Next';
end;//TkwPopFormNext.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwFormFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.