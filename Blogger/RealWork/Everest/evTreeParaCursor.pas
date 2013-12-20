unit evTreeParaCursor;
{* Курсор для параграфа с деревом. }

{ Библиотека "Эверест"    }
{ Автор: Люлин А.В. ©     }
{ Модуль: evTreeParaCursor - }
{ Начат: 10.07.2002 16:52 }
{ $Id: evTreeParaCursor.pas,v 1.40 2009/07/23 13:42:11 lulin Exp $ }

// $Log: evTreeParaCursor.pas,v $
// Revision 1.40  2009/07/23 13:42:11  lulin
// - переносим процессор операций туда куда надо.
//
// Revision 1.39  2009/07/23 08:14:39  lulin
// - вычищаем ненужное использование процессора операций.
//
// Revision 1.38  2009/07/11 15:55:10  lulin
// {RequestLink:141264340}. №22.
//
// Revision 1.37  2009/07/10 15:04:44  lulin
// - избавляемся от лишнего дёрганья счётчиков ссылок.
//
// Revision 1.36  2009/04/13 16:13:53  lulin
// [$142613919]. Все виртуальные методы переносим на модель.
//
// Revision 1.35  2009/04/13 14:19:55  lulin
// [$142613919]. Выделяем виртуальный метод обработки сообщений.
//
// Revision 1.34  2009/04/13 12:53:49  lulin
// [$142613919]. Чистка кода.
//
// Revision 1.33  2009/04/13 12:32:49  lulin
// [$142613919].
//
// Revision 1.32  2009/04/09 11:37:26  lulin
// - не ходим к собственным свойствам через Владивосток.
//
// Revision 1.31  2009/04/09 11:18:58  lulin
// - наводим порядок с указателями на объекты.
//
// Revision 1.30  2009/03/31 18:39:17  lulin
// [$141262956]. №1.
//
// Revision 1.29  2009/03/31 12:04:37  lulin
// [$140286997].
//
// Revision 1.28  2008/05/08 16:10:55  lulin
// - изменения в рамках <K>: 90442475.
//
// Revision 1.27  2008/04/09 17:57:08  lulin
// - передаём вью в рамках <K>: 89096854.
//
// Revision 1.26  2007/12/25 23:55:51  lulin
// - модуль l3Tree_TLB полностью перенесен на модель.
//
// Revision 1.25  2007/12/04 12:47:06  lulin
// - перекладываем ветку в HEAD.
//
// Revision 1.23.8.18  2007/11/01 07:39:20  mmorozov
// - new: новая ovc-команда ccTreeCollapse (в рамках работы над CQ: OIT5-27189);
//
// Revision 1.23.8.17  2007/06/22 19:24:52  lulin
// - cleanup.
//
// Revision 1.23.8.16  2006/10/10 12:06:14  lulin
// - cleanup.
//
// Revision 1.23.8.15  2006/10/08 14:45:35  lulin
// - убраны устаревшие методы для работы с экранными координатами курсора.
//
// Revision 1.23.8.14  2006/06/08 14:09:30  lulin
// - подготавливаем контролы к обработке числа повторений нажатия клавиши.
//
// Revision 1.23.8.13  2006/04/17 12:21:59  lulin
// - cleanup.
//
// Revision 1.23.8.12  2006/04/17 12:00:21  lulin
// - cleanup.
//
// Revision 1.23.8.11  2006/01/16 09:27:29  lulin
// - bug fix: не компилировалось.
//
// Revision 1.23.8.10  2005/11/10 09:47:04  lulin
// - bug fix: не компилировалась библиотека.
//
// Revision 1.23.8.9  2005/11/09 15:28:25  lulin
// - базовые интерфейсы перенесены в правильный модуль.
//
// Revision 1.23.8.8  2005/07/27 14:47:52  lulin
// - вместо безликих констант, для результата перемещения курсора введен перечислимый тип.
//
// Revision 1.23.8.7  2005/07/26 14:11:18  lulin
// - убраны лишние параметры в методе трансляции сообщений.
//
// Revision 1.23.8.6  2005/07/13 13:11:18  lulin
// - new behavior: при трансляции клавиш передаем View в операцию трансляции.
//
// Revision 1.23.8.5  2005/06/22 08:14:49  lulin
// - bug fix: не компилировалось.
//
// Revision 1.23.8.4  2005/06/15 17:23:52  lulin
// - remove proc: _evMoveCursor.
//
// Revision 1.23.8.3  2005/06/11 14:46:23  lulin
// - bug fix: не компилировалось.
//
// Revision 1.23.8.2  2005/06/01 16:22:26  lulin
// - remove unit: evIntf.
//
// Revision 1.23.8.1  2005/06/01 11:10:36  lulin
// - bug fix: не компилировалоась.
//
// Revision 1.23  2005/03/22 08:52:32  lulin
// - bug fix: не компилировалось.
//
// Revision 1.22  2005/03/10 08:34:08  lulin
// - bug fix: не компилировалось.
//
// Revision 1.21  2005/02/18 17:08:10  lulin
// - bug fix: не обновлялись параграфы, с которых ушел курсор.
//
// Revision 1.20  2004/12/16 14:17:31  lulin
// - bug fix: двоились ShortCut'ы.
//
// Revision 1.19  2004/11/22 11:48:07  lulin
// - bug fix: не компилировалось.
//
// Revision 1.18  2004/11/10 15:15:45  lulin
// - bu fix: не компилировалось.
//
// Revision 1.17  2004/03/03 18:03:53  law
// - rename unit: l3Tree2 -> l3Tree.
//
// Revision 1.16  2003/10/17 12:13:44  law
// - bug fix: не собирался пакет.
//
// Revision 1.15  2003/02/03 16:49:51  law
// - cleanup: в функции l3StartOp последний параметр получил значение по умолчанию.
//
// Revision 1.14  2002/12/25 11:59:15  law
// - cleanup.
//
// Revision 1.13  2002/12/18 14:42:08  law
// - new unit: evCursorConst.
//
// Revision 1.12  2002/12/16 16:10:38  law
// - new unit: evParaCursor.
//
// Revision 1.11  2002/11/29 14:22:11  law
// - remove method: _TevBaseCursor.SetEntryPointHard.
// - new behavior: для "solid" параграфов обрабатываем High(Long).
//
// Revision 1.10  2002/09/02 12:59:49  law
// - new behavior: удаление метки/блока по Del на корневом узле.
//
// Revision 1.9  2002/09/02 08:59:44  law
// - new behavior: удаление узла и коррекция курсора объединены в одну операцию.
//
// Revision 1.8  2002/07/30 08:28:01  law
// - new param: TevTreePara.InitFont aNode.
//
// Revision 1.7  2002/07/29 16:01:57  law
// - new behavior: возможность удаления атрибутов меток.
//
// Revision 1.6  2002/07/29 12:01:51  law
// - new param: aOpProc.
//
// Revision 1.5  2002/07/29 10:45:32  law
// - new behavior: трансляция клавиатурных сообщений пераграфам.
//
// Revision 1.4  2002/07/12 17:44:11  law
// - new behavior: предварительно сделано синее выделение в дереве.
//
// Revision 1.3  2002/07/11 16:01:16  law
// - comments.
//
// Revision 1.2  2002/07/10 15:57:14  law
// - new unit: evTreeParaHotSpot.
//
// Revision 1.1  2002/07/10 15:09:07  law
// - new behavior: черновой вариант отрисовки и курсора для параграфа с деревом.
//

