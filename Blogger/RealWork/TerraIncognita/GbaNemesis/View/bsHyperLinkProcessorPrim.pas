unit bsHyperLinkProcessorPrim;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/bsHyperLinkProcessorPrim.pas"
// Начат: 15.07.2011 20:16
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Core::Base Operations::View::Navigation::TbsHyperLinkProcessorPrim
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  ExternalObjectUnit,
  l3Interfaces,
  l3CProtoObject
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TbsHyperLinkProcessorPrim = class(Tl3CProtoObject {$If not defined(NoScripts)}, ItfwScriptCaller{$IfEnd} //not NoScripts
 )
 protected
 // realized methods
   {$If not defined(NoScripts)}
   function ResolveIncludedFilePath(const aFile: AnsiString): AnsiString;
   {$IfEnd} //not NoScripts
   {$If not defined(NoScripts)}
   function ResolveOutputFilePath(const aFile: AnsiString): AnsiString;
   {$IfEnd} //not NoScripts
   {$If not defined(NoScripts)}
   function ResolveInputFilePath(const aFile: AnsiString): AnsiString;
   {$IfEnd} //not NoScripts
   {$If not defined(NoScripts)}
   function SystemDictionary: IStream;
   {$IfEnd} //not NoScripts
   {$If not defined(NoScripts)}
   function KPage: AnsiString;
   {$IfEnd} //not NoScripts
   {$If not defined(NoScripts)}
   procedure ToLog(const aSt: AnsiString);
   {$IfEnd} //not NoScripts
 public
 // realized methods
   procedure CheckOutputWithInput(const aIn: AnsiString;
     const aOut: AnsiString;
     aHeaderBegin: AnsiChar;
     aEtalonNeedsComputerName: Boolean;
     aEtalonCanHaveDiff: Boolean;
     const anExtraFileName: AnsiString;
     aNeedsCheck: Boolean); overload; 
   {$If not defined(NoScripts)}
   procedure Check(aCondition: Boolean;
    const aMessage: AnsiString = '');
     {* Проверяет инвариант }
   {$IfEnd} //not NoScripts
   {$If not defined(NoScripts)}
   procedure Print(const aStr: Tl3WString); overload; 
   {$IfEnd} //not NoScripts
   {$If not defined(NoScripts)}
   procedure Print(const aStr: Il3CString); overload; 
   {$IfEnd} //not NoScripts
   procedure CheckWithEtalon(const aFileName: AnsiString;
    aHeaderBegin: AnsiChar);
   {$If not defined(NoScripts)}
   procedure CheckPrintEtalon(const aLogName: AnsiString;
    const aOutputName: AnsiString);
   {$IfEnd} //not NoScripts
   {$If not defined(NoScripts)}
   function ShouldStop: Boolean;
   {$IfEnd} //not NoScripts
   {$If not defined(NoScripts)}
   procedure CheckTimeout(aNow: Cardinal;
    aTimeout: Cardinal);
   {$IfEnd} //not NoScripts
   {$If not defined(NoScripts)}
   function StartTimer: Longword;
   {$IfEnd} //not NoScripts
   {$If not defined(NoScripts)}
   function StopTimer(const aSt: AnsiString = '';
    const aSubName: AnsiString = '';
    aNeedTimeToLog: Boolean = true): Longword;
   {$IfEnd} //not NoScripts
   procedure CheckOutputWithInput(const aSt: AnsiString;
     aHeaderBegin: AnsiChar = #0;
     const anExtraFileName: AnsiString = '';
     aNeedsCheck: Boolean = true); overload; 
    {$If not defined(NoScripts)}
   function GetIsWritingToK: Boolean;
    {$IfEnd} //not NoScripts
    {$If not defined(NoScripts)}
   function GetIsFakeCVS: Boolean;
    {$IfEnd} //not NoScripts
    {$If not defined(NoScripts)}
   function GetCVSPath: AnsiString;
    {$IfEnd} //not NoScripts
    {$If not defined(NoScripts)}
   procedure DontRaiseIfEtalonCreated;
    {$IfEnd} //not NoScripts
    {$If not defined(NoScripts)}
   procedure TimeToLog(aTime: Cardinal;
     const aSt: AnsiString;
     const aSubName: AnsiString);
    {$IfEnd} //not NoScripts
    {$If not defined(NoScripts)}
   function GetTestSetFolderName: AnsiString;
    {$IfEnd} //not NoScripts
    {$If not defined(NoScripts)}
   function GetEtalonSuffix: AnsiString;
    {$IfEnd} //not NoScripts
 protected
 // protected methods
   function OpenURL(const anURL: Tl3WString): Boolean; overload; 
   procedure ExecuteScript(const aScript: AnsiString);
 public
 // public methods
   procedure OpenURL(const anURL: IExternalLink); overload; 
   class procedure RunScript(const aScript: AnsiString);
   class function Make: ItfwScriptCaller; reintroduce;
 end;//TbsHyperLinkProcessorPrim
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  IOUnit,
  nsTypes
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  ,
  l3String,
  l3Base,
  DataAdapter,
  nsExternalObject,
  SysUtils,
  ComObj,
  ActiveX
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

