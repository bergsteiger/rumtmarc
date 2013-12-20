unit SelectedAttributes_Form;

// $Id: SelectedAttributes_Form.pas,v 1.7 2011/11/16 17:35:53 lulin Exp $

// $Log: SelectedAttributes_Form.pas,v $
// Revision 1.7  2011/11/16 17:35:53  lulin
// {RequestLink:232098711}
//
// Revision 1.6  2011/05/13 11:57:33  lulin
// - чистка комментариев.
//
// Revision 1.5  2010/11/01 17:20:13  lulin
// {RequestLink:237994238}.
// - передаём ссылку на "модель".
// - делаем, чтобы собирались другие проекты.
//
// Revision 1.4  2010/11/01 13:20:48  lulin
// {RequestLink:237994238}.
//
// Revision 1.3  2010/09/08 16:28:38  lulin
// {RequestLink:197496539}.
//
// Revision 1.2  2010/09/08 15:57:43  lulin
// {RequestLink:197496539}.
//
// Revision 1.127  2009/12/07 19:09:44  lulin
// - удалил ненужный модуль.
//
// Revision 1.126  2009/12/02 17:21:43  lulin
// {RequestLink:172984885}.
//
// Revision 1.125  2009/11/18 13:06:09  lulin
// - используем базовые параметры операции.
//
// Revision 1.124  2009/11/12 14:32:37  lulin
// - убираем возможность менять список параметров.
//
// Revision 1.123  2009/11/10 12:29:23  lulin
// - перестаём выливать идентификаторы внутренних операций.
//
// Revision 1.122  2009/11/06 13:06:29  lulin
// - избавился от ручной передачи параметров через поле Data.
//
// Revision 1.121  2009/11/05 18:26:44  lulin
// - избавился от переменных списков параметров.
//
// Revision 1.120  2009/10/26 14:11:55  oman
// - fix: {RequestLink:124944765}
//
// Revision 1.119  2009/08/26 08:15:25  lulin
// - декорируем имена операций, чтобы можно было искать.
// - bug fix: не собирались мониторинги.
//
// Revision 1.118  2009/02/10 19:04:03  lulin
// - <K>: 133891247. Вычищаем морально устаревший модуль.
//
// Revision 1.117  2009/02/09 19:17:30  lulin
// - <K>: 133891247. Выделяем интерфейсы поиска.
//
// Revision 1.116  2009/01/30 13:51:36  lulin
// - чистка кода.
//
// Revision 1.115  2009/01/27 12:41:08  lulin
// - <K>: 136251752.
//
// Revision 1.114  2009/01/27 08:31:37  lulin
// - <K>: 135607658.
//
// Revision 1.113  2008/12/25 12:20:18  lulin
// - <K>: 121153186.
//
// Revision 1.112  2008/12/24 19:49:52  lulin
// - <K>: 121153186.
//
// Revision 1.111  2008/11/19 14:41:13  lulin
// - <K>: 124453996.
//
// Revision 1.110  2008/10/30 15:09:22  lulin
// - <K>: 121159648.
//
// Revision 1.109  2008/10/24 14:56:39  lulin
// - чистка кода.
//
// Revision 1.108  2008/01/10 07:23:08  oman
// Переход на новый адаптер
//
// Revision 1.107  2007/12/25 23:54:33  lulin
// - модуль l3Tree_TLB полностью перенесен на модель.
//
// Revision 1.105.4.2  2007/12/21 09:45:43  mmorozov
// - MERGE WITH HEAD;
//
// Revision 1.105.4.1  2007/11/22 13:20:25  oman
// Перепиливаем на новый адаптер
//
// Revision 1.106  2007/12/21 07:12:12  mmorozov
// - new: подписка на уведомление об обновлении данных (CQ: OIT5-27823);
//
// Revision 1.105  2007/03/29 13:18:57  oman
// Вычитываем таки параметры контекстного фильтра для атрибутов
//
// Revision 1.104  2007/03/27 11:59:11  oman
// Избавляемся от нетипизированных параметров операции
// Переводим тэг атрибутов на константную строку
//
// Revision 1.103  2007/02/02 12:25:44  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.102  2007/02/02 08:39:24  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.101  2007/01/17 14:03:08  lulin
// - вычищены последние нефиксированные параметры в тестах операций.
//
// Revision 1.100  2007/01/12 13:55:53  oman
// - fix: Убил операции "Свернуть" и "Развернуть" для деревьев (cq24116)
//
// Revision 1.99  2006/12/20 13:34:22  lulin
// - удален ненужный модуль.
//
// Revision 1.98  2006/12/05 14:16:03  lulin
// - контрол переехал в визуальную библиотеку.
//
// Revision 1.97  2006/12/05 13:50:03  lulin
// - контрол переехал в визуальную библиотеку.
//
// Revision 1.96  2006/11/03 09:46:21  oman
// Merge with B_NEMESIS_6_4_0
//
// Revision 1.95.2.2  2006/10/13 06:24:51  lulin
// - cleanup.
//
// Revision 1.95.2.1  2006/10/12 12:11:36  lulin
// - выкидываем ненужный код.
//
// Revision 1.95  2006/10/05 15:18:05  mmorozov
// - new behaviour: для eeTreeViewExport и его наследников вызываем OnCurrentChanged в случае если NewCurrent = -1 (CQ: OIT500017819);
//
// Revision 1.94  2006/09/27 13:42:15  mmorozov
// В рамках работы над CQ: OIT500022679.
//
// - remove: TTagSearch, TTagSearchList, TAvailableTags. В списки были не работоспособны, в единственном месте где списки использовались, можно было обойтись _IAttributeInfo;
// - remove: неиспользуемые операции в enSelectedAttributesForm (enSelectedList: opAdd, opDelete, opChangeOperation);
// - new: TnsTaggedTreeInfo наделен логикой;
//
// Revision 1.93  2006/09/13 09:46:21  oman
// - new beh: Поддержка свернуть/развернуть для новых деревьях -
//  убираение устаревших операций/интерфейсов(InsExpandedState)
//  /классов (cq22540)
//
// Revision 1.92  2006/06/01 11:05:43  mmorozov
// - hint fix;
//
// Revision 1.91  2006/04/13 15:02:02  oman
// hint fix
//
// Revision 1.90  2006/03/31 07:42:33  lulin
// - изменен тип параметров, подаваемый в Execte операции.
//
// Revision 1.89  2006/03/30 15:31:43  lulin
// - изменен тип параметров в _OnTest.
//
// Revision 1.88  2006/03/30 14:01:57  lulin
// - операция инициализации разделена на две - с параметрами и без - для того, чтобы в итоге избавится от первой.
//
// Revision 1.87  2006/03/22 07:29:36  oman
// - new beh: переход с _OnTest на OnGetState для операций
//
// Revision 1.86  2006/02/10 14:51:18  mmorozov
// - change: vcm_opVisible -> vcm_opEnabled;
//
// Revision 1.85  2005/11/30 12:20:57  oman
// - fix: при хождении по истории ChangeDataSource сбрасывал фильтры
//
// Revision 1.84  2005/11/21 16:53:17  lulin
// - cleanup.
//
// Revision 1.83  2005/11/11 19:45:31  mmorozov
// new: реализовано поведение с установкой NoCurrent при переходе в словарь, в котором нет текущего толкования;
//
// Revision 1.82  2005/11/04 10:49:32  mmorozov
// bugfix: при открытии запроса в ППС 6.х не показывались выбранные атрибуты;
//
// Revision 1.81  2005/07/22 08:43:40  mmorozov
// - переезд на новый запрос;
//
// Revision 1.80  2005/06/30 07:48:26  cyberz
// READY FOR TIE-TEMPLATE GENERATION
//
// Revision 1.79  2005/05/27 14:46:45  lulin
// - базовый контрол переехал в быблиотеку L3.
//
// Revision 1.78  2005/03/05 11:34:29  am
// change: поменял TeeTreeView на TnscTreeView
//
// Revision 1.77  2004/12/23 11:15:19  lulin
// - rename prop: TvtCustomOutliner.TreeSource -> TreeStruct.
//
// Revision 1.76  2004/12/22 10:37:09  mmorozov
// - hint fix;
//
// Revision 1.75  2004/11/18 17:32:10  lulin
// - new interface: IvcmParamsPrim.
//
// Revision 1.74  2004/09/19 11:22:13  am
// change: при изменении шрифта сохраняем его цвет
//
// Revision 1.73  2004/09/19 09:56:04  am
// change: восстановил старую логику показа выбранных реквизитов
//
// Revision 1.71  2004/08/19 12:28:57  demon
// - cleanup: удалены неиспользуемые иконки выбора словарных атрибутов
//
// Revision 1.70  2004/08/05 13:49:19  demon
// - cleanup: remove warnings and hints
//
// Revision 1.69  2004/07/23 10:16:06  mmorozov
// change: IndexOfTagName to FindTag;
//
// Revision 1.68  2004/07/22 09:28:04  mmorozov
// - использование DefDataAdapter.AttributeSearchList;
//
// Revision 1.67  2004/07/07 07:50:16  am
// change: Cleanup
//
// Revision 1.66  2004/07/01 15:56:44  demon
// - new behavior: изменен формат вызова операции ResetData(const aTreeSource : Il3SimpleTree)
//
// Revision 1.65  2004/06/22 17:33:14  demon
// - new behavior: DeleteNodes заменили на ReleaseChilds
//
// Revision 1.64  2004/06/22 11:22:05  am
// new: DeleteNodes
//
// Revision 1.63  2004/06/21 15:24:49  am
// change: перевод на TeeTreeView
//
// Revision 1.62  2004/06/21 06:41:17  am
// *** empty log message ***
//
// Revision 1.61  2004/06/17 11:31:34  am
// change: следующая итерация
//
// Revision 1.60  2004/06/17 10:04:55  am
// change: следующая итерация
//
// Revision 1.59  2004/06/16 10:36:00  am
// change: перевод на новые деревья (формы разломаны по части функционала)
//
// Revision 1.58  2004/06/01 08:25:55  demon
// - new behavior: изменена иерархия наследования деревьев и часть модулей переехали в VT
//
// Revision 1.57  2004/05/26 16:59:53  law
// - new behavior: TvtCustomOutliner теперь знает только про интерфейсы Il3SimpleTree и Il3Tree, а не про объект _Tl3Tree.
//
// Revision 1.56  2004/04/08 18:32:35  law
// - refactoring: используем CurrentNode.
//
// Revision 1.55  2004/04/06 09:43:06  nikitin75
// - переходим на IStringOld;
//
// Revision 1.54  2004/04/05 13:54:13  nikitin75
// - переходим на IStringOld;
//
// Revision 1.53  2004/03/26 17:06:21  nikitin75
// вделяем текущий словарный атрибут по mrOk, если ничего не выделено;
//
// Revision 1.52  2004/03/09 09:56:46  demon
// - optimization: оптимизация способа изменения флагов у нод в дереве
//
// Revision 1.51  2004/03/09 09:07:50  mmorozov
// - константы из модуля nsTypes перенесены в модуль nsConst;
//
// Revision 1.50  2004/03/04 16:37:42  law
// - rename unit: VLister -> vtLister.
//
// Revision 1.49  2004/03/04 15:39:55  law
// - rename unit: VOtliner -> vtOutliner.
//
// Revision 1.48  2004/03/03 18:05:13  law
// - rename unit: l3Tree2 -> l3Tree.
//
// Revision 1.47  2004/03/03 08:54:33  demon
// - new behavior: обработано исключение при получении Query (FillQuery)
//
// Revision 1.46  2004/02/27 14:12:45  demon
// - new: используем ResetData(aTreeSource : _Tl3Tree);
//
// Revision 1.45  2004/02/27 12:15:07  demon
// - new: обработка операции op_System_UpdateComplete
//
// Revision 1.44  2004/02/27 11:36:29  demon
// - new behavior: дерево выбранных реквизитов теперь - TnsSelectedAttributesTree (с поддержкой Reset)
//
// Revision 1.43  2003/12/26 16:02:35  demon
// - new behavior: BreafSelectionAttributesTag теперь содержит только KW и то временно. Типы доступных операций читаются из DataAdapter.TagSearchList
//
// Revision 1.42  2003/12/24 16:48:22  demon
// - new behavior: CurentChanged теперь имеет два параметра
//
// Revision 1.41  2003/12/23 12:43:19  law
// - добавлены автоматические изменения, внесенный средой Delphi.
//
// Revision 1.40  2003/12/11 16:12:13  law
// - изменения, которые автоматически внесли Delphi.
//
// Revision 1.39  2003/11/30 13:33:25  law
// - cleanup: убраны ненужные пустые параметры.
//
// Revision 1.38  2003/11/20 20:40:02  law
// - new behavior: корректно генерируем список идентификаторов операций.
// - new behavior: вызов операций сущностей возможен теперь только по идентификатору.
// - cleanup: пытаемся в Design-Time отвязаться от GblAdapter (не получилось).
//
// Revision 1.37  2003/11/19 11:39:26  law
// - new behavior: регистрируем все сущности и операции в MenuManager'е для дальнейшей централизации редактирования. Само редактирование пока не доделано.
//
// Revision 1.36  2003/11/04 17:26:39  demon
// - fix: изменено название RootNode на "Выбранные реквизиты"
//
// Revision 1.35  2003/10/10 11:25:57  demon
// - syntax fix
//
// Revision 1.34  2003/10/08 15:46:00  demon
// - code optimization
//
// Revision 1.33  2003/10/08 15:39:51  demon
// - bug fix: операция FillQuery не правильно работала для списков выбранных значений с полным путем.
//
// Revision 1.32  2003/10/07 14:37:10  demon
// - new behavior: using new Attribute tag constants
//
// Revision 1.31  2003/10/07 13:52:06  demon
// - new behavior: изменена операция enSelectedElement.opDelete для работы с выделенными элементами с учетом иерархии
//
// Revision 1.30  2003/10/07 12:51:18  demon
// - new behavior: Выделенные элементы словаря ключевых слов показываются в виде иерархии.
//
// Revision 1.29  2003/10/06 08:48:57  demon
// - remove some syntax warnings
//
// Revision 1.28  2003/09/18 18:30:17  law
// - bug fix: при отдании TeeTreeView как IeeTreeView отцепляем его "теневой" объект (AV - с открытием в извлечениях).
//
// Revision 1.27  2003/09/09 08:51:39  cyberz
// fix, chg, add new icons (выбор словарных аттрибутов, вызов поиска из тулбара)
//
// Revision 1.26  2003/08/22 10:00:38  demon
// - fix: Изменены типы логических операций в адаптере.
//
// Revision 1.25  2003/08/20 13:00:00  demon
// - fix: при очистке списка значений добавлена проверка, что эти значения были.
//
// Revision 1.24  2003/08/20 11:24:16  demon
// - new behavior: изменено наследование интерфейсов для дополнительной информации о дереве.
//
// Revision 1.23  2003/08/20 08:29:56  demon
// - new: Сохранения параметорв дерева в RootNode и автоматически в истории
//
// Revision 1.22  2003/08/18 11:17:08  demon
// - new: операция сохранения выбранных значений в массив нод.
//
// Revision 1.21  2003/08/14 17:52:26  demon
// - new behavior: модифицирована часть операций для парвильного выполнения Save/Load
//
// Revision 1.20  2003/08/08 13:17:33  demon
// - new: Изменен принцип сохранения словарного атрибута в Query
//
// Revision 1.19  2003/07/31 16:41:31  demon
// - fix: При работе с Active элементом вместо Index использовался Current.
//
// Revision 1.18  2003/07/30 14:38:16  demon
// - bug fix
//
// Revision 1.17  2003/07/30 09:33:39  demon
// - fix: несколько изменена логика загрузки выбранных значений в запрос.
//
// Revision 1.16  2003/07/29 14:38:01  demon
// - new: По double-click на элементе тоже происходит позиционирование в основном дереве.
//
// Revision 1.15  2003/07/29 09:55:54  demon
// - new: добавлена операция заполнения Query, выбранными значениями.
//
// Revision 1.14  2003/07/28 16:13:47  demon
// - fix: добавлена проверка на nil
//
// Revision 1.13  2003/07/28 11:09:35  demon
// - add: добавлена поддержка операции Clear (Очистить все)
//
// Revision 1.12  2003/07/25 17:50:02  demon
// - new: Операция FindElement перенесена в nsTree
//
// Revision 1.11  2003/07/24 16:35:00  demon
// - new: сделано отображение полного пути в списке выделенных элементов.
//
// Revision 1.10  2003/07/24 15:47:42  demon
// - new: Сделаны стандартные операции свернуть/развернуть...
//
// Revision 1.9  2003/07/24 14:23:49  demon
// - new: Сделана синхронизация дерева и списка выделенных при позиционировании в списке выделенных.
//
// Revision 1.8  2003/07/24 13:42:27  demon
// - new: добавлена возможность удаления элементов из списка выбранных значений.
//
// Revision 1.7  2003/07/23 18:58:06  demon
// - fix: получение икон из списка переведено на константы.
//
// Revision 1.6  2003/07/23 14:04:03  demon
// - new: работа с выделенными элементами теперь ведется не для Selected. Дерево стало не Picked.
//
// Revision 1.5  2003/07/23 11:25:33  demon
// - fix: Отлажена работоспособность выделения элементов в дереве атрибутов и показа выделенных (есть проблемы с Drag Select).
//
// Revision 1.4  2003/07/22 17:44:39  demon
// - new: сделано распределение выделенных атрибутов по папкам (логическим операциям).
//
// Revision 1.3  2003/07/22 13:21:10  demon
// - new: в дерево подложены иконки
//
// Revision 1.2  2003/07/22 11:56:26  demon
// - add: добавлены операци добавления и удаления выделенных элементов.
//
// Revision 1.1  2003/07/21 16:35:09  demon
// - new: TenSelectedAttributes - форма отображения выбранных значений поисковых атрибутов.
//

