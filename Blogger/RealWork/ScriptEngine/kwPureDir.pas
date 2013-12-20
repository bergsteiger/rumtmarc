unit kwPureDir;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPureDir.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::FileProcessing::PureDir
//
// RenameFile - ������� ����������.
// *������:* aDirName PureDir
// * aDirName  - ��� ����������.
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
 TkwPureDir = {final} class(_tfwAutoregisteringWord_)
  {* RenameFile - ������� ����������.
*������:* aDirName PureDir
* aDirName  - ��� ����������. }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPureDir
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

type _Instance_R_ = TkwPureDir;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwPureDir

procedure TkwPureDir.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_5124682C039E_var*
//#UC END# *4DAEEDE10285_5124682C039E_var*
begin
//#UC START# *4DAEEDE10285_5124682C039E_impl*
 if aCtx.rEngine.IsTopString then
  PureDir(aCtx.rEngine.PopDelphiString)
 else
  Assert(False, '�� ������ ��� ����������!');
//#UC END# *4DAEEDE10285_5124682C039E_impl*
end;//TkwPureDir.DoDoIt

class function TkwPureDir.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'PureDir';
end;//TkwPureDir.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.