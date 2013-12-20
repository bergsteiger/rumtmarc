unit kwPopWordPublicateInMainDictionary;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopWordPublicateInMainDictionary.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::Compilation::pop_Word_PublicateInMainDictionary
//
// ��������� ��������� ����� � �������� �������. ���� ����� ����� ��� ��� ����, �� ��������
// ��������������� (Redifinition)
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
 TkwPopWordPublicateInMainDictionary = {final} class(_kwWordFromStackWord_)
  {* ��������� ��������� ����� � �������� �������. ���� ����� ����� ��� ��� ����, �� �������� ��������������� (Redifinition) }
 protected
 // realized methods
   procedure DoWord(aWord: TtfwWord;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopWordPublicateInMainDictionary
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  SysUtils,
  tfwAutoregisteredDiction,
  tfwScriptEngine,
  Windows,
  Controls,
  afwFacade,
  Forms
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwPopWordPublicateInMainDictionary;

{$Include ..\ScriptEngine\kwWordFromStackWord.imp.pas}

// start class TkwPopWordPublicateInMainDictionary

procedure TkwPopWordPublicateInMainDictionary.DoWord(aWord: TtfwWord;
  const aCtx: TtfwContext);
//#UC START# *4F37B07C0042_4F41FF720315_var*
var
 l_KW : TtfwKeyword;
 l_Key : TtfwKeyWord;
 l_PrevWord : TtfwWord;
 l_PrevWordKW : TtfwKeyWord;
//#UC END# *4F37B07C0042_4F41FF720315_var*
begin
//#UC START# *4F37B07C0042_4F41FF720315_impl*
 l_Key := TtfwKeyWord(aWord.Key);
 l_KW := aCtx.rEngine.As_ItfwWordCompiler.CheckWord(l_Key.AsCStr);
 Assert(aWord <> l_KW.Word);
 try
  l_PrevWord := l_KW.Word;
  if (l_PrevWord <> nil) then
   l_PrevWordKW := TtfwKeyWord(l_PrevWord.Key)
  else
   l_PrevWordKW := nil;
  aWord.Redefines := l_PrevWord;
  // - �������, ��� ����� (��������) ����� ���������������
  l_KW.Word := aWord;
  // - ������������ ����� ����� � �������
  if (l_PrevWord <> nil) then
   l_PrevWord.Key := l_PrevWordKW;
 finally
  aWord.Key := l_Key;
  // - ��������������� ����� ���������� �������� �����
 end;//try..finally
//#UC END# *4F37B07C0042_4F41FF720315_impl*
end;//TkwPopWordPublicateInMainDictionary.DoWord

class function TkwPopWordPublicateInMainDictionary.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:Word:PublicateInMainDictionary';
end;//TkwPopWordPublicateInMainDictionary.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwWordFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.