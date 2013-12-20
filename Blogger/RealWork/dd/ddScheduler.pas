unit ddScheduler;
{* ����� ����������� }
{ �����: ����� �.�.  }
{ �����: 11.11.2003  }
{ $Id: ddScheduler.pas,v 1.65 2013/08/30 08:48:08 kostitsin Exp $ }

// $Log: ddScheduler.pas,v $
// Revision 1.65  2013/08/30 08:48:08  kostitsin
// [$476838236]
//
// Revision 1.64  2013/08/29 18:22:07  kostitsin
// [$476838236] - ���� �������. �������� ��������� ������.
//
// Revision 1.63  2013/08/28 05:14:09  fireton
// - �� ����������
//
// Revision 1.62  2013/04/11 16:46:28  lulin
// - ���������� ��� XE3.
//
// Revision 1.61  2013/04/08 07:06:47  narry
// �������������� ������� �������������� (447390002)
//
// Revision 1.60  2013/01/22 12:32:40  narry
// ����������
//
// Revision 1.59  2012/07/13 11:28:12  narry
// ����������
//
// Revision 1.58  2012/05/31 07:42:24  narry
// ��������� ������������ ������� ������� "�����������" �������
//
// Revision 1.57  2012/05/24 12:48:18  narry
// �������� ������������� � ������� (365825882)
//
// Revision 1.56  2010/09/27 05:50:22  narry
// K235057449. �������, ������� ����� ����������� �� �����������
//
// Revision 1.55  2010/09/03 06:52:47  narry
// - AV ��� ���������� ��������� �����
//
// Revision 1.54  2010/08/27 08:59:41  narry
// - �� ����������� ������, ��������� � ����������
//
// Revision 1.53  2010/07/23 09:39:34  narry
// �125894967. ��������� ������� �� �����������, ���� �� ���������� ����������.
//
// Revision 1.52  2010/07/20 12:28:21  narry
// �226003904
//
// Revision 1.51  2010/03/16 11:42:22  narry
// - ���������� ������ ��������� �������
//
// Revision 1.50  2010/03/10 13:57:24  narry
// - �� ����������
//
// Revision 1.49  2009/05/15 15:12:47  narry
// - �� ����������� ��������� �������
//
// Revision 1.48  2009/03/13 15:13:51  narry
// - ����� ����� ����������
//
// Revision 1.47  2009/02/20 13:36:15  narry
// - ����������
//
// Revision 1.46  2009/02/16 07:53:19  narry
// - �� ��������� �������
//
// Revision 1.45  2009/01/23 15:56:12  narry
// - ����������� ��������������
// - ��������� �������
//
// Revision 1.44  2008/12/16 11:49:30  narry
// - �� ��������� ������ �� ��������
//
// Revision 1.43  2008/10/28 08:54:21  narry
// - �������� ���� ����������
//
// Revision 1.42  2008/10/21 09:51:54  narry
// - ��������� �������� ���������� ���������� ���� �������
//
// Revision 1.41  2008/09/29 13:53:09  narry
// - �������� �� ������ ����, �� � �������
// - ������� "�� �� �������" ��������� �����������
//
// Revision 1.40  2008/08/25 09:57:16  narry
// - ����������
//
// Revision 1.39  2008/08/19 12:01:02  narry
// - ����������� ����������� ���� ���������� ������������ ����������
//
// Revision 1.38  2008/08/18 12:39:22  narry
// - ��������� ��������� �� ������������ ���������
//
// Revision 1.37  2008/08/18 09:18:57  narry
// - ������ LastExecuted �� ExecuteByTimer
//
// Revision 1.36  2008/07/28 09:55:16  fireton
// - ��������������� ������������� �������
// - required ���� �������
//
// Revision 1.35  2008/07/25 12:33:23  narry
// - ����� � ��� �������� �������
//
// Revision 1.34  2008/07/24 11:49:52  fireton
// - ����������� ������� �� ���������� ������� � ������������
//
// Revision 1.33  2008/07/21 13:07:00  fireton
// - �� ��������� ��� ����������� �������
//
// Revision 1.32  2008/07/21 11:45:03  fireton
// - ������ (������ � ����������)
//
// Revision 1.31  2008/07/16 16:09:45  narry
// - �����������
//
// Revision 1.30  2008/07/09 06:37:35  fireton
// - ��������� ���������� � ���������� ������� �� �������� �� ����� �������
//
// Revision 1.29  2008/02/06 09:27:36  narry
// - �� ���������������
//
// Revision 1.28  2008/02/04 12:24:51  narry
// - �� ���������������
//
// Revision 1.27  2007/08/27 16:28:19  lulin
// - ������ ������������� �������� �������.
//
// Revision 1.26  2007/02/28 10:29:49  narry
// - ����������
//
// Revision 1.25  2007/01/12 08:38:15  narry
// - ���������� ������� ������ �� ����������� :(
//
// Revision 1.24  2006/12/08 08:47:33  narry
// - ���������� ������� �������������
//
// Revision 1.23  2006/03/27 13:55:48  narry
// - �����������: ������������ ������-������ �������
//
// Revision 1.22  2006/03/21 08:43:53  narry
// no message
//
// Revision 1.21  2006/01/05 16:25:43  narry
// - �����������: ����������� ���������� "���������" ���
// - �����: ������-������ "���������" ����
//
// Revision 1.20  2006/01/05 15:04:16  narry
// - �����: ����� ���� ������,�� ������� �� ����������� ���������� �������
//
// Revision 1.19  2005/02/16 17:10:41  narry
// - update: Delphi 2005
//
// Revision 1.18  2004/12/23 11:42:08  lulin
// - rename unit: User_Cfg -> l3IniFile.
//
// Revision 1.17  2004/09/21 12:21:05  lulin
// - Release ������� �� Cleanup.
//
// Revision 1.16  2004/06/02 16:24:49  narry
// - update: ��������� � �������� ������
//
// Revision 1.15  2004/05/21 12:03:57  narry
// - bug fix: ������ ������ ���������� �������
//
// Revision 1.14  2004/04/29 15:20:41  narry
// - update and bug fix
//
// Revision 1.13  2004/04/29 13:21:16  narry
// - bug fix: range check error
//
// Revision 1.12  2004/04/28 13:43:42  narry
// - update
//
// Revision 1.11  2004/03/04 17:55:26  narry
// - new: ���������� �������� ������� ����� N �����������
//
// Revision 1.10  2004/02/24 14:40:00  narry
// - update
//
// Revision 1.9  2004/02/17 10:33:30  narry
// - update: ������� ������� AV
//
// Revision 1.8  2004/01/05 15:17:13  narry
// - update: �������� ��� AV
//
// Revision 1.7  2003/12/29 13:41:00  narry
// - update: �������� ��� ����� �������
//
// Revision 1.6  2003/12/23 17:04:31  narry
// - update
//
// Revision 1.5  2003/12/09 09:29:44  narry
// - add: ��������� �������� �������
// - add: �������� UID ��� ������ � ���������� ��������� �������
// - add: ������� ��� ��������� ����� ������� �� ��� ID
// - change: ��������� ���������� ������� ������ �������
//
// Revision 1.4  2003/12/03 16:42:47  narry
// - update: ���������� � TCustomSchedulPanel
//
// Revision 1.3  2003/12/03 14:44:36  narry
// - update
//
// Revision 1.2  2003/12/01 15:20:34  narry
// - cleanup
// - bug fix: Integer overflow ��� ������������ ������ ����� �������� �����������
// -change: �������������� ������ "�����������" � "������ ���� �������" � ������� ��� � ����� ������
//
// Revision 1.1  2003/11/12 15:43:07  narry
// - new unit; ����� ��������������� ��� ���������� ������� ����� ��������� ��������� �������
//
{$DEFINE NestedTasks}

interface

Uses
 Classes, ExtCtrls, IniFiles, Graphics, DateUtils, Math,
 l3IniFile,
 ddCalendarEvents,
 ddConfigStorages,
 l3Base,
 l3ObjectRefList,
 l3RecList,
 l3LongintList,
 
 ddAppConfigTypes,
 ddAppConfigTypesModelPart,
 ddAppConfigConst;

