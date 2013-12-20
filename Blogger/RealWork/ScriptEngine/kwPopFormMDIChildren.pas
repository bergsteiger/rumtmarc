unit kwPopFormMDIChildren;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopFormMDIChildren.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::FormsProcessing::pop_form_MDIChildren
//
// *������:* anID aForm pop:form:MDIChildren
// *��������:* ���������� � ���� ��������� �� �������� �����, ���� ����. anID - ����� ��������
// ����� � ������ �������� ����.
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
 TkwPopFormMDIChildren = class(_kwFormFromStackWord_)
  {* *������:* anID aForm pop:form:MDIChildren
*��������:* ���������� � ���� ��������� �� �������� �����, ���� ����. anID - ����� �������� ����� � ������ �������� ����. }
 protected
 // realized methods
   procedure DoForm(aForm: TForm;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopFormMDIChildren
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

type _Instance_R_ = TkwPopFormMDIChildren;

{$Include ..\ScriptEngine\kwFormFromStackWord.imp.pas}

// start class TkwPopFormMDIChildren

procedure TkwPopFormMDIChildren.DoForm(aForm: TForm;
  const aCtx: TtfwContext);
//#UC START# *4F2145550317_4E4CC5300064_var*
//#UC END# *4F2145550317_4E4CC5300064_var*
begin
//#UC START# *4F2145550317_4E4CC5300064_impl*
 RunnerAssert(aCtx.rEngine.IsTopInt, '�� ����� ����� �������� �����!', aCtx); 
 aCtx.rEngine.PushObj(aForm.MDIChildren[aCtx.rEngine.PopInt]);
//#UC END# *4F2145550317_4E4CC5300064_impl*
end;//TkwPopFormMDIChildren.DoForm

class function TkwPopFormMDIChildren.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:form:MDIChildren';
end;//TkwPopFormMDIChildren.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwFormFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.