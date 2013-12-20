unit evDocumentCursorPair;

{ Библиотека "Эверест"    }
{ Автор: Люлин А.В. ©     }
{ Модуль: evDocumentCursorPair - }
{ Начат: 17.12.2002 12:00 }
{ $Id: evDocumentCursorPair.pas,v 1.33 2013/01/30 09:28:06 dinishev Exp $ }

// $Log: evDocumentCursorPair.pas,v $
// Revision 1.33  2013/01/30 09:28:06  dinishev
// {Requestlink:425273666}. Переносим на модель TevTableCurosrPair, т.к. нужна примесь.
//
// Revision 1.32  2011/09/13 13:20:01  lulin
// {RequestLink:278839709}.
//
// Revision 1.31  2011/09/13 13:10:41  lulin
// {RequestLink:278839709}.
//
// Revision 1.30  2011/09/09 12:28:19  lulin
// {RequestLink:283149108}.
//
// Revision 1.29  2011/02/17 13:19:27  dinishev
// [$253663257]
//
// Revision 1.28  2010/07/29 11:34:09  lulin
// {RequestLink:228693150}.
// - не удаляем все пустые параграфы при вставке потока. ОДИН всегда оставляем.
//
// Revision 1.27  2010/07/20 15:30:47  lulin
// {RequestLink:227477723}.
//
// Revision 1.26  2010/06/23 18:05:49  lulin
// {RequestLink:219124975}.
//
// Revision 1.25  2010/06/17 16:44:14  lulin
// {RequestLink:217691466}.
// - bug fix: лишний раз открывали скобку для документа.
//
// Revision 1.24  2010/06/15 09:21:35  lulin
// {RequestLink:217685606}.
// - bug fix: сравнивали паровозы с кирпичами.
//
// Revision 1.23  2010/06/10 09:33:29  lulin
// {RequestLink:217685606}.
// - игнорируем разделы ширийной A4 [$217686855].
//
// Revision 1.22  2010/06/07 15:37:41  lulin
// {RequestLink:217681740}.
//
// Revision 1.21  2009/08/19 13:02:35  lulin
// {RequestLink:158795592}. Не обрывать внешний k2_idDocument.
//
// Revision 1.20  2009/07/23 13:42:10  lulin
// - переносим процессор операций туда куда надо.
//
// Revision 1.19  2009/07/10 15:04:43  lulin
// - избавляемся от лишнего дёрганья счётчиков ссылок.
//
// Revision 1.18  2009/06/17 12:02:15  lulin
// [$152404795]. Сохраняем заголовок документа, даже если попросили только детей.
//
// Revision 1.17  2009/06/10 12:48:11  lulin
// - не сохраняем имена блоков, начала которых попали в выделение.
//
// Revision 1.16  2009/03/04 13:32:45  lulin
// - <K>: 137470629. Генерируем идентификаторы типов с модели и убираем их из общей помойки.
//
// Revision 1.15  2008/10/14 19:20:11  lulin
// - <K>: 121149970.
//
// Revision 1.14  2008/10/08 11:07:14  lulin
// - избавляемся от ненужных зависимостей между интерфейсами.
//
// Revision 1.13  2008/04/14 07:03:22  lulin
// - передаём вью в рамках <K>: 89096854.
//
// Revision 1.12  2008/04/11 12:26:08  lulin
// - <K>: 89100752.
//
// Revision 1.11  2008/04/09 17:57:07  lulin
// - передаём вью в рамках <K>: 89096854.
//
// Revision 1.10  2007/12/04 12:47:00  lulin
// - перекладываем ветку в HEAD.
//
// Revision 1.9.8.4  2007/06/22 20:18:31  lulin
// - cleanup.
//
// Revision 1.9.8.3  2005/11/09 15:28:23  lulin
// - базовые интерфейсы перенесены в правильный модуль.
//
// Revision 1.9.8.2  2005/09/23 16:03:54  lulin
// - выделен модуль с общими интерфейсами.
//
// Revision 1.9.8.1  2005/06/16 14:11:29  lulin
// - cleanup: отдельно стоящие процедуры перенесены на интерфейсы.
//
// Revision 1.9  2005/03/30 10:14:52  lulin
// - переходим от классов к интерфейсам.
//
// Revision 1.8  2005/03/17 15:09:06  lulin
// - bug fix: не забираем в Clipboard вложенный документ - если он не выделен целиком.
//
// Revision 1.7  2004/12/21 15:38:05  lulin
// - используем интерфейсы вместо объектов.
//
// Revision 1.6  2003/06/23 15:46:24  law
// - bug fix: ошибка от Полковника - когда оставались пустые таблицы, мешающие дальнейшей работе.
//
// Revision 1.5  2003/02/14 13:02:59  law
// - cleanup: rename class TevListCursorPair -> _TevParaListCursorPair.
//
// Revision 1.4  2003/01/23 16:18:09  law
// - new behavior: используем TevBlock.Delete вместо WM_Clear.
//
// Revision 1.3  2002/12/26 16:03:15  law
// - new directive: evNeedEditableCursors.
//
// Revision 1.2  2002/12/17 09:49:42  law
// - new unit: evParaListCursorPair.
//
// Revision 1.1  2002/12/17 09:03:03  law
// - new unit: evDocumentCursorPair.
//

