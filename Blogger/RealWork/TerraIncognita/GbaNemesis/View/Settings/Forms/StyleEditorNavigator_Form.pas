unit StyleEditorNavigator_Form;

// $Id: StyleEditorNavigator_Form.pas,v 1.5 2011/05/13 11:57:55 lulin Exp $

// $Log: StyleEditorNavigator_Form.pas,v $
// Revision 1.5  2011/05/13 11:57:55  lulin
// - чистка комментариев.
//
// Revision 1.4  2009/11/10 12:29:59  lulin
// - перестаём выливать идентификаторы внутренних операций.
//
// Revision 1.3  2009/10/30 17:11:36  lulin
// - третья волна компании по борьбе со старыми внутренними операциями.
//
// Revision 1.2  2009/10/28 14:10:58  lulin
// - начинаем компанию по борьбе со старыми внутренними операциями.
//
// Revision 1.1  2009/09/23 13:32:43  lulin
// - начинаем перенос модуля Настройки на модель.
//
// Revision 1.51  2009/08/26 08:15:34  lulin
// - декорируем имена операций, чтобы можно было искать.
// - bug fix: не собирались мониторинги.
//
// Revision 1.50  2009/02/20 17:23:00  lulin
// - <K>: 136941122.
//
// Revision 1.49  2009/02/20 10:08:34  lulin
// - чистка комментариев.
//
// Revision 1.48  2008/11/14 07:44:18  oman
// - fix: Альтернативная локализация таблицы стилей (К-121164853)
//
// Revision 1.47  2008/06/20 14:48:39  lulin
// - используем префиксы элементов.
//
// Revision 1.46  2008/05/21 18:30:22  lulin
// - <K>: 90441490.
//
// Revision 1.45  2008/02/05 13:30:00  lulin
// - ключи и классы делаем особым стилем.
//
// Revision 1.44  2007/08/09 12:37:37  mmorozov
// - change: орфографическая ошибка в названии стиля;
//
// Revision 1.43  2007/06/27 15:15:25  lulin
// - избавляемся от лишних зависимостей.
//
// Revision 1.42  2007/04/12 14:51:46  mmorozov
// - new: стили для заголовков основного меню (CQ: OIT5-24627);
//
// Revision 1.41  2007/04/05 10:36:03  lulin
// - cleanup.
//
// Revision 1.40  2007/02/08 13:12:08  lulin
// - используем сравнение с учетом кодировки.
//
// Revision 1.39  2007/01/20 18:36:33  lulin
// - вычищаем ненужное создание параметров.
//
// Revision 1.38  2007/01/20 15:30:28  lulin
// - разделяем параметры операции для выполнения и для тестирования.
//
// Revision 1.37  2006/12/20 13:34:17  lulin
// - удален ненужный модуль.
//
// Revision 1.36  2006/12/05 14:15:57  lulin
// - контрол переехал в визуальную библиотеку.
//
// Revision 1.35  2006/12/05 13:49:58  lulin
// - контрол переехал в визуальную библиотеку.
//
// Revision 1.34  2006/10/05 15:18:07  mmorozov
// - new behaviour: для eeTreeViewExport и его наследников вызываем OnCurrentChanged в случае если NewCurrent = -1 (CQ: OIT500017819);
//
// Revision 1.33  2006/03/31 07:42:23  lulin
// - изменен тип параметров, подаваемый в Execte операции.
//
// Revision 1.32  2006/03/30 14:01:48  lulin
// - операция инициализации разделена на две - с параметрами и без - для того, чтобы в итоге избавится от первой.
//
// Revision 1.31  2005/10/11 09:26:03  lulin
// - интерфейс для нотификации об изменении таблицы стилей переехал в общее место.
//
// Revision 1.30  2005/09/27 09:30:11  lulin
// - bug fix: неправильно показывались найденные слова.
//
// Revision 1.29  2005/05/27 14:46:38  lulin
// - базовый контрол переехал в быблиотеку L3.
//
// Revision 1.28  2005/05/23 14:42:25  lulin
// - bug fix: не компилировалось.
//
// Revision 1.27  2005/03/17 07:47:31  mmorozov
// change: в CIncludeIdArray добавлены новые стили;
//
// Revision 1.26  2005/03/05 11:33:34  am
// change: поменял TeeTreeView на TnscTreeView
//
// Revision 1.25  2005/01/28 11:07:39  lulin
// - bug fix: в таблице стилей и редакторе стилей был потерян стиль "Прижатый влево".
//
// Revision 1.24  2005/01/13 17:02:09  am
// change: вытер nsStyleUtils
//
// Revision 1.23  2005/01/13 16:57:33  am
// change: вытер nsStyleUtils
//
// Revision 1.22  2005/01/11 16:26:15  am
// change: TevStyleInterface -> TnsStyleInterface
//
// Revision 1.21  2004/10/20 12:17:07  mmorozov
// new: прописался модуль vcmComponent;
//
// Revision 1.20  2004/10/15 11:33:08  migel
// - fix: добавили новые стили.
//
// Revision 1.19  2004/09/22 10:28:08  lulin
// - оптимизщация - кешируем результат преобразования Name -> ID при посылке операций.
//
// Revision 1.18  2004/08/19 13:34:46  demon
// - fix: перенесли Image List для StyleEditor в отдельный Data _module.
//
// Revision 1.17  2004/08/04 17:11:50  migel
// - new: добавили стиль `Словарная статья`.
//
// Revision 1.16  2004/07/21 07:42:43  law
// - добавлены стили для колонтитулов.
//
// Revision 1.15  2004/06/01 08:25:40  demon
// - new behavior: изменена иерархия наследования деревьев и часть модулей переехали в VT
//
// Revision 1.14  2004/04/27 07:26:38  law
// - remove prop: IeeNode.Expanded.
// - cleanup: из TeeNode убрано знание про _Tl3Tree.
//
// Revision 1.13  2004/03/31 14:25:02  migel
// - fix: не перегружаем таблицу стилей, если она не изменилась и пользователь "нажал" отмену + мелкий багфикс.
//
// Revision 1.12  2004/03/23 07:53:47  migel
// - fix: варнинг о неопределенности результата функции.
//
// Revision 1.11  2004/03/18 19:54:42  migel
// - fix: не перечитывались параметры шрифта при восстановлении таблицы стилей.
//
// Revision 1.10  2004/03/15 12:23:59  migel
// - fix: доступна кнопка `maximize`.
// - add: логи CVS.
//

