//..........................................................................................................................................................................................................................................................
unit ddMSAgentry;
{* Базовые класс для поддержки технологии Microsoft Agent. }

{ Автор: Дудко Д.В. © }
{ Модуль: ddMSAgent - обертка вокруг msagent.ocx }
{ Начат: 05.09.2002 19:43 }
{ $Id: ddMSAgentry.pas,v 1.20 2013/04/11 16:46:28 lulin Exp $ }

// $Log: ddMSAgentry.pas,v $
// Revision 1.20  2013/04/11 16:46:28  lulin
// - отлаживаем под XE3.
//
// Revision 1.19  2012/11/01 09:43:24  lulin
// - забыл точку с запятой.
//
// Revision 1.18  2012/11/01 07:45:49  lulin
// - делаем возможность логирования процесса загрузки модулей.
//
// Revision 1.17  2007/08/14 14:30:05  lulin
// - оптимизируем перемещение блоков памяти.
//
// Revision 1.16  2007/07/04 09:21:19  narry
// - обновление
//
// Revision 1.15  2007/04/25 13:14:35  narry
// - случайный выбор агента
//
// Revision 1.14  2005/12/01 11:45:59  narry
// - обновление
//
// Revision 1.13  2005/04/27 13:24:42  lulin
// - bug fix: не компилировалось.
//
// Revision 1.12  2005/04/19 15:41:42  lulin
// - переходим на "правильный" ProcessMessages.
//
// Revision 1.11  2005/02/16 17:10:41  narry
// - update: Delphi 2005
//
// Revision 1.10  2004/10/27 12:40:37  narry
// - bug fix: зацикливание анимации
//
// Revision 1.9  2004/09/21 12:21:05  lulin
// - Release заменил на Cleanup.
//
// Revision 1.8  2004/07/01 16:04:15  narry
// - update & bug fix
//
// Revision 1.7  2004/06/09 09:54:22  narry
// - bug fix: зацикливание при попытке скрыть Агента
//
// Revision 1.6  2004/02/24 14:40:00  narry
// - update
//
// Revision 1.5  2003/12/23 17:02:38  narry
// - bug fix: вне зависимости от флага агент всегда показывался медленно
//
// Revision 1.4  2003/04/19 12:30:37  law
// - new file: ddDefine.inc.
//
// Revision 1.3  2002/12/06 14:09:28  narry
// - update
//
// Revision 1.2  2002/10/03 16:24:19  narry
// - bug fix
//
// Revision 1.1  2002/09/13 14:53:19  narry
// - new unit: класс для добавления MS Agent в приложение
//

{$I ddDefine.inc }
interface
Uses
 l3Base,
 AgentObjects_TLB,
 Classes, Forms, Controls;

