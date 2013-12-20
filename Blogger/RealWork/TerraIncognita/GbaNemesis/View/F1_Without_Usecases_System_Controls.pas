unit F1_Without_Usecases_System_Controls;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/F1_Without_Usecases_System_Controls.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMControls::Category>> F1 �������� ��� �����������::F1 Without Usecases::View::System
//
// "���������"
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmInterfaces
  {$IfEnd} //not NoVCM
  ,
  vcmExternalInterfaces {a}
  ;

(* System = operations
  {* ������� }
   ['{B114DA5E-F2EC-40C9-A291-9C4CAAA27C3A}']
   operation CantReceiveLegalServiceAnswer; has states;
     {* ������ ����� � ��� }
      On = state
       { ��������� ������ ����� ��� ��������� ������� ������ �������� ��������� ������. ' + '� ����� � ���� ������ �� ����� �������� ���� ������� �� ����� ���� ����������.' + #13#10#13#10 + '��� ������� ����������� �������� ����������, � ������ ���������� ��������������. ' + '���� �������� � ��������-����������� ��������� ������ ��� ������� ������, ���������� � ������������� ��� �����������:' + #13#10 + '<����� �� dealer.inf> }
      end;//On
      Off = state
       { ����� ������������� }
      end;//Off
      Disabled = state
      end;//Disabled
 end;//System*)

(* Common = operations
  {* �������� �� ����������� � ����� }
   ['{06A39F2D-658E-45EB-8AF4-60469DA1DCBF}']
   query OnControlChanged;
     {* ��������� ������ ������-�� �������� }
 end;//Common*)

(* Fonts = operations
   ['{C73B8471-4974-4B88-B2DC-93DDCBC811C5}']
   operation IncreaseFont;
   operation DecreaseFont;
 end;//Fonts*)

(* Help = operations
   ['{F2996D11-93B0-45B2-8122-E48530EAC0D5}']
   operation HotInformation;
   query HelpShortCuts;
   query HelpNewFeatures;
   query ContactInformation;
   query ReplyBook;
   operation GarantInternet;
   query About;
 end;//Help*)

(* System = operations
   ['{69ACA76C-00B3-49C6-8745-E3070458A5C7}']
   query BookmarkList;
 end;//System*)

(* WarnOnControl = operations
   ['{9CD2578F-69AF-4621-A604-C3A8FDE46C45}']
   query BuildControlledList;
     {* ��������� ������ ������������ ���������� �� �������� }
   query OpenUnderControlTree;
     {* ������� ������� "��������� �� ��������" }
   query HideReminder;
     {* ������ ��������������� ���� }
 end;//WarnOnControl*)

(* Reminder = operations
   ['{EE1B479C-466B-4926-BB80-A00E0B94AC88}']
   operation RemMWControlledChangingWarning;
   operation RemMWOldBaseWarning;
   operation RemMWTrialModeWarning;
   operation RemNewChatMessages;
   operation RemOnlineDead;
 end;//Reminder*)

(* Common = operations
   ['{7075BCC1-D217-4AA8-B336-94EAA01272AB}']
   query MemUsage;
 end;//Common*)

type
 Op_Common_OnControlChanged = class
  {* ����� ��� ������ �������� Common.OnControlChanged }
 public
 // public methods
   class function Call(const aTarget: IvcmEntity): Boolean; overload; 
     {* ����� �������� Common.OnControlChanged � �������� }
   class function Call(const aTarget: IvcmAggregate): Boolean; overload; 
     {* ����� �������� Common.OnControlChanged � ��������� }
   class function Call(const aTarget: IvcmEntityForm): Boolean; overload; 
     {* ����� �������� Common.OnControlChanged � ����� }
   class function Call(const aTarget: IvcmContainer): Boolean; overload; 
     {* ����� �������� Common.OnControlChanged � ���������� }
   class procedure Broadcast;
     {* ����� �������� Common.OnControlChanged � ���� ������������������ ��������� }
 end;//Op_Common_OnControlChanged
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
const
 en_System = 'System';
 en_capSystem = '�������';
 op_CantReceiveLegalServiceAnswer = 'CantReceiveLegalServiceAnswer';
 op_capCantReceiveLegalServiceAnswer = '������ ����� � ���';
 en_Common = 'Common';
 en_capCommon = '�������� �� ����������� � �����';
 op_OnControlChanged = 'OnControlChanged';
 op_capOnControlChanged = '��������� ������ ������-�� ��������';
 en_Fonts = 'Fonts';
 en_capFonts = '';
 op_IncreaseFont = 'IncreaseFont';
 op_capIncreaseFont = '';
 op_DecreaseFont = 'DecreaseFont';
 op_capDecreaseFont = '';
 en_Help = 'Help';
 en_capHelp = '';
 op_HotInformation = 'HotInformation';
 op_capHotInformation = '';
 op_HelpShortCuts = 'HelpShortCuts';
 op_capHelpShortCuts = '';
 op_HelpNewFeatures = 'HelpNewFeatures';
 op_capHelpNewFeatures = '';
 op_ContactInformation = 'ContactInformation';
 op_capContactInformation = '';
 op_ReplyBook = 'ReplyBook';
 op_capReplyBook = '';
 op_GarantInternet = 'GarantInternet';
 op_capGarantInternet = '';
 op_About = 'About';
 op_capAbout = '';
 op_BookmarkList = 'BookmarkList';
 op_capBookmarkList = '';
 en_WarnOnControl = 'WarnOnControl';
 en_capWarnOnControl = '';
 op_BuildControlledList = 'BuildControlledList';
 op_capBuildControlledList = '��������� ������ ������������ ���������� �� ��������';
 op_OpenUnderControlTree = 'OpenUnderControlTree';
 op_capOpenUnderControlTree = '������� ������� "��������� �� ��������"';
 op_HideReminder = 'HideReminder';
 op_capHideReminder = '������ ��������������� ����';
 en_Reminder = 'Reminder';
 en_capReminder = '';
 op_RemMWControlledChangingWarning = 'RemMWControlledChangingWarning';
 op_capRemMWControlledChangingWarning = '';
 op_RemMWOldBaseWarning = 'RemMWOldBaseWarning';
 op_capRemMWOldBaseWarning = '';
 op_RemMWTrialModeWarning = 'RemMWTrialModeWarning';
 op_capRemMWTrialModeWarning = '';
 op_RemNewChatMessages = 'RemNewChatMessages';
 op_capRemNewChatMessages = '';
 op_RemOnlineDead = 'RemOnlineDead';
 op_capRemOnlineDead = '';
 op_MemUsage = 'MemUsage';
 op_capMemUsage = '';

// ��������� ��������:
var st_user_System_CantReceiveLegalServiceAnswer_On : TvcmOperationStateIndex = (rID : -1);
  // ������� -> ������ ����� � ��� <-> On
var st_user_System_CantReceiveLegalServiceAnswer_Off : TvcmOperationStateIndex = (rID : -1);
  // ������� -> ������ ����� � ��� <-> ����� �������������
var st_user_System_CantReceiveLegalServiceAnswer_Disabled : TvcmOperationStateIndex = (rID : -1);
  // ������� -> ������ ����� � ��� <-> Disabled
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  l3Base {a},
  vcmBase {a},
  StdRes {a}
  ;

// start class Op_Common_OnControlChanged

class function Op_Common_OnControlChanged.Call(const aTarget: IvcmEntity): Boolean;
var
 l_Params : IvcmExecuteParams;
begin
 l3FillChar(Result, SizeOf(Result));
 if (aTarget <> nil) then
 begin
  l_Params := vcmParams;
  aTarget.Operation(TdmStdRes.opcode_Common_OnControlChanged, l_Params);
  with l_Params do
  begin
   if Done then
   begin
    Result := true;
   end;//Done
  end;//with l_Params
 end;//aTarget <> nil
end;//Op_Common_OnControlChanged.Call

class function Op_Common_OnControlChanged.Call(const aTarget: IvcmAggregate): Boolean;
var
 l_Params : IvcmExecuteParams;
begin
 l3FillChar(Result, SizeOf(Result));
 if (aTarget <> nil) then
 begin
  l_Params := vcmParams;
  aTarget.Operation(TdmStdRes.opcode_Common_OnControlChanged, l_Params);
  with l_Params do
  begin
   if Done then
   begin
    Result := true;
   end;//Done
  end;//with l_Params
 end;//aTarget <> nil
end;//Op_Common_OnControlChanged.Call

class function Op_Common_OnControlChanged.Call(const aTarget: IvcmEntityForm): Boolean;
 {-}
begin
 l3FillChar(Result, SizeOf(Result));
 if (aTarget <> nil) then
  Result := Call(aTarget.Entity);
end;//Op_Common_OnControlChanged.Call

class function Op_Common_OnControlChanged.Call(const aTarget: IvcmContainer): Boolean;
 {-}
begin
 l3FillChar(Result, SizeOf(Result));
 if (aTarget <> nil) then
  Result := Call(aTarget.AsForm);
end;//Op_Common_OnControlChanged.Call

class procedure Op_Common_OnControlChanged.Broadcast;
var
 l_Params : IvcmExecuteParams;
begin
 if (vcmDispatcher <> nil) then
 begin
  l_Params := vcmParams;
  vcmDispatcher.EntityOperationBroadcast(TdmStdRes.opcode_Common_OnControlChanged, l_Params);
 end;//vcmDispatcher <> nil
end;//Op_Common_OnControlChanged.Broadcast
{$IfEnd} //not Admin AND not Monitorings


end.