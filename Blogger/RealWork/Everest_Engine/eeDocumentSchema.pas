unit eeDocumentSchema;

{ Библиотека "Эверест"    }
{ Автор: Люлин А.В. ©     }
{ Модуль: eeDocumentSchema - }
{ Начат: 12.07.2005 19:11 }
{ $Id: eeDocumentSchema.pas,v 1.8 2012/11/01 09:41:48 lulin Exp $ }

// $Log: eeDocumentSchema.pas,v $
// Revision 1.8  2012/11/01 09:41:48  lulin
// - забыл точку с запятой.
//
// Revision 1.7  2012/11/01 07:43:17  lulin
// - делаем возможность логирования процесса загрузки модулей.
//
// Revision 1.6  2012/05/23 13:26:40  lulin
// {RequestLink:329648343}
//
// Revision 1.5  2011/09/15 18:32:11  lulin
// {RequestLink:278824896}.
//
// Revision 1.4  2011/06/08 10:18:37  lulin
// {RequestLink:250088031}.
//
// Revision 1.3  2010/11/16 09:02:20  dinishev
// [$234357754]
//
// Revision 1.2  2010/06/29 14:47:26  lulin
// {RequestLink:165512428}.
// - добавлен тест.
//
// Revision 1.1  2010/04/21 16:52:40  lulin
// {RequestLink:144575972}.
// - переходим к абсолютным путям для включаемых файлов.
//
// Revision 1.2  2010/02/11 13:45:33  lulin
// - выкидываем неудавшийся фасад.
//
// Revision 1.1  2010/02/10 19:16:23  lulin
// {RequestLink:186352297}.
//
// Revision 1.32  2009/08/19 18:07:11  lulin
// {RequestLink:158795592}. Вставленный фрагмент из документа гаранта (вложенный k2_idDocument) сделать read-only, чтобы его можно было удалить только целиком.
//
// Revision 1.31  2009/07/23 13:42:13  lulin
// - переносим процессор операций туда куда надо.
//
// Revision 1.30  2009/07/23 08:14:42  lulin
// - вычищаем ненужное использование процессора операций.
//
// Revision 1.29  2009/07/14 14:56:32  lulin
// {RequestLink:141264340}. №25.
//
// Revision 1.28  2009/07/11 15:55:11  lulin
// {RequestLink:141264340}. №22.
//
// Revision 1.27  2009/07/11 09:24:44  lulin
// - избавляемся от лишнего дёрганья счётчиков ссылок.
//
// Revision 1.26  2009/07/10 15:04:45  lulin
// - избавляемся от лишнего дёрганья счётчиков ссылок.
//
// Revision 1.25  2009/07/03 16:24:04  lulin
// - шаг к переходу от интерфейсов к объектам.
//
// Revision 1.24  2009/06/18 19:36:20  lulin
// {RequestLink:142613457}.
//
// Revision 1.23  2009/06/18 18:35:09  lulin
// {RequestLink:142613457}.
//
// Revision 1.22  2009/06/05 17:13:49  lulin
// - переносим на модель то, что возможно перенести.
//
// Revision 1.21  2009/04/13 12:53:51  lulin
// [$142613919]. Чистка кода.
//
// Revision 1.20  2009/04/09 14:12:39  lulin
// [$140837386]. №15.
//
// Revision 1.19  2009/04/03 17:51:30  lulin
// [$140837386]. Ликвидируем старорежимную примесь.
//
// Revision 1.18  2009/03/04 13:32:52  lulin
// - <K>: 137470629. Генерируем идентификаторы типов с модели и убираем их из общей помойки.
//
// Revision 1.17  2009/03/03 17:42:02  lulin
// - <K>: 137470629. Убран ненужный промежуточный модуль.
//
// Revision 1.16  2008/08/25 15:30:08  lulin
// - bug fix: не всегда применялся стиль комментария пользователя, при вставке из буфера обмена.
//
// Revision 1.15  2008/08/13 08:47:01  lulin
// - <K>: 108233434.
//
// Revision 1.14  2008/07/01 10:33:56  lulin
// - <K>: 97353852.
//
// Revision 1.13  2008/06/20 14:48:54  lulin
// - используем префиксы элементов.
//
// Revision 1.12  2008/06/10 14:38:33  lulin
// - храним ссылки на типы в полях таблицы тегов.
//
// Revision 1.11  2008/04/24 18:52:06  lulin
// - подготавливаемся к хранению форматированияв пуле, в рамках <K>: 89106312.
//
// Revision 1.10  2008/04/16 16:58:06  lulin
// - cleanup в рамках <K>: 89099095.
//
// Revision 1.9  2008/04/15 08:23:49  lulin
// - передаём вью в качестве параметра.
//
// Revision 1.8  2008/04/14 13:46:38  lulin
// - <K>: 89096854.
//
// Revision 1.7  2008/04/10 12:45:59  lulin
// - <K>: 89099092.
//
// Revision 1.6  2008/04/09 17:57:10  lulin
// - передаём вью в рамках <K>: 89096854.
//
// Revision 1.5  2008/03/03 20:05:48  lulin
// - <K>: 85721135.
//
// Revision 1.4  2008/02/11 13:04:14  lulin
// - <CQ>: 26029. Сделал удаление параграфа с комментарием клавишами Del и Backspace.
//
// Revision 1.3  2008/02/05 13:29:43  lulin
// - ключи и классы делаем особым стилем.
//
// Revision 1.2  2007/12/04 12:47:33  lulin
// - перекладываем ветку в HEAD.
//
// Revision 1.1.2.30  2007/10/10 16:39:23  lulin
// - теперь при вычислении шрифта передаем ссылку на карту форматирования.
//
// Revision 1.1.2.29  2007/08/08 14:10:07  lulin
// - bug fix: можно было редактировать псевдо-параграфы.
//
// Revision 1.1.2.28  2007/08/02 19:41:39  lulin
// - cleanup.
//
// Revision 1.1.2.27  2007/08/02 19:33:19  lulin
// - cleanup.
//
// Revision 1.1.2.26  2007/06/22 19:19:00  lulin
// - cleanup.
//
// Revision 1.1.2.25  2006/12/11 09:55:23  oman
// - new: HiddenStyles перенесены с DocumentContainer на редактор (cq12564)
// - new: Изменена схема кэширования превью на DocumentContainer
//
// Revision 1.1.2.24  2006/07/10 14:55:47  lulin
// - убрана инициализация ссылки на родительский объект выделения.
//
// Revision 1.1.2.23  2006/06/27 12:18:38  lulin
// - избавляемся от шаманства с типом свойства, отвечающего за сохраняемость атрибута.
//
// Revision 1.1.2.22  2006/06/27 11:57:47  lulin
// - bug fix: при просмотре картики в ворд записывались не ее оригинальные высота/ширина, а те что использовались при подгонке по размерам окна в результате картинка получалась не 100% (CQ OIT5-20582).
//
// Revision 1.1.2.21  2006/05/30 07:52:42  lulin
// - bug fix: AV при вставке в выделенный комментарий (CQ OIT5-21136).
//
// Revision 1.1.2.20  2006/05/26 14:06:13  lulin
// - bug fix: при выделении текста в комментариях текст из буфера не вставлялся - только выделение удалялось (CQ OIT5-21034).
//
// Revision 1.1.2.19  2006/05/18 12:44:16  lulin
// - bug fix: при расчете шрифта выделения не учитываем нередактируемые параграфы (CQ OIT5-19848).
//
// Revision 1.1.2.18  2006/03/30 11:49:24  lulin
// - cleanup: вытираем код для редактирования комментариев не в виде дерева.
//
// Revision 1.1.2.17  2006/02/27 17:14:40  lulin
// - bug fix: можно было изменить шрифт у константного текста (CQ OIT5-19664).
//
// Revision 1.1.2.16  2005/12/14 13:02:50  lulin
// - вставляем комментарий не внутри подписи, а за подписью.
//
// Revision 1.1.2.15  2005/12/09 16:36:38  lulin
// - убрано лишнее заворачивание параграфа в комментарий.
//
// Revision 1.1.2.14  2005/12/09 16:15:21  lulin
// - убрана двойная проверка на возможность вставки комментария.
//
// Revision 1.1.2.13  2005/12/09 15:44:11  lulin
// - bug fix: слишком поздно корректировали стиль параграфов в комментарии (CQ OIT5-18487).
//
// Revision 1.1.2.12  2005/12/01 05:59:21  lulin
// - cleanup: избавляемся от транслции свойства HiddenStyles от редактора к котнтейнеру и обратно.
//
// Revision 1.1.2.11  2005/11/09 15:28:27  lulin
// - базовые интерфейсы перенесены в правильный модуль.
//
// Revision 1.1.2.10  2005/11/05 09:03:17  lulin
// - выделяем у якоря и у курсора общую функциональность.
//
// Revision 1.1.2.9  2005/10/10 05:53:28  lulin
// - bug fix: после таблицы пожно было вставить два комментария подряд (CQ OIT5-16631).
//
// Revision 1.1.2.8  2005/09/23 16:03:58  lulin
// - выделен модуль с общими интерфейсами.
//
// Revision 1.1.2.7  2005/09/23 09:18:44  lulin
// - схема документа переехала в общий каталог.
//
// Revision 1.1.2.6  2005/07/20 18:21:17  lulin
// - убран переходный интерфейс.
//
// Revision 1.1.2.5  2005/07/18 16:03:15  lulin
// - избавляемся от косвенного приведения одного интерфейса к другому.
//
// Revision 1.1.2.4  2005/07/18 15:10:29  lulin
// - избавляемся от косвенного приведения одного интерфейса к другому.
//
// Revision 1.1.2.3  2005/07/15 10:00:35  lulin
// - bug fix: очередной раз починил вставку комментарие, в этот раз отъехавшую из-за перехода на использование одного документа в разных редакторах.
//
// Revision 1.1.2.2  2005/07/12 16:12:11  lulin
// - bug fix: неправильно вставлялись комментарии.
//
// Revision 1.1.2.1  2005/07/12 15:43:33  lulin
// - bug fix: упорядочен порядок модулей и порядок вызова секций инициализации.
//

