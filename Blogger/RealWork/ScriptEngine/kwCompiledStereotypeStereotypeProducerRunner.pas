unit kwCompiledStereotypeStereotypeProducerRunner;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledStereotypeStereotypeProducerRunner.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Stereotyping::TkwCompiledStereotypeStereotypeProducerRunner
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
  tfwScriptingInterfaces,
  l3Interfaces,
  kwCompiledWord,
  l3ParserInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\kwStereotypeProducerPrimPrim.imp.pas}
 TkwCompiledStereotypeStereotypeProducerRunner = class(_kwStereotypeProducerPrimPrim_)
 private
 // private fields
   f_WordProducerForCompiledClass : TtfwWord;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* ������� ������� ����� �������. }
   function EndBracket(const aContext: TtfwContext): AnsiString; override;
   function AfterWordMaxCount: Cardinal; override;
   function AcceptsKeyWordAfter: Boolean; override;
   function CompiledWordClass: RkwCompiledWord; override;
   class function ReallyNeedRegister: Boolean; override;
   function GetWordProducerForCompiledClass: TtfwWord; override;
 public
 // public methods
   constructor Create(aWordProducerForCompiledClass: TtfwWord); reintroduce;
 end;//TkwCompiledStereotypeStereotypeProducerRunner
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwImmedCompiledStereotypedWord,
  kwCompiledStereotypedWord,
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

type _Instance_R_ = TkwCompiledStereotypeStereotypeProducerRunner;

{$Include ..\ScriptEngine\kwStereotypeProducerPrimPrim.imp.pas}

// start class TkwCompiledStereotypeStereotypeProducerRunner

constructor TkwCompiledStereotypeStereotypeProducerRunner.Create(aWordProducerForCompiledClass: TtfwWord);
//#UC START# *4F43B34B00D6_4F43B29200F2_var*
//#UC END# *4F43B34B00D6_4F43B29200F2_var*
begin
//#UC START# *4F43B34B00D6_4F43B29200F2_impl*
 inherited Create;
 f_WordProducerForCompiledClass := aWordProducerForCompiledClass;
//#UC END# *4F43B34B00D6_4F43B29200F2_impl*
end;//TkwCompiledStereotypeStereotypeProducerRunner.Create

procedure TkwCompiledStereotypeStereotypeProducerRunner.Cleanup;
//#UC START# *479731C50290_4F43B29200F2_var*
//#UC END# *479731C50290_4F43B29200F2_var*
begin
//#UC START# *479731C50290_4F43B29200F2_impl*
 f_WordProducerForCompiledClass := nil;
 inherited;
//#UC END# *479731C50290_4F43B29200F2_impl*
end;//TkwCompiledStereotypeStereotypeProducerRunner.Cleanup

function TkwCompiledStereotypeStereotypeProducerRunner.EndBracket(const aContext: TtfwContext): AnsiString;
//#UC START# *4DB6C99F026E_4F43B29200F2_var*
//#UC END# *4DB6C99F026E_4F43B29200F2_var*
begin
//#UC START# *4DB6C99F026E_4F43B29200F2_impl*
 Result := ';';
//#UC END# *4DB6C99F026E_4F43B29200F2_impl*
end;//TkwCompiledStereotypeStereotypeProducerRunner.EndBracket

function TkwCompiledStereotypeStereotypeProducerRunner.AfterWordMaxCount: Cardinal;
//#UC START# *4DB9B446039A_4F43B29200F2_var*
//#UC END# *4DB9B446039A_4F43B29200F2_var*
begin
//#UC START# *4DB9B446039A_4F43B29200F2_impl*
 Result := High(Result);
//#UC END# *4DB9B446039A_4F43B29200F2_impl*
end;//TkwCompiledStereotypeStereotypeProducerRunner.AfterWordMaxCount

function TkwCompiledStereotypeStereotypeProducerRunner.AcceptsKeyWordAfter: Boolean;
//#UC START# *4DB9B502013D_4F43B29200F2_var*
//#UC END# *4DB9B502013D_4F43B29200F2_var*
begin
//#UC START# *4DB9B502013D_4F43B29200F2_impl*
 Result := true;
//#UC END# *4DB9B502013D_4F43B29200F2_impl*
end;//TkwCompiledStereotypeStereotypeProducerRunner.AcceptsKeyWordAfter

function TkwCompiledStereotypeStereotypeProducerRunner.CompiledWordClass: RkwCompiledWord;
//#UC START# *4DBAEE0D028D_4F43B29200F2_var*
//#UC END# *4DBAEE0D028D_4F43B29200F2_var*
begin
//#UC START# *4DBAEE0D028D_4F43B29200F2_impl*
 Result := TkwImmedCompiledStereotypedWord;
//#UC END# *4DBAEE0D028D_4F43B29200F2_impl*
end;//TkwCompiledStereotypeStereotypeProducerRunner.CompiledWordClass

class function TkwCompiledStereotypeStereotypeProducerRunner.ReallyNeedRegister: Boolean;
//#UC START# *4DC2E05B03DD_4F43B29200F2_var*
//#UC END# *4DC2E05B03DD_4F43B29200F2_var*
begin
//#UC START# *4DC2E05B03DD_4F43B29200F2_impl*
 Result := false;
//#UC END# *4DC2E05B03DD_4F43B29200F2_impl*
end;//TkwCompiledStereotypeStereotypeProducerRunner.ReallyNeedRegister

function TkwCompiledStereotypeStereotypeProducerRunner.GetWordProducerForCompiledClass: TtfwWord;
//#UC START# *4F395A6902D2_4F43B29200F2_var*
//#UC END# *4F395A6902D2_4F43B29200F2_var*
begin
//#UC START# *4F395A6902D2_4F43B29200F2_impl*
 Result := f_WordProducerForCompiledClass;
//#UC END# *4F395A6902D2_4F43B29200F2_impl*
end;//TkwCompiledStereotypeStereotypeProducerRunner.GetWordProducerForCompiledClass

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwStereotypeProducerPrimPrim.imp.pas}
{$IfEnd} //not NoScripts

end.