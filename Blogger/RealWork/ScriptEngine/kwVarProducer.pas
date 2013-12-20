unit kwVarProducer;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwVarProducer.pas"
// �����: 11.02.2012 18:40
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::VarProducing::VarProducingPack::VarProducer
//
// ����� ��� �������� ���� ��� ����������� ����������.
// ������:
// {code}
// : TestVarProducer
// 
// VarProducer VarType
// 
// STRING VarType A
// 'Hello' =: A
// 
// INTEGER VarType B
// 23 =: B
// 
// A .
// B .
// 
// ;
// 
// TestVarProducer
// {code}
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
 TkwVarProducer = {final} class(_tfwWordProducer_)
  {* ����� ��� �������� ���� ��� ����������� ����������.
������:
[code]
: TestVarProducer

 VarProducer VarType
 
 STRING VarType A
 'Hello' =: A
 
 INTEGER VarType B
 23 =: B
 
 A .
 B .
 
;

TestVarProducer
[code] }
 protected
 // overridden protected methods
   procedure FinishDefinitionOfNewWord(aWordToFinish: TtfwKeyWord;
     aCompiled: TkwCompiledWord;
     const aContext: TtfwContext); override;
     {* ��������� ����������� ����� ���������� ����� }
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwVarProducer
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledVarProducer,
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

type _Instance_R_ = TkwVarProducer;

{$Include ..\ScriptEngine\tfwWordProducer.imp.pas}

// start class TkwVarProducer

class function TkwVarProducer.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'VarProducer';
end;//TkwVarProducer.GetWordNameForRegister

procedure TkwVarProducer.FinishDefinitionOfNewWord(aWordToFinish: TtfwKeyWord;
  aCompiled: TkwCompiledWord;
  const aContext: TtfwContext);
//#UC START# *4F219629036A_4F367DC60289_var*
var
 l_W : TkwCompiledVarProducer;
//#UC END# *4F219629036A_4F367DC60289_var*
begin
//#UC START# *4F219629036A_4F367DC60289_impl*
 CompilerAssert((aCompiled.Code = nil) OR
                (aCompiled.Code.Count = 0),
                '����� �� ����� ����� ����������',
                aContext
               );
 l_W := TkwCompiledVarProducer.Create;
 try
  aWordToFinish.Word := l_W;
 finally
  FreeAndNil(l_W);
 end;//try..finally
//#UC END# *4F219629036A_4F367DC60289_impl*
end;//TkwVarProducer.FinishDefinitionOfNewWord

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwWordProducer.imp.pas}
{$IfEnd} //not NoScripts

end.