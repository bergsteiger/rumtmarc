unit kwCompiledFileReadLines;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledFileReadLines.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::FileProcessing::TkwCompiledFileReadLines
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
  kwCompiledWordWorker
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwCompiledFileReadLines = class(TkwCompiledWordWorker)
 private
 // private methods
   procedure DoReadLines(const aFile: ItfwFile;
     const aCtx: TtfwContext);
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 end;//TkwCompiledFileReadLines
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}

// start class TkwCompiledFileReadLines

procedure TkwCompiledFileReadLines.DoReadLines(const aFile: ItfwFile;
  const aCtx: TtfwContext);

 function DoIt(const anItem: Tl3WString): Boolean;
 //#UC START# *6F9E4C7FBC79__var*
 //#UC END# *6F9E4C7FBC79__var*
 begin
 //#UC START# *6F9E4C7FBC79__impl*
  Result := true;
  aCtx.rEngine.PushWStr(anItem);
  try
   f_Word.DoIt(aCtx);
  except
   on EtfwBreakIterator do
    Result := false;
  end;//try..except
 //#UC END# *6F9E4C7FBC79__impl*
 end;//DoIt

//#UC START# *4F50888301F3_4F50881D0135_var*
//#UC END# *4F50888301F3_4F50881D0135_var*
begin
 //#UC START# *4F50888301F3iter*
 aFile.
 //#UC END# *4F50888301F3iter*
  ReadLinesF(L2ItfwFileReadLinesAction(@DoIt));
end;//TkwCompiledFileReadLines.DoReadLines

procedure TkwCompiledFileReadLines.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4F50881D0135_var*
//#UC END# *4DAEEDE10285_4F50881D0135_var*
begin
//#UC START# *4DAEEDE10285_4F50881D0135_impl*
 DoReadLines(aCtx.rEngine.PopFile, aCtx);
//#UC END# *4DAEEDE10285_4F50881D0135_impl*
end;//TkwCompiledFileReadLines.DoDoIt

{$IfEnd} //not NoScripts

end.