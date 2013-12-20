unit kwPopEditorCheckWithEtalon;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopEditorCheckWithEtalon.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::EditorFromStackKeyWords::pop_editor_CheckWithEtalon
//
// *��������:*
// �������������� �������� �������� ������ �� ������������ ��� ������. ���������� ������ ��
// ��������� ��������� ������ ����� ��������� �������. ��������� ���� � ������ NNN.shapes - ��� NNN
// - ����� ����� (��������! ��� ����� ����� ���������� � TK) . ���� �� ����� �� ������������
// �������, �� �� ���������. � ��� ���������� � ����� ��������� �����. ���� ������ ��� �����������,
// �� ������������ ��������� ����� ������ ����� � ��������. ���� ��������� �� ������, �� �� ����
// ����� �������� (���� ����� ��������� �� ���������) � ����� ������� ������� ��������� ���������
// ������.
// *������:*
// {code}
// anEditor pop:editor:CheckWithEtalon aProc
// {code}
// ��� anEditor - ��������� �� ��������, � ������� ����� ��������� ���������. aProc - ���������,
// ���������� ���������.
// *������:*
// {code}
// focused:control:push pop:editor:CheckWithEtalon "��������� ������ �������"
// {code}
// ��������� ��������� � ���������, ��� ��������� ����� ����� ���������� ������� "��������� ������
// �������".
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
 TkwPopEditorCheckWithEtalon = {final} class(_tfwWordWorker_)
  {* *��������:*
�������������� �������� �������� ������ �� ������������ ��� ������. ���������� ������ �� ��������� ��������� ������ ����� ��������� �������. ��������� ���� � ������ NNN.shapes - ��� NNN - ����� ����� (��������! ��� ����� ����� ���������� � TK) . ���� �� ����� �� ������������ �������, �� �� ���������. � ��� ���������� � ����� ��������� �����. ���� ������ ��� �����������, �� ������������ ��������� ����� ������ ����� � ��������. ���� ��������� �� ������, �� �� ���� ����� �������� (���� ����� ��������� �� ���������) � ����� ������� ������� ��������� ��������� ������.
*������:*
[code]
anEditor pop:editor:CheckWithEtalon aProc
[code]
��� anEditor - ��������� �� ��������, � ������� ����� ��������� ���������. aProc - ���������, ���������� ���������.
*������:*
[code]
focused:control:push pop:editor:CheckWithEtalon "��������� ������ �������"
[code]
��������� ��������� � ���������, ��� ��������� ����� ����� ���������� ������� "��������� ������ �������". }
 protected
 // realized methods
   function CompiledWorkerClass: RkwCompiledWordWorker; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopEditorCheckWithEtalon
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledCheckWithEtalon,
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

type _Instance_R_ = TkwPopEditorCheckWithEtalon;

{$Include ..\ScriptEngine\tfwWordWorker.imp.pas}

// start class TkwPopEditorCheckWithEtalon

function TkwPopEditorCheckWithEtalon.CompiledWorkerClass: RkwCompiledWordWorker;
//#UC START# *4DCBD67C0362_50D44F67024C_var*
//#UC END# *4DCBD67C0362_50D44F67024C_var*
begin
//#UC START# *4DCBD67C0362_50D44F67024C_impl*
 Result := TkwCompiledCheckWithEtalon;
//#UC END# *4DCBD67C0362_50D44F67024C_impl*
end;//TkwPopEditorCheckWithEtalon.CompiledWorkerClass

class function TkwPopEditorCheckWithEtalon.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:editor:CheckWithEtalon';
end;//TkwPopEditorCheckWithEtalon.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwWordWorker.imp.pas}
{$IfEnd} //not NoScripts

end.