{$Include evDefine.inc }

interface

uses
  evdSchema
  ;

implementation

uses
  SysUtils,

  l3Types,
  l3IID,
  l3Interfaces,
  l3Base,

  k2Tags,
  k2Interfaces,
  k2Facade,
  k2Base,
  k2OpMisc,

  evInternalInterfaces,
  evOp,
  evdStyles,
  evTextParaCursor,
  evTextParaCursorPair,
  evCursorTools,
  evParaTools,
  evStdInt,
  evDocumentCursor,
  evDocumentCursorPair,

  nevBase,
  nevTools,

  eeInterfaces,
  eeInterfacesEx,
  eePara,

  LeafPara_Const,
  CommentPara_Const,
  TextPara_Const,
  DecorTextPara_Const,
  Document_Const,
  BitmapPara_Const,

  {$IfDef Nemesis}
  F1_Schema
  {$Else Nemesis}
  evNative_Schema
  {$EndIf Nemesis}
  ;

type
  TeeDocumentSchema = class({$IfDef Nemesis}
                            TF1Schema
                            {$Else Nemesis}
                            TevNativeSchema
                            {$EndIf Nemesis})
  public
    constructor Create; override;
  end;//TeeDocumentSchema

function _Editor(const aPara: InevPara): IeeEditor;
  {-}
