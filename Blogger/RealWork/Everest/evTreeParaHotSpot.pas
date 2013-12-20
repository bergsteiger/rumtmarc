unit evTreeParaHotSpot;
{* Реализация "горячих точек" параграфа с деревом. }

{ Библиотека "Эверест"    }
{ Автор: Люлин А.В. ©     }
{ Модуль: evTreeParaHotSpot - }
{ Начат: 10.07.2002 19:18 }
{ $Id: evTreeParaHotSpot.pas,v 1.20 2011/11/23 11:37:00 dinishev Exp $ }

// $Log: evTreeParaHotSpot.pas,v $
// Revision 1.20  2011/11/23 11:37:00  dinishev
// {Requestlink:290951663}
//
// Revision 1.19  2011/09/13 10:48:06  lulin
// {RequestLink:278839709}.
//
// Revision 1.18  2011/02/15 11:24:49  lulin
// {RequestLink:231670346}.
//
// Revision 1.17  2009/07/23 08:14:39  lulin
// - вычищаем ненужное использование процессора операций.
//
// Revision 1.16  2009/07/10 16:15:42  lulin
// - избавляемся от лишнего дёрганья счётчиков ссылок.
//
// Revision 1.15  2009/05/29 17:18:26  lulin
// [$142610853].
//
// Revision 1.14  2008/12/12 19:19:14  lulin
// - <K>: 129762414.
//
// Revision 1.13  2007/12/04 12:47:06  lulin
// - перекладываем ветку в HEAD.
//
// Revision 1.9.4.21  2007/06/22 19:02:31  lulin
// - cleanup.
//
// Revision 1.9.4.20  2007/01/05 14:37:20  lulin
// - cleanup.
//
// Revision 1.9.4.19  2006/11/03 11:00:09  lulin
// - объединил с веткой 6.4.
//
// Revision 1.9.4.18.2.7  2006/10/31 09:21:18  lulin
// - при поиске горячей точки подаем уже вычисленную карту форматирования.
//
// Revision 1.9.4.18.2.6  2006/10/23 12:24:40  lulin
// - не собиралась библиотека.
//
// Revision 1.9.4.18.2.5  2006/10/20 06:39:05  lulin
// - bug fix: не собиралась библиотека.
//
// Revision 1.9.4.18.2.4  2006/10/19 13:33:19  lulin
// - переводим курсоры и подсказки на новые рельсы.
//
// Revision 1.9.4.18.2.3  2006/10/18 14:02:40  lulin
// - избавляемся от хождения за процессором операций через третьи руки.
//
// Revision 1.9.4.18.2.2  2006/10/18 13:06:34  lulin
// - вычищены ненужные данные.
//
// Revision 1.9.4.18.2.1  2006/10/18 12:45:04  lulin
// - убрано ненужное свойство.
//
// Revision 1.9.4.18  2006/10/06 15:26:45  lulin
// - теперь возможность автоматического выделения получается из структуры, описывающей поведение горячей точки.
//
// Revision 1.9.4.17  2006/10/06 13:25:38  lulin
// - теперь вид строба получается из структуры, описывающей поведение горячей точки.
//
// Revision 1.9.4.16  2006/10/06 08:19:42  lulin
// - выкидываем ненужный параметр - класс горячей точки.
//
// Revision 1.9.4.15.2.2  2006/10/04 15:26:42  lulin
// - выкидываем ненужный параметр - класс горячей точки.
//
// Revision 1.9.4.15.2.1  2006/10/04 14:10:20  lulin
// - упрощаем механизм получения горячих точек.
//
// Revision 1.9.4.15  2006/10/04 11:23:02  lulin
// - при получении горячей точки передаем "состояние" курсора.
//
// Revision 1.9.4.14  2006/10/04 08:32:06  lulin
// - теперь умолчательное поведение при действиях мышью описывается структурой - чтобы проще было расширять интерфейс.
//
// Revision 1.9.4.13  2006/10/04 06:23:44  lulin
// - точку мыши упаковываем в состояние мыши.
//
// Revision 1.9.4.12  2006/10/04 04:33:51  lulin
// - избавляемся от возвращаемого результа в стиле OLE.
//
// Revision 1.9.4.11  2006/10/03 13:56:23  lulin
// - выделяем альтернативный интерфейс получения "горячей точки".
//
// Revision 1.9.4.10  2006/07/03 11:58:53  lulin
// - передаем не множество клавиш, а "состояние мыши".
//
// Revision 1.9.4.9  2005/11/10 09:47:04  lulin
// - bug fix: не компилировалась библиотека.
//
// Revision 1.9.4.8  2005/09/23 16:03:56  lulin
// - выделен модуль с общими интерфейсами.
//
// Revision 1.9.4.7  2005/07/07 16:22:05  lulin
// - bug fix: не компилировалась библиотека.
//
// Revision 1.9.4.6  2005/07/07 13:09:28  lulin
// - упорядочены названия интерфейсов.
//
// Revision 1.9.4.5  2005/07/05 16:02:44  lulin
// - bug fix: восстановлен скроллинг при выделении текста мышью.
//
// Revision 1.9.4.4  2005/06/21 13:54:53  lulin
// - cleanup: удалены ненужные методы.
//
// Revision 1.9.4.3  2005/06/14 16:40:06  lulin
// - bug fix: не компилировалась библиотека.
//
// Revision 1.9.4.2  2005/06/11 11:13:20  lulin
// - избавился от использования "устаревших" интерфейсов.
//
// Revision 1.9.4.1  2005/05/18 12:42:48  lulin
// - отвел новую ветку.
//
// Revision 1.8.2.2  2005/05/18 12:32:10  lulin
// - очередной раз объединил ветку с HEAD.
//
// Revision 1.8.2.1  2005/04/28 09:18:30  lulin
// - объединил с веткой B_Tag_Box.
//
// Revision 1.8.4.1  2005/04/25 08:46:00  lulin
// - bug fix: не собиралась библиотека.
//
// Revision 1.9  2005/04/28 15:03:39  lulin
// - переложил ветку B_Tag_Box в HEAD.
//
// Revision 1.8.4.1  2005/04/25 08:46:00  lulin
// - bug fix: не собиралась библиотека.
//
// Revision 1.8  2005/03/28 12:29:03  lulin
// - bug fix: не компилировалось.
//
// Revision 1.7  2005/03/22 08:52:32  lulin
// - bug fix: не компилировалось.
//
// Revision 1.6  2003/02/03 16:49:51  law
// - cleanup: в функции _l3StartOp последний параметр получил значение по умолчанию.
//
// Revision 1.5  2002/07/12 17:57:34  law
// - new behavior: раскрытие узла дерева по одинарному щелчку мышью.
//
// Revision 1.4  2002/07/11 16:01:16  law
// - comments.
//
// Revision 1.3  2002/07/11 15:35:44  law
// - new bahavior: HotSpot для параграфа с деревом теперь отдает интерфейсы Il3Node, Il3Tree, Ik2TagWrap.
//
// Revision 1.2  2002/07/11 12:03:15  law
// - rename proc: _evPoint -> l3Point, evRect -> l3Rect.
//
// Revision 1.1  2002/07/10 15:57:14  law
// - new unit: evTreeParaHotSpot.
//