type
 TddSchedulerTaskPeriodicity = (stOnce,       // ������ ����� � ����
                         stEveryDay,   // ������ �����
                         stEveryWeek,  // ������ ����� � ���� ������
                         stEveryMonth, // ������ ����� � ���� ������
                         stEveryYear,  // ������ �����, ���� � �����
                         stEveryMinutes // ����� �������� ����������
                         ); 

  TddSchedulerDayOfWeek = (st_dowMonday = DayMonday,
                           st_dowTuesday,
                           st_dowWednesday,
                           st_dowThursday,
                           st_dowFriday,
                           st_dowSaturday,
                           st_dowSunday);
  TddSchedulerDays = set of TddSchedulerDayOfWeek;

  TddSchedulerTime = class(Tl3Base)
  private
    f_DateTime: TDateTime;
    f_Isdate: Boolean;
    f_IsTime: Boolean;
  public
    procedure Assign(P: TPersistent); override;
    property DateTime: TDateTime read f_DateTime write f_DateTime;
    property IsDate: Boolean read f_Isdate write f_Isdate;
    property IsTime: Boolean read f_IsTime write f_IsTime;
  end;

 TddSchedulerTask = class(Tl3Base)
 private
    FExcludeDates: Tl3ObjectRefList;
    FIncludeDates: Tl3ObjectRefList;
    f_Deleted: Boolean;
    f_Done: Boolean;
    f_ExecuteByTimer: Boolean;
    f_IsChanged: Boolean;
    f_Master: TddSchedulerTask;
    f_Params: TddAppConfigNode;
    f_UID: Integer;
    procedure AssignExcludeDates(aSource: TddSchedulerTask);
    procedure AssignIncludeDates(aSource: TddSchedulerTask);
    procedure CreateParams;
    procedure DestroyParams;
    function GetExcludeDates(Index: Integer): TddSchedulerTime;
    function GetExcludeDatesCount: Integer;
    function GetFullDateTime(NearDate: TDateTime): TDateTime;
    function GetIncludeDates(Index: Integer): TddSchedulerTime;
    function GetIncludeDatesCount: Integer;
    function IsValidDate(const aDate: TDateTime): Boolean;
    function NestedAlias: AnsiString;
    function NextDate(const aDate: TDateTime; const IsPrev: Boolean = False): TDateTime;
    function pm_GetCaption: AnsiString;
    function pm_GetDay: Word;
    function pm_GetPeriodicity: TddSchedulerTaskPeriodicity;
    function pm_GetPrevFullDateTime(NearDate: TDateTime): TDateTime;
    function pm_GetSubTask(Index: Integer): TddCalendarTaskType;
    function pm_GetSubTaskCount: Integer;
    function pm_GetTaskDate: TDateTime;
    function pm_GetTaskTime: TDateTime;
    function pm_GetTaskType: TddCalendarTaskType;
    function pm_GetWrongDays: TddSchedulerDays;
            procedure pm_SetCaption(const aValue: AnsiString);
    procedure pm_SetDay(const aValue: Word);
    procedure pm_SetIsChanged(const Value: Boolean);
    procedure pm_SetPeriodicity(const Value: TddSchedulerTaskPeriodicity);
    procedure pm_SetTaskDate(const aValue: TDateTime);
    procedure pm_SetTaskTime(const aValue: TDateTime);
    procedure pm_SetTaskType(const aValue: TddCalendarTaskType);
    procedure pm_SetUID(const aValue: Integer);
    procedure pm_SetWrongDays(const aValue: TddSchedulerDays);
    procedure TypeChanged(aItem: TddBaseConfigItem; const aValue: TddConfigValue);
 protected
    procedure Cleanup; override;
    function GetNearestDateTime(const aNow: TDateTime): TDateTime; virtual;
 public
    constructor Create(anOwner: TObject = nil); overload; override;
    procedure AddExcludeDate(aTime, aDate: TDateTime; aIsTime, aIsDate:
            Boolean);
    procedure AddIncludeDate(aTime, aDate: TDateTime; aIsTime, aIsDate:
            Boolean);
    procedure Assign(P: TPersistent); override;
    procedure Changed; override;
    procedure ChangeDate(const FromDate, ToDate: TDateTime);
    procedure DeleteExcludeDate(aDate: TDateTime);
    procedure DeleteIncludeDate(aDate: TDateTime);
    function Edit: Boolean;
    procedure Executed(aDateTime: TDateTime = 0);
    function IsExcludeDate(aDate: TDateTime): Boolean;
    function IsIncludeDate(aDate: TDateTime): Boolean;
    procedure LoadFrom(aStorage: IddConfigStorage; aAlias: AnsiString; aNumber: Integer);
    class function MakeFrom(aStorage: IddConfigStorage; aAlias: AnsiString; aNumber:
        Integer): TddSchedulerTask;
    procedure SaveTo(aStorage: IddConfigStorage; aAlias: AnsiString);
    function ValidDate(const aDate: TDateTime; const IncludeDaily: Boolean =
            True): Boolean;
    property Caption: AnsiString read pm_GetCaption write pm_SetCaption;
    property Day: Word read pm_GetDay write pm_SetDay;
    property Deleted: Boolean read f_Deleted write f_Deleted;
    property Done: Boolean read f_Done write f_Done;
    property ExcludeDates[Index: Integer]: TddSchedulerTime read
            GetExcludeDates;
    property ExcludeDatesCount: Integer read GetExcludeDatesCount;
    property ExecuteByTimer: Boolean read f_ExecuteByTimer write f_ExecuteByTimer;
    property FullDateTime[NearDate: TDateTime]: TDateTime read GetFullDateTime;
    property IncludeDates[Index: Integer]: TddSchedulerTime read
            GetIncludeDates;
    property IncludeDatesCount: Integer read GetIncludeDatesCount;
    property IsChanged: Boolean read f_IsChanged write pm_SetIsChanged;
    property Master: TddSchedulerTask read f_Master write f_Master;
    property Params: TddAppConfigNode read f_Params;
    property Periodicity: TddSchedulerTaskPeriodicity read pm_GetPeriodicity write pm_SetPeriodicity;
    property PrevFullDateTime[NearDate: TDateTime]: TDateTime read pm_GetPrevFullDateTime;
    property SubTask[Index: Integer]: TddCalendarTaskType read pm_GetSubTask;
    property SubTaskCount: Integer read pm_GetSubTaskCount;
    property TaskDate: TDateTime read pm_GetTaskDate write pm_SetTaskDate;
    property TaskTime: TDateTime read pm_GetTaskTime write pm_SetTaskTime;
    property TaskType: TddCalendarTaskType read pm_GetTaskType write pm_SetTaskType;
    property UID: Integer read f_UID write pm_SetUID;
    property WrongDays: TddSchedulerDays read pm_GetWrongDays write pm_SetWrongDays;
  end;

  TddTaskColor = procedure (aTaskID: TddCalendarTaskType; out aColor: TColor) of object;

  TddSchedulerTaskHandler = procedure (aTask: TddSchedulerTask) of object;

  PddSchedulerTaskHandlerRec = ^TddSchedulerTaskHandlerRec;
  TddSchedulerTaskHandlerRec = record
   rTaskType: TddCalendarTaskType;
   rHandler : TddSchedulerTaskHandler;
  end;

  TddScheduler = class(Tl3Base)
  private
    FDelayed: Integer;
    f_CurrentTask: TddSchedulerTask;
    f_OnChangeTask: TNotifyEvent;
    f_OnTaskColor: TddTaskColor;
    f_Tasks: Tl3ObjectRefList;
    f_Timer: TTimer;
    f_ExecuteHandlerList: Tl3RecList;
    f_ChangeHandlerList: Tl3RecList;
    f_IsChanged: Boolean;
    procedure AddHandler(aList: Tl3RecList; aTaskType: TddCalendarTaskType; aTaskHandler: TddSchedulerTaskHandler);
    function ColorOnID(aTaskType: TddCalendarTaskType): TColor;
    procedure DelHandler(aList: Tl3RecList; aTaskType: TddCalendarTaskType; aTaskHandler: TddSchedulerTaskHandler);
    function ExecuteTask(aTask: TddSchedulerTask; aWithSubTasks: Boolean): Boolean;
    function GetCount: Integer;
    function GetTasks(Index: Integer): TddSchedulerTask;
    function GetUID: Integer;
    procedure SetTaskList(const Value: Tl3ObjectRefList);
    procedure _OnTimer(Sender: TObject);
    function FindHandler(aList: Tl3RecList; aTaskType: TddCalendarTaskType; aTaskHandler: TddSchedulerTaskHandler): Integer;
    function GetTaskHandler(aTaskType: TddCalendarTaskType; out theHandler: TddSchedulerTaskHandler): Boolean;
    procedure pm_SetIsChanged(const Value: Boolean);
  protected
    procedure Cleanup; override;
  public
    constructor Create(aOwner: TObject); override;
    function AddTask(aTask: TddSchedulerTask): TddSchedulerTask; overload;

    procedure AddExecuteHandler(aTaskType: TddCalendarTaskType; aTaskHandler: TddSchedulerTaskHandler);
    procedure AddChangeHandler(aTaskType: TddCalendarTaskType; aTaskHandler: TddSchedulerTaskHandler);
    procedure DelExecuteHandler(aTaskType: TddCalendarTaskType; aTaskHandler: TddSchedulerTaskHandler);

    procedure Assign(P: TPersistent); override;
    procedure PostChanges;
    procedure DelayExecute(aDelay: Integer);
    procedure DeleteTask(aUID: Integer); overload;
    procedure DeleteTask(aTask: TddSchedulerTask); overload;
    procedure DelChangeHandler(aTaskType: TddCalendarTaskType; aTaskHandler: TddSchedulerTaskHandler);
    procedure FillListOnDate(const aDate: TDateTime; aList: Tl3ObjectRefList; const ShowDaily: Boolean = False);
    procedure FillMonthList(const aDate: TdateTime; aList: Tl3ObjectRefList; const ShowDaily: Boolean = False);
    procedure GetListOnDate(const aDate: TDateTime; aList: Tl3ObjectRefList);
    function GetNearestTask(aNow: TDateTime): TddSchedulerTask;
    function GetTaskByTaskType(aTaskType: TddCalendarTaskType): TddSchedulerTask;
    function GetTaskByUID(aUID: Integer): TddSchedulerTask;
    function IsRequredViolated(var theExplanation: AnsiString): Boolean;
    procedure LoadFrom(aStorage: IddConfigStorage; aAlias: AnsiString); overload;
    procedure Run(aNow: TDateTime = 0);
    procedure SaveTo(aStorage: IddConfigStorage; aAlias: AnsiString); overload;
    procedure Stop;
    function TaskDescription(aTask: TddSchedulerTask; aDate: TDateTime): AnsiString;
    property Count: Integer read GetCount;
    property CurrentTask: TddSchedulerTask read f_CurrentTask;
    property OnChangeTask: TNotifyEvent read f_OnChangeTask write
            f_OnChangeTask;
    property OnTaskColor: TddTaskColor read f_OnTaskColor write f_OnTaskColor;
    property IsChanged: Boolean read f_IsChanged write pm_SetIsChanged;
    property TaskList: Tl3ObjectRefList read f_Tasks write SetTaskList;
    property Tasks[Index: Integer]: TddSchedulerTask read GetTasks;
  end;