{$Include evDefine.inc }

interface

uses
  l3Types,
  l3Interfaces,

  k2Interfaces,
  
  evInternalInterfaces,
  evParaListCursorPair,

  nevBase,
  nevTools
  ;

type
  TevDocumentCursorPair = class(TevParaListCursorPair)
   {* Выделение для документа. }
    protected
    // internal methods
      procedure DoStore(const aView: InevView;
                        const G : Ik2TagGenerator;
                        aFlags  : TevStoreFlags);
        override;
        {-}
    public
    // public methods
      {$IfDef evNeedEditableCursors}
      function DoDelete(const aView : InevView;
                       const anOpPack : InevOp = nil;
                       aMode          : TevClearMode = ev_cmAll;
                       const aPara    : InevPara = nil): Bool;
        override;
        {-}
      {$EndIf evNeedEditableCursors}
  end;{TevDocumentCursorPair}

implementation

uses
  l3UnitsTools,

  k2Tags,
  
  evdInterfaces,
  evdDOM,

  Para_Const,
  evSectionPara
  ;

// start class TevDocumentCursorPair

procedure TevDocumentCursorPair.DoStore(const aView: InevView;
                                        const G : Ik2TagGenerator;
                                        aFlags  : TevStoreFlags);
  //override;
  {-}

var
 l_NeedCloseDocument : Boolean;
 
 procedure CheckSectionBreak;
 var
  l_Child  : InevObject;
  l_Holder : InevObjectHolder;
  l_SB     : InevSectionBreaks;
  l_Break  : InevObject;
  l_Range  : InevRange;
 begin//CheckSectionBreak
  if (f_Start <> nil) then
  begin
   l_Holder := ParaX.DocumentContainer;
   if (l_Holder <> nil) then
   begin
    l_SB := l_Holder.SectionBreaks;
    if (l_SB <> nil) then
    begin
     l_Child := f_Start.MostInner.Obj^;
     if l_SB.GetSectionBreak(l_Child, l_Break) then
     begin
      if not (evd_sfChildrenOnly in aFlags) then
      begin
       G.StartChild(TagType.ID);
       aFlags := aFlags + [evd_sfChildrenOnly];
       l_NeedCloseDocument := true;
      end;//not (evd_sfChildrenOnly in aFlags)
      if not l_Break.IsSame(l_Child) then
      begin
       if (Abs(evPixel2Cm(evSectionExtent(l_Break).X) - evPageSizes[evd_psA4].X) > 10) then
       begin
        l_Range := l_Break.Range;
        l_Range.AsStorable.Store(aView, G, []);
       end;//evSectionExtent(l_Break).X <> evPageSizes[evd_psA4].X)
      end;//not l_Break.IsSame(l_Child)
     end;//l_SB.GetSectionBreak(f_Start.MostInner.Obj^, l_Break)
    end;//l_SB <> nil
   end;//l_Holder <> nil
  end;//f_Start <> nil
 end;//CheckSectionBreak

