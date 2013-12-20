unit eeHotSpot;

{ Библиотека "Эверест"    }
{ Автор: Люлин А.В. ©     }
{ Модуль: eeHotSpot -     }
{ Начат: 13.11.2002 19:38 }
{ $Id: eeHotSpot.pas,v 1.42 2012/04/25 15:41:22 lulin Exp $ }

// $Log: eeHotSpot.pas,v $
// Revision 1.42  2012/04/25 15:41:22  lulin
// {RequestLink:357338233}
//
// Revision 1.41  2011/01/14 15:52:52  lulin
// {RequestLink:248195582}.
// - вычищаем устаревшие интерфейсы.
//
// Revision 1.40  2010/02/11 13:45:28  lulin
// - выкидываем неудавшийся фасад.
//
// Revision 1.39  2009/07/31 09:42:18  oman
// - new: {RequestLink:158795599}
//
// Revision 1.38  2009/06/02 13:48:04  lulin
// [$148574526].
//
// Revision 1.37  2009/04/15 18:49:33  lulin
// [$143396720]. Основательно перетрясаем модель.
//
// Revision 1.36  2009/04/07 16:09:44  lulin
// [$140837386]. №13.
//
// Revision 1.35  2009/04/06 17:51:28  lulin
// [$140837386]. №11.
//
// Revision 1.34  2008/12/12 19:19:17  lulin
// - <K>: 129762414.
//
// Revision 1.33  2008/06/07 17:31:44  lulin
// - рисуем таблицу тегов на модели.
//
// Revision 1.32  2008/04/14 06:13:13  oman
// - new: Поддержка нового типа ниперссылок - CI_PHARM_MULTI
//
// Revision 1.31  2008/02/14 17:08:58  lulin
// - cleanup.
//
// Revision 1.30  2007/12/04 12:47:33  lulin
// - перекладываем ветку в HEAD.
//
// Revision 1.28.4.7  2007/07/11 09:04:24  oman
// - new: Для гиперссылки обеспечил доступ к k2_tiName (cq24711)
//
// Revision 1.28.4.6  2007/04/18 11:00:13  oman
// warning fix
//
// Revision 1.28.4.5  2007/02/16 17:54:08  lulin
// - избавляемся от стандартного строкового типа.
//
// Revision 1.28.4.4  2007/01/05 14:37:22  lulin
// - cleanup.
//
// Revision 1.28.4.3  2006/12/20 17:49:48  lulin
// - файл с константами переехал в общую папку.
//
// Revision 1.28.4.2  2005/07/15 10:14:05  lulin
// - избавляемся от использования самостийной функции преобразования интерфейсов.
//
// Revision 1.28.4.1  2005/05/18 12:42:49  lulin
// - отвел новую ветку.
//
// Revision 1.27.2.1  2005/04/28 09:18:32  lulin
// - объединил с веткой B_Tag_Box.
//
// Revision 1.27.4.1  2005/04/23 16:07:28  lulin
// - удален временный интерфейс Ik2TagBox.
//
// Revision 1.27  2005/03/28 11:32:10  lulin
// - интерфейсы переехали в "правильный" модуль.
//
// Revision 1.26  2005/03/28 06:37:11  lulin
// - remove object: Tk2AtomW.
//
// Revision 1.25  2005/03/24 12:08:15  lulin
// - remove method: Ik2TagBox._Tag.
// - new method: Ik2TagBox.Target.
//
// Revision 1.24  2005/03/21 16:28:19  lulin
// - переходим к Ik2Tag.
//
// Revision 1.23  2005/03/19 16:39:54  lulin
// - спрятаны ненужные методы.
//
// Revision 1.22  2005/03/01 10:09:52  lulin
// - new prop: IeeHyperlink.FromDocument.
// - new prop: IeeDocument.ExternalHandle.
//
// Revision 1.21  2004/10/13 10:33:33  lulin
// - new behavior: синхронизируем удаление комментариев.
//
// Revision 1.20  2004/09/16 15:30:35  lulin
// - у гиперссылки теперь можно записывать свойство Hint.
//
// Revision 1.19  2004/04/08 19:19:41  law
// - optimization: убраны директивы stdcall.
//
// Revision 1.18  2004/02/27 13:46:06  law
// - new method: IeeHyperlink.Delete.
//
// Revision 1.17  2003/11/29 16:39:21  law
// - new prop: IeeHyperlink.Para.
// - new method: TeeHyperlink.Make.
// - new behavior: если в мультиссылке нету ID параграфа, то он берется от самого параграфа.
//
// Revision 1.16  2003/11/17 13:13:06  law
// - new prop: IeeHyperlink.ID.
//
// Revision 1.15  2003/09/23 08:24:18  law
// - new prop: IeeHyperlink.Address.
//
// Revision 1.14  2003/09/18 14:35:44  law
// - new prop: IeeHyperlink.RevisionID.
//
// Revision 1.13  2003/09/02 12:26:25  law
// - new method: TeeHotSpot.Make.
//
// Revision 1.12  2003/09/02 11:58:12  law
// - new method: TeePara.Make.
//
// Revision 1.11  2003/06/30 16:16:29  law
// - new: расширен интерфейс IeeHyperlink.
//
// Revision 1.10  2003/02/12 15:50:20  law
// - new interface: IeePicture.
// - new unit: eePicture.
//
// Revision 1.9  2003/02/12 15:29:17  law
// - new units.
//
// Revision 1.8  2003/02/11 16:22:50  law
// - bug fix: EListError при добавлении метки.
//
// Revision 1.7  2003/02/11 14:20:20  law
// - change: расширена работа со списком меток - сделана возможность добавлять и удалять метки.
//
// Revision 1.6  2002/11/29 13:32:32  law
// - new prop: _IeeBlock._ChildrenIterator, _IeeBlock.Name.
//
// Revision 1.5  2002/11/20 15:55:37  law
// - new prop: IeePara.Subs, IeePara.Markers.
//
// Revision 1.4  2002/11/20 15:18:02  law
// - new prop: _IeeViewParams.PersistentSelection.
// - new behavior: переставляется курсор по клику правой кнопкой мыши.
//
// Revision 1.3  2002/11/14 08:54:54  law
// - new behavior: TeeCustomSubPanel теперь реагирует на нажатия мыши.
//
// Revision 1.2  2002/11/13 17:46:22  law
// - move classes: TeeTagEditorTool, TeePara, TeeHotSpot переехали в eeHotSpot.
//
// Revision 1.1  2002/11/13 16:44:48  law
// - new hpp.
//

