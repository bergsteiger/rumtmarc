unit kwArray;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwArray.pas"
// �����: 12.05.2011 21:14
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::ArrayProcessing::TkwArray
//
// ���������� ��������� �������� � ��������.
// ������:
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
  l3Interfaces,
  tfwScriptingInterfaces,
  kwCompiledWord,
  l3ParserInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\tfwVar.imp.pas}
 TkwArray = class(_tfwVar_)
  {* ���������� ��������� �������� � ��������.
������:
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
 // overridden protected methods
   function CompiledWordClass: RkwCompiledWord; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwArray
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledArray,
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

type _Instance_R_ = TkwArray;

{$Include ..\ScriptEngine\tfwVar.imp.pas}

// start class TkwArray

class function TkwArray.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DCC157102A8_var*
//#UC END# *4DB0614603C8_4DCC157102A8_var*
begin
//#UC START# *4DB0614603C8_4DCC157102A8_impl*
 Result := 'ARRAY';
//#UC END# *4DB0614603C8_4DCC157102A8_impl*
end;//TkwArray.GetWordNameForRegister

function TkwArray.CompiledWordClass: RkwCompiledWord;
//#UC START# *4DBAEE0D028D_4DCC157102A8_var*
//#UC END# *4DBAEE0D028D_4DCC157102A8_var*
begin
//#UC START# *4DBAEE0D028D_4DCC157102A8_impl*
 Result := TkwCompiledArray;
//#UC END# *4DBAEE0D028D_4DCC157102A8_impl*
end;//TkwArray.CompiledWordClass

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwVar.imp.pas}
{$IfEnd} //not NoScripts

end.