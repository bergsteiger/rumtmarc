unit kwIterate;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwIterate.pas"
// �����: 12.05.2011 21:40
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::ArrayProcessing::Iterate
//
// ���������� �������� �������.
// *������:*
// {code}
// ARRAY L
// 0 10 FOR
// ++
// DUP
// >>>[] L
// NEXT
// DROP
// @ . ITERATE L
// // - �������� ����� �� 1 �� 10
// '' .
// 0 @ + ITERATE L .
// // - ��������� ����� �� 1 �� 10 � �������� ���������
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
  kwCompiledVarWorker,
  tfwScriptingInterfaces,
  l3Interfaces,
  kwCompiledWord,
  l3ParserInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\tfwVarWorker.imp.pas}
 TkwIterate = class(_tfwVarWorker_)
  {* ���������� �������� �������.
 *������:*
[code]
 ARRAY L
 0 10 FOR
  ++
  DUP
  >>>[] L
 NEXT
 DROP
 @ . ITERATE L
 // - �������� ����� �� 1 �� 10
 '' .
 0 @ + ITERATE L .
 // - ��������� ����� �� 1 �� 10 � �������� ���������
[code] }
 protected
 // realized methods
   function CompiledVarWorkerClass: RkwCompiledVarWorker; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwIterate
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledIterate,
  l3Parser,
  kwInteger,
  kwString,
  SysUtils,
  TypInfo,
  l3Base,
  kwIntegerFactory,
  kwStringFactory,
  l3String,
  l3Chars,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwIterate;

{$Include ..\ScriptEngine\tfwVarWorker.imp.pas}

// start class TkwIterate

function TkwIterate.CompiledVarWorkerClass: RkwCompiledVarWorker;
//#UC START# *4DCC193801F1_4DCC1B8A0192_var*
//#UC END# *4DCC193801F1_4DCC1B8A0192_var*
begin
//#UC START# *4DCC193801F1_4DCC1B8A0192_impl*
 Result := TkwCompiledIterate;
//#UC END# *4DCC193801F1_4DCC1B8A0192_impl*
end;//TkwIterate.CompiledVarWorkerClass

class function TkwIterate.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'ITERATE';
end;//TkwIterate.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwVarWorker.imp.pas}
{$IfEnd} //not NoScripts

end.