var
 l_Container : InevDocumentContainer;
begin
 l_Container := aPara.DocumentContainer;
 if (l_Container = nil) OR (l_Container.TextSource = nil) then
  Result := nil
 else
  l_Container.TextSource.CastAnyEditorTo(IeeEditor, Result);
end;

// start class TeeTextParaCursor

type
  TeeTextParaCursor = class(TevTextParaCursor)
    protected
    // internal methods
      function  Editor: IeeEditor;
        {-}
      function  IsReadOnly(const aView : InevView): Boolean;
        {-}
      function  ShowComments(const aView : InevView): Boolean;
        {-}
      function  GetInevDataFormattingModify(const aView : InevView): InevDataFormattingModify;
        override;
        {-}
      function  DoSplit(const aView : InevView;
                      aFlags     : TnevInsertStringFlags;
                      const anOp : InevOp): Ik2Tag;
        override;
        {-}
      function  DoJoinWith(const aView : InevView;
                         const aPara : Ik2Tag;
                         const anOp  : InevOp;
                         aMoveSubs   : Boolean): Long;
        override;
        {-}
      function DoInsertString(const aView : InevView;
                              const aString    : Il3CString;
                              const anOp : InevOp = nil;
                              InsertMode : Bool = true;
                              aFlags     : TnevInsertStringFlags = []): Bool;
        override;
        {-}
      function DoDeleteString(const aView : InevView;
                              aCount     : Long;
                              const anOp : InevOp = nil;
                              aFlags     : TnevInsertStringFlags = []): Bool;
        override;
        {-}
  end;//TeeTextParaCursor