{$I evDefine.inc }

interface

uses
  Messages,

  l3Types,
  l3Interfaces,
  l3Tree_TLB,
  l3InternalInterfaces,
  l3Base,
  l3Units,
  l3Tree,

  evInternalInterfaces,
  evParaCursor,

  evTreePara,

  nevTools
  ;

type
  TevTreeParaCursor = class(TevParaCursor)
   {* Курсор для параграфа с деревом. }
    private
    // internal fields
      f_Node : Il3Node;
    protected
    // property methods
      function pm_GetTree: Tl3Tree;
        {-}
      function pm_GetTreePara: TevTreePara;
        {-}
    protected
    // internal methods
      procedure  Cleanup;
        override;
        {-}
      procedure DoSetEntryPointPrim(aValue         : Long;
                              const aContext : IevCursorContext = nil);
        override;
        {-}
      function  DoMovePrim(const aView : InevView;
                           aCode: Long;
                           const anOpPack: InevOp;
                           aCount : Integer): TnevMoveResult;
        override;
        {-}
    public
    // public methods
    function  GetNeedWindowsCaret: Boolean;
       override;
        {-}
      function  DoProcessMessage(const aView    : InevControlView;
                               var   aMessage : TMessage;
                               aTime          : Cardinal): Bool;
        override;
        {-}
    public
    // public properties
      property Tree: Tl3Tree
        read pm_GetTree;
        {-}
      property TreePara: TevTreePara
        read pm_GetTreePara;
        {-}
      property Node: Il3Node
        read f_Node;
        {-}  
  end;//TevTreeParaCursor