begin
 if (Solid(aView) OR not GetRedirect.Owner.InheritsFrom(k2_idPara)) then
 begin
 // - если выделен целиком или не вложенный документ
  {$IfDef Nemesis}
  if (f_Start = nil) OR f_Start.AtStart then
  begin
   with ParaX do
   begin
    l_NeedCloseDocument := true;
    if (evd_sfChildrenOnly in aFlags) then
     l_NeedCloseDocument := false
    else
     G.StartChild(TagType.ID);
    try
     if HasSubAtom(k2_tiInContents) then
      G.AddBoolAtom(k2_tiInContents, BoolA[k2_tiInContents]);
     if ((f_Start <> nil) AND not f_Start.AtStart)
        // OR not (evd_sfChildrenOnly in aFlags)
        // Хочется это раскомментировать - иначе в документ не попадает имя
        // НО НЕЛЬЗЯ, т.к. иначе в Preview попадает паразитный параграф при добавлении
        // заголовков документа/блоков.
        // Придётся пожертвовать именем и тестовыми данными
        // Если сильно припрёт, то можно попробовать поиграться с записью тега k2_tiInContents
        then
     begin
      if HasSubAtom(k2_tiName) then
       G.AddPCharLenAtom(k2_tiName, PCharLenA[k2_tiName]);
      if HasSubAtom(k2_tiShortName) then
       G.AddPCharLenAtom(k2_tiShortName, PCharLenA[k2_tiShortName]);
     end;//(f_Start <> nil) AND not f_Start.AtStart
     if HasSubAtom(k2_tiLineSpacing) then
      G.AddIntegerAtom(k2_tiLineSpacing, IntA[k2_tiLineSpacing]);
     if HasSubAtom(k2_tiStyle) then
      G.AddIntegerAtom(k2_tiStyle, IntA[k2_tiStyle]);
     if HasSubAtom(k2_tiExternalHandle) then
      G.AddIntegerAtom(k2_tiExternalHandle, IntA[k2_tiExternalHandle]);
     inherited DoStore(aView, G, aFlags + [evd_sfChildrenOnly]);
    finally
     if l_NeedCloseDocument then
      G.Finish;
    end;//try..finally
   end;//with ParaX
  end//f_Start = nil
  else
  {$EndIf  Nemesis}
  begin
   {$IfDef Nemesis}
   if (evd_sfChildrenOnly in aFlags) then
    with ParaX do
    begin
     if HasSubAtom(k2_tiInContents) then
      G.AddBoolAtom(k2_tiInContents, BoolA[k2_tiInContents]);
     if HasSubAtom(k2_tiName) then
      G.AddPCharLenAtom(k2_tiName, PCharLenA[k2_tiName]);
     if HasSubAtom(k2_tiShortName) then
      G.AddPCharLenAtom(k2_tiShortName, PCharLenA[k2_tiShortName]);
     if HasSubAtom(k2_tiExternalHandle) then
      G.AddIntegerAtom(k2_tiExternalHandle, IntA[k2_tiExternalHandle]);
    end;//with ParaX
   {$EndIf Nemesis}
   l_NeedCloseDocument := false;
   {$IfDef Nemesis}
   CheckSectionBreak;
   {$EndIf Nemesis}
   try
    inherited DoStore(aView, G, aFlags{ - [evd_sfStoreParaEnd]});
   finally
    if l_NeedCloseDocument then
     G.Finish;
   end;//try..finally
  end;//f_Start = nil
 end//(Solid(aView) OR not GetRedirect.Owner.InheritsFrom(k2_idPara))
 else
  inherited DoStore(aView, G, aFlags + [evd_sfChildrenOnly]);
end;

{$IfDef evNeedEditableCursors}
function TevDocumentCursorPair.DoDelete(const aView : InevView;
                                      const anOpPack : InevOp = nil;
                                      aMode          : TevClearMode = ev_cmAll;
                                      const aPara    : InevPara = nil): Bool;
  //override;
  {-}
begin
 if Solid(aView) then
 begin
  if (aMode = ev_cmAll) then
   aMode := ev_cmKeepOne;
 end//Solid
 else
 begin
  if (aMode = ev_cmKeepOne) then
   aMode := ev_cmAll
  else
  if (aMode = ev_cmForceKeepOne) then
   aMode := ev_cmKeepOne;
 end;//Solid
 Result := inherited DoDelete(aView, anOpPack, aMode, aPara);
end;
{$EndIf evNeedEditableCursors}

end.

