unit kwStyleTableSaveToFile;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwStyleTableSaveToFile.pas"
// �����: 11.05.2011 17:14
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::CommonWords::StyleTable_SaveToFile
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
 TkwStyleTableSaveToFile = class(_tfwAutoregisteringWord_)
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwStyleTableSaveToFile
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  evStyleInterfaceEx,
  l3Stream,
  l3Types,
  SysUtils,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwStyleTableSaveToFile;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwStyleTableSaveToFile

procedure TkwStyleTableSaveToFile.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DCA8B9D033E_var*
var
 l_S : Tl3NamedTextStream;
//#UC END# *4DAEEDE10285_4DCA8B9D033E_var*
begin
//#UC START# *4DAEEDE10285_4DCA8B9D033E_impl*
 l_S := Tl3NamedTextStream.Create(aCtx.rCaller.ResolveOutputFilePath(aCtx.rEngine.PopDelphiString),
                                  l3_fmWrite);
 try
  with TevStyleInterfaceEx.Make do
   try
    Save(l_S);
   finally
    Free;
   end;//try..finally
 finally
  FreeAndNil(l_S);
 end;//try..finally
//#UC END# *4DAEEDE10285_4DCA8B9D033E_impl*
end;//TkwStyleTableSaveToFile.DoDoIt

class function TkwStyleTableSaveToFile.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'StyleTable:SaveToFile';
end;//TkwStyleTableSaveToFile.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.