type
 TddAgentry = class(Tl3Base)
 private
  f_AgentNames: TStrings;
  f_AgentName : AnsiString;
  f_Character : IAgentCtlCharacterEx;
  f_Agent     : TAgent;
  f_Anims     : TStrings;
  f_Request   : IAgentCtlRequest;
  f_LastPhrase: AnsiString;
  f_Greeting  : AnsiString;
  f_Farewell  : AnsiString;
 private
  FOnActivateInput: TAgentActivateInput;
  FOnDeactivateInput: TAgentDeactivateInput;
  FOnClick: TAgentClick;
  FOnDblClick: TAgentDblClick;
  FOnDragStart: TAgentDragStart;
  FOnDragComplete: TAgentDragComplete;
  FOnShow: TAgentShow;
  FOnHide: TAgentHide;
  FOnRequestStart: TAgentRequestStart;
  FOnRequestComplete: TAgentRequestComplete;
  FOnRestart: TNotifyEvent;
  FOnShutdown: TNotifyEvent;
  FOnBookmark: TAgentBookmark;
  FOnCommand: TAgentCommand;
  FOnIdleStart: TAgentIdleStart;
  FOnIdleComplete: TAgentIdleComplete;
  FOnMove: TAgentMove;
  FOnSize: TAgentSize;
  FOnBalloonShow: TAgentBalloonShow;
  FOnBalloonHide: TAgentBalloonHide;
  FOnHelpComplete: TAgentHelpComplete;
  FOnListenStart: TAgentListenStart;
  FOnListenComplete: TAgentListenComplete;
  FOnDefaultCharacterChange: TAgentDefaultCharacterChange;
  FOnAgentPropertyChange: TNotifyEvent;
  FOnActiveClientChange: TAgentActiveClientChange;
 private
  function CorrectText(const aText: AnsiString): AnsiString;
  procedure _ActivateInput(Sender: TObject; const CharacterID: WideString);
  procedure _DeactivateInput(Sender: TObject; const CharacterID: WideString);
  procedure _Click (Sender: TObject; const CharacterID: WideString; Button: Smallint;
                                           Shift: Smallint; x: Smallint; y: Smallint);
  procedure _DblClick (Sender: TObject; const CharacterID: WideString; Button: Smallint;
                                              Shift: Smallint; x: Smallint; y: Smallint);
  procedure _DragStart (Sender: TObject; const CharacterID: WideString; Button: Smallint;
                                               Shift: Smallint; x: Smallint; y: Smallint);
  procedure _DragComplete (Sender: TObject; const CharacterID: WideString; Button: Smallint;
                                                  Shift: Smallint; x: Smallint; y: Smallint);
  procedure _Show (Sender: TObject; const CharacterID: WideString; Cause: Smallint);
  procedure _Hide (Sender: TObject; const CharacterID: WideString; Cause: Smallint);
  procedure _RequestStart (Sender: TObject; const Request: IDispatch);
  procedure _RequestComplete (Sender: TObject; const Request: IDispatch);
  procedure _Bookmark (Sender: TObject; BookmarkID: Integer);
  procedure _Command (Sender: TObject; const UserInput: IDispatch) ;
  procedure _IdleStart (Sender: TObject; const CharacterID: WideString) ;
  procedure _IdleComplete (Sender: TObject; const CharacterID: WideString) ;
  procedure _Move (Sender: TObject; const CharacterID: WideString; x: Smallint; y: Smallint;
                                          Cause: Smallint) ;
  procedure _Size (Sender: TObject; const CharacterID: WideString; Width: Smallint;
                                          Height: Smallint) ;
  procedure _BalloonShow (Sender: TObject; const CharacterID: WideString) ;
  procedure _BalloonHide (Sender: TObject; const CharacterID: WideString) ;
  procedure _HelpComplete (Sender: TObject; const CharacterID: WideString;
                                                  const Name: WideString; Cause: Smallint) ;
  procedure _ListenStart (Sender: TObject; const CharacterID: WideString) ;
  procedure _ListenComplete (Sender: TObject; const CharacterID: WideString; Cause: Smallint) ;
  procedure _DefaultCharacterChange (Sender: TObject; const GUID: WideString) ;
  procedure _ActiveClientChange (Sender: TObject; const CharacterID: WideString;
                                                        Active: WordBool) ;
 protected
  procedure Cleanup; override;
  procedure SetAgentName(aValue: AnsiString);
  procedure UnloadAgent;
  function GetRealAgentName: AnsiString;
  procedure LoadAgents;
  procedure LoadAgentAnimations;
 public
  property AgentName: AnsiString
   read f_AgentName
   write SetAgentName;
  property RealAgentName: AnsiString
   read GetRealAgentName;
  property AgentNames: TStrings
   read f_AgentNames;
  property Animations : TStrings
   read f_Anims;
  property Character: IAgentCtlCharacterEx
   read f_Character;
  property LastPhrase: AnsiString
   read f_LastPhrase;
  property Greeting: AnsiString
   read f_Greeting
   write f_Greeting;
  property Farewell: AnsiString
   read f_Farewell
   write f_Farewell;
 public
  constructor Create(aOwner: TObject); override;
  procedure ShowAgent(const Fast: Boolean = False);
  procedure HideAgent(const Fast: Boolean = False);
  procedure WaitForIt;
  function Play(AnimationName: AnsiString; const WaitForEnd: Boolean = False): IAgentCtlRequest;
  function Speak(Text: AnsiString): IAgentCtlRequest; overload;
  procedure Stop(const aRequest: IAgentCtlRequest = nil);
  function MoveTo(x: Smallint; y: Smallint; Speed: Integer): IAgentCtlRequest;
  procedure GestureAtControl(aControl: TControl; aText: AnsiString);
  procedure ExplainControl(aControl: TControl; aText: AnsiString; fast: integer);
  function Speak(const aFormat: AnsiString; const aArgs: array of const): IAgentCtlRequest; overload;
  procedure SpeakGreeting;
  procedure SpeakFarewell(aHideAgent: Boolean);
 public
  property OnActivateInput: TAgentActivateInput
   read FOnActivateInput
   write FOnActivateInput;
  property OnDeactivateInput: TAgentDeactivateInput
   read FOnDeactivateInput
   write FOnDeactivateInput;
  property OnClick: TAgentClick
   read FOnClick
   write FOnClick;
  property OnDblClick: TAgentDblClick
   read FOnDblClick
   write FOnDblClick;
  property OnDragStart: TAgentDragStart
   read FOnDragStart
   write FOnDragStart;
  property OnDragComplete: TAgentDragComplete
   read FOnDragComplete
   write FOnDragComplete;
  property OnShow: TAgentShow
   read FOnShow
   write FOnShow;
  property OnHide: TAgentHide
   read FOnHide
   write FOnHide;
  property OnRequestStart: TAgentRequestStart
   read FOnRequestStart
   write FOnRequestStart;
  property OnRequestComplete: TAgentRequestComplete
   read FOnRequestComplete
   write FOnRequestComplete;
  property OnRestart: TNotifyEvent
   read FOnRestart
   write FOnRestart;
  property OnShutdown: TNotifyEvent
   read FOnShutdown
   write FOnShutdown;
  property OnBookmark: TAgentBookmark
   read FOnBookmark
   write FOnBookmark;
  property OnCommand: TAgentCommand
   read FOnCommand
   write FOnCommand;
  property OnIdleStart: TAgentIdleStart
   read FOnIdleStart
   write FOnIdleStart;
  property OnIdleComplete: TAgentIdleComplete
   read FOnIdleComplete
   write FOnIdleComplete;
  property OnMove: TAgentMove
   read FOnMove
   write FOnMove;
  property OnSize: TAgentSize
   read FOnSize
   write FOnSize;
  property OnBalloonShow: TAgentBalloonShow
   read FOnBalloonShow
   write FOnBalloonShow;
  property OnBalloonHide: TAgentBalloonHide
   read FOnBalloonHide
   write FOnBalloonHide;
  property OnHelpComplete: TAgentHelpComplete
   read FOnHelpComplete
   write FOnHelpComplete;
  property OnListenStart: TAgentListenStart
   read FOnListenStart
   write FOnListenStart;
  property OnListenComplete: TAgentListenComplete
   read FOnListenComplete
   write FOnListenComplete;
  property OnDefaultCharacterChange: TAgentDefaultCharacterChange
   read FOnDefaultCharacterChange
   write FOnDefaultCharacterChange;
  property OnAgentPropertyChange: TNotifyEvent
   read FOnAgentPropertyChange
   write FOnAgentPropertyChange;
  property OnActiveClientChange: TAgentActiveClientChange
   read FOnActiveClientChange
   write FOnActiveClientChange;
 end;