{$I evDefine.inc }

interface

uses
  l3Types,
  l3Tree_TLB,
  l3Base,
  l3IID,
  l3InternalInterfaces,
  l3Units,

  afwInterfaces,

  k2Interfaces,
  k2InternalInterfaces,
  k2TagTool,

  evInternalInterfaces,
  evTreePara,
  evHotSpot,

  nevTools,
  nevInterfaces,
  nevGUIInterfaces
  ;

type
  TevTreeParaHotSpotTester = class(TevHotSpot, InevHotSpotTester2, IevAdvancedHotSpot)
   {* Реализация "горячих точек" параграфа с деревом. }
    private
    // internal fields
      f_NodePart : TevNodePart;
      f_Node     : Il3Node;
    protected
    // internal methods
      procedure DoHitTest(const aView  : InevControlView;
                        const aState : TafwCursorState;
                        var theInfo  : TafwCursorInfo);
        override;                
        {-}
      procedure Cleanup;
        override;
        {-}
      function CanDrag: Boolean;
        {-}
    public
    // public methods
      // InevHotSpotTester2
      function GetAdvancedHotSpot(const aView  : InevControlView;
                                  const aState : TevCursorState;
                                  const aPt    : InevBasePoint;
                                  const aMap   : InevMap;
                                  out theSpot  : IevHotSpot): Boolean;
        {-}
      // IevAdvancedHotSpot
      function MouseAction(const aView : InevControlView;
                           aButton     : TevMouseButton;
                           anAction    : TevMouseAction;
                           const Keys  : TevMouseState;
                           var Effect  : TevMouseEffect): Bool;
        {-}
      function COMQueryInterface(const IID: Tl3GUID; out Obj): Tl3HResult;
        override;
        {-}
  end;//TevTreeParaHotSpotTester

