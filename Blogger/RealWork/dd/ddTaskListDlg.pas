unit ddTaskListDlg;

{$I ddDefine.inc }

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, l3Base, StdCtrls, ActnList, Menus, ExtCtrls,
  Buttons, ImgList,
  l3ObjectRefList, dt_Types
  ;

type
  TTaskListDialog = class(TForm)
    TaskListView: TListView;                 
    ActionList1: TActionList;
    actRefresh: TAction;
    actDeleteTask: TAction;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    ImageList1: TImageList;
    actServerStatus: TAction;
    procedure actRefreshExecute(Sender: TObject);
    procedure actDeleteTaskExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure TaskListViewCompare(Sender: TObject; Item1, Item2: TListItem;
      Data: Integer; var Compare: Integer);
  private
    f_Changing: Boolean;
    { Private declarations }
   f_TaskList : Tl3ObjectRefList;
    f_UserList: Tl3ObjectRefList;
   procedure SetTaskList(Value: Tl3ObjectRefList);
   function FindTask(const aTaskID: ShortString): TListItem;
  protected
  public
    { Public declarations }
   function Execute: Boolean;
    function FindUserName(aUserID: TUserID): AnsiString;
   procedure UpdateListView;
  public
   property TaskLst: Tl3ObjectRefList
    read f_TaskList
    write SetTaskList;
    property UserList: Tl3ObjectRefList read f_UserList write f_UserList;
  end;

var
  TaskListDialog: TTaskListDialog;

implementation

{$R *.dfm}

Uses
 ArchiUserRequestManager, ddServerTask,
 dt_UserTypes,
 DateUtils, Math, csTaskTypes, csProcessTask;

const
 itmStatus   = 0;
 itmDate     = 1;
 itmProgress = 2;
 itmDescript = 3;
 itmPriority = 4;
 itmTaskID   = 5;
 

function TTaskListDialog.FindTask(const aTaskID: ShortString): TListItem;
var
 i: Integer;
 l_item: TListItem;
begin
 // itmTaskID - идентификатор задачи
 Result:= nil;
 for i:= 0 to Pred(TaskListView.Items.Count) do
 begin
  l_Item:= TaskListView.Items[i];
  if l_Item.SubItems.Strings[itmTaskID] = aTaskID then
  begin
   Result:= l_Item;
   break;
  end;
 end;
end;

procedure TTaskListDialog.UpdateListView;
var
 i: Integer;
 item: TListItem;
 l_Task: TddProcessTask;
 l_S: AnsiString;
 l_Find: Boolean;
 l_Update: Boolean;

 procedure Task2Item(aTask: TddTaskItem; aItem: TListItem; Update: Boolean);
 var
  j: Integer;
  l_St: AnsiString;
  l_UserName: ShortString;
 begin
  if not Update then
  begin
   aItem.Data := aTask;
   for j:= itmStatus to itmTaskID do
    aitem.SubItems.Add('');
  end;
  case l_Task.TaskType of
   cs_ttImport: aItem.ImageIndex:= 0;
   cs_ttExport: aItem.ImageIndex:= 1;
   cs_ttAutoClass: aItem.ImageIndex:= 2;
  end; // case l_Task.TaskType
  with aitem.SubItems do
  begin
   if not Update then
   begin
    l_UserName := FindUserName(l_Task.UserID);
    aItem.Caption:= l_UserName;
    Strings[itmDate]:= FormatDateTime('dd/mm/yy hh:nn', l_Task.Date);
    Strings[itmDescript]:= l_task.Description;
    Strings[itmPriority]:= IntToStr(l_Task.Priority);
    Strings[itmTaskID]:= l_Task.TaskID;
   end; // not Update
   case l_Task.Status of
    cs_tsQuery  :
     begin
      //l_st:= 'ожидание';
      aItem.SubItemImages[itmStatus] := 9;
     end;
    cs_tsDone   :
     begin
      //l_st:= 'выполнено';
      aItem.SubItemImages[itmStatus] := 11;
     end;
    cs_tsRun    :
     begin
      //l_st:= 'выполняется';
      aItem.SubItemImages[itmStatus] := 7;
     end;
    cs_tsDeleted:
     begin
      //l_st:= 'удалено';
      aItem.SubItemImages[itmStatus] := 10;
     end;
    cs_tsFrozen :
     begin
      //l_st:= 'отложено';
      aItem.SubItemImages[itmStatus] := 13;
     end;
    cs_tsFrozenRun:
     begin
      //l_st:= 'завершается';
      aItem.SubItemImages[itmStatus] := 13;
     end;
    cs_tsError:
     begin
      //l_st:= 'завершается';
      aItem.SubItemImages[itmStatus] := 12;
     end;
    cs_tsDelivery:
     begin
      //l_st:= 'завершается';
      aItem.SubItemImages[itmStatus] := 15;
     end;
   end; // case l_Task.Status
