unit kwCompiledClassProducer;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledClassProducer.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwCompiledClassProducer
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
  kwCompiledWordProducer,
  kwCompiledWord
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwCompiledClassProducer = class(TkwCompiledWordProducer)
 protected
 // overridden protected methods
   function CompiledWordClass: RkwCompiledWord; override;
 end;//TkwCompiledClassProducer
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledClass
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TkwCompiledClassProducer

function TkwCompiledClassProducer.CompiledWordClass: RkwCompiledWord;
//#UC START# *4DBAEE0D028D_4F43DDC901A1_var*
//#UC END# *4DBAEE0D028D_4F43DDC901A1_var*
begin
//#UC START# *4DBAEE0D028D_4F43DDC901A1_impl*
 Result := TkwCompiledClass;
//#UC END# *4DBAEE0D028D_4F43DDC901A1_impl*
end;//TkwCompiledClassProducer.CompiledWordClass

{$IfEnd} //not NoScripts

end.