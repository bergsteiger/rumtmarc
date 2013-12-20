unit csProcessTask;

interface

uses
 Classes, CsDataPipe, ddProgressObj, ddServerTask, l3LongintList, CsTaskTypes,
 DT_types, DT_UserConst;

type
  TddProcessTask = class;
  TddTaskRunProc = procedure (aSelf: TddProcessTask; aProgressor: TddProgressObject) of object;
  TddProcessTask = class(TddTaskItem)
  private
    f_Aborted: Boolean;
    f_Comment: ShortString;
    f_DocumentIDList: Tl3LongintList;
    f_ReplyAddress: String;
    f_RunProc : TddTaskRunProc;
    f_Status: TcsTaskStatus;
    function pm_GetDelayed: Boolean;
    function pm_GetDelivering: Boolean;
    function pm_GetEnabled: Boolean;
    procedure pm_SetComment(const Value: ShortString);
    procedure pm_SetDelayed(const Value: Boolean);
    procedure pm_SetDocumentIDList(const Value: Tl3LongintList);
    procedure pm_SetEnabled(const Value: Boolean);
    procedure pm_SetStatus(const Value: TcsTaskStatus);
  protected
    procedure Cleanup; override;
    procedure DoRun(aProgressor: TddProgressObject); virtual;
    procedure DoBeforeRun; virtual;
    procedure DoAfterRun; virtual;

    procedure LoadFrom(aStream: TStream; aIsPipe: Boolean); override;
  public
    constructor Create(aOwner: TObject; aUserID: TUserID); override;
    constructor Make(aTaskType: TcsTaskType; aUserID: TUserID = usServerService; const aDescription: String = '';
        aRunProc: TddTaskRunProc = nil);
    procedure Abort; virtual;
    procedure Clear; virtual;
    procedure Delivery;
    procedure Done;
    procedure Error;
    procedure Run(aProgressor: TddProgressObject);
    procedure SaveTo(aStream: TStream; aIsPipe: Boolean); override;
    procedure SaveToPipe(aPipe: TCsDataPipe); override;
    procedure WriteResult(aStream: TStream); overload; virtual;
    procedure WriteResult(aPipe: TcsDataPipe); overload; virtual;
    property Aborted: Boolean read f_Aborted write f_Aborted;
    property Comment: ShortString read f_Comment write pm_SetComment;
    property Delayed: Boolean read pm_GetDelayed write pm_SetDelayed;
    property Delivering: Boolean read pm_GetDelivering;
    property DocumentIDList: Tl3LongintList read f_DocumentIDList write
        pm_SetDocumentIDList;
    property Enabled: Boolean read pm_GetEnabled write pm_SetEnabled;
    property ReplyAddress: String read f_ReplyAddress write f_ReplyAddress;
    property Status: TcsTaskStatus read f_Status write pm_SetStatus;
  end;

implementation

uses l3Base, SysUtils, l3FileUtils, l3Types;

{
******************************** TddProcessTask ********************************
}
constructor TddProcessTask.Create(aOwner: TObject; aUserID: TUserID);
begin
 inherited;
 f_DocumentIDList := Tl3LongintList.Make;
 f_Status := cs_tsNone;
end;

constructor TddProcessTask.Make(aTaskType: TcsTaskType; aUserID: TUserID = usServerService; const aDescription:
    String = ''; aRunProc: TddTaskRunProc = nil);
begin
 Create(nil, aUserID);
 TaskType := aTaskType;
 UserID := aUserID;
 Description:= aDescription;
 f_RunProc:= aRunProc;
end;

procedure TddProcessTask.Abort;
begin
 f_Aborted:= True;
end;

procedure TddProcessTask.Cleanup;
begin
 l3Free(f_DocumentIDList);
 inherited;
end;

procedure TddProcessTask.Clear;
begin
 (*
 if (Status = cs_tsDone) and (TaskFolder <> '') and DirectoryExists(TaskFolder) then
  DelDir(TaskFolder);
  *)