interface

uses
  Windows,
  Messages,
  SysUtils,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,

  OvcBase,

  l3TreeInterfaces,
  l3Tree,
  l3Tree_TLB,
  afwControl,

  vtLister,
  vtOutliner,
  vtOutlinerWithQuickSearch,
  vtOutlinerWithDragDrop, 

  vcmInterfaces,
  vcmBase,
  vcmEntityForm,
  vcmEntities,
  vcmBaseEntities,
  vcmComponent,

  eeInterfaces,
  eeTreeView,
  eeTreeViewExport,
  nscTreeView,
  

  DynamicTreeUnit,

  ImgList,
  nsTypes,
  nsConst, afwInputControl,

  afwControlPrim, afwBaseControl,

  bsInterfaces, l3InterfacedComponent,

  SearchDomainInterfaces,

  vcmExternalInterfaces,

  PrimSelectedAttributes_Form,
  PrimSelectedAttributesOptions_Form
  ;

type
  TenSelectedAttributes = class(TvcmEntityFormRef)
    Entities : TvcmEntities;
    SelectedTree: TnscTreeView;

    procedure vcmEntityFormInit;

    function  SelectedTreeGetItemImage(Sender: TObject; Index: Integer;
                                       var aImages: TCustomImageList): Integer;
    procedure SelectedTreeCurrentChanged(Sender: TObject;NewCurrent, OldCurrent: Integer);
    procedure SelectedTreeActionElement(Sender: TObject; Index: Integer);
    procedure SelectedTreeMakeTreeSource(out theTree: Il3SimpleTree);
    procedure vcmEntityFormChangedDataSource(aSender: TObject; const aOld,
      aNew: IvcmFormDataSource; const aFromHistory: Boolean);
    procedure enTreeopExpandAllTest(const aParams: IvcmTestParamsPrim);
    procedure enTreeopCollapseAllTest(const aParams: IvcmTestParamsPrim);

   private
    { Private declarations }

    procedure SyncCurrent(aIndex: integer);

    function pm_GetTaggedTreeInfo: InsTaggedTreeInfo;

    function GetTreeNode(const aNode: INodeBase): Il3SimpleNode; override;
    function GetTreeNode(const aNode: Il3SimpleNode): Il3SimpleNode; override;

    procedure AddChain(const aNode: INodeBase;
                       const aNodePath: TvcmInterfaceList);

    procedure DeleteElement(const aNode : Il3Node; WithChildren : Boolean = False); override;

    procedure AddNodes(aOp: TLogicOperation;
                       const aIterator: INodeIterator); override;
    function GetTaggedTreeInfo: InsTaggedTreeInfo; override;                   

    property TaggedTreeInfo: InsTaggedTreeInfo read pm_GetTaggedTreeInfo;
   public
   { Public declarations }
  end;