function TeeTextParaCursor.GetInevDataFormattingModify(const aView : InevView): InevDataFormattingModify;
  //override;
  {-}
begin
 if IsReadOnly(aView) OR evIsInReadOnlyPara(ParaX) then
  Result := nil
 else
  Result := inherited GetInevDataFormattingModify(aView); 
end;

function TeeTextParaCursor.Editor: IeeEditor;
  {-}
begin
 Result := _Editor(ParaX);
end;

function _IsReadOnly(const aView : InevView;
                     const aPara: InevPara): Boolean;
  {-}
var
 l_Para   : IeeStyledLeafPara;
 l_Editor : IeeEditor;
begin
 l_Editor := _Editor(aPara);
 if (l_Editor <> nil) then
  try
   l_Para := TeeStyledLeafPara.Make(aPara.Box, l_Editor As IeeDocumentEx);
   try
    Result := not l_Para.IsUserComment;
    if not Result and Assigned(aView) then
     Result := -ev_saUserComment in aView.Metrics.HiddenStyles;
   finally
    l_Para := nil;
   end;//try..finally
  finally
   l_Editor := nil;
  end//try..finally
 else
  Result := false;
end;

function TeeTextParaCursor.IsReadOnly(const aView : InevView): Boolean;
  {-}
begin
 Result := _IsReadOnly(aView, ParaX);
end;

function TeeTextParaCursor.ShowComments(const aView : InevView): Boolean;
  {-}
begin
 if (aView <> nil) then
  Result := not (-ev_saUserComment in aView.Metrics.HiddenStyles)
 else
  Result := true;
end;

function TeeTextParaCursor.DoSplit(const aView : InevView;
                                 aFlags     : TnevInsertStringFlags;
                                 const anOp : InevOp): Ik2Tag;
  //override;
  {-}
var
 l_Editor   : IeeEditor;
 l_Para     : IeeStyledLeafPara;
 l_NextPara : IeeStyledLeafPara;
