unit kwDeleteFilesByMask;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwDeleteFilesByMask.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::FileProcessing::DeleteFilesByMask
//
// DeleteFilesByMask - ������� ����������.
// *������:* aMask aDirName DeleteFilesByMask
// * aDirName  - ��� ����������.
// * aMask - �����, �� ������� ���������� �����.
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
 TkwDeleteFilesByMask = {final} class(_tfwAutoregisteringWord_)
  {* DeleteFilesByMask - ������� ����������.
*������:* aMask aDirName DeleteFilesByMask
* aDirName  - ��� ����������.
* aMask - �����, �� ������� ���������� �����. }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwDeleteFilesByMask
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  l3FileUtils,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwDeleteFilesByMask;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwDeleteFilesByMask

procedure TkwDeleteFilesByMask.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_5135F182020A_var*
var
 l_Mask   : AnsiString;
 l_Folder : AnsiString;
//#UC END# *4DAEEDE10285_5135F182020A_var*
begin
//#UC START# *4DAEEDE10285_5135F182020A_impl*
 if aCtx.rEngine.IsTopString then
 begin
  l_Folder := aCtx.rEngine.PopDelphiString;
  if aCtx.rEngine.IsTopString then
  begin
   l_Mask := aCtx.rEngine.PopDelphiString;
   DeleteFilesByMask(l_Folder, l_Mask);
  end // if aCtx.rEngine.IsTopString then
  else
   RunnerAssert(False, '�� ������ ����� ������ ��� ��������!', aCtx);
 end
 else
  RunnerAssert(False, '�� ������ ����� ��� �������� ������!', aCtx);
//#UC END# *4DAEEDE10285_5135F182020A_impl*
end;//TkwDeleteFilesByMask.DoDoIt

class function TkwDeleteFilesByMask.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'DeleteFilesByMask';
end;//TkwDeleteFilesByMask.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.