implementation

{$R *.DFM}

uses
  l3Chars,
  l3Base,
  l3Nodes,
  l3InterfacesMisc,
  l3Interfaces,
  l3String,

  eeTreeMisc,

  DataAdapter,

  nsNodes,
  nsTreeUtils,
  {$IfNDef Admin}
  nsSearchClasses,
  {$EndIf  Admin}
  nsSelectedTreeStruct,
  nsTreeAttributeNodesNew,
  SearchRes,

  StdRes,

  SearchInterfaces,
  SearchLite_Strange_Controls
  ;

procedure TenSelectedAttributes.vcmEntityFormInit;
begin
 SelectedTree.Images := nsSearchRes.SearchItemsImageList;
 f_InternalOp := false;
end;

procedure TenSelectedAttributes.DeleteElement(const aNode : Il3Node;
                                              WithChildren : Boolean);
var
 l_Parent : Il3SimpleNode;
begin
 if (aNode <> nil) and
    (WithChildren or
    not aNode.HasChild) then
 begin
  l_Parent := aNode.Parent;
  try
   aNode.Remove;
   DeleteElement(l_Parent as Il3Node);
  finally
   l_Parent := nil;
  end;
 end;
end;

function TenSelectedAttributes.SelectedTreeGetItemImage(Sender: TObject;
                                                        Index: Integer;
                                                        var aImages: TCustomImageList): Integer;