implementation

uses
  k2OpMisc,

  evMsgCode,
  evHotSpotMisc
  ;

// start class TevTreeParaHotSpotTester

procedure TevTreeParaHotSpotTester.Cleanup;
  {override;}
  {-}
begin
 f_Node := nil;
 inherited;
end;

procedure TevTreeParaHotSpotTester.DoHitTest(const aView  : InevControlView;
                                           const aState : TafwCursorState;
                                           var theInfo  : TafwCursorInfo);
  //override;
  {-}
begin
 inherited;
 if (f_NodePart = ev_npPlus) then
  theInfo.rCursor := ev_csHandPoint
 else
  theInfo.rCursor := ev_csDefault;
end;

function TevTreeParaHotSpotTester.GetAdvancedHotSpot(const aView  : InevControlView;
                                                     const aState : TevCursorState;
                                                     const aPt    : InevBasePoint;
                                                     const aMap   : InevMap;
                                                     out theSpot  : IevHotSpot): Boolean;
  {-}
begin
 Result := false;
 (GetRedirect.AsObject As TevTreePara).GetNodePart(aState.rPoint, f_NodePart, f_Node);
 if (f_Node <> nil) then
 begin
  Result := true;
  theSpot := TevHotSpotWrap.Make(Self);
 end;//f_Node <> nil
end;

function TevTreeParaHotSpotTester.MouseAction(const aView : InevControlView;
                                              aButton     : TevMouseButton;
                                              anAction    : TevMouseAction;
                                              const Keys  : TevMouseState;
                                              var Effect  : TevMouseEffect): Bool;
  {-}
begin
 Case aButton of
  ev_mbLeft :
  begin
   Case anAction of
    ev_maDown:
    begin
     if (f_NodePart = ev_npPlus) then
     begin
      with (GetRedirect.AsObject As TevTreePara) do
       ExpandNode(f_Node, k2StartOp(Processor));
      Effect.rNeedAsyncLoop := false;
      Result := true;
     end
     else
      Result := false;
    end;//ev_maDown
(*    ev_maDown:
     if (f_NodePart = ev_npPlus) then
      Result := true
     else
      Result := false;
    ev_maDouble: begin
     if (f_NodePart = ev_npPlus) then begin
      with (GetRedirect.AsObject As TevTreePara) do
       ExpandNode(f_Node, k2StartOp(aClickContext));
      Effect.rNeedAsyncLoop := false;
      Result := true;
     end else
      Result := false;
    end;//ev_maDouble*)
    else
     Result := false;
   end;//Case anAction
  end;//ev_mbLeft
  else
   Result := false;
 end;//Case aButton
end;

function TevTreeParaHotSpotTester.COMQueryInterface(const IID: Tl3GUID; out Obj): Tl3HResult;
  {override;}
  {-}
begin
 if IID.EQ(Il3Node) then
 begin
  if (f_Node = nil) then
   Result := inherited COMQueryInterface(IID, Obj)
  else begin
   Result.SetOk;
   Il3Node(Obj) := f_Node;
  end;
 end//IID.EQ(Il3Node)
 else
 if IID.EQ(Il3Tree) then
 begin
  Result.SetOk;
  Il3Tree(Obj) := (GetRedirect.AsObject As TevTreePara).Tree;
 end//IID.EQ(Il3Tree)
 else
 if IID.EQ(Ik2Tag) then
 begin
  Result.SetOk;
  Ik2Tag(Obj) := GetRedirect^;
 end//IID.EQ(Ik2Tag)
 else
  Result := inherited COMQueryInterface(IID, Obj);
end;

function TevTreeParaHotSpotTester.CanDrag: Boolean;
begin
 Result := True;
end;

end.