{$Include evDefine.inc }

interface

uses
  Windows,
  
  Classes,

  l3Interfaces,
  l3IID,
  l3Types,
  l3Base,
  l3CacheableBase,

  k2Interfaces,
  k2TagTools,

  nevTools,
  nevNavigation,
  evInternalInterfaces,
  
  eeInterfaces,
  eeInterfacesEx,
  eeTagEditorTool
  ;

type
  TeeHotSpot = class(TeeTagEditorTool, IeeHotSpot)
    private
    // internal fields
      f_Hyperlink   : IevHyperlink;
      f_InSelection : Bool;
      f_Sub         : IeeSub;
    protected
    // property methods
      function Get_Para: IeePara;
        {-}
      function Get_Hyperlink: IevHyperlink;
        {-}
      function Get_InSelection: Windows.Bool;
        {-}
      function Get_Sub: IeeSub;
        {-}
    protected
    // internal methods
      procedure Cleanup;
        override;
        {-}
    public
    // public methods
      constructor Create(const aTagWrap   : Ik2Tag;
                         const aDocument  : IeeDocumentEx;
                         const aHyperlink : IevHyperlink;
                         aInSelection     : Bool;
                         const aSub       : IeeSub = nil);
        reintroduce;
        {-}
      class function Make(const aTagWrap   : Ik2Tag;
                          const aDocument  : IeeDocumentEx;
                          const aHyperlink : IevHyperlink;
                          aInSelection     : Bool;
                          const aSub       : IeeSub = nil): IeeHotSpot;
        reintroduce;
        {-}
      function COMQueryInterface(const IID: Tl3GUID; out Obj): Tl3HResult;
        override;
        {-}
  end;//TeeHotSpot

implementation

uses
  SysUtils,
  
  l3InterfacesMisc,
  l3String,

  evdTypes,

  eePara
  ;

// start class TeeHotSpot

constructor TeeHotSpot.Create(const aTagWrap   : Ik2Tag;
                              const aDocument  : IeeDocumentEx;
                              const aHyperlink : IevHyperlink;
                              aInSelection     : Bool;
                              const aSub       : IeeSub = nil);
  //reintroduce;
  {-}
begin
 inherited Create(aTagWrap, aDocument, nil);
 f_Hyperlink := aHyperlink;
 f_InSelection := aInSelection;
 f_Sub := aSub;
end;

class function TeeHotSpot.Make(const aTagWrap   : Ik2Tag;
                               const aDocument  : IeeDocumentEx;
                               const aHyperlink : IevHyperlink;
                               aInSelection     : Bool;
                               const aSub       : IeeSub = nil): IeeHotSpot;
  {-}
var
 l_HotSpot : TeeHotSpot;
begin
 l_HotSpot := Create(aTagWrap, aDocument, aHyperlink, aInSelection, aSub);
 try
  Result := l_HotSpot;
 finally
  l3Free(l_HotSpot);
 end;//try..finally
end;

procedure TeeHotSpot.Cleanup;
  //override;
  {-}
begin
 f_Sub := nil;
 f_Hyperlink := nil;
 f_InSelection := false;
 inherited;
end;

function TeeHotSpot.COMQueryInterface(const IID: Tl3GUID; out Obj): Tl3HResult;
  //override;
  {-}
begin
 if IID.EQ(IeePara) then
 begin
  if (Document = nil) then
   Result.SetNoInterface
  else begin
   Result.SetOk;
   IeePara(Obj) := TeePara.Make(TagInst, Document);
  end;//Document = nil
 end else if IID.EQ(IevHyperlink) then begin
  if (f_Hyperlink = nil) then
   Result.SetNoInterface
  else begin
   Result.SetOk;
   IevHyperlink(Obj) := f_Hyperlink;
  end;//f_Hyperlink = nil
 end else
  Result := inherited COMQueryInterface(IID, Obj);
end;

function TeeHotSpot.Get_Para: IeePara;
  {-}
begin
 QueryInterface(IeePara, Result);
end;

function TeeHotSpot.Get_Hyperlink: IevHyperlink;
  {-}
begin
 QueryInterface(IevHyperlink, Result);
end;

function TeeHotSpot.Get_InSelection: Windows.Bool;
  {-}
begin
 Result := f_InSelection;
end;

function TeeHotSpot.Get_Sub: IeeSub;
  {-}
begin
 Result := f_Sub;
end;

(*function TeeHyperlink.Get_DocID: Integer;
  {-}
begin
 Result := f_Hyperlink.Address.DocID;
 if (Result = 0) AND (f_Para <> nil) AND ((Get_TypeID = CI_MULT) or (Get_TypeID = CI_PHARM_MULTI)) then
  Result := f_Para.ID;
end;*)

end.