var
 l_l3Node : Il3SimpleNode;
 l_Node   : INodeBase;
 l_Op     : InsLogicOperation;
begin
 l_l3Node := SelectedTree.GetNode(Index);
 if l_l3Node.Parent = nil then
  Result := siilSelectedRoot
 else
 begin
  if Supports(l_l3Node, INodeBase, l_Node) then
  begin;
   if l_Node.HasChildren then
    Result := siilFolderStart
   else
    Result := siilSelectedElement;
  end
  else
   if Supports(l_l3Node, InsLogicOperation, l_Op) then
    Result := siilFolderStart + Integer(l_Op.Operation)
   else
    Result := siilSelectedElement;
 end;
end;

procedure TenSelectedAttributes.SelectedTreeCurrentChanged(Sender: TObject;
                                                           NewCurrent, OldCurrent: Integer);
begin
 if NewCurrent <> -1 then
  SyncCurrent(NewCurrent);
end;

procedure TenSelectedAttributes.AddChain(const aNode: INodeBase;
                                         const aNodePath: TvcmInterfaceList);
var
 l_Parent: INodeBase;
 l_Node: INodeBase;
 l_Root,
 l_TempNode: Il3Node;
 l_Searching: Boolean;
 l_Index: Integer;
 l_CurNode: INodeBase;

 function FindNode(const anIntf: Il3Node) : Boolean;
 var
  l_LevelNode: INodeBase;
 begin
  Result := Supports(anIntf, INodeBase, l_LevelNode) and l_CurNode.IsSameNode(l_LevelNode);
 end;

