unit kwWordProducer;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwWordProducer.pas"
// �����: 11.02.2012 18:34
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::WordProducer
//
// ����� ��� �������� ���������� ����� ���� (����� ��� : ��� PROCEDURE).
// ������:
// {code}
// : TestWordProducer
// 
// WordProducer <<Facet>>
// WordProducer <<Interface>>
// 
// <<Facet>> A
// 'A' .
// ;
// 
// <<Facet>> B
// 'B' .
// ;
// 
// <<Interface>> C
// 'C' .
// ;
// 
// A B C
// 
// ;
// 
// TestWordProducer
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
 TkwWordProducer = {final} class(_tfwWordProducer_)
  {* ����� ��� �������� ���������� ����� ���� (����� ��� : ��� PROCEDURE).
������:
[code]
: TestWordProducer

 WordProducer <<Facet>>
 WordProducer <<Interface>>

 <<Facet>> A
  'A' .
 ;
 
 <<Facet>> B
  'B' .
 ;
 
 <<Interface>> C
  'C' .
 ;
 
 A B C
 
;

TestWordProducer
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
 end;//TkwWordProducer
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledWordProducer,
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

type _Instance_R_ = TkwWordProducer;

{$Include ..\ScriptEngine\tfwWordProducer.imp.pas}

// start class TkwWordProducer

class function TkwWordProducer.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'WordProducer';
end;//TkwWordProducer.GetWordNameForRegister

procedure TkwWordProducer.FinishDefinitionOfNewWord(aWordToFinish: TtfwKeyWord;
  aCompiled: TkwCompiledWord;
  const aContext: TtfwContext);
//#UC START# *4F219629036A_4F367C1002B3_var*
var
 l_W : TkwCompiledWordProducer;
//#UC END# *4F219629036A_4F367C1002B3_var*
begin
//#UC START# *4F219629036A_4F367C1002B3_impl*
 Assert((aCompiled.Code = nil) OR (aCompiled.Code.Count = 0));
 l_W := TkwCompiledWordProducer.Create(Self);
 try
  aWordToFinish.Word := l_W;
 finally
  FreeAndNil(l_W);
 end;//try..finally
//#UC END# *4F219629036A_4F367C1002B3_impl*
end;//TkwWordProducer.FinishDefinitionOfNewWord

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwWordProducer.imp.pas}
{$IfEnd} //not NoScripts

end.