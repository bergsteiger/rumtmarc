unit kwMain;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwMain.pas"
// Начат: 10.05.2011 13:49
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwMain
//
// Поддержка основного кода скрипта.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  tfwScriptingInterfaces,
  kwCompiledWord,
  l3Interfaces,
  l3ParserInterfaces,
  l3BaseStream,
  tfwValueStack,
  l3PrimString
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 IDlgInitListner = interface(IUnknown)
   ['{07616FB4-3E14-45AB-BD51-86D8D3D17ACE}']
   procedure Init(const aCode: TObject;
    aContext: Pointer);
 end;//IDlgInitListner

 {$Include ..\ScriptEngine\tfwCompilingWord.imp.pas}
 _tfwScriptEngine_Parent_ = _tfwCompilingWord_;
 {$Include ..\ScriptEngine\tfwScriptEngine.imp.pas}
 TkwMain = class(_tfwScriptEngine_, IDlgInitListner)
  {* Поддержка основного кода скрипта. }
 private
 // private fields
   f_Compiled : TkwCompiledWord;
    {* Компилированный код}
 protected
 // realized methods
   function EndBracket(const aContext: TtfwContext): AnsiString; override;
   procedure Init(const aCode: TObject;
     aContext: Pointer);
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   procedure BeforeCompile(const aPrevContext: TtfwContext;
     var theNewContext: TtfwContext); override;
   procedure AfterCompile(var aPrevContext: TtfwContext;
     var theNewContext: TtfwContext;
     aCompiled: TkwCompiledWord); override;
   function CompiledWordClass: RkwCompiledWord; override;
   function AcceptsEOF: Boolean; override;
   class function ReallyNeedRegister: Boolean; override;
 public
 // overridden public methods
   procedure Script(aStream: Tl3Stream;
     const aCaller: ItfwScriptCaller); override;
 public
 // public methods
   procedure RunCompiled(const aContext: TtfwContext);
 end;//TkwMain
{$IfEnd} //not NoScripts

  {$If not defined(NoScripts)}