begin
 aNodePath.Clear;

 l_Node := aNode;
 while True do
 begin
  l_Node.GetParent(l_Parent);
  if l_Parent = nil then
   break;
  aNodePath.Insert(0, l_Node);
  l_Node := l_Parent;
 end;

 l_Searching := True;
 l_Root := SelectedTree.CTree.CRootNode;
 for l_Index := 0 to aNodePath.Count - 1 do
 begin
  l_CurNode := aNodePath[l_Index] as INodeBase;
  if l_Searching then
  begin
   l_TempNode := l_Root.IterateF(l3L2NA(@FindNode), imOneLevel or imCheckResult);
   if l_TempNode <> nil then
   begin
    l_Root := l_TempNode;
    continue;
   end
   else
    l_Searching := False;
  end;

  l_TempNode := TnsSelectedNode.Make(l_CurNode, False);
  l_Root.InsertChild(l_TempNode);
  SelectedTree.ExpandNode(l_Root, True);
  l_Root := l_TempNode;
 end;
end;

procedure TenSelectedAttributes.AddNodes(aOp: TLogicOperation;
                                         const aIterator: INodeIterator);
var
 l_LogicNode,
 l_CacheNode : Il3Node;
 l_NodeBase  : INodeBase;
 l_NodePath  : TvcmInterfaceList;
 l_Brief     : Boolean;