// start class TbsHyperLinkProcessorPrim

function TbsHyperLinkProcessorPrim.OpenURL(const anURL: Tl3WString): Boolean;
//#UC START# *4E2068B30386_4E2067E2007C_var*
var
 l_P, l_S : Il3CString;
//#UC END# *4E2068B30386_4E2067E2007C_var*
begin
//#UC START# *4E2068B30386_4E2067E2007C_impl*
 if l3IsNil(anURL) then
  Result := false
 else
 begin
  l3Split(l3CStr(anURL), ':', l_P, l_S);
  Result := l3Same(l_P, 'script') AND not l3IsNil(l_S);
  if Result then
   ExecuteScript(l3Str(l_S))
  else
   nsDoShellExecute(l3CStr(anURL));
 end;//l3IsNil(anURL)
//#UC END# *4E2068B30386_4E2067E2007C_impl*
end;//TbsHyperLinkProcessorPrim.OpenURL

procedure TbsHyperLinkProcessorPrim.ExecuteScript(const aScript: AnsiString);
//#UC START# *4E2068D800E0_4E2067E2007C_var*
//#UC END# *4E2068D800E0_4E2067E2007C_var*
begin
//#UC START# *4E2068D800E0_4E2067E2007C_impl*
 TtfwScriptEngine.Script(aScript, Self);
//#UC END# *4E2068D800E0_4E2067E2007C_impl*
end;//TbsHyperLinkProcessorPrim.ExecuteScript

procedure TbsHyperLinkProcessorPrim.OpenURL(const anURL: IExternalLink);
//#UC START# *4E20711A0022_4E2067E2007C_var*
var
 l_S : IString;
 l_WS : Tl3WString;
//#UC END# *4E20711A0022_4E2067E2007C_var*
begin
//#UC START# *4E20711A0022_4E2067E2007C_impl*
 anURL.GetURL(l_S);
 try
  l_WS := nsWStr(l_S);
  if l3Starts('script:', l_WS) OR
     l3Starts('http:', l_WS) OR
     l3Starts('mailto:', l_WS) then
   OpenURL(l_WS)
  else
   ExecuteScript(l3Str(nsCStr(l_S)));
 finally
  l_S := nil;
 end;//try..fianlly
//#UC END# *4E20711A0022_4E2067E2007C_impl*
end;//TbsHyperLinkProcessorPrim.OpenURL

class procedure TbsHyperLinkProcessorPrim.RunScript(const aScript: AnsiString);
//#UC START# *502B7892000D_4E2067E2007C_var*
//#UC END# *502B7892000D_4E2067E2007C_var*
begin
//#UC START# *502B7892000D_4E2067E2007C_impl*
 TtfwScriptEngine.Script(aScript, Make);
//#UC END# *502B7892000D_4E2067E2007C_impl*
end;//TbsHyperLinkProcessorPrim.RunScript

class function TbsHyperLinkProcessorPrim.Make: ItfwScriptCaller;
var
 l_Inst : TbsHyperLinkProcessorPrim;
begin
 l_Inst := Create;
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

procedure TbsHyperLinkProcessorPrim.CheckOutputWithInput(const aIn: AnsiString;
  const aOut: AnsiString;
  aHeaderBegin: AnsiChar;
  aEtalonNeedsComputerName: Boolean;
  aEtalonCanHaveDiff: Boolean;
  const anExtraFileName: AnsiString;
  aNeedsCheck: Boolean);
