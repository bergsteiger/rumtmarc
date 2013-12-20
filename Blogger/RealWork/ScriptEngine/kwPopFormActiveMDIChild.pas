unit kwPopFormActiveMDIChild;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopFormActiveMDIChild.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::FormsProcessing::pop_form_ActiveMDIChild
//
// *������:* aForm pop:form:ActiveMDIChild
// *��������:* ���������� � ���� ��������� �� �������� �������� �����, ���� ����.
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
 TkwPopFormActiveMDIChild = {final} class(_kwFormFromStackWord_)
  {* *������:* aForm pop:form:ActiveMDIChild
*��������:* ���������� � ���� ��������� �� �������� �������� �����, ���� ����. }
 protected
 // realized methods
   procedure DoForm(aForm: TForm;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopFormActiveMDIChild
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

type _Instance_R_ = TkwPopFormActiveMDIChild;

{$Include ..\ScriptEngine\kwFormFromStackWord.imp.pas}

// start class TkwPopFormActiveMDIChild

procedure TkwPopFormActiveMDIChild.DoForm(aForm: TForm;
  const aCtx: TtfwContext);
//#UC START# *4F2145550317_512F082300F1_var*
//#UC END# *4F2145550317_512F082300F1_var*
begin
//#UC START# *4F2145550317_512F082300F1_impl*
 aCtx.rEngine.PushObj(aForm.ActiveMDIChild);
//#UC END# *4F2145550317_512F082300F1_impl*
end;//TkwPopFormActiveMDIChild.DoForm

class function TkwPopFormActiveMDIChild.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:form:ActiveMDIChild';
end;//TkwPopFormActiveMDIChild.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwFormFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.