begin
 if (dsSelectedAttributes <> nil) then
  l_Brief := not dsSelectedAttributes.IsOneOperation
 else
 if Assigned(TaggedTreeInfo) then
  l_Brief := not TaggedTreeInfo.IsOneLogicOperation
 else
  l_Brief := true;

 l_NodePath := TvcmInterfaceList.Create;
 try
  while True do
  begin
   aIterator.GetNext(l_NodeBase);
   if l_NodeBase = nil then
    break;

   if l_Brief then
   begin
    l_CacheNode := TnsSelectedNode.Make(l_NodeBase, True);
    try
     if l_LogicNode = nil then
      l_LogicNode := TnsLogicNode.Make(aOp);
     l_LogicNode.InsertChild(l_CacheNode);
    finally
     l_CacheNode := nil;
    end;
   end
   else
    AddChain(l_NodeBase, l_NodePath);
  end;

  if (l_LogicNode <> nil) and
     l_Brief then
   SelectedTree.ExpandNode(SelectedTree.CTree.CRootNode.InsertChild(l_LogicNode), true);
 finally
  vcmFree(l_NodePath);
 end;
end;

function TenSelectedAttributes.GetTaggedTreeInfo: InsTaggedTreeInfo;
begin
 Result := TaggedTreeInfo;