//#UC START# *4CAEDCF9006A_4E2067E2007C_var*
//#UC END# *4CAEDCF9006A_4E2067E2007C_var*
begin
//#UC START# *4CAEDCF9006A_4E2067E2007C_impl*
 Assert(false);
//#UC END# *4CAEDCF9006A_4E2067E2007C_impl*
end;//TbsHyperLinkProcessorPrim.CheckOutputWithInput

{$If not defined(NoScripts)}
procedure TbsHyperLinkProcessorPrim.Check(aCondition: Boolean;
  const aMessage: AnsiString = '');
//#UC START# *4DAF1A280116_4E2067E2007C_var*
//#UC END# *4DAF1A280116_4E2067E2007C_var*
begin
//#UC START# *4DAF1A280116_4E2067E2007C_impl*
 Assert(aCondition, aMessage);
//#UC END# *4DAF1A280116_4E2067E2007C_impl*
end;//TbsHyperLinkProcessorPrim.Check
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
procedure TbsHyperLinkProcessorPrim.Print(const aStr: Tl3WString);
//#UC START# *4DB173AA005A_4E2067E2007C_var*
//#UC END# *4DB173AA005A_4E2067E2007C_var*
begin
//#UC START# *4DB173AA005A_4E2067E2007C_impl*
 Assert(false);
//#UC END# *4DB173AA005A_4E2067E2007C_impl*
end;//TbsHyperLinkProcessorPrim.Print
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
procedure TbsHyperLinkProcessorPrim.Print(const aStr: Il3CString);
//#UC START# *4DB1785F011A_4E2067E2007C_var*
//#UC END# *4DB1785F011A_4E2067E2007C_var*
begin
//#UC START# *4DB1785F011A_4E2067E2007C_impl*
 Assert(false);
//#UC END# *4DB1785F011A_4E2067E2007C_impl*
end;//TbsHyperLinkProcessorPrim.Print
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
function TbsHyperLinkProcessorPrim.ResolveIncludedFilePath(const aFile: AnsiString): AnsiString;
//#UC START# *4DC2E1470046_4E2067E2007C_var*
//#UC END# *4DC2E1470046_4E2067E2007C_var*
begin
//#UC START# *4DC2E1470046_4E2067E2007C_impl*
 //Result := ExtractFilePath(ParamStr(0)) + 'TestSet\' + 'Dictionary\' + aFile;
 Result := ExtractFilePath(ParamStr(0)) + aFile;
(* Result := '';
 Assert(false);*)
//#UC END# *4DC2E1470046_4E2067E2007C_impl*
end;//TbsHyperLinkProcessorPrim.ResolveIncludedFilePath
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
function TbsHyperLinkProcessorPrim.ResolveOutputFilePath(const aFile: AnsiString): AnsiString;
//#UC START# *4DCA915C0120_4E2067E2007C_var*
//#UC END# *4DCA915C0120_4E2067E2007C_var*
begin
//#UC START# *4DCA915C0120_4E2067E2007C_impl*
 Result := '';
 Assert(false);
//#UC END# *4DCA915C0120_4E2067E2007C_impl*
end;//TbsHyperLinkProcessorPrim.ResolveOutputFilePath
{$IfEnd} //not NoScripts

procedure TbsHyperLinkProcessorPrim.CheckWithEtalon(const aFileName: AnsiString;
  aHeaderBegin: AnsiChar);
//#UC START# *4DD533BF023D_4E2067E2007C_var*
//#UC END# *4DD533BF023D_4E2067E2007C_var*
begin
//#UC START# *4DD533BF023D_4E2067E2007C_impl*
 Assert(false);
//#UC END# *4DD533BF023D_4E2067E2007C_impl*
end;//TbsHyperLinkProcessorPrim.CheckWithEtalon

{$If not defined(NoScripts)}
function TbsHyperLinkProcessorPrim.ResolveInputFilePath(const aFile: AnsiString): AnsiString;
//#UC START# *4DECF57B02D2_4E2067E2007C_var*
//#UC END# *4DECF57B02D2_4E2067E2007C_var*
begin
//#UC START# *4DECF57B02D2_4E2067E2007C_impl*
 Result := '';
 Assert(false);