var
 ddAgentry : TddAgentry;

implementation

Uses
  Windows, SysUtils, OleCtrls, ActiveX,

  afwFacade
  ;

function GetWinDirectory: AnsiString;
var
  WinDir: array[0..255] of Char;
begin
  GetWindowsDirectory(@WinDir, 255);
  Result := {StrToPas}(WinDir);
end;


constructor TddAgentry.Create(aOwner: TObject);
begin
 inherited;
 f_AgentName := '';
 f_AgentNames:= TStringList.Create;
 f_Anims     := TStringList.Create;
 LoadAgents;
 if f_AgentNames.Count > 0 then
 begin
  f_Agent:= TAgent.Create(nil);
  with f_Agent do
  begin
   RaiseRequestErrors:= False;
   OnActivateInput:= _ActivateInput;
   OnDeactivateInput:= _DeactivateInput;
   OnClick:= _Click;
   OnDblClick:= _DblClick;
   OnDragStart:= _DragStart;
   OnDragComplete:= _DragComplete;
   OnShow:= _Show;
   OnHide:= _Hide;
   OnRequestStart:= _RequestStart;
   OnRequestComplete:= _RequestComplete;
//   OnRestart:= TNotifyEvent;
//   OnShutdown:= TNotifyEvent;
   OnBookmark:= _Bookmark;
   OnCommand:= _Command;
   OnIdleStart:= _IdleStart;
   OnIdleComplete:= _IdleComplete;
   OnMove:= _Move;
   OnSize:= _Size;
   OnBalloonShow:= _BalloonShow;
   OnBalloonHide:= _BalloonHide;
   OnHelpComplete:= _HelpComplete;
   OnListenStart:= _ListenStart;
   OnListenComplete:= _ListenComplete;
   OnDefaultCharacterChange:= _DefaultCharacterChange;
