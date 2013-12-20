unit kwNamedAutolinkProducer;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwNamedAutolinkProducer.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::VarProducing::VarProducingPack::NamedAutolinkProducer
//
// ��� NamedInitedVarProducer, �� �� ����� ���� VOID
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
 TkwNamedAutolinkProducer = {final} class(_kwInitedVarProducer_)
  {* ��� NamedInitedVarProducer, �� �� ����� ���� VOID }
 protected
 // overridden protected methods
   procedure FinishDefinitionOfNewWord(aWordToFinish: TtfwKeyWord;
     aCompiled: TkwCompiledWord;
     const aContext: TtfwContext); override;
     {* ��������� ����������� ����� ���������� ����� }
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwNamedAutolinkProducer
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledNamedAutolinkProducer,
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

type _Instance_R_ = TkwNamedAutolinkProducer;

{$Include ..\ScriptEngine\kwInitedVarProducer.imp.pas}

// start class TkwNamedAutolinkProducer

class function TkwNamedAutolinkProducer.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'NamedAutolinkProducer';
end;//TkwNamedAutolinkProducer.GetWordNameForRegister

procedure TkwNamedAutolinkProducer.FinishDefinitionOfNewWord(aWordToFinish: TtfwKeyWord;
  aCompiled: TkwCompiledWord;
  const aContext: TtfwContext);
//#UC START# *4F219629036A_4F44BB2A0097_var*
var
 l_W : TkwCompiledNamedAutolinkProducer;
//#UC END# *4F219629036A_4F44BB2A0097_var*
begin
//#UC START# *4F219629036A_4F44BB2A0097_impl*
 CompilerAssert((aCompiled.Code = nil) OR
                (aCompiled.Code.Count = 0),
                '����� �� ����� ����� ����������',
                aContext
               );
 aContext.rParser.NextToken;
 l_W := TkwCompiledNamedAutolinkProducer.Create(TtfwCStringFactory.C(aContext.rParser.TokenLongString));
 try
  aWordToFinish.Word := l_W;
 finally
  FreeAndNil(l_W);
 end;//try..finally
//#UC END# *4F219629036A_4F44BB2A0097_impl*
end;//TkwNamedAutolinkProducer.FinishDefinitionOfNewWord

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwInitedVarProducer.imp.pas}
{$IfEnd} //not NoScripts

end.