var
   g_ScriptEngine : TkwMain;
  {$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  SysUtils,
  l3Base,
  kwSystemIncluded,
  l3Stream,
  l3Types,
  kwCompiledMain,
  seThreadSupport,
  kwEtalonNeedsComputerName,
  kwEtalonNeedsXE,
  kwEtalonNeedsOSName,
  kwEtalonNeeds64,
  l3Parser,
  kwInteger,
  kwString,
  TypInfo,
  kwIntegerFactory,
  kwStringFactory,
  l3String,
  l3Chars,
  tfwAutoregisteredDiction,
  tfwScriptEngine,
  l3StringList,
  tfwParser,
  l3Filer,
  tfwStoredValuesStack
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwMain;

{$Include ..\ScriptEngine\tfwCompilingWord.imp.pas}

{$Include ..\ScriptEngine\tfwScriptEngine.imp.pas}

// start class TkwMain

procedure TkwMain.RunCompiled(const aContext: TtfwContext);
//#UC START# *4DC90A79006D_4DC90A1E03C2_var*
//#UC END# *4DC90A79006D_4DC90A1E03C2_var*
begin
//#UC START# *4DC90A79006D_4DC90A1E03C2_impl*
 kwEtalonNeedsComputerName.g_EtalonNeedsComputerName := false;
 kwEtalonNeedsOSName.g_EtalonNeedsOSName := false;
 kwEtalonNeedsXE.g_EtalonNeedsXE := false;
 kwEtalonNeeds64.g_EtalonNeeds64 := false;
 RunnerAssert(f_Compiled <> nil, 'Код пустой', aContext);
 try
  f_Compiled.DoIt(aContext);
 finally
  if TseWorkThreadList.WasInit then
   TseWorkThreadList.Instance.WaitForAllThreads;
 end;
//#UC END# *4DC90A79006D_4DC90A1E03C2_impl*
end;//TkwMain.RunCompiled

function TkwMain.EndBracket(const aContext: TtfwContext): AnsiString;
//#UC START# *4DB6C99F026E_4DC90A1E03C2_var*
//#UC END# *4DB6C99F026E_4DC90A1E03C2_var*
begin
//#UC START# *4DB6C99F026E_4DC90A1E03C2_impl*
 Result := '';
//#UC END# *4DB6C99F026E_4DC90A1E03C2_impl*
end;//TkwMain.EndBracket

procedure TkwMain.Init(const aCode: TObject;
  aContext: Pointer);
//#UC START# *4E4B9AE20283_4DC90A1E03C2_var*
var
 l_Ctx  : TtfwContext;
//#UC END# *4E4B9AE20283_4DC90A1E03C2_var*
begin
//#UC START# *4E4B9AE20283_4DC90A1E03C2_impl*
 l_Ctx.rEngine := Self;
 l_Ctx.rCaller := ItfwScriptCaller(aContext);
 l_Ctx.rParser := nil;//l_P;
 l_Ctx.rCompiling := false;
 l_Ctx.rCompiler := nil;                                    
 l_Ctx.rException := nil;
 l_Ctx.rUsed := nil;//l_Used;
 l_Ctx.rModifiers := [];
 l_Ctx.rScriptFileName := '';
 (aCode as TtfwWord).DoIt(l_Ctx);
//#UC END# *4E4B9AE20283_4DC90A1E03C2_impl*
end;//TkwMain.Init

procedure TkwMain.Cleanup;
//#UC START# *479731C50290_4DC90A1E03C2_var*
//#UC END# *479731C50290_4DC90A1E03C2_var*
begin
//#UC START# *479731C50290_4DC90A1E03C2_impl*
 FreeAndNil(f_Compiled);
 inherited;
//#UC END# *479731C50290_4DC90A1E03C2_impl*
end;//TkwMain.Cleanup

procedure TkwMain.BeforeCompile(const aPrevContext: TtfwContext;
  var theNewContext: TtfwContext);
//#UC START# *4DB6CDDA038B_4DC90A1E03C2_var*
var
 l_S  : IStream;
 l_SI : TkwSystemIncluded;
 l_SystemFilename : AnsiString;
 l_NS             : Tl3NamedTextStream;
//#UC END# *4DB6CDDA038B_4DC90A1E03C2_var*
begin
//#UC START# *4DB6CDDA038B_4DC90A1E03C2_impl*
 inherited;
 l_SystemFilename := aPrevContext.rCaller.ResolveIncludedFilePath('System.script');
 if FileExists(l_SystemFilename) then
 begin
  l_NS := Tl3NamedTextStream.Create(l_SystemFilename, l3_fmRead);
  try
   l_SI := TkwSystemIncluded.Create(l_NS);
   try
    l_SI.DoIt(aPrevContext);
   finally
    FreeAndNil(l_SI);
   end;//try..finally
  finally
   FreeAndNil(l_NS);
  end;//try..finally
 end//FileExists(l_SystemFilename)
 else
 // - кто первый (под ногами приложения), тот и папа
 begin
  l_S := aPrevContext.rCaller.SystemDictionary;
  if (l_S <> nil) then
  begin
   l_SI := TkwSystemIncluded.Create(l_S);
   try
    l_SI.DoIt(aPrevContext);
   finally
    FreeAndNil(l_SI);
   end;//try..finally
  end;//l_S <> nil
 end;//FileExists(l_SystemFilename)
 {$IfDef Nemesis}
 {$IfDef InsiderTest}
 l_SystemFilename := aPrevContext.rCaller.ResolveIncludedFilePath('HLTCLike.script');
 if FileExists(l_SystemFilename) then
 begin
  aPrevContext.rUsed.Add(l_SystemFilename);
  l_NS := Tl3NamedTextStream.Create(l_SystemFilename, l3_fmRead);
  try
   l_SI := TkwSystemIncluded.Create(l_NS);
   try
    l_SI.DoIt(aPrevContext);
   finally
    FreeAndNil(l_SI);
   end;//try..finally
  finally
   FreeAndNil(l_NS);
  end;//try..finally
 end;//FileExists(l_SystemFilename);
 {$EndIf InsiderTest}
 {$EndIf Nemesis}
//#UC END# *4DB6CDDA038B_4DC90A1E03C2_impl*
end;//TkwMain.BeforeCompile

procedure TkwMain.AfterCompile(var aPrevContext: TtfwContext;
  var theNewContext: TtfwContext;
  aCompiled: TkwCompiledWord);
//#UC START# *4DB6CE2302C9_4DC90A1E03C2_var*
//#UC END# *4DB6CE2302C9_4DC90A1E03C2_var*
begin
//#UC START# *4DB6CE2302C9_4DC90A1E03C2_impl*
 aCompiled.SetRefTo(f_Compiled);
 inherited;
//#UC END# *4DB6CE2302C9_4DC90A1E03C2_impl*
end;//TkwMain.AfterCompile

function TkwMain.CompiledWordClass: RkwCompiledWord;
//#UC START# *4DBAEE0D028D_4DC90A1E03C2_var*
//#UC END# *4DBAEE0D028D_4DC90A1E03C2_var*
begin
//#UC START# *4DBAEE0D028D_4DC90A1E03C2_impl*
 Result := TkwCompiledMain;
//#UC END# *4DBAEE0D028D_4DC90A1E03C2_impl*
end;//TkwMain.CompiledWordClass

function TkwMain.AcceptsEOF: Boolean;
//#UC START# *4DC2DEE70178_4DC90A1E03C2_var*
//#UC END# *4DC2DEE70178_4DC90A1E03C2_var*
begin
//#UC START# *4DC2DEE70178_4DC90A1E03C2_impl*
 Result := true;
//#UC END# *4DC2DEE70178_4DC90A1E03C2_impl*
end;//TkwMain.AcceptsEOF

class function TkwMain.ReallyNeedRegister: Boolean;
//#UC START# *4DC2E05B03DD_4DC90A1E03C2_var*
//#UC END# *4DC2E05B03DD_4DC90A1E03C2_var*
begin
//#UC START# *4DC2E05B03DD_4DC90A1E03C2_impl*
 Result := false;
//#UC END# *4DC2E05B03DD_4DC90A1E03C2_impl*
end;//TkwMain.ReallyNeedRegister

procedure TkwMain.Script(aStream: Tl3Stream;
  const aCaller: ItfwScriptCaller);
//#UC START# *4F733B9C0064_4DC90A1E03C2_var*
var
 l_PrevScriptEngine : TkwMain;
//#UC END# *4F733B9C0064_4DC90A1E03C2_var*
begin
//#UC START# *4F733B9C0064_4DC90A1E03C2_impl*
 l_PrevScriptEngine := g_ScriptEngine;
 try
  g_ScriptEngine := Self;
  inherited Script(aStream, aCaller);
 finally
  g_ScriptEngine := l_PrevScriptEngine;
 end;//try..finally
//#UC END# *4F733B9C0064_4DC90A1E03C2_impl*
end;//TkwMain.Script

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwCompilingWord.imp.pas}
{$IfEnd} //not NoScripts

end.