//   OnAgentPropertyChange:= TNotifyEvent;
   OnActiveClientChange:= _ActiveClientChange;
  end; // with f_Agent
 end;
end;

procedure TddAgentry.Cleanup;
begin
 f_Character := nil;
 FreeAndNil(f_Anims);
 FreeAndNil(f_AgentNames);
 FreeAndNil(f_Agent);
 inherited;
end;

function TddAgentry.CorrectText(const aText: AnsiString): AnsiString;
var
 i: Integer;
begin
 Result := '';
 for i:= 1 to Length(aText) do
 begin
  if aText[i] = '\' then
   Result := Result + '\';
  Result := Result + aText[i];
 end; // for i
end;

function TddAgentry.GetRealAgentName: AnsiString;
begin
 if f_AgentName <> '' then
  Result:= f_Character.Name
 else
  Result:= '';
end;

procedure TddAgentry.SetAgentName(aValue: AnsiString);
var
 l_R: IAgentCtlRequest;
begin
 if f_AgentNames.Count > 0 then
 begin
  if aValue = '' then
   aValue := f_AgentNames.Strings[Random(f_AgentNames.Count)];
  if (aValue <> f_AgentName) and (f_AgentNames.IndexOf(aValue) <> -1) then
  begin
   if f_AgentName <> '' then
    UnloadAgent;
   f_AgentName:= aValue;
   // переключиться на нового агента
   l_R:= f_Agent.Characters.Load(aValue, aValue + '.acs');
   f_Character:= f_Agent.Characters[aValue] as IAgentCtlCharacterEx;
   if f_Character <> nil then
   begin
    f_Character.LanguageID:= 1049;
    LoadAgentAnimations;
   end;
  end; // aValue <> f_AgentName
 end;
end;

procedure TddAgentry.UnloadAgent;
begin
 Stop;
 HideAgent;
 if f_Character.Commands.Count > 0 then
  f_Character.Commands.RemoveAll;
 f_Agent.Characters.Unload(f_AgentName);
 f_Character:= nil;
end;

procedure TddAgentry.LoadAgentAnimations;
var
 l_EnumVariant: IEnumVariant;
 l_msg: olevariant;
 l_pceltfetched: LongWord;
begin
  f_Anims.Clear;
  l_EnumVariant := (f_Character.AnimationNames.Enum as IEnumVariant);
  while l_EnumVariant.Next(1, l_msg, l_PceltFetched) = 0 do
  begin
   if length(l_msg) > 0 then
    f_Anims.add(l_msg);
  end; // l_EnumVariant.Next(1, msg, PceltFetched) = 0
end;

procedure TddAgentry.LoadAgents;
var
 l_AgentPath: AnsiString;
 SearchRec: TSearchRec;
begin
 l_AgentPath := GetWinDirectory + '\MSAgent\Chars\';
 //
 if FindFirst(l_AgentPath + '*.acs', 0, SearchRec) = 0 then
 begin
  f_AgentNames.Add(Copy(SearchRec.Name,1,Pos('.',SearchRec.Name) -1 ));
  while FindNext(SearchRec)=0 do
    f_AgentNames.Add(Copy(SearchRec.Name,1,Pos('.',SearchRec.Name) - 1));
 end; // FindFirst(l_AgentPath + '*.acs', 0, SearchRec) = 0
 FindClose(SearchRec);
end;

procedure TddAgentry.ShowAgent(const Fast: Boolean = False);
begin
 if (f_Character <> nil) and not f_Character.Visible then
  f_Character.Show(Fast);
end;

procedure TddAgentry.HideAgent(const Fast: Boolean = False);
var
 l_Request : IAgentCtlRequest;
