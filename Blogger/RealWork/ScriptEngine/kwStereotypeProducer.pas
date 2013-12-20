unit kwStereotypeProducer;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwStereotypeProducer.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::Stereotyping::StereotypeProducer
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
 {$Include ..\ScriptEngine\kwStereotypeProducerPrim.imp.pas}
 TkwStereotypeProducer = {final} class(_kwStereotypeProducerPrim_)
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwStereotypeProducer
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledStereotypeProducer,
  SysUtils,
  kwCompiledStereotypedWord,
  kwCompiledVar,
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

type _Instance_R_ = TkwStereotypeProducer;

{$Include ..\ScriptEngine\kwStereotypeProducerPrim.imp.pas}

// start class TkwStereotypeProducer

class function TkwStereotypeProducer.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'StereotypeProducer';
end;//TkwStereotypeProducer.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwStereotypeProducerPrim.imp.pas}
{$IfEnd} //not NoScripts

end.