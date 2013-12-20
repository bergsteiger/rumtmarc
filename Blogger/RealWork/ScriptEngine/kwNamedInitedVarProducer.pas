unit kwNamedInitedVarProducer;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwNamedInitedVarProducer.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::VarProducing::VarProducingPack::NamedInitedVarProducer
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
 {$Include ..\ScriptEngine\kwInitedVarProducer.imp.pas}
 TkwNamedInitedVarProducer = {final} class(_kwInitedVarProducer_)
 protected
 // overridden protected methods
   procedure FinishDefinitionOfNewWord(aWordToFinish: TtfwKeyWord;
     aCompiled: TkwCompiledWord;
     const aContext: TtfwContext); override;
     {* ��������� ����������� ����� ���������� ����� }
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwNamedInitedVarProducer
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledNamedInitedVarProducer,
  kwCompiledInitedVarProducer,
  kwCompiledInitableVar,
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

type _Instance_R_ = TkwNamedInitedVarProducer;

{$Include ..\ScriptEngine\kwInitedVarProducer.imp.pas}

// start class TkwNamedInitedVarProducer

class function TkwNamedInitedVarProducer.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'NamedInitedVarProducer';
end;//TkwNamedInitedVarProducer.GetWordNameForRegister

procedure TkwNamedInitedVarProducer.FinishDefinitionOfNewWord(aWordToFinish: TtfwKeyWord;
  aCompiled: TkwCompiledWord;
  const aContext: TtfwContext);
//#UC START# *4F219629036A_4F3E18B3030A_var*
var
 l_W : TkwCompiledNamedInitedVarProducer;
//#UC END# *4F219629036A_4F3E18B3030A_var*
begin
//#UC START# *4F219629036A_4F3E18B3030A_impl*
 CompilerAssert((aCompiled.Code = nil) OR
                (aCompiled.Code.Count = 0),
                '����� �� ����� ����� ����������',
                aContext
               );
 aContext.rParser.NextToken;
 l_W := TkwCompiledNamedInitedVarProducer.Create(TtfwCStringFactory.C(aContext.rParser.TokenLongString));
 try
  aWordToFinish.Word := l_W;
 finally
  FreeAndNil(l_W);
 end;//try..finally
//#UC END# *4F219629036A_4F3E18B3030A_impl*
end;//TkwNamedInitedVarProducer.FinishDefinitionOfNewWord

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwInitedVarProducer.imp.pas}
{$IfEnd} //not NoScripts

end.