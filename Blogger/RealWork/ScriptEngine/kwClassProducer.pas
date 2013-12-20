unit kwClassProducer;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwClassProducer.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::ClassProducer
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
  l3Interfaces,
  tfwScriptingInterfaces,
  kwCompiledWord,
  l3ParserInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\tfwWordProducer.imp.pas}
 TkwClassProducer = {final} class(_tfwWordProducer_)
 protected
 // overridden protected methods
   procedure FinishDefinitionOfNewWord(aWordToFinish: TtfwKeyWord;
     aCompiled: TkwCompiledWord;
     const aContext: TtfwContext); override;
     {* ��������� ����������� ����� ���������� ����� }
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwClassProducer
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledClassProducer,
  kwCompiledVar,
  SysUtils,
  l3String,
  l3Parser,
  kwInteger,
  kwString,
  TypInfo,
  l3Base,
  kwIntegerFactory,
  kwStringFactory,
  l3Chars,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwClassProducer;

{$Include ..\ScriptEngine\tfwWordProducer.imp.pas}

// start class TkwClassProducer

class function TkwClassProducer.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'ClassProducer';
end;//TkwClassProducer.GetWordNameForRegister

procedure TkwClassProducer.FinishDefinitionOfNewWord(aWordToFinish: TtfwKeyWord;
  aCompiled: TkwCompiledWord;
  const aContext: TtfwContext);
//#UC START# *4F219629036A_4F39699400FB_var*
var
 l_W : TkwCompiledClassProducer;
//#UC END# *4F219629036A_4F39699400FB_var*
begin
//#UC START# *4F219629036A_4F39699400FB_impl*
 Assert((aCompiled.Code = nil) OR (aCompiled.Code.Count = 0));
 l_W := TkwCompiledClassProducer.Create(Self);
 try
  aWordToFinish.Word := l_W;
 finally
  FreeAndNil(l_W);
 end;//try..finally*)
 //inherited;
//#UC END# *4F219629036A_4F39699400FB_impl*
end;//TkwClassProducer.FinishDefinitionOfNewWord

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwWordProducer.imp.pas}
{$IfEnd} //not NoScripts

end.