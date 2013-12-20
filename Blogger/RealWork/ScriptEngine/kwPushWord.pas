unit kwPushWord;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPushWord.pas"
// �����: 12.05.2011 13:56
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwPushWord
//
// '@'. ����� �� ���� ����� ���������� �����
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
  kwCompiledWord,
  kwCompiledWordWorker,
  l3Interfaces,
  l3ParserInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\tfwWordWorker.imp.pas}
 TkwPushWord = class(_tfwWordWorker_)
  {* '@'. ����� �� ���� ����� ���������� ����� }
 protected
 // realized methods
   function CompiledWorkerClass: RkwCompiledWordWorker; override;
 protected
 // overridden protected methods
   function SupressNextImmediate: Boolean; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPushWord
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledPushWord,
  SysUtils,
  l3Parser,
  kwInteger,
  kwString,
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

type _Instance_R_ = TkwPushWord;

{$Include ..\ScriptEngine\tfwWordWorker.imp.pas}

// start class TkwPushWord

function TkwPushWord.CompiledWorkerClass: RkwCompiledWordWorker;
//#UC START# *4DCBD67C0362_4DCBAE270162_var*
//#UC END# *4DCBD67C0362_4DCBAE270162_var*
begin
//#UC START# *4DCBD67C0362_4DCBAE270162_impl*
 Result := TkwCompiledPushWord;
//#UC END# *4DCBD67C0362_4DCBAE270162_impl*
end;//TkwPushWord.CompiledWorkerClass

class function TkwPushWord.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DCBAE270162_var*
//#UC END# *4DB0614603C8_4DCBAE270162_var*
begin
//#UC START# *4DB0614603C8_4DCBAE270162_impl*
 Result := '@';
//#UC END# *4DB0614603C8_4DCBAE270162_impl*
end;//TkwPushWord.GetWordNameForRegister

function TkwPushWord.SupressNextImmediate: Boolean;
//#UC START# *4F3AB3B101FC_4DCBAE270162_var*
//#UC END# *4F3AB3B101FC_4DCBAE270162_var*
begin
//#UC START# *4F3AB3B101FC_4DCBAE270162_impl*
 Result := true;
 // - ����� ����� ����� �� ����� ���� ��� �������� �����
//#UC END# *4F3AB3B101FC_4DCBAE270162_impl*
end;//TkwPushWord.SupressNextImmediate

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwWordWorker.imp.pas}
{$IfEnd} //not NoScripts

end.