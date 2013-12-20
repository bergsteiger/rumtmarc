unit kwRenameFile;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwRenameFile.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::FileProcessing::RenameFile
//
// RenameFile - ��������������� ����.
// *������:* aOldFileName aNewFileName RenameFile
// * aNewFileName - ����� ��� �����.
// * aOldFileName - ������ ��� �����.
// � ���� ���������� ��������� ��������: true - ���� �������, false - ���� �������������� ��
// ����������.
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
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
 TkwRenameFile = {final} class(_tfwAutoregisteringWord_)
  {* RenameFile - ��������������� ����.
*������:* aOldFileName aNewFileName RenameFile
* aNewFileName - ����� ��� �����.
* aOldFileName - ������ ��� �����.
� ���� ���������� ��������� ��������: true - ���� �������, false - ���� �������������� �� ����������. }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwRenameFile
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  SysUtils,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwRenameFile;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwRenameFile

procedure TkwRenameFile.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_509111620309_var*
var
 l_NewFileName: AnsiString;
 l_OldFileName: AnsiString;
//#UC END# *4DAEEDE10285_509111620309_var*
begin
//#UC START# *4DAEEDE10285_509111620309_impl*
 if aCtx.rEngine.IsTopString then
 begin
  l_NewFileName := aCtx.rEngine.PopDelphiString;
  if aCtx.rEngine.IsTopString then
  begin
   l_OldFileName := aCtx.rEngine.PopDelphiString;
   aCtx.rEngine.PushBool(RenameFile(l_OldFileName, l_NewFileName));
  end // if aCtx.rEngine.IsTopString then
  else
   Assert(False, '�� ������ ������ ��� �����!');
 end // if aCtx.rEngine.IsTopString then
 else
  Assert(False, '�� ������ ����� ��� �����!');
//#UC END# *4DAEEDE10285_509111620309_impl*
end;//TkwRenameFile.DoDoIt

class function TkwRenameFile.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'RenameFile';
end;//TkwRenameFile.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.