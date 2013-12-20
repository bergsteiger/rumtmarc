unit evDropTree;
{* Реализация выпадающих деревьев, от Саши Маркова. }

{ Библиотека "Эверест"    }
{ Начал: Люлин А.В.       }
{ Модуль: evDropTree - }
{ Начат: 15.11.2004 18:29 }
{ $Id: evDropTree.pas,v 1.2 2013/04/02 19:04:18 kostitsin Exp $ }

// $Log: evDropTree.pas,v $
// Revision 1.2  2013/04/02 19:04:18  kostitsin
// [$120723452] - vtLister
//
// Revision 1.1  2010/09/28 08:07:22  dinishev
// [$235057525]. Не компилировались тесты.
//
// Revision 1.23  2008/10/06 13:31:02  lulin
// - чистка кода.
//
// Revision 1.22  2008/07/21 09:52:33  oman
// - new: Повторяем отсутствие текущего для КЗ (К-103451002)
//
// Revision 1.21  2008/03/06 18:50:22  lulin
// - <K> 86477264.
//
// Revision 1.20  2007/12/07 16:22:42  lulin
// - переименовываем файл, чтобы не путать с другой библиотекой.
//
// Revision 1.19  2007/12/04 12:47:01  lulin
// - перекладываем ветку в HEAD.
//
// Revision 1.16.14.9  2007/03/30 07:51:01  oman
// cleanup (Неиспользуемые ссылки на ContextParams)
//
// Revision 1.16.14.8  2006/06/07 08:59:26  dinishev
// Вычистил ненужные модули
//
// Revision 1.16.14.7  2005/12/23 15:45:00  dinishev
// Подправлено поведение выпадающего дерева
//
// Revision 1.16.14.6  2005/08/29 09:27:46  dinishev
// Борьба с утечками памяти.
//
// Revision 1.16.14.5  2005/08/23 13:48:15  dinishev
// Нотификация об изменении текста в поле редактора
//
// Revision 1.16.14.4  2005/08/16 07:30:35  dinishev
// Rename evScriptModel -> evDropControls
//
// Revision 1.16.14.3  2005/08/11 12:46:47  dinishev
// Отказываемся от интерфейсов evDropControl
//
// Revision 1.16.14.2  2005/07/22 15:00:43  dinishev
// Доработка дерева
//
// Revision 1.16.14.1  2005/05/27 14:42:21  lulin
// - базовый контрол переехал в быблиотеку L3.
//
// Revision 1.16  2005/01/18 12:24:37  dinishev
// Убран лишний код и времянка при проверке положения выпадающего дерева/календаря.
//
// Revision 1.15  2005/01/18 10:56:10  dinishev
// Отъехала возможность изменения размеров дерева.
//
// Revision 1.14  2004/12/29 11:22:36  dinishev
// Обработка события перетаскивания окон и изменения их разамера - раньше выпадающие дерево и календарь
// не прятались.
//
// Revision 1.13  2004/12/28 15:46:39  dinishev
// Обработка сообщения WM_GETMINMAXINFO перенесена в модуль abssubtree.pas
//
// Revision 1.12  2004/12/23 11:13:34  lulin
// - rename prop: TvtCustomOutliner.TreeSource -> TreeStruct.
//
// Revision 1.11  2004/12/15 16:32:38  dinishev
// cleanup
//
// Revision 1.10  2004/12/10 17:28:53  dinishev
// исправление ошибок при выпадении: неправильные координаты в таблице, AV при щелчке правой кнопкой мыши, обработка прокрутки.
//
// Revision 1.9  2004/12/08 15:26:49  dinishev
// убран AV при закрытии редактора после вызова календаря,
// доделана реакция календаря на клавиатуру,
// передача данных из/в календарь,
// устранены ряд ошибок в выпадающем дереве,
// связанных с объединением логики с календарем (некорректное закрытие по ESC, появление дублирующего окна при открытии)
//
// Revision 1.8  2004/12/07 14:41:46  dinishev
// новый компонент ev_ctCalEdit - ComboBox с выпадающим календарем.
// доделано объединение выпадающих деревьев.
// новые интерфейсы IDropBase - базовый интерфейс для выпадающих
// компонент и IDropCalendar - интерфейс для календаря.
//
// Revision 1.7  2004/12/03 08:11:13  dinishev
// Выделен общий предок для календаря и дерева. Новый модуль evDropBase.pas
//
// Revision 1.6  2004/12/02 15:17:31  dinishev
// Ловим перемещение окна для прятания выпадающего списка.
//
// Revision 1.5  2004/12/01 14:50:33  dinishev
// Реакция на изменение параграфа, подправлено изменение состояния кнопки ComboBox'а.
//
// Revision 1.4  2004/11/30 17:47:34  dinishev
// Реализация выпадающего дерева для CombobBox'а. Некоторые исправления отображения.
//
// Revision 1.3  2004/11/16 07:58:09  lulin
// - запоминаем дерево, которое нам передали.
//
// Revision 1.2  2004/11/15 15:52:09  lulin
// - new behavior: предполагаем, что для параграфа с типом Combo в атрибуте tiObject лежит дерево (Il3SimpleTree) и используем это дерево для построения контрола с выпадающим деревом.
//
// Revision 1.1  2004/11/15 15:34:58  lulin
// - new unit: evDropTree.
//

{$I evDefine.inc }

interface