const
 TaskTypeNames : array [TddSchedulerTaskPeriodicity] of String =
    ('���� ���', '������ ����', '������ ������', '������ �����', '������ ���', '������ N �����');

 Repetitive = [stEveryDay, stEveryWeek, stEveryMonth, stEveryYear, stEveryMinutes];
 MagicEpsilon = 500;
 c_SchedulerTaskAlias = 'SchedulerTask';

implementation

Uses
 Types, SysUtils,
 ShedulPanel,
 l3Types, l3String, l3TypedIntegerValueMap,
 ddAppConfigStrings, l3Interfaces, ddAppConfigUtils, ddAppConfigDates, l3Bits, Dialogs,
 ddAppConfigDataAdapters, ddAppConfigLists, alcuTypes, alcuConfigTypes;

function SchedulerTimeToDateTime(const ST: TddSchedulerTime; const DT: TDateTime): TDateTime;
begin
 Result:= DT;
 if ST.IsDate then
  ReplaceDate(Result, ST.DateTime);
 if ST.IsTime then
  ReplaceTime(Result, ST.DateTime);
end;

type
  TTaskRec = record
    ID: Integer;
    Caption: ShortString;
    Periodicity: Integer;
    DateTime: TDateTime;
    Day: Word;
  end;

  TTimeRec = record
    DateTime: TDateTime;
    IsTime: Boolean;
    IsDate: Boolean;
  end;

const
 schTypeID : Tl3ValueMapID = (rName : '��� �������'; rID : 1);
 schPereodicity : Tl3ValueMapID = (rName : '�������������'; rID : 2);


function CalendarEventsNames: TStringDynArray;
var
 i: TddCalendarTaskType;
begin
 SetLength(Result, Ord(High(TddCalendarTaskType))+1);
 for i:= Low(TddCalendarTaskType) to High(TddCalendarTaskType) do
  if i in alcuEnabledTasks then
   Result[Ord(i)]:= ddCalendarEventArray[i].Caption;
end;


constructor TddSchedulerTask.Create(anOwner: TObject = nil);
begin
 inherited Create(anOwner);
 FExcludeDates:= Tl3ObjectRefList.Make;
 FIncludeDates:= Tl3ObjectRefList.Make;
 ExecuteByTimer:= True;
 CreateParams;
end;

procedure TddSchedulerTask.AddExcludeDate(aTime, aDate: TDateTime; aIsTime,
        aIsDate: Boolean);
var
  l_DT: TddSchedulerTime;
begin
  DeleteIncludeDate(aDate);
  l_DT:= TddSchedulerTime.Create;
  try
   ReplaceDate(aTime, aDate);
   l_DT.DateTime:= aTime;
   l_DT.IsDate:= aIsDate;
   l_DT.IsTime:= aIsTime;
   fExcludeDates.Add(l_DT);
  finally
   L3Free(l_DT);
  end;
end;

procedure TddSchedulerTask.AddIncludeDate(aTime, aDate: TDateTime; aIsTime,
        aIsDate: Boolean);
var
  l_DT: TddSchedulerTime;
begin
  DeleteExcludeDate(aDate);
  l_DT:= TddSchedulerTime.Create;
  try
   ReplaceDate(aTime, aDate);
   l_DT.DateTime:= aTime;
   l_DT.IsDate:= aIsDate;
   l_DT.IsTime:= aIsTime;
   fIncludeDates.Add(l_DT);
  finally
   L3Free(l_DT);
  end;
end;

procedure TddSchedulerTask.Assign(P: TPersistent);
var
 l_ST: TddSchedulerTask absolute P;
begin
 if P is TddSchedulerTask then
 begin
  f_UID:= l_ST.UID;
  f_Deleted:= l_ST.Deleted;
  f_IsChanged := l_ST.IsChanged;
  f_ExecuteByTimer:= l_ST.ExecuteByTimer;
  AssignExcludeDates(l_St);
  AssignIncludeDates(l_St);
  f_Params.Assign(l_ST.Params);
 end
 else
  inherited;
end;

procedure TddSchedulerTask.AssignExcludeDates(aSource: TddSchedulerTask);
var
 i: Integer;
 l_T: TddSchedulerTime;
begin
 FExcludeDates.Clear;
 for i:= 0 to Pred(aSource.ExcludeDatesCount) do
 begin
  l_T:= TddSchedulerTime.Create(nil);
  try
   l_T.Assign(aSource.ExcludeDates[i]);
   fExcludedates.Add(l_T);
  finally
   l3Free(l_T);
  end;
 end;
end;

procedure TddSchedulerTask.AssignIncludeDates(aSource: TddSchedulerTask);
var
 i: Integer;
 l_T: TddSchedulerTime;
begin
 FIncludeDates.Clear;
 for i:= 0 to Pred(aSource.IncludeDatesCount) do
 begin
  l_T:= TddSchedulerTime.Create(nil);
  try
   l_T.Assign(aSource.IncludeDates[i]);
   fIncludedates.Add(l_T);
  finally
   l3Free(l_T);
  end;
 end;
end;

procedure TddSchedulerTask.Changed;
begin
 f_IsChanged := True;
 f_Params.Changed:= True;
end;

procedure TddSchedulerTask.ChangeDate(const FromDate, ToDate: TDateTime);
begin
  if ValidDate(FromDate) and (CompareDate(FromDate, ToDate) <> EqualsValue) then
  begin
   AddExcludeDate(FromDate, FromDate, True, True);
   AddIncludeDate(ToDate, ToDate, True, True);
  end; // if ValidDate(FromDate)
end;

procedure TddSchedulerTask.Cleanup;
begin
 DestroyParams;
 l3Free(FExcludeDates);
 l3Free(FIncludeDates);
 inherited;
end;

procedure TddSchedulerTask.CreateParams;
var
 l_CI: TddContainerConfigItem;
 l_List: TddSimpleListConfigItem;
 l_I, l_I2: TddBaseConfigItem;
 l_Map: TalcuCalendarEventsMap;
 l_DefValue: TddConfigValue;
