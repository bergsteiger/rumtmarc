unit csInterfaces;

interface

uses
 Classes, ActiveX, ddProgressObj, ddAppConfigTypes, csRequestTypes, DT_Types;

type
 IcsRequest = interface(IInterface)
 ['{1FC5B642-EAEA-423C-9404-08DE415C3E15}']
  procedure LoadFrom(aStream: TStream; aIsPipe: Boolean);
  function pm_GetData: TddAppConfigNode; stdcall;
  function pm_GetDate: TDateTime; stdcall;
  function pm_GetDescription: string; stdcall;
  function pm_GetIndex: LongInt; stdcall;
  function pm_GetOnChange: TcsRequestNotifyEvent; stdcall;
  function pm_GetPriority: Integer; stdcall;
  function pm_GetTaskFolder: string; stdcall;
  function pm_GetTaskID: ShortString;
  function pm_GetTaskType: TcsRequestType; stdcall;
  function pm_GetUserID: TUserID; stdcall;
  function pm_GetVersion: Integer; stdcall;
  procedure pm_SetDescription(const Value: string); stdcall;
  procedure pm_SetIndex(const Value: LongInt); stdcall;
  procedure pm_SetOnChange(const Value: TcsRequestNotifyEvent); stdcall;
  procedure pm_SetPriority(const Value: Integer); stdcall;
  procedure pm_SetTaskFolder(const Value: string);
  procedure pm_SetTaskType(const Value: TcsRequestType); stdcall;
  procedure pm_SetUserID(const Value: TUserID); stdcall;
  procedure pm_SetVersion(const Value: Integer); stdcall;
  procedure SaveTo(aStream: TStream; aIsPipe: Boolean);
  property Data: TddAppConfigNode read pm_GetData;
  property Date: TDateTime read pm_GetDate;
  property Description: string read pm_GetDescription write pm_SetDescription;
  property Index: LongInt read pm_GetIndex write pm_SetIndex;
  property Priority: Integer read pm_GetPriority write pm_SetPriority;
  property TaskFolder: string read pm_GetTaskFolder write pm_SetTaskFolder;
  property TaskID: ShortString read pm_GetTaskID;
  property TaskType: TcsRequestType read pm_GetTaskType write pm_SetTaskType;
  property UserID: TUserID read pm_GetUserID write pm_SetUserID;
  property Version: Integer read pm_GetVersion write pm_SetVersion;
  property OnChange: TcsRequestNotifyEvent read pm_GetOnChange write pm_SetOnChange;
 end;

type
 IcsRequestHandler = interface(IInterface)
 ['{CF36C1D7-4075-4521-A385-E570D30478E4}']
  procedure Abort; stdcall;
  function DoHandle(aRequest: IcsRequest; aProgressor: TddProgressObject): Boolean; stdcall;
  procedure WriteResult(aStream: IStream); stdcall;
 end;

implementation

end.