//   if Strings[itmStatus] <> l_St then
//    Strings[itmStatus]:= l_St;
   if Strings[itmProgress] <> l_Task.Comment then
    Strings[itmProgress]:= l_Task.Comment;
  end; // with aitem.SubItems
 end; // Task2Item
begin
 if not f_Changing then
 begin
  f_Changing:= True;
  try
   l_Find:= TaskListView.Items.Count > 0;
   for i:= 0 to f_TaskList.Hi do
   begin
    l_Task:= TddProcessTask(f_TaskList.Items[i]);
    l_UPdate:= False;
    if l_Find then
    begin
     Item:= FindTask(l_Task.TaskID);
     if Item = nil then
      item:= TaskListView.Items.Add
     else
      l_Update:= True;
    end
    else
     item:= TaskListView.Items.Add;
    Task2Item(l_task, item, l_Update);
   end; // for i
   if not l_Update then
    TaskListView.AlphaSort;
  finally
   f_Changing:= False;
  end;
 end;
end;

procedure TTaskListDialog.SetTaskList(Value: Tl3ObjectRefList);
begin
 if Value <> nil then
 begin
  f_TaskList := Value;
  UpdateListView;
  //ddEnableMonitoring:= True;
 end;
end;



function TTaskListDialog.Execute: Boolean;
begin
 f_Changing:= False;
 Result:= ShowModal = mrOk;
end;


procedure TTaskListDialog.actRefreshExecute(Sender: TObject);
begin
(* if Assigned(f_OnRefresh) then
 begin
  f_OnRefresh(Self);
 end;
*)
end;

procedure TTaskListDialog.actDeleteTaskExecute(Sender: TObject);
var
 l_Task: TddProcessTask;
begin
(*
 if Assigned(f_OnDelete) then
 begin
  l_Task:= TddProcessTask(f_TaskList.Items[TaskListView.ItemIndex]);
  if l_Task.Status = cs_tsQuery then
  begin
   f_OnDelete(Self, l_TAsk.TaskID);
   actRefreshExecute(Sender);
  end;// l_Task.Status = cs_tsQuery
 end; // Assigned(f_OnDelete)
*)
end;

function TTaskListDialog.FindUserName(aUserID: TUserID): AnsiString;
var
 i: Integer;
begin
 Result := 'Инкогнито';
 if UserList <> nil then
  for i:= 0 to f_UserList.Hi do
   if TArchiUser(f_UserList.Items[i]).ID = aUserID then
   begin
    Result:= TArchiUser(f_UserList.Items[i]).UserName;
    break
   end;
end;

procedure TTaskListDialog.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 { Нужно послать отказ от обновлений очереди }
 ArchiRequestManager.StopMonitoring;
end;


procedure TTaskListDialog.TaskListViewCompare(Sender: TObject; Item1,
  Item2: TListItem; Data: Integer; var Compare: Integer);
var
 l_Task1, l_Task2: TddProcessTask;
begin
 l_Task1 := TddProcessTask(Item1.Data);
 l_Task2 := TddProcessTask(Item2.Data);
 Compare := CompareTaskStatus(l_task1.Status, l_Task2.Status);
 Compare := CompareDateTime(l_Task2.Date, l_Task1.Date);
 if (Compare = 0) then
  Compare := CompareValue(l_Task2.Priority, l_Task1.Priority);
end;

end.