begin
 l_DefValue:= ddEmptyIntValue;
 l_DefValue.AsInteger:= 1;
 f_Params:= TddAppConfigNode.Create(c_SchedulerTaskAlias, '����������� �������');
 with f_Params do
 begin
  LabelTop:= False;

  l_I:= AddItem(TddStringConfigItem.Make('Caption', '��������'));
  l_I.Required:= True;
  l_I.OnNotify:= TypeChanged;
  l_Map:= TalcuCalendarEventsMap.Make;
  try
   l_I2:= AddItem(TddComboBoxConfigItem.Create('Type', '���', MakeIntValue(-1), l_Map));
   l_I2.Required:= True;
   l_I2.AddNotify(l_I);
   AddItem(TddTimeConfigItem.Create('Time', '�����', ddEmptyValue));

   l_CI:= TddContainerConfigItem.Make('Periodicity', '�����');
    l_CI.Labeled:= False;
    l_CI.AddCase('���� ���');
     l_CI.Add(TddDateConfigItem.Create('Date', '����', ddEmptyDateValue));
    l_CI.AddCase('������ ����');
     // �������� TCheckBox ��� ���� ������, ����� ������� ����������� ����
     l_CI.Add(TddWeekDaysCheckListItem.Make('WrongDays', '�����', ddEmptyIntValue));
    l_CI.AddCase('������ ������');
     // �������� TComboBox � ����� ������
     l_CI.Add(TddWeekDayCombo.Make('WeekDay', '��', l_DefValue, 2));
    l_CI.AddCase('������ �����');
     // �������� TComboBox � ����� ������
     l_CI.Add(TddMonthDayCombo.Make('MonthDay', '', l_DefValue, 2));
    l_CI.AddCase('������ ���');
     // �������� TComboBox � ����� ������
     l_CI.Add(TddMonthDayCombo.Make('YearDay', '' , l_DefValue, 1));
     // �������� TComboBox � ��������
     l_CI.Add(TddMonthsCombo.Make('YearMonth', '', l_DefValue, 1));
    l_CI.AddCase('������ N �����');
     // �������� TIntegerItem ��� �������������� �����
     l_CI.Add(TddIntegerConfigItem.Create('Minutes', '������|�����', 30));
     l_CI.Add(TddDateConfigItem.Create('emDate', '������� �', ddEmptyDateValue));
   AddItem(l_CI);
   {$IFDEF NestedTasks}
   l_List:= TddSimpleListConfigItem.Make(NestedAlias, '������ ��������� �������');
   l_I2:= l_List.Config.AddItem(TddComboBoxConfigItem.Create('Type', '���', MakeIntValue(-1), l_Map));
   l_I2.Required:= True;
   AddItem(l_List);
   {$ENDIF}
  finally
   l3Free(l_Map);
  end;
 end;
end;

procedure TddSchedulerTask.DeleteExcludeDate(aDate: TDateTime);
var
  i: Integer;
begin
  for i:= 0 to Pred(ExcludeDatesCount) do
   if CompareDate(ExcludeDates[i].DateTime, aDate) = EqualsValue then
   begin
    fExcludeDates.Delete(i);
    break;
   end;
end;

procedure TddSchedulerTask.DeleteIncludeDate(aDate: TDateTime);
var
  i: Integer;
begin
  for i:= 0 to Pred(IncludeDatesCount) do
   if CompareDate(IncludeDates[i].DateTime, aDate) = EqualsValue then
   begin
    fIncludeDates.Delete(i);
    break;
   end;
end;

procedure TddSchedulerTask.DestroyParams;
begin
 l3Free(f_Params);
end;

function TddSchedulerTask.Edit: Boolean;
begin
 repeat
  Result := ExecuteNodeDialog(f_Params, True);
  if Result then
  begin
   ExecuteByTimer:= ddCalendarEventArray[TaskType].ExecuteByTimer;
   { TODO -o����� -c��������� : ����� ����������� ������� ��������� � ��������� ExecuteNodeDialog }
   Changed;
  end // Result
  else
   break
 until (Params.AsInteger['Type'] <> -1);
end;

procedure TddSchedulerTask.Executed(aDateTime: TDateTime = 0);
begin
 if aDateTime = 0 then
  aDateTime := Now;
end;

function TddSchedulerTask.GetExcludeDates(Index: Integer): TddSchedulerTime;
begin
  Result:= TddSchedulerTime(fExcludeDates.Items[Index]);
end;

function TddSchedulerTask.GetExcludeDatesCount: Integer;
begin
  try
   Result:= fExcludeDates.Count;
  except
   l3System.Msg2Log('��������� ������ "������" ���');
   l3System.Msg2Log('������ ���� = '+BoolToStr(Self <> nil, True));
   Result:= 0;
  end;
end;

function TddSchedulerTask.GetFullDateTime(NearDate: TDateTime): TDateTime;
var
  i, l_Nearest, l_Inc: Integer;
  l_Delta, l_CurDelta: Int64;
  l_Valid: Boolean;
  l_DT, l_Next: TDateTime;
begin
  Result:= GetNearestdateTime(NearDate);
  l_Next:= Result;
  // ����� ��������� ������������ ���� �� ������� � �������
  // ����������� � ����������� ���
  l_Valid:= IsValidDate(Result);
  if not l_Valid and (Periodicity in Repetitive) then
  begin
   l_Inc:= 0;
   while not l_Valid and (l_Inc <> 3) do
   begin
    l_Next:= NextDate(l_Next);
    l_Valid:= IsValidDate(l_Next);
    Inc(l_Inc);
   end; // not l_Valid and (l_Inc <> 3)
  end; // not l_IsValid and (and TaskType in Repetitive)
  if l_Valid then
   l_Delta:= SecondsBetween(NearDate, l_Next)
  else
  begin
   l_Delta:= High(l_Delta);
   Result:= GetNearestdateTime(NearDate);
  end;
  l_Nearest:= -1;
  for i:= 0 to Pred(IncludeDatesCount) do
  begin
   l_DT:= SchedulerTimeToDateTime(IncludeDates[i], NearDate{Result});
   if IsValidDate(l_DT) and (CompareDate(l_DT, NearDate) <> LessThanValue) then
   begin
    l_CurDelta:= SecondsBetween(NearDate{Result}, l_DT);
    if l_CurDelta < l_Delta then
    begin
     l_Nearest:= i;
     l_Delta:= l_CurDelta;
    end; // l_CurDelta <> l_Delta
   end; // IsValidDate(l_DT)
  end; // for i
  if l_Nearest <> -1 then
   Result:= SchedulerTimeToDateTime(IncludeDates[l_Nearest], Result)
  else
   Result:= l_Next;
end;

function TddSchedulerTask.GetIncludeDates(Index: Integer): TddSchedulerTime;
begin
  Result:= TddSchedulerTime(fIncludeDates.Items[Index]);
end;

function TddSchedulerTask.GetIncludeDatesCount: Integer;
begin
  Result:= fIncludeDates.Count;
end;

function TddSchedulerTask.GetNearestDateTime(const aNow: TDateTime): TDateTime;
var
  l_D, l_M, l_Y: Word;
  l_Div, l_Mod: Integer;
begin
  Result:= TaskTime;
   case Periodicity of
    stOnce       :
     begin
      ReplaceDate(Result, TaskDate);
     end;
    stEveryDay   :
     begin
       ReplaceDate(Result, aNow);
       if CompareTime(TaskTime, TimeOf(aNow)) = LessThanValue then
        Result:= IncDay(Result);
        while TddSchedulerDayOfWeek(DayOfTheWeek(Result)) in WrongDays do
         Result := IncDay(Result);
     end;
    stEveryWeek  :
     begin
      ReplaceDate(Result, DateOf(aNow));
      Result:= IncDay(Result, Day - DayOfTheWeek(DateOf(aNow)));
      if CompareDateTime(Result, aNow) = LessThanValue then
       Result:= IncDay(Result, 7);
     end;
    stEveryMonth :
     begin
      Decodedate(DateOf(aNow), l_Y, l_M, l_D);
      ReplaceDate(Result, EncodeDate(l_Y, l_M, Max(1, Params.AsInteger['MonthDay'])));
      if CompareDateTime(Result, aNow) = LessThanValue then
       Result:= IncMonth(Result);
     end;
    stEveryYear  :
     begin
      ReplaceDate(Result, EncodeDate(YearOf(DateOf(aNow)), Max(1, Params.AsInteger['YearMonth']), Max(1, Params.AsInteger['YearDay'])));
      if CompareDateTime(Result, aNow) = LessThanValue then
       Result:= IncYear(Result);
     end;
    stEveryMinutes:
     begin
      // TaskTime - ��� ������� ����� �������
      ReplaceDate(Result, DateOf(Params.Asdatetime['emDate']));
      l_Div:= MinutesBetween(aNow, Result) div Params.AsInteger['Minutes'];
      if CompareDateTime(aNow, IncMinute(Result, l_Div*Params.AsInteger['Minutes'])) = GreaterThanValue then
       Inc(l_Div);
      Result:= IncMinute(Result, l_Div*Params.AsInteger['Minutes']);
     end
    else
     Result:= aNow;
   end;
end;

function TddSchedulerTask.IsExcludeDate(aDate: TDateTime): Boolean;
var
  i: Integer;
