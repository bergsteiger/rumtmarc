{$IfNDef tfwVar_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/tfwVar.imp.pas"
// �����: 111.05.2011 19:56
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::tfwVar
//
// ��������� ����������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define tfwVar_imp}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwNewWord.imp.pas}
 _tfwVar_ = {abstract mixin} class(_tfwNewWord_)
  {* ��������� ���������� }
 protected
 // realized methods
   function EndBracket(const aContext: TtfwContext): AnsiString; override;
 protected
 // overridden protected methods
   function AfterWordMaxCount: Cardinal; override;
   function AcceptsKeyWordAfter: Boolean; override;
   function CompiledWordClass: RkwCompiledWord; override;
 end;//_tfwVar_
{$IfEnd} //not NoScripts

{$Else tfwVar_imp}

{$IfNDef tfwVar_imp_impl}
{$Define tfwVar_imp_impl}

{$If not defined(NoScripts)}


{$Include ..\ScriptEngine\tfwNewWord.imp.pas}

// start class _tfwVar_

function _tfwVar_.EndBracket(const aContext: TtfwContext): AnsiString;
//#UC START# *4DB6C99F026E_4DCAB1A2017C_var*
//#UC END# *4DB6C99F026E_4DCAB1A2017C_var*
begin
//#UC START# *4DB6C99F026E_4DCAB1A2017C_impl*
 Result := DisabledEndBracket(aContext);
//#UC END# *4DB6C99F026E_4DCAB1A2017C_impl*
end;//_tfwVar_.EndBracket

function _tfwVar_.AfterWordMaxCount: Cardinal;
//#UC START# *4DB9B446039A_4DCAB1A2017C_var*
//#UC END# *4DB9B446039A_4DCAB1A2017C_var*
begin
//#UC START# *4DB9B446039A_4DCAB1A2017C_impl*
 Result := 0;
//#UC END# *4DB9B446039A_4DCAB1A2017C_impl*
end;//_tfwVar_.AfterWordMaxCount

function _tfwVar_.AcceptsKeyWordAfter: Boolean;
//#UC START# *4DB9B502013D_4DCAB1A2017C_var*
//#UC END# *4DB9B502013D_4DCAB1A2017C_var*
begin
//#UC START# *4DB9B502013D_4DCAB1A2017C_impl*
 Result := false;
//#UC END# *4DB9B502013D_4DCAB1A2017C_impl*
end;//_tfwVar_.AcceptsKeyWordAfter

function _tfwVar_.CompiledWordClass: RkwCompiledWord;
//#UC START# *4DBAEE0D028D_4DCAB1A2017C_var*
//#UC END# *4DBAEE0D028D_4DCAB1A2017C_var*
begin
//#UC START# *4DBAEE0D028D_4DCAB1A2017C_impl*
 Result := TkwCompiledVar;
//#UC END# *4DBAEE0D028D_4DCAB1A2017C_impl*
end;//_tfwVar_.CompiledWordClass

{$IfEnd} //not NoScripts

{$Else  tfwVar_imp_impl}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwNewWord.imp.pas}
{$IfEnd} //not NoScripts

{$EndIf tfwVar_imp_impl}
{$EndIf tfwVar_imp}