implementation

uses
  OvcConst,
  OvcCmd,

  l3MinMax,
  l3InterfacesMisc,

  evConst,

  k2Except,
  k2OpMisc,
  
  evOp,
  evMsgCode,
  evCursorConst,
  evCursorTools
  ;

// start class TevTreeParaCursor

function TevTreeParaCursor.pm_GetTree: Tl3Tree;
  {-}
begin
 Result := TreePara.Tree;
end;

function TevTreeParaCursor.pm_GetTreePara: TevTreePara;
  {-}
begin
 try
  Result := (GetRedirect.AsObject As TevTreePara);
 except
  on Ek2ConversionError do
   Result := nil;
 end;//try..except
end;

procedure TevTreeParaCursor.Cleanup;
  //override;
  {-}
begin
 f_Node := nil;
 inherited;
end;

function TevTreeParaCursor.DoMovePrim(const aView : InevView;
                                      aCode: Long;
                                      const anOpPack: InevOp;
                                      aCount : Integer): TnevMoveResult;
  //override;
  {-}
var
 l_Tree     : Tl3Tree;
 l_Position : Long;
begin
 Result := inherited DoMovePrim(aView, aCode, anOpPack, aCount);
 if (Result <> ev_dcDoneOk) then
 begin
  l_Tree := Tree;
  l_Position := Position;
  Case aCode of
   ev_ocLineUp,
   ev_ocCharLeft :
   begin
    Dec(l_Position);
    if (l_Position >= 0) then
    begin
     SetEntryPoint(l_Position, anOpPack);
     Result := ev_dcDoneOk;
    end
    else
     aCode := ev_ocParaUp;
   end;//ev_ocLineUp
   ev_ocLineDown,
   ev_ocCharRight :
   begin
    Inc(l_Position);
    if (l_Position < l_Tree.CountView) then
    begin
     SetEntryPoint(l_Position, anOpPack);
     Result := ev_dcDoneOk;
    end
    else
     aCode := ev_ocParaDown;
   end;//ev_ocLineDown
   ev_ocParaUp, ev_ocParaDown, ev_ocParaLeft, ev_ocParaRight: ;
   else
    Result := ev_dcDoneFail;
  end;//Case aCode
  if (Result = ev_dcNotDone) AND (Self.pm_GetParentPoint <> nil) then
   if Self.pm_GetParentPoint.Move(aView, aCode, anOpPack) then
    Result := ev_dcDoneOk;
 end;//Result <> ev_dcDoneOk
end;

function TevTreeParaCursor.GetNeedWindowsCaret: Boolean;
   //override;
    {-}
begin
 Result := false;
end;

function TevTreeParaCursor.DoProcessMessage(const aView    : InevControlView;
                                          var   aMessage : TMessage;
                                          aTime          : Cardinal): Bool;
  //override;
  {-}
var
 l_Cmd : Word;
 l_Op  : InevOp;
begin
 Result := true;
 l_Cmd := aView.Control.CommandProcessor.TranslateUsing(ovcListCommands, aMessage, aTime);
 Case l_Cmd of
  ccDel : if (Node <> nil) then
  begin
   l_Op := k2StartOp(aView.Control.Processor);
   try
    Node.Delete;
    SetEntryPoint(Position, l_Op);
   finally
    l_Op := nil;
   end;//try..finally
  end;//ccDel
  ccTreeExpand:
   TreePara.ExpandNode(Node, k2StartOp(aView.Control.Processor));
  ccTreeCollapse:
   TreePara.ExpandNode(Node, k2StartOp(aView.Control.Processor), l3_bFalse);
  ccShortCut:
   Result := true;
  else
   Result := false;
 end;//Case Cmd
 if not Result then
  Result := inherited DoProcessMessage(aView, aMessage, aTime);
end;

procedure TevTreeParaCursor.DoSetEntryPointPrim(aValue         : Long;
                                          const aContext : IevCursorContext = nil);
  //override;
  {-}
var
 l_Tree : Tl3Tree;
begin
 l_Tree := Tree;
 if (l_Tree <> nil) then
 begin
  aValue := Min(aValue, Pred(l_Tree.CountView));
  inherited DoSetEntryPointPrim(aValue, aContext);
  f_Node := l_Tree.Nodes[Position];
 end;//l_Tree <> nil  
end;

end.