begin
  Result := False;
  for i:= 0 to Pred(ExcludeDatesCount) do
   if CompareDate(ExcludeDates[i].DateTime, aDate) = EqualsValue then
   begin
    Result:= True;
    break;
   end;
end;

function TddSchedulerTask.IsIncludeDate(aDate: TDateTime): Boolean;
var
  i: Integer;
begin
  Result := False;
  for i:= 0 to Pred(IncludeDatesCount) do
   if CompareDate(IncludeDates[i].DateTime, aDate) = EqualsValue then
   begin
    Result:= True;
    break;
   end;
end;

function TddSchedulerTask.IsValidDate(const aDate: TDateTime): Boolean;
var
  i: Integer;
begin
 Result:= not Deleted;
 if Result then
  for i:= 0 to Pred(ExcludeDatesCount) do
  begin
   if CompareDateTime(aDate, SchedulerTimeToDateTime(ExcludeDates[i], aDate)) = EqualsValue then
   begin
    Result:= False;
    break;
   end; // CompareDateTime(Result, l_SDT) = EqualsValue
  end; // for i
end;

procedure TddSchedulerTask.LoadFrom(aStorage: IddConfigStorage; aAlias: AnsiString; aNumber: Integer);
var
 k: Integer;
 j: Integer;
 l_DateTime: TDateTime;
 l_DayOW: TddSchedulerDayOfWeek;
 l_Section: AnsiString;
 l_IsTime: Boolean;
 l_IsDate: Boolean;
 l_NumStr: AnsiString;
 l_TempTaskType: Integer;
 l_WrongDays: TddSchedulerDays;
begin
 UID:= aNumber;
 params.Load(aStorage);
 
 with aStorage do
 begin
  Section:= PArams.Alias;
  Deleted:= ReadBool('Deleted', False);
  l_Section:= Format('ExcludeList.%d', [aNumber]);
  Section:= l_Section;
  k:= ReadInteger('Count', 0);
  for j:= 0 to Pred(k) do
  begin
   l_DateTime:= ReadDateTime('Time.'+IntToStr(j), 0);
   l_IsTime:= ReadBool('IsTime.'+IntToStr(j), False);
   l_IsDate:= ReadBool('IsDate.'+IntToStr(j), False);
   AddExcludeDate(TimeOf(l_DateTime), Dateof(l_DateTime), l_IsTime, l_IsDate);
  end; // for j

  l_Section:= Format('IncludeList.%d', [aNumber]);
  Section:= l_Section;
  k:= ReadInteger('Count', 0);
  for j:= 0 to Pred(k) do
  begin
   l_DateTime:= ReadDateTime('Time.'+IntToStr(j), 0);
   l_IsTime:= ReadBool('IsTime.'+IntToStr(j), False);
   l_IsDate:= ReadBool('IsDate.'+IntToStr(j), False);
   AddIncludeDate(TimeOf(l_DateTime), Dateof(l_DateTime), l_IsTime, l_IsDate);
  end; // for j
 end; // with aStorage;
end;

class function TddSchedulerTask.MakeFrom(aStorage: IddConfigStorage; aAlias:
    String; aNumber: Integer): TddSchedulerTask;
begin
 Result := Create(nil);
 try
  Result.LoadFrom(aStorage, aAlias, aNumber);
  if //Result.Deleted or
     ((Result.Periodicity = stOnce) and (CompareDate(Result.FullDateTime[Now], Now) = LessThanValue)) then
  begin
   l3Free(Result);
  end;
 except
  l3Free(Result);
 end;
end;

function TddSchedulerTask.NestedAlias: AnsiString;
begin
 Result := Format('Nested%d', [f_UID]);
end;

function TddSchedulerTask.NextDate(const aDate: TDateTime; const IsPrev: Boolean = False): TDateTime;
var
 l_Modifier: Integer;
begin
 l_Modifier:= IfThen(IsPrev, -1, 1);
  case Periodicity of
   stEveryDay :
    begin
      if SizeOf(WrongDays) = 7 then
       Result := Yesterday
      else
      begin
       Result:= IncDay(aDate, l_Modifier);
       while TddSchedulerDayOfWeek(DayOfTheWeek(Result)) in WrongDays do
        Result := IncDay(Result, l_Modifier);
      end;
    end;
   stEveryWeek: Result:= IncDay(aDate, 7*l_Modifier);
   stEveryMonth: Result:= IncMonth(aDate, l_Modifier);
   stEveryYear: Result:= IncYear(aDate, l_Modifier);
   stEveryMinutes: Result:= IncMinute(aDate, l_Modifier*f_Params.AsInteger['Minutes']);
  else
   Result:= aDate
  end;
end;

function TddSchedulerTask.pm_GetCaption: AnsiString;
begin
 Result := Params.AsString['Caption'];
end;

function TddSchedulerTask.pm_GetDay: Word;
begin
 Result := Succ(Params.AsInteger['WeekDay']);
end;

function TddSchedulerTask.pm_GetPeriodicity: TddSchedulerTaskPeriodicity;
begin
 Result := TddSchedulerTaskPeriodicity(f_Params.AsInteger['Periodicity']);
end;

function TddSchedulerTask.pm_GetPrevFullDateTime(NearDate: TDateTime):
    TDateTime;
var
  i, l_Nearest, l_Inc: Integer;
  l_Delta, l_CurDelta: LongInt;
  l_Valid: Boolean;
  l_DT, l_Prev: TDateTime;
begin
 Result:= GetNearestdateTime(NearDate);
 if (Periodicity in Repetitive) then
  Result:= NextDate(Result, True);
 l_Prev:= Result;
 // ����� ��������� ������������ ���� �� ������� � �������
 // ����������� � ����������� ���
 l_Valid:= IsValidDate(Result);
 if not l_Valid and (Periodicity in Repetitive) then
 begin
  l_Inc:= 0;
  while not l_Valid and (l_Inc <> 3) do
  begin
   l_Prev:= NextDate(l_Prev, True);
   l_Valid:= IsValidDate(l_Prev);
   Inc(l_Inc);
  end; // not l_Valid and (l_Inc <> 3)
 end; // not l_IsValid and (and TaskType in Repetitive)

 if l_Valid then
  l_Delta:= SecondsBetween(l_Prev, NearDate)
 else
 begin
  l_Delta:= High(l_Delta);
  Result:= GetNearestdateTime(NearDate);
 end;
 // �������� �� ��, ���� �� ���� ���������� �����, ��� ������������
 l_Nearest:= -1;
 for i:= 0 to Pred(IncludeDatesCount) do
 begin
  l_DT:= SchedulerTimeToDateTime(IncludeDates[i], NearDate{Result});
  if IsValidDate(l_DT) and (CompareDate(l_DT, Neardate) = LessThanValue)then
  begin
   l_CurDelta:= SecondsBetween(NearDate{Result}, l_DT);
   if l_CurDelta < l_Delta then
   begin
    l_Nearest:= i;
    l_Delta:= l_CurDelta;
   end; // l_CurDelta <> l_Delta
  end; // IsValidDate(l_DT)
 end; // for i
 if l_Nearest <> -1 then
  Result:= SchedulerTimeToDateTime(IncludeDates[l_Nearest], Result)
 else
  Result:= l_Prev;
end;

function TddSchedulerTask.pm_GetSubTask(Index: Integer): TddCalendarTaskType;
begin
 Result := TddCalendarTaskType((Params.AsObject[NestedAlias] as TddSimpleListDataAdapter).Values[Index, 'Type'].AsInteger); //TddSchedulerTask(f_Container.Items[Index]);
end;

function TddSchedulerTask.pm_GetSubTaskCount: Integer;
begin
 Result := (Params.AsObject[NestedAlias] as TddSimpleListDataAdapter).Count;
end;

function TddSchedulerTask.pm_GetTaskDate: TDateTime;
begin
 Result := Params.AsDateTime['Date'];
end;

function TddSchedulerTask.pm_GetTaskTime: TDateTime;
begin
 Result := Params.AsDateTime['Time'];
end;

function TddSchedulerTask.pm_GetTaskType: TddCalendarTaskType;
begin
 Result := TddCalendarTaskType(f_Params.AsInteger['Type']);
end;

function TddSchedulerTask.pm_GetWrongDays: TddSchedulerDays;
var
 l_Day: TddSchedulerDayOfWeek;
 l_Value: Integer;
begin
 Result := [];
 l_Value:= f_Params.AsInteger['WrongDays'];
 for l_Day:= Low(TddSchedulerDayOfWeek) to High(TddSchedulerDayOfWeek) do
  if l3TestBit(l_value, Pred(Ord(l_Day))) then
   Include(Result, l_Day);