end;

function TenSelectedAttributes.pm_GetTaggedTreeInfo: InsTaggedTreeInfo;
begin
 Supports(SelectedTree.TreeStruct, InsTaggedTreeInfo, Result);
end;

function TenSelectedAttributes.GetTreeNode(
  const aNode: INodeBase): Il3SimpleNode;

  function FindNode(const anNode: Il3SimpleNode): boolean;
  Var
   l_Node: INodeBase;
  begin
   Result := false;
   if Supports(anNode, INodeBase, l_Node) then
   try
    if l_Node.IsSameNode(aNode) then
     Result := true;
   finally
    l_Node := nil;
   end;
  end;

begin
 Result := SelectedTree.IterateF(l3L2NA(@FindNode), imCheckResult);
end;

function TenSelectedAttributes.GetTreeNode(const aNode: Il3SimpleNode): Il3SimpleNode;

  function FindNode(const anNode: Il3SimpleNode): boolean;
  begin
   if aNode.IsSame(anNode) then
    Result := true
   else
    Result := false;   
  end;

begin
 Result := SelectedTree.IterateF(l3L2NA(@FindNode), imCheckResult);
end;

procedure TenSelectedAttributes.SelectedTreeActionElement(Sender: TObject;
  Index: Integer);
begin
 SyncCurrent(Index);
end;

procedure TenSelectedAttributes.SyncCurrent(aIndex: integer);
Var
 l_l3Node : Il3SimpleNode;
 l_Node   : INodeBase;
begin
 if (aIndex >= 0) and not f_InternalOp then
 begin
  l_l3Node := SelectedTree.GetNode(aIndex);
  if (Aggregate <> nil) and Supports(l_l3Node, INodeBase, l_Node) then
   op_AttributeTree_SetCurrent.Call(Aggregate, l_l3Node);
 end;
end;

procedure TenSelectedAttributes.SelectedTreeMakeTreeSource(out theTree: Il3SimpleTree);
begin
 theTree := TnsSelectedTreeStruct.Make(nil, SelectedTree.ShowRoot);
end;

procedure TenSelectedAttributes.vcmEntityFormChangedDataSource(
  aSender: TObject; const aOld, aNew: IvcmFormDataSource;
  const aFromHistory: Boolean);
var
 l_V : InsSelectedAttributesIterators;
begin
 // Борьба с фильтром vs. история vs. _datasource
 if aFromHistory then exit;
 if (dsSelectedAttributes <> nil) then
 begin
  if Assigned(dsSelectedAttributes.RefreshValues) then
  begin
   l_V := dsSelectedAttributes.RefreshValues;
   try
    SelectedTree.TreeStruct := TnsSelectedTreeStruct.Make(dsSelectedAttributes.Search.Tag,
     SelectedTree.ShowRoot);
    // Обновим выбранные атрибуты
    SelectedList_RefreshValues_Execute(l_V);
   finally
    l_V := nil;
   end;//try..finally
  end;//if Assigned(l_DS.Data) then
 end;//dsSelectedAttributes <> nil
end;//vcmEntityFormChangedDataSource

procedure TenSelectedAttributes.enTreeopExpandAllTest(
  const aParams: IvcmTestParamsPrim);
begin
 aParams.Op.Flag[vcm_ofEnabled] := SelectedTree.TreeStruct.RootNode.HasChild;
end;

procedure TenSelectedAttributes.enTreeopCollapseAllTest(
  const aParams: IvcmTestParamsPrim);
begin
 aParams.Op.Flag[vcm_ofEnabled] := SelectedTree.TreeStruct.RootNode.HasChild;
end;

end.
