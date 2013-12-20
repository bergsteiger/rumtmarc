unit csCommandsTypes;
{$I ProjectDefine.inc}

interface

uses
 l3Base,
 Classes, CsDataPipe, ddAppConfigTypes, csProcessTask, l3SimpleObject;

type
 TcsCommandRequirement = (cs_crAll, cs_crSystem, cs_crUserList, cs_crGroupList);
 TcsCommand = class(Tl3SimpleObject)
 private
  f_Caption: AnsiString;
  f_CommandID: Integer;
  f_NeedRespond: Boolean;
  f_OnExecute: TNotifyEvent;
  f_LinkTask: TddProcessTask;
  f_Requirement: TcsCommandRequirement;
  f_RootTaskFolder: AnsiString;
  function pm_GetCaption: AnsiString;
  function pm_GetCommandID: Integer;
  function pm_GetNeedRespond: Boolean;
  procedure pm_SetCaption(const Value: AnsiString);
  procedure pm_SetCommandID(const Value: Integer);
  procedure pm_SetNeedRespond(const Value: Boolean);
  procedure pm_SetRootTaskFolder(const Value: AnsiString);
 protected
  procedure Cleanup; override;
 public
  constructor Create;
  procedure Execute(aTask: TddProcessTask);
  procedure ExecuteOnServer(aPipe: TcsDataPipe);
  procedure Load(aStream: TStream);
  procedure Save(aStream: TStream);
  property Caption: AnsiString read pm_GetCaption write pm_SetCaption;
  property CommandID: Integer read pm_GetCommandID write pm_SetCommandID;
  property NeedRespond: Boolean read pm_GetNeedRespond write pm_SetNeedRespond;
  property LinkTask: TddProcessTask read f_LinkTask write f_LinkTask;
  property Requirement: TcsCommandRequirement read f_Requirement write
      f_Requirement;
  property RootTaskFolder: AnsiString read f_RootTaskFolder write pm_SetRootTaskFolder;
  property OnExecute: TNotifyEvent read f_OnExecute write f_OnExecute;
 end;

 TcsCommands = (acmdNone,
                  // служба
                  acmdStart, acmdStop, acmdPause, acmdContinue, acmdRestart,
                  // задания
                  acmdStopAndGoAll, acmdDeleteTask,
                  acmdConfig, acmdSendMessage,
                  acmdAutoLogoff, acmdLogMessages,

                  acmdCheckTables, acmdUpdateTables,

                  acmdLockBase, acmdUnlockBase,
                  acmdCompileDictionaries, acmdUpdateText, acmdDoEverydayUpdate,
                  acmdBuildTextIndex,

                  acmdCheckFreeSpace,
                  acmdCheckTexts,
                  acmdClearLocks,
                  acmdEmailNotify,
                  acmdFamilyBackup,
                  acmdFullBackup,
                  acmdGardocBridge,
                  acmdIsDeltaReady,
                  acmdLoadDelta,
                  acmdLoadEQ,
                  acmdLoadKW,
                  acmdMakeDelta,
                  acmdMakeLoadDelta,
                  acmdPauseTask,
                  acmdPreventiveUpdate,
                  acmdRefresh,
                  acmdRestoreFamily,
                  acmdRunTask,
                  acmdSetHighestPriority,
                  acmdSetHighPriority,
                  acmdSetLowestPriority,
                  acmdSetLowPriority,
                  acmdSetNormalPriority,
                  acmdStack2Log,
                  acmdStopNGoAnnoExport,
                  acmdStopNGoExport,
                  acmdStopNGoImport,
                  acmdSwitchToRealBase,
                  acmdSwitchToTempBase,
                  acmdUndoRestore,
                  acmdUpdateDictEntryIndex,
                  acmdUpdateHeaderIndex,
                  acmdUpdateIndex,
                  acmdUserInfo,
                  acmdWeeklyUpdate
                   );


implementation

uses
 SysUtils,
 ddStreamUtils, ddAppConfigStrings,
 dt_Serv, l3Memory, DT_UserConst, ddServerTask, l3FileUtils;

constructor TcsCommand.Create;
begin
 inherited;
 f_CommandID:= 0;
 f_Caption:= '';
 f_NeedRespond:= False;
 (*
 f_LinkTask:= TddAppConfigNode.Create('LinkTask', 'Параметры');
 f_LinkTask.AddItem(TddStringConfigItem.Make('Caption', 'Описание'));
 f_LinkTask.AddItem(TddIntegerConfigItem.Create('ID', 'ID', 0));
 *)
 f_Requirement := cs_crAll;
end;

procedure TcsCommand.Cleanup;
begin
 FreeAndNil(f_LinkTask);
 inherited;
end;

procedure TcsCommand.Execute(aTask: TddProcessTask);
begin
 if Assigned(f_OnExecute) then
  f_OnExecute(aTask);
end;

procedure TcsCommand.ExecuteOnServer(aPipe: TcsDataPipe);
var
 l_Stream: TStream;
begin
 aPipe.Write(GlobalHtServer.CurUserID);
 //l_Stream:= Tl3MemoryStream.Create;
 //try
  //Save(l_Stream);
  //aPipe.Write(l_Stream);
 //finally
 // FreeAndNil(l_Stream);
 //end;
 aPipe.Write(CommandID);
end;

procedure TcsCommand.Load(aStream: TStream);
begin
 aStream.Read(f_CommandID, SizeOf(f_CommandID));
 ReadString(aStream, f_Caption);
 aStream.Read(f_NeedRespond, SizeOf(f_NeedRespond));
 {$IFDEF Linktask}
 f_LinkTask:= TddTaskItem.MakeFrom(usServerService, aStream, GetUniqFileName(RootTaskFolder, 'Task', ''), True) as TddProcessTask;
 {$ENDIF}
end;

function TcsCommand.pm_GetCaption: AnsiString;
begin
 //Result := f_LinkTask.AsString['Caption'];
 Result:= f_Caption;
end;

function TcsCommand.pm_GetCommandID: Integer;
begin
 //Result := f_LinkTask.AsInteger['ID'];
 Result:= f_CommandID;
end;

function TcsCommand.pm_GetNeedRespond: Boolean;
begin
 Result := f_NeedRespond;
end;

procedure TcsCommand.pm_SetCaption(const Value: AnsiString);
begin
 //f_LinkTask.AsString['Caption']:= Value;
 f_Caption:= Value;
end;

procedure TcsCommand.pm_SetCommandID(const Value: Integer);
begin
 //f_LinkTask.AsInteger['ID']:= Value;
 f_CommandID:= Value;
end;

procedure TcsCommand.pm_SetNeedRespond(const Value: Boolean);
begin
 f_NeedRespond := Value;
end;

procedure TcsCommand.pm_SetRootTaskFolder(const Value: AnsiString);
begin
 f_RootTaskFolder := Value;
end;

procedure TcsCommand.Save(aStream: TStream);
begin
 aStream.Write(f_CommandID, SizeOf(f_CommandID));
 WriteString(aStream, f_Caption);
 aStream.Write(f_NeedRespond, SizeOf(f_NeedRespond));
 {$IFDEF Linktask}
 //тут нет задачи - ее нужно создать в присвоении Linktask
 f_LinkTask.SaveTo(aStream, true);
 {$ENDIF}
end;

end.
