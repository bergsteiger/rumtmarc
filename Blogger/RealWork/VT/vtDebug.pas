unit vtDebug;

{$I vtDefine.inc }

{.$Define OutToConsole}

interface
 uses
  Sysutils;

 Type
  TvtDebugException = class(Exception);

 procedure dbgAppendToLogLN(const aFileName : TFileName; const aText : String); overload;
 procedure dbgAppendToLogLN(const aText : String); overload;

 procedure dbgAppendToLog(const aFileName : TFileName; const aText : String);   overload;
 procedure dbgAppendToLog(const aText : String);   overload;

 function dbgStartTimeCounter : Cardinal;
 function dbgFinishTimeCounter(aStartTime : Cardinal; const aFormat : String = '') : String;

implementation

uses
 Windows, vtLogFile;

const
 DbgExt = '.dbg';

var
 DbgIsFirstTime : Boolean = True;

 dbgDefFileName : TFileName;

procedure AppendToLog(aFileName : TFileName; aText : String);
begin
 if DbgIsFirstTime then
 begin
  DbgIsFirstTime := False;
  vtLogFile.AppendToLog(aFileName, ' -'#4'- Start Debug ' + DateTimeToStr(Now) + #13#10);
 end;

 vtLogFile.AppendToLog(aFileName, aText);
end;

function dbgStartTimeCounter : Cardinal;
begin
 Result := GetTickCount;
end;

function dbgFinishTimeCounter(aStartTime : Cardinal; const aFormat : String = '') : String;
var
 lFinishTime : Cardinal;
 lElapsedTime : Int64;
begin
 lFinishTime := GetTickCount;
 lElapsedTime := Int64(lFinishTime) - Int64(aStartTime);

 if lElapsedTime < 0 then
  lElapsedTime := lElapsedTime + High(Cardinal);

 if aFormat = '' then
  Result := Format('Elapsed time %d ms',[lElapsedTime])
 else
  Result := Format(aFormat,[lElapsedTime]);

end;

procedure dbgAppendToLogLN(const aFileName : TFileName; const aText : String);
begin
 AppendToLog(aFileName, aText+#13#10);
end;

procedure dbgAppendToLogLN(const aText : String);
begin
 //{$Ifdef Console}
 // WriteLN(aText);
 //{$else}
  AppendToLog(dbgDefFileName, aText+#13#10);
 //{$Endif}
end;

procedure dbgAppendToLog(const aFileName : TFileName; const aText : String);
begin
 AppendToLog(aFileName, aText);
end;

procedure dbgAppendToLog(const aText : String);
begin
 //{$Ifdef Console}
 // Write(aText);
 //{$else}
  AppendToLog(dbgDefFileName, aText);
 //{$endif}
end;

initialization
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\gui\Garant\VT\vtDebug.pas initialization enter'); {$EndIf}
//uses Forms;

dbgDefFileName := ChangeFileExt(ParamStr(0), DbgExt);

{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\gui\Garant\VT\vtDebug.pas initialization leave'); {$EndIf}
end.
