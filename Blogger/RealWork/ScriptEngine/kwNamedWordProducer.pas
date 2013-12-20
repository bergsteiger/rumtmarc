unit kwNamedWordProducer;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwNamedWordProducer.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::NamedWordProducer
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
 TkwNamedWordProducer = {final} class(_tfwWordProducer_)
 protected
 // overridden protected methods
   procedure FinishDefinitionOfNewWord(aWordToFinish: TtfwKeyWord;
     aCompiled: TkwCompiledWord;
     const aContext: TtfwContext); override;
     {* ��������� ����������� ����� ���������� ����� }
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwNamedWordProducer
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledNamedWordProducer,
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

type _Instance_R_ = TkwNamedWordProducer;

{$Include ..\ScriptEngine\tfwWordProducer.imp.pas}

// start class TkwNamedWordProducer

class function TkwNamedWordProducer.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'NamedWordProducer';
end;//TkwNamedWordProducer.GetWordNameForRegister

procedure TkwNamedWordProducer.FinishDefinitionOfNewWord(aWordToFinish: TtfwKeyWord;
  aCompiled: TkwCompiledWord;
  const aContext: TtfwContext);
//#UC START# *4F219629036A_4F39486A0307_var*
var
 l_W : TkwCompiledNamedWordProducer;
//#UC END# *4F219629036A_4F39486A0307_var*
begin
//#UC START# *4F219629036A_4F39486A0307_impl*
 Assert((aCompiled.Code = nil) OR (aCompiled.Code.Count = 0));
 aContext.rParser.NextToken;
 l_W := TkwCompiledNamedWordProducer.Create(Self, TtfwCStringFactory.C(aContext.rParser.TokenLongString));
 try
  aWordToFinish.Word := l_W;
 finally
  FreeAndNil(l_W);
 end;//try..finally
//#UC END# *4F219629036A_4F39486A0307_impl*
end;//TkwNamedWordProducer.FinishDefinitionOfNewWord

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwWordProducer.imp.pas}
{$IfEnd} //not NoScripts

end.