begin
 Result := k2NullTag;
 if ShowComments(aView) then
 begin
  if IsReadOnly(aView) then
  begin
   l_Editor := Editor;
   if (l_Editor <> nil) then
    try
     l_Para := TeeTextPara.Make(GetRedirect.Box, l_Editor As IeeDocumentEx);
     try
      if Supports(l_Para.Next, IeeStyledLeafPara, l_NextPara) then
       try
        if l_NextPara.IsUserComment then
        // - следующий за нами - комментарий
        begin
         Self.pm_GetParentPoint.Move(aView, ev_ocNextParaTopLeft{ev_ocParaDown}, anOp);
         // - надо сместиться на следующий параграф
         //Result := l_Tag.TagType.TypeTable[k2_idTextPara].New;
         Exit;
        end;//l_NextPara.IsUserComment
       finally
        l_NextPara := nil;
       end;//try..finally
      SetEntryPoint(High(Long), anOp);
      // Ниже делаем блок для комментария:
      Result := inherited DoSplit(aView, aFlags, anOp);
     finally
      l_Para := nil;
     end;//try..finally
    finally
     l_Editor := nil;
    end//try..finally
   else
    Result := inherited DoSplit(aView, aFlags, anOp);
    // - это неспецифический редактор - умничать не надо
  end//IsReadOnly
  else
   Result := inherited DoSplit(aView, aFlags, anOp);
   // - а здесь просто разрываем параграф внутри комментария
 end;//ShowComments(aView)
end;

function TeeTextParaCursor.DoJoinWith(const aView : InevView;
                                    const aPara : Ik2Tag;
                                    const anOp  : InevOp;
                                    aMoveSubs   : Boolean): Long;
  //override;
  {-}
var
 l_Leaf   : IeeStyledLeafPara;
 l_Editor : IeeEditor;
 l_P      : InevPara;
begin
 l_Editor := Editor;
 if (l_Editor <> nil) then
  try
   if aPara.InheritsFrom(k2_idLeafPara) then
   begin
    l_Leaf := TeeStyledLeafPara.Make(aPara, l_Editor As IeeDocumentEx);
    try
     if IsReadOnly(aView) then
     begin
      if ShowComments(aView) then
      begin
       if l_Leaf.IsUserComment AND not evHasText(aPara) then
        l_Leaf.Delete;
      end;//ShowComments(aView)
      Result := -1
     end//IsReadOnly
     else
     if l_Leaf.IsUserComment then
      Result := inherited DoJoinWith(aView, aPara, anOp, aMoveSubs)
     else
     if not evHasText(GetRedirect^) then
      Result := -2
     else 
     if not aPara.Owner.IsValid then
     // - если вставляем новый параграф, то с ним объединять можно
     // http://mdp.garant.ru/pages/viewpage.action?pageId=108233434
      Result := inherited DoJoinWith(aView, aPara, anOp, aMoveSubs)
     else
      Result := -1;
    finally
     l_Leaf := nil;
    end;//try..finally
   end//aPara.InheritsFrom(k2_idLeafPara)
   else
   begin
    if not evHasText(GetRedirect^) then
     Result := -2
    else
    begin
     if aPara.InheritsFrom(k2_idCommentPara) then
     begin
      if (aPara.ChildrenCount = 1) then
      begin
       if not evHasText(aPara.Child[0]) then
        if aPara.QT(InevPara, l_P, k2Proc(anOp)) then
         l_P.Edit.Delete(False, anOp)
        else
         Assert(false);
      end;//aPara.ChildrenCount = 1
     end;//aPara.InheritsFrom(k2_idCommentPara)
     Result := -1;
    end;//not evHasText(GetRedirect^)
   end;//aPara.InheritsFrom(k2_idLeafPara) 
  finally
   l_Editor := nil;
  end//try..finally
 else
 if EvDeleteIfReadOnly(ParaX) then
  Result := 0
 else
  Result := inherited DoJoinWith(aView, aPara, anOp, aMoveSubs);
  // - это не специфический редактор - можно объединять параграфы
end;

function TeeTextParaCursor.DoInsertString(const aView : InevView;
                                          const aString    : Il3CString;
                                          const anOp : InevOp = nil;
                                          InsertMode : Bool = true;
                                          aFlags     : TnevInsertStringFlags = []): Bool;
  //override;
  {-}