//#UC END# *4DECF57B02D2_4E2067E2007C_impl*
end;//TbsHyperLinkProcessorPrim.ResolveInputFilePath
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
function TbsHyperLinkProcessorPrim.SystemDictionary: IStream;
//#UC START# *4E240D1A007A_4E2067E2007C_var*
var
 l_Res : Int64;
//#UC END# *4E240D1A007A_4E2067E2007C_var*
begin
//#UC START# *4E240D1A007A_4E2067E2007C_impl*
 DefDataAdapter.CommonInterfaces.GetScriptsSystemDictionary(Result);
 OleCheck(Result.Seek(0, STREAM_SEEK_SET, l_Res));
//#UC END# *4E240D1A007A_4E2067E2007C_impl*
end;//TbsHyperLinkProcessorPrim.SystemDictionary
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
procedure TbsHyperLinkProcessorPrim.CheckPrintEtalon(const aLogName: AnsiString;
  const aOutputName: AnsiString);
//#UC START# *4F0D7AC900FA_4E2067E2007C_var*
//#UC END# *4F0D7AC900FA_4E2067E2007C_var*
begin
//#UC START# *4F0D7AC900FA_4E2067E2007C_impl*
 Assert(False);
//#UC END# *4F0D7AC900FA_4E2067E2007C_impl*
end;//TbsHyperLinkProcessorPrim.CheckPrintEtalon
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
function TbsHyperLinkProcessorPrim.ShouldStop: Boolean;
//#UC START# *4F0D8B740186_4E2067E2007C_var*
//#UC END# *4F0D8B740186_4E2067E2007C_var*
begin
//#UC START# *4F0D8B740186_4E2067E2007C_impl*
 Result := false;
 Assert(False);
//#UC END# *4F0D8B740186_4E2067E2007C_impl*
end;//TbsHyperLinkProcessorPrim.ShouldStop
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
procedure TbsHyperLinkProcessorPrim.CheckTimeout(aNow: Cardinal;
  aTimeout: Cardinal);
//#UC START# *4F0D8C360085_4E2067E2007C_var*
//#UC END# *4F0D8C360085_4E2067E2007C_var*
begin
//#UC START# *4F0D8C360085_4E2067E2007C_impl*
 Assert(False);
//#UC END# *4F0D8C360085_4E2067E2007C_impl*
end;//TbsHyperLinkProcessorPrim.CheckTimeout
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
function TbsHyperLinkProcessorPrim.StartTimer: Longword;
//#UC START# *4F0D8C5A01A2_4E2067E2007C_var*
//#UC END# *4F0D8C5A01A2_4E2067E2007C_var*
begin
//#UC START# *4F0D8C5A01A2_4E2067E2007C_impl*
 Result := 0;
 Assert(False);
//#UC END# *4F0D8C5A01A2_4E2067E2007C_impl*
end;//TbsHyperLinkProcessorPrim.StartTimer
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
function TbsHyperLinkProcessorPrim.StopTimer(const aSt: AnsiString = '';
  const aSubName: AnsiString = '';
  aNeedTimeToLog: Boolean = true): Longword;
//#UC START# *4F0D8CB0015D_4E2067E2007C_var*
//#UC END# *4F0D8CB0015D_4E2067E2007C_var*
begin
//#UC START# *4F0D8CB0015D_4E2067E2007C_impl*
 Result := 0;
 Assert(False);
//#UC END# *4F0D8CB0015D_4E2067E2007C_impl*
end;//TbsHyperLinkProcessorPrim.StopTimer
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
function TbsHyperLinkProcessorPrim.KPage: AnsiString;
//#UC START# *4F0D91AA0080_4E2067E2007C_var*
//#UC END# *4F0D91AA0080_4E2067E2007C_var*
begin
//#UC START# *4F0D91AA0080_4E2067E2007C_impl*
 Result := '';
 Assert(False);
//#UC END# *4F0D91AA0080_4E2067E2007C_impl*
end;//TbsHyperLinkProcessorPrim.KPage
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
procedure TbsHyperLinkProcessorPrim.ToLog(const aSt: AnsiString);
//#UC START# *4F0DA2A7024A_4E2067E2007C_var*
//#UC END# *4F0DA2A7024A_4E2067E2007C_var*
begin
//#UC START# *4F0DA2A7024A_4E2067E2007C_impl*
 Assert(False);
