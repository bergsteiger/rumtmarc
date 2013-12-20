unit kwCompiledVarProducer;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledVarProducer.pas"
// �����: 06.02.2012 18:41
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::VarProducing::TkwCompiledVarProducer
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
 {$Include ..\ScriptEngine\tfwVar.imp.pas}
 TkwCompiledVarProducer = class(_tfwVar_)
 protected
 // overridden protected methods
   class function ReallyNeedRegister: Boolean; override;
 end;//TkwCompiledVarProducer
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
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

type _Instance_R_ = TkwCompiledVarProducer;

{$Include ..\ScriptEngine\tfwVar.imp.pas}

// start class TkwCompiledVarProducer

class function TkwCompiledVarProducer.ReallyNeedRegister: Boolean;
//#UC START# *4DC2E05B03DD_4F367DEA0271_var*
//#UC END# *4DC2E05B03DD_4F367DEA0271_var*
begin
//#UC START# *4DC2E05B03DD_4F367DEA0271_impl*
 Result := false;
//#UC END# *4DC2E05B03DD_4F367DEA0271_impl*
end;//TkwCompiledVarProducer.ReallyNeedRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwVar.imp.pas}
{$IfEnd} //not NoScripts

end.