end;

procedure TddSchedulerTask.pm_SetCaption(const aValue: AnsiString);
begin
 Params.AsString['Caption']:= aValue;
end;

procedure TddSchedulerTask.pm_SetDay(const aValue: Word);
begin
 Params.AsInteger['WeekDay']:= Pred(aValue);
end;

procedure TddSchedulerTask.pm_SetIsChanged(const Value: Boolean);
begin
 if f_IsChanged <> Value then
 begin
  f_IsChanged := Value;
  Params.Changed:= Value;
 end; // f_IsChanged <> Value
end;

procedure TddSchedulerTask.pm_SetPeriodicity(const Value: TddSchedulerTaskPeriodicity);
begin
 f_Params.AsInteger['Periodicity']:= Ord(Value);
end;

procedure TddSchedulerTask.pm_SetTaskDate(const aValue: TDateTime);
begin
 Params.AsDateTime['Date'];
end;

procedure TddSchedulerTask.pm_SetTaskTime(const aValue: TDateTime);
begin
 Params.AsDateTime['Time']:= aValue;
end;

procedure TddSchedulerTask.pm_SetTaskType(const aValue: TddCalendarTaskType);
begin
 f_Params.AsInteger['Type']:= Ord(aValue);
 { TODO : ������, ����� ������� ��� ��������� �������� }
 ExecuteByTimer:= ddCalendarEventArray[aValue].ExecuteByTimer;
end;

procedure TddSchedulerTask.pm_SetUID(const aValue: Integer);
var
 l_Nested: TddBaseConfigItem;
begin
 l_Nested:= Params.ItemByAlias[NestedAlias];
 f_UID := aValue;
 Params.Alias:= c_SchedulerTaskAlias + IntToStr(UID);
 l_Nested.Alias:= NestedAlias;
end;

procedure TddSchedulerTask.pm_SetWrongDays(const aValue: TddSchedulerDays);
var
 l_Value: Integer;
 i: TddSchedulerDayOfWeek;
begin
 l_Value:= 0;
 for i:= Low(TddSchedulerDayOfWeek) to High(TddSchedulerDayOfWeek) do
  if i in aValue then
   l3SetBit(l_Value, Succ(Ord(i)));
 f_Params.AsInteger['WrongDays']:= l_Value;
end;

procedure TddSchedulerTask.SaveTo(aStorage: IddConfigStorage; aAlias: AnsiString);
(*
var
  
  l_Day : TddSchedulerDayOfWeek;
  l_Task: TddSchedulerTask;

  l_DateTime: TDateTime;
*)
var
 l_Section: AnsiString;
 j: Integer;
begin
 //if not Deleted then
 begin
  Params.Save(aStorage);
  // ��������� ������ ����������-���������
  with aStorage do
  begin
   try
    Section:= Params.Alias;
    WriteBool('Deleted', Deleted);
    l_Section:= Format('ExcludeList.%d', [uid]);
    Section:= l_Section;
    WriteInteger('Count', ExcludeDatesCount);
    for j:= 0 to Pred(ExcludeDatesCount) do
    begin
     WriteDateTime('Time.'+IntToStr(j), ExcludeDates[j].DateTime);
     WriteBool('IsTime.'+IntToStr(j), ExcludeDates[j].IsTime);
     WriteBool('IsDate.'+IntToStr(j), ExcludeDates[j].IsDate);
    end; // for j

    l_Section:= Format('IncludeList.%d', [uid]);
    Section:= l_Section;
    WriteInteger('Count', IncludeDatesCount);
    for j:= 0 to Pred(IncludeDatesCount) do
    begin
     WriteDateTime('Time.'+IntToStr(j), IncludeDates[j].DateTime);
     WriteBool('IsTime.'+IntToStr(j), IncludeDates[j].IsTime);
     WriteBool('IsDate.'+IntToStr(j), IncludeDates[j].IsDate);
    end; // for j
   except
    l3System.Msg2Log(Format('������ ������ ������� �%d', [uid]));
   end; // try.. except for i
  end; // with aStorage
 end // not Deleted
 //else
 //
end;

procedure TddSchedulerTask.TypeChanged(aItem: TddBaseConfigItem; const aValue: TddConfigValue);
begin
 aItem.StringValue:= ddCalendarEventArray[TddCalendarTaskType(aValue.AsInteger)].Caption;
 Params.AsInteger['Periodicity']:= ddCalendarEventArray[TddCalendarTaskType(aValue.AsInteger)].DefaultRep;
 case Params.AsInteger['Periodicity'] of
  repeatOnce: Params.AsDateTime['Date']:= Now;
  repeatEveryweek: Params.AsInteger['WeekDay']:= Pred(DayOfTheWeek(Now));
 end;
end;

function TddSchedulerTask.ValidDate(const aDate: TDateTime; const IncludeDaily:
        Boolean = True): Boolean;
var
  l_DateTime: TDateTime;
begin
 l_DateTime:= FullDateTime[aDate];
 Result:= (CompareDate(aDate, l_DateTime) = EqualsValue) and not Deleted;
 if Result and not IncludeDaily and (Periodicity = stEveryDay) then
  Result:= IsIncludeDate(l_DateTime);
end;




{
********************************* TddScheduler *********************************
}
constructor TddScheduler.Create(aOwner: TObject);
begin
  inherited Create(aOwner);
  f_Timer:= TTimer.Create(nil);
  f_Timer.Interval:= 0;
  f_Timer.Enabled:= False;
  f_Timer.OnTimer:= _OnTimer;
  f_Tasks:= Tl3ObjectRefList.Make;
  f_ExecuteHandlerList := Tl3RecList.Create(SizeOf(TddSchedulerTaskHandlerRec));
  f_ChangeHandlerList := Tl3RecList.Create(SizeOf(TddSchedulerTaskHandlerRec));
  FDelayed:= 0;
  f_IsChanged := False;
end;

function TddScheduler.AddTask(aTask: TddSchedulerTask): TddSchedulerTask;
begin
 aTask.UID:= GetUID;
 f_Tasks.Add(aTask);
 Result:= Tasks[Pred(Count)];
end;

procedure TddScheduler.AddExecuteHandler(aTaskType: TddCalendarTaskType; aTaskHandler: TddSchedulerTaskHandler);
begin
 AddHandler(f_ExecuteHandlerList, aTaskType, aTaskHandler);
end;

procedure TddScheduler.AddChangeHandler(aTaskType: TddCalendarTaskType; aTaskHandler: TddSchedulerTaskHandler);
begin
 AddHandler(f_ChangeHandlerList, aTaskType, aTaskHandler);
end;

procedure TddScheduler.AddHandler(aList: Tl3RecList; aTaskType: TddCalendarTaskType; aTaskHandler:
    TddSchedulerTaskHandler);
var
 l_Rec: TddSchedulerTaskHandlerRec;
begin
 if FindHandler(aList, aTaskType, aTaskHandler) < 0 then
 begin
  l_Rec.rTaskType := aTaskType;
  l_Rec.rHandler := aTaskHandler;
  aList.Add(l_Rec);
 end;
end;

procedure TddScheduler.Assign(P: TPersistent);
var
  l_S: TddScheduler absolute P;
  i: Integer;
  l_T: TddSchedulerTask;
begin
  if P is TddScheduler then
  begin
   TaskList.Clear;
   for i:= 0 to Pred(l_S.Count) do
   begin
    l_T:= l_S.tasks[i].Clone;
    try
     TaskList.Add(l_T);
    finally
     l3Free(l_T);
    end;
   end;
   IsChanged := l_S.IsChanged;
  end
  else
   inherited;
end;

procedure TddScheduler.PostChanges;

 function TaskIterator(aData: Pointer; anIndex: Integer): Boolean;
 var
  l_Task: TddSchedulerTask;

  function CheckHandler(aData: Pointer; anIndex: Integer): Boolean;
  var
   l_HandlerRec: PddSchedulerTaskHandlerRec;
  begin
   Result := True;
   l_HandlerRec := PddSchedulerTaskHandlerRec(aData^);
   if l_HandlerRec.rTaskType = l_Task.TaskType then
    l_HandlerRec.rHandler(l_Task);
  end;

 begin
  Result := True;
  l_Task := TddSchedulerTask(aData^);
  if l_Task.IsChanged then
  begin
   // ������� ���� ��������, ���� ���������� � ���������� ���� (�����?)
   f_ChangeHandlerList.IterateAllF(l3L2IA(@CheckHandler));
   //l_Task.IsChanged := False;
  end;
 end;

begin
 TaskList.IterateAllF(l3L2IA(@TaskIterator));
end;