//#UC END# *4F0DA2A7024A_4E2067E2007C_impl*
end;//TbsHyperLinkProcessorPrim.ToLog
{$IfEnd} //not NoScripts

procedure TbsHyperLinkProcessorPrim.CheckOutputWithInput(const aSt: AnsiString;
  aHeaderBegin: AnsiChar = #0;
  const anExtraFileName: AnsiString = '';
  aNeedsCheck: Boolean = true);
//#UC START# *4F5F3C61023E_4E2067E2007C_var*
//#UC END# *4F5F3C61023E_4E2067E2007C_var*
begin
//#UC START# *4F5F3C61023E_4E2067E2007C_impl*
 Assert(false);
//#UC END# *4F5F3C61023E_4E2067E2007C_impl*
end;//TbsHyperLinkProcessorPrim.CheckOutputWithInput

{$If not defined(NoScripts)}
function TbsHyperLinkProcessorPrim.GetIsWritingToK: Boolean;
//#UC START# *4F72CEFE016D_4E2067E2007C_var*
//#UC END# *4F72CEFE016D_4E2067E2007C_var*
begin
//#UC START# *4F72CEFE016D_4E2067E2007C_impl*
 Result := false;
 Assert(false);
//#UC END# *4F72CEFE016D_4E2067E2007C_impl*
end;//TbsHyperLinkProcessorPrim.GetIsWritingToK
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
function TbsHyperLinkProcessorPrim.GetIsFakeCVS: Boolean;
//#UC START# *4F72CF27029A_4E2067E2007C_var*
//#UC END# *4F72CF27029A_4E2067E2007C_var*
begin
//#UC START# *4F72CF27029A_4E2067E2007C_impl*
 Result := false;
 Assert(false);
//#UC END# *4F72CF27029A_4E2067E2007C_impl*
end;//TbsHyperLinkProcessorPrim.GetIsFakeCVS
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
function TbsHyperLinkProcessorPrim.GetCVSPath: AnsiString;
//#UC START# *4F72CF78027D_4E2067E2007C_var*
//#UC END# *4F72CF78027D_4E2067E2007C_var*
begin
//#UC START# *4F72CF78027D_4E2067E2007C_impl*
 Result := '';
 Assert(false);
//#UC END# *4F72CF78027D_4E2067E2007C_impl*
end;//TbsHyperLinkProcessorPrim.GetCVSPath
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
procedure TbsHyperLinkProcessorPrim.DontRaiseIfEtalonCreated;
//#UC START# *4F851D7B0399_4E2067E2007C_var*
//#UC END# *4F851D7B0399_4E2067E2007C_var*
begin
//#UC START# *4F851D7B0399_4E2067E2007C_impl*
 Assert(False);
//#UC END# *4F851D7B0399_4E2067E2007C_impl*
end;//TbsHyperLinkProcessorPrim.DontRaiseIfEtalonCreated
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
procedure TbsHyperLinkProcessorPrim.TimeToLog(aTime: Cardinal;
  const aSt: AnsiString;
  const aSubName: AnsiString);
//#UC START# *511BC7C60063_4E2067E2007C_var*
//#UC END# *511BC7C60063_4E2067E2007C_var*
begin
//#UC START# *511BC7C60063_4E2067E2007C_impl*
 Assert(false);
//#UC END# *511BC7C60063_4E2067E2007C_impl*
end;//TbsHyperLinkProcessorPrim.TimeToLog
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
function TbsHyperLinkProcessorPrim.GetTestSetFolderName: AnsiString;
//#UC START# *513866B10237_4E2067E2007C_var*
//#UC END# *513866B10237_4E2067E2007C_var*
begin
//#UC START# *513866B10237_4E2067E2007C_impl*
 Result := '';
 Assert(false);
//#UC END# *513866B10237_4E2067E2007C_impl*
end;//TbsHyperLinkProcessorPrim.GetTestSetFolderName
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
function TbsHyperLinkProcessorPrim.GetEtalonSuffix: AnsiString;
//#UC START# *5138790002FF_4E2067E2007C_var*
//#UC END# *5138790002FF_4E2067E2007C_var*
begin
//#UC START# *5138790002FF_4E2067E2007C_impl*
 Result := '.etalon';
//#UC END# *5138790002FF_4E2067E2007C_impl*
end;//TbsHyperLinkProcessorPrim.GetEtalonSuffix
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

end.