uses
 Types,
 Classes,
 Messages,
 Windows,
 Controls,

 abssubtree,

 l3TreeInterfaces,
 l3Tree_TLB,
 l3Base,
 l3ControlsTypes,

 evInternalInterfaces,
 evQueryCardInt
;

type
 TChooseItem = procedure (Sender: TObject; const Value: Il3SimpleNode) 
  of Object;

 TCheckEvent = function: Boolean of Object;

 TIntDataEvent = function: Integer of Object;

 TevDropTree = class(TAbsSubTree)
 private
  FIsList          : Boolean; 
  FIsInvert        : Boolean;
  FIsStartResize   : Boolean;
  FWidth           : Integer;
  FOnChooseItem    : TChooseItem;
  FStartResize     : TNotifyEvent;
  FEndResize       : TNotifyEvent;
  FOnNeedCloseTree : TNotifyEvent;
  FOwnerAssigned   : TCheckEvent;
 protected
  function IsSizeableTree: Boolean; override;
  function IsShowGripper: Boolean; override;
  function IsList: Boolean; override;
  function IsInvert: Boolean; override;
  function IsOwnerAssigned: Boolean; override;
  function GetWidth: Integer; override;
  {* - возвращает ширину выпадающего списка. }
 protected
  procedure WMExitSizeMove(var Message: TMessage); message WM_EXITSIZEMOVE;
  procedure WMEnterSizeMove(var Message: TMessage); message WM_ENTERSIZEMOVE;
  procedure WMActivate(var Message: TWMActivate); message WM_ACTIVATE;
  procedure WMLButtonDown(var Msg: TWMLButtonDown); message WM_LBUTTONDOWN;
  procedure DoOnSelect(Index: LongInt; Value: Integer); override;
  procedure WndProc(var Message: TMessage); override;
 public
  procedure Init(anInvert: Boolean; anIsList: Boolean; aWidth: Integer);
  // public properties
  property IsShowLines;
  property Font;
  //property anInvert: Boolean write FIsInvert;
  //property anIsList: Boolean write FIsList;
  //property aWidth: Integer write FWidth;
  property OnEndResize: TNotifyEvent read FEndResize write FEndResize;
  property OnNeedCloseTree: TNotifyEvent read FOnNeedCloseTree write FOnNeedCloseTree;
  property OnChooseItem: TChooseItem read FOnChooseItem write FOnChooseItem;
  property OnStartResize: TNotifyEvent read FStartResize write FStartResize;
  property OnOwnerAssigned: TCheckEvent read FOwnerAssigned write FOwnerAssigned;
  property AllowWithoutCurrent;
 end;

implementation

uses
  Forms,
  Dialogs,
  SysUtils,

  l3Types,

  ElVclUtils,

  vtLister,
  vtOutliner,

  ctTypes
  ;

{ TevDropTree }

procedure TevDropTree.DoOnSelect(Index, Value: Integer);
begin
 inherited DoOnSelect(Index, Value);
 if ((Index < 0) or (Index >= Total)) or not Boolean(Value) then Exit;
 if Assigned(OnSelectChanged) then
  OnSelectChanged(Self, Index, Value);
end;

function TevDropTree.GetWidth: Integer;
begin
 Result := FWidth;
end;

function TevDropTree.IsInvert: Boolean;
begin
 Result := FIsInvert;
end;

function TevDropTree.IsList: Boolean;
begin
 Result := FIsList;
end;

function TevDropTree.IsOwnerAssigned: Boolean;
begin
 Result := Assigned(FOwnerAssigned);
 if Result then 
  Result := FOwnerAssigned;
end;

function TevDropTree.IsShowGripper: Boolean;
begin
 Result := True;
end;

function TevDropTree.IsSizeableTree: Boolean;
begin
 Result := True;
end;

procedure TevDropTree.WMActivate(var Message: TWMActivate);
begin
 inherited;
 if (Message.Active = WA_ACTIVE) and FIsStartResize then 
 begin
  Parent.SetFocus;
  if Assigned(FEndResize) then
   FEndResize(Self);
  FIsStartResize := False;
 end;
end;

procedure TevDropTree.WMEnterSizeMove(var Message: TMessage);
begin
 inherited;
 FIsStartResize := True;
 if Assigned(FStartResize) then
  FStartResize(Self);
end;

procedure TevDropTree.WMExitSizeMove(var Message: TMessage);
begin
 FIsStartResize := false;
 //К сожалению это событие просто не успевает сработать, но на всякий случай...
 inherited;
end;

procedure TevDropTree.WMLButtonDown(var Msg: TWMLButtonDown);
var
 N: Integer;
 lItemPart: Byte;
 Pt: TPoint;
begin
 inherited;
 Pt := SmallPointToPoint(Msg.Pos);
 HitTest(Pt, N, lItemPart, false);
 if (lItemPart = ihtText) or (lItemPart = ihtPickIcon) then 
 begin
  if Assigned(FOnChooseItem) then
   FOnChooseItem(Self, GetCurrentNode);
 end;
end;

procedure TevDropTree.WndProc(var Message: TMessage);
begin
  if (Message.Msg = WM_RBUTTONDOWN) then
   if Assigned(FOnNeedCloseTree) then
    FOnNeedCloseTree(nil);
  inherited;
end;

procedure TevDropTree.Init(anInvert: Boolean; anIsList: Boolean; aWidth: Integer);
begin
 FIsInvert := anInvert;
 FIsList := anIsList;
 FWidth := aWidth;
end;

end.