interface

uses
 Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
 Dialogs, ImgList, vcmInterfaces, vcmBase, vcmEntityForm, vcmEntities,
 vcmBaseEntities, OvcBase,  vtLister, vtOutliner, l3Types, eeInterfaces,
 nscTreeView,
 eeTreeViewExport, eeTreeView, vtOutlinerWithQuickSearch,
  vtOutlinerWithDragDrop, vcmComponent,
  afwControl, afwInputControl, afwControlPrim, afwBaseControl,
  l3InterfacedComponent,

  PrimStyleEditorNavigator_Form
  ;

type
 TStyleEditorNavigatorForm = class(TvcmEntityFormRef)
  Entities: TvcmEntities;
  //
  f_StyleTreeView: TnscTreeView;
  //
  procedure EntityFormInit;
  //
  function  StyleTreeViewGetItemImage(aSender: TObject; aIndex: Integer; var aImages: TCustomImageList): Integer;
  procedure StyleTreeViewRootChanged(aSender: TObject; const aOldRoot, aNewRoot: IeeNode);
  procedure StyleTreeViewCurrentChanged(aSender: TObject; aNewIndex, aOldIndex: Integer);
 private
  procedure SendToAggregateSetNewContentNotify(aStyleId: Long); override;
  //
  function  GetStyleIdFromNode(const aNode: IeeNode): Long;
  function  GetStyleIdFromTreeByIndex(aIndex: Integer): Long; override;
 end;

implementation

{$R *.DFM}

uses
 l3Base,
 l3Tree_TLB,
 l3Nodes,
 l3InterfacesMisc,
 l3TreeInterfaces,

 afwInterfaces,
 afwFacade,

 evInternalInterfaces,
 evStyleInterface,

 eeNode,

 StdRes,
 StyleTableRes,
 nsStyleEditor,

 Settings_Strange_Controls
 ;

procedure TStyleEditorNavigatorForm.EntityFormInit;
begin
 f_StyleTreeView.Images := nsStyleTableRes.StyleTreeImageList;
 op_StyleEditor_ReloadStylesTree.Call(Self.As_IvcmEntityForm, nil);
end;

function TStyleEditorNavigatorForm.StyleTreeViewGetItemImage(aSender: TObject; aIndex: Integer; var aImages: TCustomImageList): Integer;
begin
 with TevStyleInterface.Make do
  try
   SelectStyle(GetStyleIdFromTreeByIndex(aIndex));
   if Apply2Para then
    Result := CParagraphImageIndex
   else
    Result := CSelectionImageIndex;
  finally
   Free;
  end;
end;

procedure TStyleEditorNavigatorForm.StyleTreeViewRootChanged(aSender: TObject; const aOldRoot, aNewRoot: IeeNode);
begin
 if (aNewRoot <> nil) then
  with aNewRoot do
   if HasChild then
    SendToAggregateSetNewContentNotify(GetStyleIdFromNode(ChildNode));
end;

procedure TStyleEditorNavigatorForm.StyleTreeViewCurrentChanged(aSender: TObject; aNewIndex, aOldIndex: Integer);
begin
 if aNewIndex <> -1 then
  SendToAggregateSetNewContentNotify(GetStyleIdFromTreeByIndex(aNewIndex));
end;

procedure TStyleEditorNavigatorForm.SendToAggregateSetNewContentNotify(aStyleId: Long);
begin
 op_StyleEditor_SetNewContent.Call(Aggregate, aStyleId);
end;

function TStyleEditorNavigatorForm.GetStyleIdFromNode(const aNode: IeeNode): Long;
begin
 Result := -1;
 if (aNode <> nil) then
  with aNode as Il3HandleNode do
   Result := Long(Handle)
 else
  Abort;
end;

function TStyleEditorNavigatorForm.GetStyleIdFromTreeByIndex(aIndex: Integer): Long;
begin
 with f_StyleTreeView.TreeView do
  Result := GetStyleIdFromNode(GetNode(aIndex));
end;

end.