begin
 if IsReadOnly(aView) then
  Result := false
 else
 if evIsInReadOnlyPara(ParaX) then
  Result := false
 else
  Result := inherited DoInsertString(aView, aString, anOp, InsertMode, aFlags);
end;

function TeeTextParaCursor.DoDeleteString(const aView : InevView;
                                          aCount     : Long;
                                          const anOp : InevOp = nil;
                                          aFlags     : TnevInsertStringFlags = []): Bool;
  //override;
  {-}
begin
 if IsReadOnly(aView) then
  Result := true
 else
 if EvDeleteIfReadOnly(ParaX) then
  Result := true  
 else
  Result := inherited DoDeleteString(aView, aCount, anOp, aFlags); 
end;

type
  TeeTextCursorPair = class(TevTextCursorPair)
    protected
    // internal methods
      function  DoGetFont(const aView : InevView;
                        aMap : TnevFormatInfoPrim;
                        Stop       : PInteger = nil): InevFontPrim;
        override;
        {-}
      function  GetInevDataFormattingModify(const aView : InevView): InevDataFormattingModify;
        override;
        {-}
  end;//TeeTextCursorPair

function TeeTextCursorPair.DoGetFont(const aView : InevView;
                                   aMap : TnevFormatInfoPrim;
                                   Stop       : PInteger = nil): InevFontPrim;
  //override;
  {-}
begin
 if _IsReadOnly(aView, ParaX) OR evIsInReadOnlyPara(ParaX) then
  Result := nil
 else
  Result := inherited DoGetFont(aView, aMap, Stop);
end;

function TeeTextCursorPair.GetInevDataFormattingModify(const aView : InevView): InevDataFormattingModify;
  //override;
  {-}
begin
 if _IsReadOnly(aView, ParaX) OR evIsInReadOnlyPara(ParaX)  then
  Result := nil
 else
  Result := inherited GetInevDataFormattingModify(aView);
end;

type
  TeeDocumentCursor = class(TevDocumentCursor)
  end;//TeeDocumentCursor

type
  TeeDocumentCursorPair = class(TevDocumentCursorPair)
    protected
    // internal methods
      function  DoInsertStream(const aView : InevView;
                             const aStream : IStream;
                             aFormat       : TnevFormat;
                             const anOp    : InevOp = nil;
                             aFlags        : TevLoadFlags = evDefaultLoadFlags;
                             aCodePage     : Long = CP_DefaultValue): Boolean;
        override;
        {-}
  end;//TeeDocumentCursorPair

// start class TeeDocumentCursorPair

function TeeDocumentCursorPair.DoInsertStream(const aView : InevView;
                                            const aStream : IStream;
                                            aFormat       : TnevFormat;
                                            const anOp    : InevOp = nil;
                                            aFlags        : TevLoadFlags = evDefaultLoadFlags;
                                            aCodePage     : Long = CP_DefaultValue): Boolean;
  //override;
  {-}
var
 l_S : InevBasePoint;
 l_F : InevBasePoint;
begin
 if evIsInReadOnlyPara(ParaX) then
 begin
  Result := false;
  Assert(false);
  Exit;
 end;//OR _IsInReadOnlyPara(ParaX)
 if (_Editor(ParaX) <> nil) then
 // - привязаны к специфическому редактору
 begin
  if evInPara(f_Start, k2_idCommentPara, l_S) then
  begin
   if evInPara(f_Finish, k2_idCommentPara, l_F) then
   begin
    if l_S.Obj.IsSame(l_F.Obj^) then
    begin
     Result := l_S.Obj.Range(l_S, l_F).Text.Modify.InsertStream(aView, aStream, aFormat, anOp, aFlags, aCodePage);
     //Result := GetChildSel(l_S.Position).Text.Modify.InsertStream(aStream, aFormat, anOp, aFlags, aCodePage);
     Exit;
    end;//l_S.Obj.IsSame(l_F.Obj)
   end;//evInPara(f_Finish, k2_idCommentPara, l_F)
  end;//evInPara(f_Start, k2_idCommentPara, l_S)
  Result := f_Finish.Text.Modify.InsertStream(aView, aStream, aFormat, anOp, aFlags, aCodePage);
  Exit;
 end;//_Editor(aView, ParaX) <> nil
 Result := inherited DoInsertStream(aView, aStream, aFormat, anOp, aFlags, aCodePage);