function TddScheduler.ColorOnID(aTaskType: TddCalendarTaskType): TColor;
begin
  if Assigned(f_OnTaskColor) then
   f_OnTaskColor(aTaskType, Result)
  else
   Result := clNavy;
end;

procedure TddScheduler.DelayExecute(aDelay: Integer);
begin
  if f_CurrentTask <> nil then
  begin
   FDelayed := Max(aDelay, 60*1000);
   f_Timer.Interval:= FDelayed;
   f_Timer.Enabled:= True;
  end;
end;

procedure TddScheduler.DeleteTask(aUID: Integer);
var
 i: Integer;
begin
 for i:= 0 to Pred(Count) do
  if Tasks[i].UID = aUID then
   DeleteTask(Tasks[i]);
end;

procedure TddScheduler.DeleteTask(aTask: TddSchedulerTask);
var
 l_Running: Boolean;
begin
 l_Running:= f_CurrentTask <> nil;
 Stop;
 aTask.Deleted:= True;
 if l_Running then
  Run(Now);
end;

procedure TddScheduler.FillListOnDate(const aDate: TDateTime; aList: Tl3ObjectRefList; const ShowDaily: Boolean =
    False);
var
  i: Integer;
  l_D: TDateTypeObj;
begin
  for i:= 0 to Pred(Count) do
   if Tasks[i].ValidDate(aDate, ShowDaily) then
   begin
    { ��������� � ������  aDate � Tasks[i].ID }
    l_D:= TDateTypeObj.Create(Tasks[i].FulldateTime[aDate], ColorOnID(Tasks[i].TaskType), Tasks[i].Caption);
    try
     aList.Add(l_D);
    finally
     l3Free(l_D);
    end;
   end;
end;

procedure TddScheduler.FillMonthList(const aDate: TdateTime; aList: Tl3ObjectRefList; const ShowDaily: Boolean = False);
var
  i: Integer;
  l_D: TDateTime;
begin
  aList.Clear;
  l_D:= StartOfTheMonth(aDate);
  for i:= 1 to DaysInMonth(aDate) do
  begin
   FillListOnDate(l_D, aList, ShowDaily);
   l_D:= IncDay(l_D);
  end;
end;

function TddScheduler.GetCount: Integer;
begin
  Result:= f_Tasks.Count;
end;

procedure TddScheduler.GetListOnDate(const aDate: TDateTime; aList: Tl3ObjectRefList);
var
  i: Integer;
begin
  for i:= 0 to Pred(Count) do
   if Tasks[i].ValidDate(aDate) then
     aList.Add(Tasks[i]);
end;

function TddScheduler.GetNearestTask(aNow: TDateTime): TddSchedulerTask;
var
  l_Task: TddSchedulerTask;
  i, l_NearestIndex: Integer;
  l_DateTime: TDateTime;
  l_Delta, l_CurDelta: Int64;
begin
  l_Delta:= High(l_Delta);
  l_NearestIndex:= -1;
  for i:= 0 to Pred(Count) do
  begin
   l_Task:= Tasks[i];
   if not l_Task.Deleted then
   begin
    l_DateTime:= l_Task.FullDateTime[aNow];
    if CompareDateTime(l_DateTime, aNow) = GreaterThanValue then
    begin
      l_CurDelta:= MillisecondsBetween(aNow, l_DateTime);
      if l_CurDelta < l_Delta then
      begin
       l_Delta:= l_CurDelta;
       l_NearestIndex:= i
      end; // l_CurDelta < l_Delta
    end; // CompareDateTime(l_DateTime, aNow) = GreaterThanValue
   end; // not Deleted
  end; // for i
  if l_NearestIndex <> -1 then
   Result:= Tasks[l_NearestIndex]
  else
   Result:= nil;
end;

function TddScheduler.GetTaskByTaskType(aTaskType: TddCalendarTaskType): TddSchedulerTask;
var
 i: Integer;
 l_Task: TddSchedulerTask;
begin
  Result := nil;
  for i:= 0 to Pred(Count) do
  begin
   l_Task:= Tasks[i];
   if (l_Task.TaskType = aTaskType) and not l_Task.Deleted then
   begin
    Result:= l_Task;
    break;
   end;
  end;
end;

function TddScheduler.GetTasks(Index: Integer): TddSchedulerTask;
begin
  Result:= TddSchedulerTask(f_Tasks.Items[Index]);
end;

function TddScheduler.GetUID: Integer;
  
  function _Check(aUID: Integer): Boolean;
  var
   i: Integer;
  begin
   Result:= True;
   for i:= 0 to Pred(Count) do
    if Tasks[i].UID = aUID then
    begin
     Result:= False;
     break
    end;
  end;

begin
  Result:= 0;
  while not _Check(Result) do
   Inc(Result);
end;

procedure TddScheduler.LoadFrom(aStorage: IddConfigStorage; aAlias: AnsiString);
var
  i: Integer;
  l_Count: Integer;
  l_Task: TddSchedulerTask;
begin
  with aStorage do
  begin
   Section:= aAlias;
   l_Count:= ReadInteger('Count', 0); // ���������� �����
   for i:= 0 to Pred(l_Count) do
   try
    Section:= aAlias;
    l_Task := TddSchedulerTask.MakeFrom(aStorage, aAlias, i);
    try
     if (l_Task <> nil) and (not l_Task.Deleted) then
      AddTask(l_Task);
    finally
     l3Free(l_Task);
    end;
   except
    l3System.Msg2Log(Format('������ ������ ������� �%d', [i]));
   end; // try.. except for i
  end;
 if f_CurrentTask <> nil then
  Run(Now);
end;

procedure TddScheduler.Cleanup;
begin
  l3Free(f_Tasks);
  l3Free(f_Timer);
  l3Free(f_ExecuteHandlerList);
  l3Free(f_ChangeHandlerList);
  inherited;
end;

procedure TddScheduler.DelExecuteHandler(aTaskType: TddCalendarTaskType; aTaskHandler: TddSchedulerTaskHandler);
begin
 DelHandler(f_ExecuteHandlerList, aTaskType, aTaskHandler);
end;

procedure TddScheduler.DelChangeHandler(aTaskType: TddCalendarTaskType; aTaskHandler: TddSchedulerTaskHandler);
begin
 DelHandler(f_ChangeHandlerList, aTaskType, aTaskHandler);
end;

procedure TddScheduler.DelHandler(aList: Tl3RecList; aTaskType: TddCalendarTaskType; aTaskHandler:
    TddSchedulerTaskHandler);
var
 l_Idx: Integer;
begin
 l_Idx := FindHandler(aList, aTaskType, aTaskHandler);
 if l_Idx >= 0 then
  aList.Delete(l_Idx);
end;

function TddScheduler.ExecuteTask(aTask: TddSchedulerTask; aWithSubTasks: Boolean): Boolean;

 function CheckHandler(aData: Pointer; anIndex: Integer): Boolean;
 var
  l_HandlerRec: PddSchedulerTaskHandlerRec;
 begin
  Result := True;
  l_HandlerRec := PddSchedulerTaskHandlerRec(aData^);
  if l_HandlerRec.rTaskType = aTask.TaskType then
   l_HandlerRec.rHandler(aTask);
 end;

 function RunSlaves(aData: Pointer; anIndex: Integer): Boolean;
 var
  l_Task: TddSchedulerTask;
 begin
  Result := True;
  l_Task := TddSchedulerTask(aData^);
  if l_Task.TaskType in ddCalendarEventArray[aTask.TaskType].Slaves then
   Result:= ExecuteTask(l_Task, True);
 end;

var
 I: Integer;
 l_SubTask: TddSchedulerTask;
 l_Handler: TddSchedulerTaskHandler;
 l_SubTaskType: TddCalendarTaskType;
begin
 Result:= False;
 l3System.Msg2Log('����������� ������: %s', [aTask.Caption]);
 // ������������, ��� � ������ ��������� ������������ f_ExecuteHandlerList.IterateAllF(l3L2IA(@CheckHandler));
 if GetTaskHandler(aTask.TaskType, l_Handler) then
 begin
  l_Handler(aTask);
  if aTask <> nil then
   Result:= aTask.Done
  else
   Result:= True;
 end; // GetTaskHandler(aTask.TaskType, l_Handler)
 if Result and (FDelayed = 0) then
 begin
  TaskList.IterateAllF(l3L2IA(@RunSlaves));
  if aWithSubTasks then
   for i:= 0 to Pred(aTask.SubTaskCount) do
   begin
    l_SubTaskType:= aTask.SubTask[i];
    if l_SubTaskType <> aTask.TaskType then
    begin
     l_SubTask:= GetTaskByTaskType(l_SubTaskType);
     if GetTaskHandler(l_SubTaskType, l_Handler) then
     begin
      l3System.Msg2Log('����������� ��������� ������: %s', [ddCalendarEventArray[l_SubTaskType].Caption]);
      l_Handler(l_SubTask);
      if (l_SubTask <> nil) and not l_SubTask.Done then
      begin
       Result:= False;
       break;
      end;
     end;
    end; // aTask.SubTask[i] <> aTask.TaskType
   end; // for i
 end; // aTask.Done