begin
{ TODO : Добавить критическую секцию }
 if (f_Character <> nil) and f_Character.Visible then
  if not f_Character.Get_HasOtherClients then
  begin
   if f_Request <> nil then
    Stop; { TODO -oДудко -cРазвитие : Попробовать запоминать текущее состояние агента, для последующего восстановления }
   l_Request := f_Character.Hide(Fast);
  while ((l_Request <> nil) and           // still alive
           ((l_Request.Status <> 0)        // not completed
       and (l_Request.Status <> 1))       // not failed
       and (l_Request.Status <> 3)) do    // not interrupted
                                          // so it's  queued or in progress
     afw.ProcessMessages;         // and this smooths the wait

   (*
   f_Character.Hide(Fast);
                                    // this is another way to wait for
    While f_Character.Visible do
     afw.ProcessMessages; // completion of animation without
                                 // generating and tracking a request obj
   *)
   f_Request := nil;
  end; // not f_Character.Get_HasOtherClients
end;

function TddAgentry.Play(AnimationName: AnsiString; const WaitForEnd: Boolean = False): IAgentCtlRequest;
begin
 if f_Character <> nil then
 begin
  if f_Request <> nil then
   Stop;
  if f_Anims.indexof(AnimationName) <> -1 then
   f_Request:= f_Character.Play(AnimationName)
  else
   f_Request:= f_Character.Speak('Я не умею делать "' + AnimationName,'"');
 end
 else
  f_Request:= nil;
 if WaitForEnd then
  WaitForIt;
 Result:= f_Request;
end;

procedure TddAgentry.Stop(const aRequest: IAgentCtlRequest = nil);
begin
 if f_Character <> nil then
  if aRequest <> nil then
  begin
   f_Character.Stop(aRequest);
   WaitForIt;
  end
  else
  if f_Request <> nil then
  begin
   f_Character.Stop(f_Request);
   WaitForIt;
   f_Request := nil;
  end;
end;

function TddAgentry.Speak(Text: AnsiString): IAgentCtlRequest;
begin
 if f_Character <> nil then
 begin
  f_Request := nil;
  f_Request:= f_Character.Speak(CorrectText(Text),'');
  Result:= f_Request;
  f_LastPhrase:= Text;
 end
 else
  Result:= nil;
end;

function TddAgentry.MoveTo(x: Smallint; y: Smallint; Speed: Integer): IAgentCtlRequest;
begin
 if f_Character <> nil then
  Result:= f_Character.MoveTo(x, y, Speed)
 else
  Result:= nil;
end;

procedure TddAgentry.WaitForIt;
begin
// Note this only waits for the global <ThisRequest>
// You could write the routine to take a specified request as a parameter
  while ((f_Request <> nil) and           // still alive
           ((f_Request.Status <> 0)        // not completed
       and (f_Request.Status <> 1))       // not failed
       and (f_Request.Status <> 3)) do    // not interrupted
                                          // so it's  queued or in progress
     afw.ProcessMessages;         // and this smooths the wait
end;

procedure TddAgentry.ExplainControl(aControl: TControl;
                                    aText: AnsiString; fast: integer);
var
 lX, lY: integer;
 l_P: TPoint;
begin
 // locate it
 lX:= aControl.Left;
 lY:= aControl.Top;
 l_P:= aControl.ClientToScreen(Point(0{lX}, 0{lY}));
 // _move to the right of it
 f_Character.MoveTo(l_P.X + aControl.Width div 2, l_P.Y - f_Character.Height div 4, fast);
 f_Character.GestureAt(l_P.X, l_P.Y);
 f_Character.Speak(aText,'');
 // wait before returning
 WaitForIt;
end;

procedure TddAgentry.GestureAtControl(aControl: TControl; aText: AnsiString);
var
 aX, aY: integer;
begin
 // locate it
 aX:= aControl.parent.left + aControl.Left;
 aY:= aControl.parent.Top + aControl.Top;
 // gesture at it (not usually very precise, depending on animation design)
 f_Character.GestureAt(aX, aY);
 // make the speech
 f_Request := nil;
 f_Request := f_Character.Speak(aText,'');
 // wait before returning
 WaitForIt;
end;

