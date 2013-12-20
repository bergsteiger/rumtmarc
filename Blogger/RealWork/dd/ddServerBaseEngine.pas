unit ddServerBaseEngine;

interface

uses
 CsDataPipe, CsServer,
 ddBaseEngine,
 dt_Types;

type
 TServerBaseEngine = class(TBaseEngine)
 private
  f_CSServer: TCSServer;
  function pm_GetSilentMode: Boolean;
  procedure pm_SetSilentMode(const aValue: Boolean);
  procedure ServerLoginExData(out aDocBaseVer, aAdminBaseVer: Integer; out aFamilyRoot, aTablePath, aHomePath, aLockpath,
      aImagesPath: AnsiString);
  function _ReIndexTable(const aFileName: AnsiString): Boolean;
 protected
  procedure CreateCommunications; override;
  function DoStart: Boolean; override;
  procedure DoStop; override;
 public
  constructor Make(const aPathRec: TPathRec; const aServerIP: AnsiString;
      aServerPort: Integer = 32100; const aShowSplash: Boolean = False);
  procedure cs_GetBaseStatus(aPipe: TCSDataPipe);
  procedure cs_GetBaseParams(aPipe: TCSDataPipe);
  procedure ReindexTables(aFamily: Integer);
  procedure RepairTable(const aTable: AnsiString);
    //
  function TablePass(const aTable: AnsiString): PAnsiChar;
  property CSServer: TCSServer read f_CSServer;
  property SilentMode: Boolean read pm_GetSilentMode write pm_SetSilentMode;
 end;

implementation

Uses
 dt_Serv, l3IniFile, l3Base, ddFileIterator, ht_dll, StrUtils, SysUtils,
 DT_UserConst;

const
  c_TablePass       = 'corvax';


constructor TServerBaseEngine.Make(const aPathRec: TPathRec; const aServerIP:
    string; aServerPort: Integer = 32100; const aShowSplash: Boolean = False);
begin
 Create;
 AppKind:= akServer;
 { TODO -oДмитрий Дудко -cУлучшение : Имеет смысл проверить все параметры на заполненность }
 StationName := IntToHex(usServerService, 8);//aStationName;
 ServerIP := aServerIP;                  
 ServerPort := aServerPort;
 ShowSplash := aShowSplash;
 PathRec := aPathRec;
end;

procedure TServerBaseEngine.CreateCommunications;
begin
 if CSServer = nil then
  f_CSServer := TCSServer.Create('', GlobalHtServer.CheckCSPassword);
end;

procedure TServerBaseEngine.cs_GetBaseStatus(aPipe: TCSDataPipe);
var
 l_Msg: AnsiString;
begin
 f_CS.Acquire;
 try
  aPipe.Write(SmallInt(Ord(IsbaseLocked(l_Msg))));
  aPIpe.Write(l_Msg);
 finally
  f_CS.Leave;
 end;
end;

procedure TServerBaseEngine.cs_GetBaseParams(aPipe: TCSDataPipe);
begin
 f_CS.Acquire;
 try
  // Записываем все пути в трубу
  with aPipe do
  begin
   Write(PathRec.TblPath);
   Write(PathRec.HomePath);
   Write(PathRec.LockPath);
   Write(PathRec.TmpPath);
   Write(PathRec.DocImgPath);
   Write(PathRec.DocsPath);
   // Версии базы данных
   Write(DocBaseVersion);
   Write(AdminBaseVersion);
  end;
 finally
  f_CS.Leave;
 end;
end;

function TServerBaseEngine.DoStart: Boolean;
var
 l_DocBaseVersion: Integer;
 l_AdminBaseVersion: Integer;
begin
 CreateHtEx(False, AppKind, StationName, PathRec, DocBaseVersion, AdminBaseVersion, AliasList);
 if not SilentMode then
 begin
  if CSServer = nil then
   f_CSServer := TCSServer.Create('', GlobalHtServer.CheckCSPassword);
  GlobalHTServer.CSServer := f_CSServer;
  f_CSServer.OnLoginExData := ServerLoginExData;
 end; // not SilentMode;
 GlobalHTServer.LoginAsServer;
 Result:= True;
end;

procedure TServerBaseEngine.DoStop;
begin
 l3Free(f_CSServer)
end;

function TServerBaseEngine.pm_GetSilentMode: Boolean;
begin
 Result := not WorkWithServer;
end;

procedure TServerBaseEngine.pm_SetSilentMode(const aValue: Boolean);
begin
 WorkWithServer:= not aValue;
end;

procedure TServerBaseEngine.ReindexTables(aFamily: Integer);
begin
 // *.htb
 with TddFileIterator.Create do
 try
  FileMask:= '*.htb';
  Directory:= GetFamilyPath(aFamily);
  LoadFiles;
  Stop;
  IterateFiles(_ReIndexTable);
  Start;
 finally
  Free;
 end;

end;

procedure TServerBaseEngine.RepairTable(const aTable: AnsiString);
var
 l_WrongRecords: Integer;
 l_Pass: PAnsiChar;
begin
 l_Pass := TablePass(aTable);
 l_WrongRecords := htRepairTable(PAnsiChar(aTable), l_Pass, l_Pass);
 htUpdateTable(PAnsiChar(aTable), l_Pass, l_Pass, True, False);
 htRepairTableLog(PAnsiChar(aTable), l_Pass, l_Pass, 0);
 //if l_WrongRecords > 0 then
 // Log(Format('Из таблицы %s вычищено %d поврежденных записей.', [aTable, l_WrongRecords]));
end;

procedure TServerBaseEngine.ServerLoginExData(out aDocBaseVer, aAdminBaseVer: Integer; out aFamilyRoot, aTablePath,
    aHomePath, aLockpath, aImagesPath: AnsiString);
begin
 aDocBaseVer:= DocBaseVersion;
 aAdminBaseVer:= AdminBaseVersion;
 aFamilyRoot:= PathRec.DocsPath;
 aTablePath:= PathRec.TblPath;
 aHomePath:= PathRec.HomePath;
 aLockPath:= PathRec.LockPath;
 aImagesPath:= PathRec.DocImgPath;
end;

function TServerBaseEngine.TablePass(const aTable: AnsiString): PAnsiChar;
var
 l_Mode: Integer;
 l_Success: Boolean;
 l_TableName: AnsiString;
begin
 try
  l_Success := htTableHeadPswd(PAnsiChar(aTable), l_Mode) = 0;
 except
  l_Success := false;
 end;
 if l_Success then
 begin
  if l_Mode > 0 then
   Result := PAnsiChar(c_TablePass+#0)
  else
   Result := nil;
 end
 else
 begin
  l_TableName := AnsiUpperCase(ChangeFileExt(ExtractFileName(aTable), ''));
  if (l_TableName = 'ACCESS') or (l_TableName = 'PASS') or (l_TableName = 'BB_LOG') then
   Result := PAnsiChar(c_TablePass+#0)
  else
   Result := nil;
 end;
end;

function TServerBaseEngine._ReIndexTable(const aFileName: AnsiString): Boolean;
var
 l_Pass: PAnsiChar;
begin
 l_Pass := TablePass(aFileName);
 Result:= htUpdateTable(PAnsiChar(aFileName), l_Pass, l_Pass, True, True) = 0;
end;


end.
