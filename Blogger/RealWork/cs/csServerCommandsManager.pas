unit csServerCommandsManager;

interface

Uses
 l3Base,
 Classes,
 CsDataPipe, csCommandsManager, csCommandsTypes, ddAppConfigTypes, ddServerTask;

type

 TcsServerCommandsManager = class(TcsCommandsManager)
 private
 public
  procedure AddCommand(aID: TcsCommands; aCaption: String; aOnExecute: TNotifyEvent); overload;
  procedure AddCommand(aCaption: String; aNeedRespond: Boolean; aOnExecute: TNotifyEvent; aLinkTask: TddTaskClass = nil); overload;
  procedure cs_GetCommands(aPipe: TCSDataPipe);
 end;


implementation

uses
 l3Memory,  csQueryTypes, SysUtils, csCommandsConst, DT_UserConst, csProcessTask;

procedure TcsServerCommandsManager.AddCommand(aID: TcsCommands; aCaption: String; aOnExecute:
    TNotifyEvent);
var
 l_Command: TcsCommand;
begin
 if CommandExists(aID, l_Command) then
 begin
  l_Command.Caption:= aCaption;
  l_Command.OnExecute:= aOnExecute;
 end
 else
 begin
  l_Command:= TcsCommand.Create;
  l_Command.CommandID:= Ord(aID);
  l_Command.Caption:= aCaption;
  l_Command.OnExecute:= aOnExecute;
  Add(l_Command);
 end;
end;

procedure TcsServerCommandsManager.AddCommand(aCaption: String; aNeedRespond: Boolean; aOnExecute:
    TNotifyEvent; aLinkTask: TddTaskClass = nil);
var
 l_Command: TcsCommand;
begin
 l_Command:= TcsCommand.Create;
 l_Command.CommandID:= c_CommandBaseIndex + Succ(Count);
 l_Command.NeedRespond:= aNeedRespond;
 l_Command.Caption:= aCaption;
 l_Command.OnExecute:= aOnExecute;
 if aLinkTask <> nil then
  l_Command.LinkTask:= aLinkTask.Create(nil, usServerService) as TddProcessTask;
 Add(l_Command);
end;

procedure TcsServerCommandsManager.cs_GetCommands(aPipe: TCSDataPipe);
var
 l_Stream: TStream;
 i, l_Count: Integer;
begin
 Acquire;
 try
  l_Stream:= Tl3MemoryStream.Create;
  try
   l_Count:= Count;
   l_Stream.Write(l_Count, SizeOf(l_Count));
   for i:= 0 to Pred(Count) do
    Commands[i].Save(l_Stream);
   aPipe.Write(l_Stream);
  finally
   l3Free(l_Stream);
  end;
 finally
  Leave;
 end;
end;

end.