function TddAgentry.Speak(const aFormat: AnsiString; const aArgs: array of const): IAgentCtlRequest;
begin
 Result := Speak(Format(aFormat, aArgs))
end;

procedure TddAgentry._ActivateInput(Sender: TObject; const CharacterID: WideString);
begin
 if Assigned(FOnActivateInput) then
  FOnActivateInput(Sender, CharacterID);
end;

procedure TddAgentry._DeactivateInput(Sender: TObject; const CharacterID: WideString);
begin
end;

procedure TddAgentry._Click (Sender: TObject; const CharacterID: WideString; Button: Smallint;
                                         Shift: Smallint; x: Smallint; y: Smallint);
begin
 if Assigned(FOnClick) then
  FOnClick(Sender, CharacterID, Button, Shift, x, y);
end;

procedure TddAgentry._DblClick (Sender: TObject; const CharacterID: WideString; Button: Smallint;
                                            Shift: Smallint; x: Smallint; y: Smallint);
begin
 if Assigned(FOnDblClick) then
  FOnDblClick(Sender, CharacterID, Button, Shift, x, y);
end;

procedure TddAgentry._DragStart (Sender: TObject; const CharacterID: WideString; Button: Smallint;
                                             Shift: Smallint; x: Smallint; y: Smallint);
begin
end;

procedure TddAgentry._DragComplete (Sender: TObject; const CharacterID: WideString; Button: Smallint;
                                                Shift: Smallint; x: Smallint; y: Smallint);
begin
end;

procedure TddAgentry._Show (Sender: TObject; const CharacterID: WideString; Cause: Smallint);
begin
end;

procedure TddAgentry._Hide (Sender: TObject; const CharacterID: WideString; Cause: Smallint);
begin
end;

procedure TddAgentry._RequestStart (Sender: TObject; const Request: IDispatch);
begin
end;

procedure TddAgentry._RequestComplete (Sender: TObject; const Request: IDispatch);
begin
end;

procedure TddAgentry._Bookmark (Sender: TObject; BookmarkID: Integer);
begin
end;

procedure TddAgentry._Command (Sender: TObject; const UserInput: IDispatch) ;
begin
end;

procedure TddAgentry._IdleStart (Sender: TObject; const CharacterID: WideString) ;
begin
end;

procedure TddAgentry._IdleComplete (Sender: TObject; const CharacterID: WideString) ;
begin
end;

procedure TddAgentry._Move (Sender: TObject; const CharacterID: WideString; x: Smallint; y: Smallint;
                                        Cause: Smallint) ;
begin
end;

procedure TddAgentry._Size (Sender: TObject; const CharacterID: WideString; Width: Smallint;
                                        Height: Smallint) ;
begin
end;

procedure TddAgentry._BalloonShow (Sender: TObject; const CharacterID: WideString) ;
begin
end;

procedure TddAgentry._BalloonHide (Sender: TObject; const CharacterID: WideString) ;
begin
end;

procedure TddAgentry._HelpComplete (Sender: TObject; const CharacterID: WideString;
                                                const Name: WideString; Cause: Smallint) ;
begin
end;

procedure TddAgentry._ListenStart (Sender: TObject; const CharacterID: WideString) ;
begin
end;

procedure TddAgentry._ListenComplete (Sender: TObject; const CharacterID: WideString; Cause: Smallint) ;
begin
end;

procedure TddAgentry._DefaultCharacterChange (Sender: TObject; const GUID: WideString) ;
begin
end;

procedure TddAgentry._ActiveClientChange (Sender: TObject; const CharacterID: WideString;
                                                      Active: WordBool) ;
begin
(*
 if Assigned(f_OnActiveClientChange) then
  f_ActiveClientChange(Sender, CharacterID, Active)
 else
  Speak('Я вас покину ненадолго');
*)  
end;

procedure TddAgentry.SpeakGreeting;
begin
 ShowAgent;
 Speak(Greeting);
end;

procedure TddAgentry.SpeakFarewell(aHideAgent: Boolean);
begin
  Speak(Farewell);
  WaitForIt;
  if aHideAgent then
   HideAgent;
end;

initialization
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\dd\ddMSAgentry.pas initialization enter'); {$EndIf}
 ddAgentry := nil;
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\dd\ddMSAgentry.pas initialization leave'); {$EndIf}
end.