end;

procedure TddProcessTask.Delivery;
begin
 f_Comment := 'Ожидает доставки пользователю';
 Status := cs_tsDelivery;
end;

procedure TddProcessTask.Done;
begin
 Clear; // раз задача выполнена, никакая информация уже не нужна
 f_Comment := 'выполнено';
 Status := cs_tsDone;
end;

procedure TddProcessTask.DoBeforeRun;
begin
 // do nothing
end;

procedure TddProcessTask.DoAfterRun;
begin
 // do nothing
end;

procedure TddProcessTask.DoRun(aProgressor: TddProgressObject);
begin
 if Assigned(f_RunProc) then
  f_RunProc(Self, aProgressor)
 else
  l3System.Msg2Log('Не перекрыт метод %s.DoRun', [ClassName], l3_msgLevel3);
end;

procedure TddProcessTask.Error;
begin
 f_Comment:= 'Выполнение завершилось ошибкой';
 Status:= cs_tsError;
end;

procedure TddProcessTask.LoadFrom(aStream: TStream; aIsPipe: Boolean);
var
  l_S: ansistring;
begin
 inherited;
  with aStream do
  begin
   Read(f_Status, SizeOf(f_Status));
   ReadString(aStream, l_S);
   f_Comment := l_S;
  end; // with
  f_DocumentIDList.Load(aStream);
end;

function TddProcessTask.pm_GetDelayed: Boolean;
begin
 Result := Status = cs_tsDelayed;
end;

function TddProcessTask.pm_GetDelivering: Boolean;
begin
 Result := Status = cs_tsDelivery;
end;

function TddProcessTask.pm_GetEnabled: Boolean;
begin
 Result := Status = cs_tsQuery;
end;

procedure TddProcessTask.pm_SetComment(const Value: ShortString);
begin
 if f_Comment <> Value then
 begin
  f_Comment := Value;
  Changed(cs_tsNone);
 end;
end;

procedure TddProcessTask.pm_SetDelayed(const Value: Boolean);
begin
 Status:= cs_tsDelayed;
end;

procedure TddProcessTask.pm_SetDocumentIDList(const Value: Tl3LongintList);
begin
 if f_DocumentIDList <> Value then
  f_DocumentIDList.Assign(Value);
end;

procedure TddProcessTask.pm_SetEnabled(const Value: Boolean);
begin
  if(Status in [cs_tsQuery, cs_tsFrozen]) then
  begin
   if Value then
    Status := cs_tsQuery
   else
    Status := cs_tsFrozen;
  end;
end;

procedure TddProcessTask.Run(aProgressor: TddProgressObject);
begin
 Status := cs_tsRun;
 DoBeforeRun;
 try
  DoRun(aProgressor);
 except
  Status:= cs_tsError;
 end;
 DoAfterRun;
end;

procedure TddProcessTask.SaveTo(aStream: TStream; aIsPipe: Boolean);
begin
 f_Aborted:= False;
 inherited;
  with aStream do
  begin
   Write(f_Status, SizeOf(f_Status));
   WriteString(aStream, Comment);
  end;
  f_DocumentIDList.Save(aStream);
end;

procedure TddProcessTask.SaveToPipe(aPipe: TCsDataPipe);
begin
 inherited;
 //Index := aPipe.ReadInteger;
end;

procedure TddProcessTask.pm_SetStatus(const Value: TcsTaskStatus);
var
 l_PrevStatus: TcsTaskStatus;
begin
  if f_Status <> Value then
  begin
   l_PrevStatus := f_Status;
   f_Status := Value;
   Changed(l_PrevStatus);
  end;
end;

procedure TddProcessTask.WriteResult(aStream: TStream);
begin
end;

procedure TddProcessTask.WriteResult(aPipe: TcsDataPipe);
begin
end;

end.