end;
  
// start class TeeTextParaInterfaceFactory

type
  TeeTextParaInterfaceFactory = class(TevTextParaInterfaceFactory)
    public
    // public methods
      function  QueryTool(const aTag: Ik2Tag; const ID: Tl3IID; out I: Tk2ToolPrim): Bool;
        override;
        {-}
  end;//TeeTextParaInterfaceFactory

const
  ev_iidCursor     : Tl3IID = (IID: 0);
    {* - курсор объекта. }
    
function TeeTextParaInterfaceFactory.QueryTool(const aTag: Ik2Tag; const ID: Tl3IID; out I: Tk2ToolPrim): Bool;
  {override;}
  {-}
begin
 Result := true;
 if ID.EQ(ev_iidCursor) then
  I := TeeTextParaCursor.Create(aTag)
 else
  I := TeeTextCursorPair.Create(aTag);
end;

// start class TevDocumentInterfaceFactory

type
  TeeDocumentInterfaceFactory = class(TevDocumentInterfaceFactory)
    public
    // public methods
      function  QueryTool(const aTag: Ik2Tag; const ID: Tl3IID; out I: Tk2ToolPrim): Bool;
        override;
        {-}
  end;//TeeDocumentInterfaceFactory

function TeeDocumentInterfaceFactory.QueryTool(const aTag: Ik2Tag; const ID: Tl3IID; out I: Tk2ToolPrim): Bool;
  {override;}
  {-}
begin
 Result := true;
 if ID.EQ(ev_iidCursor) then
  I := TeeDocumentCursor.Create(aTag)
 else
  I := TeeDocumentCursorPair.Create(aTag);
end;

procedure DefineNewCursor(aTT : Tk2TypeTable);
var
 l_TT : Tk2TypeTable;
begin
 l_TT := aTT;
 //l_TT := k2.TypeTable;
 if (l_TT <> nil) then
 begin
  l_TT[k2_idTextPara].InterfaceFactoryType := TeeTextParaInterfaceFactory;
  with l_TT[k2_idDecorTextPara] do
  begin
   InterfaceFactoryType := TeeTextParaInterfaceFactory;
   Tk2Prop(Prop[k2_tiStyle]).DefaultValue := ev_saTechComment;
  end;//with l_TT[k2_idDecorTextPara]
  l_TT[k2_idDocument].InterfaceFactoryType := TeeDocumentInterfaceFactory;
  with l_TT[k2_idBitmapPara] do
  begin
   Tk2Prop(Prop[k2_tiWidth]).Stored := false;
   Tk2Prop(Prop[k2_tiHeight]).Stored := false;
  end;//with l_TT[k2_idBitmapPara]
 end;//l_TT <> nil
end;

constructor TeeDocumentSchema.Create; //override;
begin
 inherited;
 DefineNewCursor(Self);
end;

initialization
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\gui\Garant\Everest_Engine\eeDocumentSchema.pas initialization enter'); {$EndIf}
 TeeDocumentSchema.SetAsDefault;
(* {$IfDef Nemesis}
 TF1Schema.SetAsDefault;
 {$EndIf Nemesis}
 DefineNewCursor;*)

{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\gui\Garant\Everest_Engine\eeDocumentSchema.pas initialization leave'); {$EndIf}
end.