end;

function TddScheduler.FindHandler(aList: Tl3RecList; aTaskType: TddCalendarTaskType; aTaskHandler:
    TddSchedulerTaskHandler): Integer;
var
 l_Rec: TddSchedulerTaskHandlerRec;
begin
 l_Rec.rTaskType := aTaskType;
 l_Rec.rHandler := aTaskHandler;
 if not aList.FindPart(l_Rec, SizeOf(TddSchedulerTaskHandlerRec), Result) then
  Result := -1;
end;

function TddScheduler.GetTaskByUID(aUID: Integer): TddSchedulerTask;
var
  i: Integer;
begin
  Result := nil;
  for i:= 0 to Pred(Count) do
  begin
   if Tasks[i].UID = aUID then
   begin
    Result:= Tasks[i];
    break;
   end;
  end;
end;

function TddScheduler.GetTaskHandler(aTaskType: TddCalendarTaskType; out theHandler: TddSchedulerTaskHandler): Boolean;
var
 i: Integer;
 l_Handler: TddSchedulerTaskHandlerRec;
begin
 Result := False;
 for i:= 0 to f_ExecuteHandlerList.Hi do
 begin
  l_Handler:= PddSchedulerTaskHandlerRec(f_ExecuteHandlerList.ItemSlot(i))^;
  if l_Handler.rTaskType = aTaskType then
  begin
   theHandler:= l_Handler.rHandler;
   Result:= True;
   break;
  end; // l_Handler.rTaskType = aTaskType
 end; // for i
end;

function TddScheduler.IsRequredViolated(var theExplanation: AnsiString): Boolean;
var
 l_TT: TddCalendarTaskType;
 l_Idx: Integer;
 l_Found: Integer;

 function FindTask(aData: Pointer; aIndex: Integer): Boolean;
 var
  l_Task: TddSchedulerTask;
 begin
  Result := True;
  l_Task := TddSchedulerTask(aData^);
  Result := l_Task.TaskType <> l_TT;
  if not Result then
   l_Found := aIndex;
 end;

begin
 Result := False;
 theExplanation := '';
 for l_TT := Low(TddCalendarTaskType) to High(TddCalendarTaskType) do
 begin
  if ddCalendarEventArray[l_TT].Required then
  begin
   l_Found := -1;
   f_Tasks.IterateAll(l3L2IA(@FindTask));
   if l_Found < 0 then // required ������� �� �������
   begin
    if theExplanation <> '' then
     theExplanation := theExplanation + ', ';
    theExplanation := theExplanation + ddCalendarEventArray[l_TT].Caption;
   end;
  end;
 end;
 Result := theExplanation <> '';
end;

procedure TddScheduler.pm_SetIsChanged(const Value: Boolean);
var
 i: Integer;
begin
 if f_IsChanged <> Value then
 begin
  f_IsChanged:= Value;
  // ��������� ���� ������� ���� Changed
  for i:= 0 to Pred(Count) do
   Tasks[i].IsChanged:= Value;
 end; // f_IsChanged <> Value
end;

function TddScheduler.TaskDescription(aTask: TddSchedulerTask; aDate: TDateTime): AnsiString;
var
  l_S: AnsiString;
  l_T: AnsiString;
  l_C: AnsiString;
  l_D: TDateTime;
begin
  l_S:= '';
  
  l_D:= aTask.FullDateTime[aDate];
  DateTimeToString(l_T, '� hh:nn', l_D);
  if CompareDate(l_D, Now) = EqualsValue then
   l_C:= '��������� ������ �������'
  else
  if CompareDate(Tomorrow, l_D) = EqualsValue then
   l_C:= '��������� ������ ������'
  else
   DateTimeToString(l_C, '��������� ������ dd/mm/yy', l_D);
  case aTask.Periodicity of
   stOnce       :
    begin

    end;
   stEveryDay   :
    begin
    end;
   stEveryWeek  :
    begin
     case aTask.Day of
      1: l_S:= '�� ������������� ';
      2: l_S:= '�� ��������� ';
      3: l_S:= '�� ������ ';
      4: l_S:= '�� ��������� ';
      5: l_S:= '�� �������� ';
      6: l_S:= '�� �������� ';
      7: l_S:= '�� ������������ ';
     end;
    end;
   stEveryMonth :
    begin
    end;
   stEveryYear  :
    begin
    end;
  end;
  Result:= Format('%s (%s %s%s, %s)', [aTask.Caption, TaskTypeNames[aTask.Periodicity], l_S, l_T, l_C]);
end;

procedure TddScheduler.Run(aNow: TDateTime = 0);
var
 l_PrevTask: TddSchedulerTask;
 l_Day: AnsiString;
 l_StartDate: TDateTime;
begin
 if aNow = 0 then
  aNow:= Now
 else
 begin
  if (f_CurrentTask <> nil) then
  begin
   if CompareDateTime(aNow, f_CurrentTask.FullDateTime[aNow]) = EqualsValue then
    aNow:= IncMinute(aNow)
  end
  else
   l3System.Msg2Log('��� ������� ������');
 end;
 Stop;

 f_CurrentTask:= GetNearestTask(aNow);
 while (f_CurrentTask <> nil) and not f_CurrentTask.ExecuteByTimer do
 begin
  l_PrevTask:= f_CurrentTask;
  aNow:= IncMinute(aNow);
  f_CurrentTask:= GetNearestTask(aNow);
  if f_CurrentTask = l_PrevTask then
   f_CurrentTask:= nil;
 end; // (f_CurrentTask <> nil) and not f_CurrentTask.ExecuteByTimer

 if (f_CurrentTask <> nil) then
 begin
  l_StartDate:= f_CurrentTask.FullDateTime[aNow];
  case DaysBetween(Now, l_StartDate) of
   0: l_Day:= '�������';
   1: l_Day:= '������';
  else
   l_Day:= DateTimeToStr(l_StartDate);
  end;
  
  l3System.Msg2Log('��������� ������: %s, ������ %s', [f_CurrentTask.Caption, l_Day]);
  if Assigned(f_OnChangeTask) then
   f_OnChangeTask(Self);
  if CompareDateTime(aNow, f_CurrentTask.FullDateTime[aNow]) = GreaterThanValue then
   _OnTimer(f_Timer)
  else
  begin
   f_Timer.Interval:= MillisecondsBetween(Now, f_CurrentTask.FullDateTime[aNow])+MagicEpsilon;
   f_Timer.Enabled:= True;
  end;
 end
 else
  f_Timer.Enabled:= False;
end;

procedure TddScheduler.SaveTo(aStorage: IddConfigStorage; aAlias: AnsiString);
var
 i: Integer;
begin
  with aStorage do
  begin
   for i:= 0 to Pred(Count) do
   try
    Section:= aAlias;
    Tasks[i].SaveTo(aStorage, aAlias);
   except
    l3System.Msg2Log(Format('������ ������ ������� �%d', [i]));
   end; // try.. except for i
   Section:= aAlias;
   WriteInteger('Count', Count); // ���������� �����
  end;
end;

procedure TddScheduler.SetTaskList(const Value: Tl3ObjectRefList);
begin
  f_Tasks.Assign(Value);
end;

procedure TddScheduler.Stop;
begin
  f_CurrentTask:= nil;
  f_Timer.Enabled:= False;
end;

procedure TddScheduler._OnTimer(Sender: TObject);
var
  l_Now: TDateTime;
begin
  f_Timer.Enabled:= False;
  FDelayed:= 0;
  l_Now:= Now;
  if (f_CurrentTask <> nil) then
  begin
   if f_CurrentTask.Periodicity = stEveryMinutes then
   begin
    l_Now:= f_CurrentTask.PrevFullDateTime[l_Now];
   end
   else
    ReplaceTime(l_Now, f_CurrentTask.TaskTime);
   ExecuteTask(f_CurrentTask, True);
  end
  else
   l_Now:= Now;
  if FDelayed = 0 then
   Run(l_Now);
end;



{
******************************* TddSchedulerTime *******************************
}
procedure TddSchedulerTime.Assign(P: TPersistent);
begin
  if P is TddSchedulerTime then
  begin
   f_Isdate:= TddSchedulerTime(P).IsDate;
   f_IsTime:= TddSchedulerTime(P).IsTime;
   f_DateTime:= TddSchedulerTime(P).DateTime;
  end
  else
   inherited;
end;


end.

