unit kwPopWordParent;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopWordParent.pas"
// �����: 12.02.2012 16:30
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::Compilation::pop_Word_Parent
//
// ���������� �����, � ������� ������� ������
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
 {$Include ..\ScriptEngine\kwWordFromStackWord.imp.pas}
 TkwPopWordParent = {final} class(_kwWordFromStackWord_)
  {* ���������� �����, � ������� ������� ������ }
 protected
 // realized methods
   procedure DoWord(aWord: TtfwWord;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopWordParent
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledWord,
  tfwAutoregisteredDiction,
  tfwScriptEngine,
  Windows,
  Controls,
  afwFacade,
  Forms
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwPopWordParent;

{$Include ..\ScriptEngine\kwWordFromStackWord.imp.pas}

// start class TkwPopWordParent

procedure TkwPopWordParent.DoWord(aWord: TtfwWord;
  const aCtx: TtfwContext);
//#UC START# *4F37B07C0042_4F37B0B3000C_var*
//#UC END# *4F37B07C0042_4F37B0B3000C_var*
begin
//#UC START# *4F37B07C0042_4F37B0B3000C_impl*
 if (aWord Is TkwCompiledWord) then
  aCtx.rEngine.Push(TtfwStackValue_C(TkwCompiledWord(aWord).ParentWord))
 else
  aCtx.rEngine.Push(TtfwStackValue_NULL);
//#UC END# *4F37B07C0042_4F37B0B3000C_impl*
end;//TkwPopWordParent.DoWord

class function TkwPopWordParent.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:Word:Parent';
end;//TkwPopWordParent.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwWordFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.