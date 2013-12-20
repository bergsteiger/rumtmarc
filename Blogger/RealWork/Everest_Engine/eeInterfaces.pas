unit eeInterfaces;
{* Интерфейсы для внешнего использования библиотеки Эверест. }

{$WEAKPACKAGEUNIT ON}

{ Библиотека "Эверест"    }
{ Автор: Люлин А.В. ©     }
{ Модуль: eeInterfaces -  }
{ Начат: 25.09.2002 20:13 }
{ $Id: eeInterfaces.pas,v 1.10 2012/06/15 12:25:56 kostitsin Exp $ }

// $Log: eeInterfaces.pas,v $
// Revision 1.10  2012/06/15 12:25:56  kostitsin
// [$371631792]
//
// Revision 1.9  2012/04/26 11:38:26  lulin
// {RequestLink:361400131}
//
// Revision 1.8  2012/04/25 15:41:46  lulin
// {RequestLink:357338233}
//
// Revision 1.7  2012/03/19 13:37:39  lulin
// {RequestLink:342860007}
//
// Revision 1.6  2011/07/15 17:30:44  lulin
// {RequestLink:269058433}.
//
// Revision 1.5  2011/01/14 15:53:24  lulin
// {RequestLink:248195582}.
// - вычищаем устаревшие интерфейсы.
//
// Revision 1.4  2011/01/14 15:28:57  lulin
// {RequestLink:248195582}.
// - синхронизируем добавление закладки.
//
// Revision 1.3  2010/12/16 19:06:07  lulin
// {RequestLink:244194233}.
//
// Revision 1.2  2010/07/07 05:16:13  lulin
// {RequestLink:125405732}.
//
// Revision 1.1  2010/04/21 16:52:40  lulin
// {RequestLink:144575972}.
// - переходим к абсолютным путям для включаемых файлов.
//
// Revision 1.9  2009/09/14 11:28:08  lulin
// - выводим пути и для незавершённых модулей.
//
// Revision 1.174  2009/08/19 18:07:11  lulin
// {RequestLink:158795592}. Вставленный фрагмент из документа гаранта (вложенный k2_idDocument) сделать read-only, чтобы его можно было удалить только целиком.
//
// Revision 1.173  2009/07/31 09:42:18  oman
// - new: {RequestLink:158795599}
//
// Revision 1.172  2009/07/23 16:45:59  lulin
// - чистим код.
//
// Revision 1.171  2009/04/03 17:34:58  lulin
// [$140837386]. Переносим базовую примесь для работы с базовыми параграфами на модель.
//
// Revision 1.170  2009/03/25 15:57:37  lulin
// [$136937722]. Делаем возможность искать версионные комментарии.
//
// Revision 1.169  2009/03/03 17:42:02  lulin
// - <K>: 137470629. Убран ненужный промежуточный модуль.
//
// Revision 1.168  2008/10/09 13:37:37  lulin
// - <K>: 121145547.
//
// Revision 1.167  2008/06/07 16:13:55  lulin
// - нарисовал константы на модели.
//
// Revision 1.166  2008/04/16 16:58:06  lulin
// - cleanup в рамках <K>: 89099095.
//
// Revision 1.165  2008/04/14 06:13:13  oman
// - new: Поддержка нового типа ниперссылок - CI_PHARM_MULTI
//
// Revision 1.164  2008/04/07 06:18:39  lulin
// - cleanup.
//
// Revision 1.163  2007/12/26 14:10:29  lulin
// - модуль l3Interfaces полностью переведен на модель.
//
// Revision 1.162  2007/12/04 12:47:33  lulin
// - перекладываем ветку в HEAD.
//
// Revision 1.161.8.15  2007/09/28 18:07:02  lulin
// - прикрутил использование места, где должна показываться метка.
//
// Revision 1.161.8.14  2007/09/07 12:27:36  lulin
// - cleanup.
//
// Revision 1.161.8.13  2007/08/02 19:15:33  lulin
// - cleanup.
//
// Revision 1.161.8.12  2007/07/11 09:04:24  oman
// - new: Для гиперссылки обеспечил доступ к k2_tiName (cq24711)
//
// Revision 1.161.8.11  2007/02/16 17:54:08  lulin
// - избавляемся от стандартного строкового типа.
//
// Revision 1.161.8.10  2007/02/09 14:51:14  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.161.8.9  2006/07/20 18:19:25  lulin
// - убран лишний параметр.
//
// Revision 1.161.8.8  2006/07/20 17:35:59  lulin
// - убраны параметры по умолчанию.
// - имя метода убрано из комментариев.
// - bug fix: в КЗ - рисовался "палец", теперь он правда рисуется в другом месте.
//
// Revision 1.161.8.7  2006/03/30 11:49:24  lulin
// - cleanup: вытираем код для редактирования комментариев не в виде дерева.
//
// Revision 1.161.8.6  2005/12/14 11:28:11  lulin
// - cleanup.
//
// Revision 1.161.8.5  2005/12/14 11:17:30  lulin
// - cleanup.
//
// Revision 1.161.8.4  2005/12/14 11:08:04  lulin
// - cleanup.
//
// Revision 1.161.8.3  2005/11/21 16:54:17  lulin
// - cleanup.
//
// Revision 1.161.8.2  2005/11/15 10:00:25  lulin
// - убран избыточный интерфейс.
//
// Revision 1.161.8.1  2005/11/14 13:53:08  lulin
// - bug fix: при выделении не вставлялись комментарии (CQ OIT5-18019).
//
// Revision 1.161  2005/03/01 10:47:06  lulin
// - при "обычной" сборке IeeBase теперь наследуется от Il3Base.
//
// Revision 1.160  2005/03/01 10:34:48  lulin
// - добавлена директива WEAKPACKAGEUNIT.
//
// Revision 1.159  2005/03/01 10:29:01  lulin
// - new interface: IeeBase.
//
// Revision 1.158  2005/03/01 10:09:52  lulin
// - new prop: IeeHyperlink.FromDocument.
// - new prop: IeeDocument.ExternalHandle.
//
// Revision 1.157  2005/01/27 08:42:07  lulin
// - new behavior: не показываем операции с коментариями в контекстном меню, если они недоступны пользователю.
//
// Revision 1.156  2005/01/20 14:01:04  demon
// - fix: интерфейс _IeeBlock не имел идентификатора GUID
//
// Revision 1.155  2005/01/20 12:16:14  lulin
// - new prop: _IeeSub.InContents.
//
// Revision 1.154  2005/01/18 10:31:51  mmorozov
// new: method IeeTree.IsChanging;
//
// Revision 1.153  2004/11/25 12:17:24  lulin
// - bug fix: был забыт модификатор const.
//
// Revision 1.152  2004/11/17 17:32:06  lulin
// - окончательно починена синхронизация вставки/удаления комментариев, отъехавшая в связи с переходом на блоки.
//
// Revision 1.151  2004/11/11 17:35:24  lulin
// - new behavior: для блока с комментарием сделано нормальное сохранение и рисование человечков на полях.
//
// Revision 1.150  2004/10/13 10:33:33  lulin
// - new behavior: синхронизируем удаление комментариев.
//
// Revision 1.149  2004/10/11 09:44:00  lulin
// - сделана возможность сразу указывать имя метки при ее установке.
//
// Revision 1.148  2004/10/01 08:01:28  lulin
// - new prop: _IeeSub.Flags.
//
// Revision 1.147  2004/09/24 14:43:56  am
// change: вынес на интерфейс IeePara свойство IndexInParent
//
// Revision 1.146  2004/09/16 15:30:35  lulin
// - у гиперссылки теперь можно записывать свойство Hint.
//
// Revision 1.145  2004/05/26 14:21:59  law
// - change: скестил "ежа с ужом" (старые деревья с новыми).
//
// Revision 1.144  2004/05/01 10:15:47  law
// - new interface: _IeeParaList.
//
// Revision 1.143  2004/04/28 09:38:02  law
// - начал перетаскивать EE на новое дерево под директивой vtOutlinerKnowsInterface.
//
// Revision 1.142  2004/04/27 16:40:21  law
// - изменен комментарий в заголовке модуля.
//
// Revision 1.141  2004/04/27 16:38:26  law
// - change: в eeDefine.inc вставлена директива vtOutlinerKnowsInterface.
//
// Revision 1.140  2004/04/27 07:25:31  law
// - remove prop: IeeNode.Expanded.
// - cleanup: из TeeNode убрано знание про _Tl3Tree.
//
// Revision 1.139  2004/04/08 19:19:41  law
// - optimization: убраны директивы stdcall.
//
// Revision 1.138  2004/04/02 10:54:51  demon
// - new: операция GetLevelForParent вынесена на интерфейс IeeNode
//
// Revision 1.137  2004/03/22 13:13:32  law
// - new interface: IeeEditorEx.
//
// Revision 1.136  2004/03/05 16:22:08  law
// - new method: IeeTree.ChangeExpand.
//
// Revision 1.135  2004/03/05 15:59:56  law
// - new method: IeeTree.ExpandSubDir.
//
// Revision 1.134  2004/03/03 12:45:07  law
// - new param default value: IeeSubList.Add(anID: Integer = ee_SubAutoID).
//
// Revision 1.133  2004/02/27 13:46:06  law
// - new method: IeeHyperlink.Delete.
//
// Revision 1.132  2004/01/30 18:24:23  demon
// - new: на интерфейс IeeNode добавлены функции Move, RelocateChild, SortChilds.
//
// Revision 1.131  2004/01/30 11:39:51  demon
// - cleanup: удалена неиспользуемая функция InsertChild(по имени)
// - new: добавлена функция InsertChildBefore
//
// Revision 1.130  2004/01/10 12:32:01  law
// - bug fix:  CQ OIT5-4347:
// demon (12.09.2003): Ошибка только в том, что эти вставленные параграфы оказываются не комментариями пользователя, а просто текстом.
// А вставлять, думаю можно....
//
// Revision 1.129  2004/01/06 12:33:47  law
// - new behavior: добавляем ссылки на картинки в папку "Рисунки".
// - new prop: idAddress.tiName.
//
// Revision 1.128  2003/12/29 16:11:18  law
// - new prop: IeePara.Marks.
//
// Revision 1.127  2003/12/11 19:01:08  law
// - cleanup: навел порядок с AllChildrenCount и ThisChildrenCount.
//
// Revision 1.126  2003/12/11 17:08:01  law
// - new method: IeeTree.Wake.
//
// Revision 1.125  2003/12/11 14:58:37  law
// - new param: IeeTree._Changed(aCountView: Integer = ee_NeedCountView).
//
// Revision 1.124  2003/12/09 14:40:11  law
// - new method: IeeTree.TestFlagMask.
//
// Revision 1.123  2003/12/08 12:29:25  law
// - new method: IeeTree._SetFlagMask.
//
// Revision 1.122  2003/12/04 18:34:20  law
// - change: сделан отложенный подсчет CountView, пока сильно не помогло, но и хуже вроде не стало.
//
// Revision 1.121  2003/12/04 10:42:26  law
// - new method version: _IeeStyledLeafPara.IsComment.
//
// Revision 1.120  2003/12/04 09:01:50  law
// - new method: _IeeStyledLeafPara.IsComment.
//
// Revision 1.119  2003/12/03 15:50:51  law
// - bug fix: не вызывалось событие OnUserCommentDelete, не исчезала иконка в SubPanel (CQ OIT5-4675).
//
// Revision 1.118  2003/11/29 16:39:21  law
// - new prop: IeeHyperlink.Para.
// - new method: TeeHyperlink.Make.
// - new behavior: если в мультиссылке нету ID параграфа, то он берется от самого параграфа.
//
// Revision 1.117  2003/11/27 13:49:26  law
// - new method: IeeTree.GetNodeByAbsIndex.
// - new prop: IeeTree.FlagsByAbsIndex.
//
// Revision 1.116  2003/11/17 13:13:06  law
// - new prop: IeeHyperlink.ID.
//
// Revision 1.115  2003/11/10 14:38:21  law
// - new method: IeeTree.SetAllFlags.
//
// Revision 1.114  2003/11/06 11:27:08  law
// - new prop: _IeePicture.Name.
//
// Revision 1.113  2003/11/05 16:32:01  law
// - new prop: IeeNode.IsFirst, IsLast.
//
// Revision 1.112  2003/11/05 15:54:40  law
// - new method: _IeePicture.SaveToStream.
//
// Revision 1.111  2003/11/05 14:51:44  law
// - new behavior: у IeePara теперь можно спросить интерфейс _IeePicture.
//
// Revision 1.110  2003/10/27 15:57:13  law
// - bug fix: TeeBlock не предоставлял метод Get_LeafPara.
//
// Revision 1.109  2003/10/27 15:35:52  narry
// - новое свойство _IeeSub._LeafPara (OIT500004675)
//
// Revision 1.108  2003/10/22 09:55:19  demon
// - new: на интерфейсе IeeTreeView добавились: метод GetNodeAbsIndex и свойство AbsCurrent.
//
// Revision 1.107  2003/10/20 16:02:04  law
// - change: начата поддержка "листьевых" параграфов.
// - new behavior: задел на неудаление параграфом (картинок в частности).
//
// Revision 1.106  2003/10/20 15:17:28  law
// - change: добавлен идентификатор интерфейса _IeeSub.
//
// Revision 1.105  2003/09/23 08:24:18  law
// - new prop: IeeHyperlink.Address.
//
// Revision 1.104  2003/09/19 10:40:41  law
// - new prop: IeeTreeView.CurrentNode.
//
// Revision 1.103  2003/09/18 18:29:46  law
// - bug fix: при отдании TeeTreeView как IeeTreeView отцепляем его "теневой" объект (AV - с открытием в извлечениях).
//
// Revision 1.102  2003/09/18 14:35:44  law
// - new prop: IeeHyperlink.RevisionID.
//
// Revision 1.101  2003/09/17 12:36:13  law
// - new prop: IeeDocument.Marks.
//
// Revision 1.100  2003/09/11 16:01:36  law
// - new prop: TeeEditor.OnCanSplitPara.
//
// Revision 1.99  2003/09/11 14:20:23  law
// - new method: IeePara.Delete.
//
// Revision 1.98  2003/09/11 10:23:48  law
// - new method: IeePara.Next.
// - bug fix: не дописывался конец комментария.
//
// Revision 1.97  2003/09/10 17:37:21  law
// - new interface: IeeTextPara.
//
// Revision 1.96  2003/09/10 17:15:30  law
// - new prop: IeePara.Prev.
//
// Revision 1.95  2003/09/10 16:58:18  law
// - new method: IeePara.IsSame.
// - change: задел на отслеживание ухода с пользовательского комментария.
//
// Revision 1.94  2003/09/09 17:30:25  law
// - new prop: _IeeSub.Next.
//
// Revision 1.93  2003/09/09 09:49:47  law
// - new prop: _IeeSelection.Para.
//
// Revision 1.92  2003/09/09 09:33:54  law
// - change: свойство _IeeSub.Name сделано редактируемым.
//
// Revision 1.91  2003/09/08 14:12:43  law
// - new method: TeeSubList.Make.
// - new prop: IeeDocument.Bookmarks.
//
// Revision 1.90  2003/09/05 15:32:43  law
// - new prop: IeeSubViewDescriptors.Bookmarks.
//
// Revision 1.89  2003/09/03 07:10:50  law
// - change: к IeeTree добавлен идентификатор интерфейса.
//
// Revision 1.88  2003/09/02 13:38:21  law
// - new prop: _IeeSelection._ParaIterator.
//
// Revision 1.87  2003/09/02 12:42:44  law
// - new interfaces: _IeeSelection, _IeeParaIterator.
//
// Revision 1.86  2003/09/01 16:35:05  law
// - new prop: IeePara.ID.
//
// Revision 1.85  2003/09/01 16:24:18  law
// - new prop: IeePara.Bookmarks.
//
// Revision 1.84  2003/08/28 15:32:17  law
// - new method: _IeeSub.IsSame.
//
// Revision 1.83  2003/08/28 15:24:47  law
// - change: интерфейс _IeeBlock теперь наследуется от _IeeSub.
//
// Revision 1.82  2003/08/26 08:45:38  migel
// - add: константа `CI_REF` для нового типа ссылок (на интернет-ресурсы)
//
// Revision 1.81  2003/08/21 15:10:14  demon
// - new: в интерфейс IeeNode вынесены свойства PrevNode и NextNode
//
// Revision 1.80  2003/07/28 11:56:54  law
// - new methods: IeeNode.Iterate, IterateF.
//
// Revision 1.79  2003/07/15 13:44:48  law
// - new prop: IeeNode.ParentNode.
//
// Revision 1.78  2003/07/02 10:12:08  law
// - описаны константы с типами гиперссылок.
//
// Revision 1.77  2003/07/01 18:08:11  law
// - new prop: TeeNode.ChildNode.
//
// Revision 1.76  2003/07/01 13:05:11  law
// - new method: _IeeEditor._GetHotspotOnPoint.
//
// Revision 1.75  2003/06/30 16:16:29  law
// - new: расширен интерфейс IeeHyperlink.
//
// Revision 1.74  2003/06/21 12:29:25  law
// - new method: IeeNode.Delete.
//
// Revision 1.73  2003/06/20 15:16:26  law
// - new method: IeeTree.GetNextSelected.
//
// Revision 1.72  2003/06/20 14:01:38  law
// - new prop: IeeTree.SelectedCount.
//
// Revision 1.71  2003/06/20 13:43:53  law
// - new methods: IeeTree.Iterate, IeeTree.IterateF.
//
// Revision 1.70  2003/06/20 13:23:48  law
// - new file: l3IterMode.inc.
//
// Revision 1.69  2003/06/20 13:11:22  law
// - new prop: IeeDocument._Contents.
//
// Revision 1.68  2003/06/19 13:48:06  law
// - new methods: IeeTree.GetAbsIndex.
//
// Revision 1.67  2003/06/05 12:47:49  demon
// - add: добавлен метод SetRootAndCountView, позволяющий присваивать
// количество видимых элементов, одновременно с присваиванием root
//
// Revision 1.66  2003/06/03 14:27:50  demon
// - new method: IeeNode.IsSameNode.
//
// Revision 1.65  2003/06/03 08:21:20  law
// - new prop: IeeNode.HasChild.
//
// Revision 1.64  2003/06/02 14:54:42  law
// - new property: IeeTreeView.NodeFlags.
//
// Revision 1.63  2003/06/02 13:12:59  law
// - new method: IeeTreeView.GotoNode.
//
// Revision 1.62  2003/06/02 13:05:17  law
// - new method: IeeTreeView.GetNodeIndex.
//
// Revision 1.61  2003/05/29 15:25:58  law
// - new method version: IeeNode.InsertChild.
//
// Revision 1.60  2003/05/29 15:16:58  law
// - change: свойство IeeTree.Root, теперь можно изменять.
//
// Revision 1.59  2003/05/28 16:15:20  law
// - change: отрезал ee.dll.
//
// Revision 1.58  2003/04/18 12:40:47  law
// - bug fix: не собирался пример.
// - new: добавлен пример генерации.
//
// Revision 1.57  2003/04/18 11:12:35  law
// - new unit: eeGeneratorEx.
//
// Revision 1.56  2003/04/18 09:30:59  law
// - new unit: eeBaseInterfaces.
//
// Revision 1.55  2003/03/17 16:20:53  law
// - bug fix: new directive evNotNeedAddMask.
//
// Revision 1.54  2003/03/12 14:07:03  law
// - new methods: IeeTreeView.ExpandAll, IeeTreeView.CollapseAll.
//
// Revision 1.53  2003/03/12 12:32:56  law
// - new prop: IeeNode.Expanded.
//
// Revision 1.52  2003/03/03 11:00:46  law
// - new method versions: _IeeData._Load.
//
// Revision 1.51  2003/02/20 16:50:34  law
// - new interfaces: _IeeTable, _IeeTablesIterator.
//
// Revision 1.50  2003/02/18 14:31:52  law
// - new methods: IeeNode.Remove, IeeNode.RemoveChildren (для коллег из Гаранта 6 сделать удаление узлов из дерева №123).
//
// Revision 1.49  2003/02/13 13:36:27  law
// - new prop: _IeeSub.Name, IeeSubList.SubByID.
//
// Revision 1.48  2003/02/13 10:35:44  law
// - new interface: _IeePicturesIterator.
//
// Revision 1.47  2003/02/12 15:50:20  law
// - new interface: _IeePicture.
// - new unit: eePicture.
//
// Revision 1.46  2003/02/12 11:35:02  law
// - new method: _IeeSub.Select.
//
// Revision 1.45  2003/02/11 14:20:20  law
// - change: расширена работа со списком меток - сделана возможность добавлять и удалять метки.
//
// Revision 1.44  2003/02/10 12:01:20  law
// - new prop: IeeNode.Text, IeeNode.ID.
//
// Revision 1.43  2003/02/07 16:08:49  law
// - change: расширен интерфейс IeeNode.
// - change: добавлены события OnActionElement, OnCurrentChanged.
//
// Revision 1.42  2003/02/07 13:14:26  law
// - new behavior: опубликована возможность управления иконками элементов дерева.
//
// Revision 1.41  2003/02/06 17:39:30  law
// - new interfaces: IeeTree, IeeNode, _IeeTreeViewParams.
//
// Revision 1.40  2003/02/06 15:59:20  law
// - new interface: IeeTreeView.
//
// Revision 1.39  2002/11/29 13:32:32  law
// - new prop: _IeeBlock._ChildrenIterator, _IeeBlock.Name.
//
// Revision 1.38  2002/11/21 12:49:59  law
// - new prop: IeeSubPanel.SubViewDescriptors.
//
// Revision 1.37  2002/11/20 15:55:37  law
// - new prop: IeePara.Subs, IeePara.Markers.
//
// Revision 1.36  2002/11/20 15:18:02  law
// - new prop: _IeeViewParams.PersistentSelection.
// - new behavior: переставляется курсор по клику правой кнопкой мыши.
//
// Revision 1.35  2002/11/14 09:31:07  law
// - new event: TeeCustomEditor.OnBlockScroll.
//
// Revision 1.34  2002/11/14 08:54:54  law
// - new behavior: TeeCustomSubPanel теперь реагирует на нажатия мыши.
//
// Revision 1.33  2002/11/13 17:45:18  law
// - new interface: _IeeSub.
//
// Revision 1.32  2002/11/13 16:16:51  law
// - new class: TeeSubPanel.
//
// Revision 1.31  2002/11/13 15:22:49  law
// - new class: TeeSubPanel.
//
// Revision 1.30  2002/11/13 12:54:21  law
// - change: начата работа над экспортом панели Sub'ов.
//
// Revision 1.29  2002/11/12 14:33:04  law
// - new prop: _IeeBlock.ParentBlock.
//
// Revision 1.28  2002/11/12 12:18:57  law
// - new prop: IeeHotSpot.InSelection.
//
// Revision 1.27  2002/11/11 17:12:30  law
// - comments.
//
// Revision 1.26  2002/11/11 16:32:29  law
// - new prop: _IeeBlock.Document, IeePara.Block.
//
// Revision 1.25  2002/11/10 14:44:33  law
// - comments.
//
// Revision 1.24  2002/11/10 14:32:22  law
// - new interface: IeeHyperlink.
//
// Revision 1.23  2002/11/10 13:55:28  law
// - new interfaces: IeeHotSpot, IeePara.
//
// Revision 1.22  2002/11/04 15:58:28  law
// - new prop: TeeCustomEditor.OnBlockChange.
//
// Revision 1.21  2002/11/04 13:50:35  law
// - new interfaces: IeeDocument, _IeeBlock.
//
// Revision 1.20  2002/10/28 10:10:31  law
// - new behavior: синхронизация редактора со скроллерами.
//
// Revision 1.19  2002/10/28 09:10:36  law
// - new prop: TeeCustomEditor.HScrollBar, TeeCustomEditor.VScrollBar.
//
// Revision 1.18  2002/10/21 16:20:25  law
// - change: заточки для Builder'а.
//
// Revision 1.17  2002/10/17 10:10:22  law
// - bug fix: падала IDE при уничтожении окна редактора.
// - new prop: ScrollStyle.
//
// Revision 1.16  2002/10/04 13:28:14  law
// - new behavior: в Design-Time не передаем окну редактирования фокус.
//
// Revision 1.15  2002/10/04 12:29:33  law
// - new interface: IeeWindow.
//
// Revision 1.14  2002/10/04 10:29:51  law
// - new interface: Iee.
//
// Revision 1.13  2002/10/03 09:03:53  law
// untest
//
// Revision 1.12  2002/10/03 09:03:19  law
// test
//
// Revision 1.11  2002/10/02 15:21:24  law
// - new methods: _IeeEditor.Invalidate, IeeCommands.HideSelection.
//
// Revision 1.10  2002/10/02 13:30:13  law
// - new units: eeTags, _eeTypes.
//
// Revision 1.9  2002/10/02 12:26:11  law
// - new interface: IeeGenerator.
//
// Revision 1.8  2002/10/02 11:33:02  law
// - new interface: IeeFormats.
//
// Revision 1.7  2002/10/01 16:22:44  law
// - new method: _IeeData._Load(hGlobal, TeeClipboardFormat).
//
// Revision 1.6  2002/10/01 14:44:48  law
// - new interface: _IeeData.
//
// Revision 1.5  2002/10/01 13:42:21  law
// - new interface: IeeCommands.
//
// Revision 1.4  2002/10/01 11:15:16  law
// no message
//
// Revision 1.3  2002/09/27 09:18:43  law
// - new interface: _IeeViewParams.
//
// Revision 1.2  2002/09/26 16:14:36  law
// - new behavior: передаем фокус встроенному редактору из dll.
//
// Revision 1.1  2002/09/26 15:20:53  law
// - rename unit: evEverestEngineInterfaces -> eeInterfaces.
// - new unit: eeEditorExport.
//
// Revision 1.1  2002/09/25 16:48:35  law
// - change: _IeeEditor - теперь интерфейс.
//

{$Include eeDefine.inc }

interface

uses
  Windows,
  ActiveX,

  Messages,

  l3Interfaces,

  evdTypes,
  nevNavigation,
  evInternalInterfaces,

  eeBaseInterfaces
  ;

const
  ee_SubAutoID = -3;
    {-}  

type
  TeeScrollStyle = (ee_ssNone, ee_ssHorizontal, ee_ssVertical, ee_ssBoth);
   {* Тип определяющий какие ScrollBar'ы нужны. }
  TeeScrollCode = (scLineUp, scLineDown, scPageUp, scPageDown, scPosition, scTrack, scTop, scBottom, scEndScroll);
   {* Код события от скроллера. }

  TeeMouseButton = (ee_mbLeft, ee_mbMiddle, ee_mbRight);
   {* - кнопка мыши. }

  TeeMouseAction = (ee_maDown, ee_maUp, ee_maDouble, ee_maMove);
   {* - событие мыши. }

  TeeShiftState = set of (ee_ssShift, ee_ssAlt, ee_ssCtrl, ee_ssLeft, ee_ssRight, ee_ssMiddle, ee_ssDouble);
   {* - Состояние клавиатуры. }

  TeeDirection = (ee_dUp, ee_dUpMax, ee_dDown, ee_dDownMax, ee_dLeft, ee_dRight);
   {* - направление движения. }

  IeeBase = interface(Il3Base)
   {* Базовый интерфейс слоя EE. }
    ['{1726361C-F976-4897-910E-B4B62371FCD9}']
  end;//IeeBase

  IeeEditor = interface;
  IeeSubPanel = interface;
  IeeTreeView = interface;
  IeeNode = interface;

  IeeDocument = interface;
  IeeBlock = interface;
  IeeSubList = interface;

  IeeLeafPara = interface;
  IeePara = interface;
  IeeSub = interface(IeeBase)
   {* Метка (точка входа). }
    ['{6DEAD924-8481-4B57-A384-DE342975B462}']
    // property methods
      function  Get_SubPlace: TevSubPlace;
        {-}
      function  Get_ID: Integer;
        {-}
      function  Get_LayerID: Integer;
        {-}
      function  Get_Flag: Integer;
        {-}
      function  Get_Flags: Integer;
        {-}
      function  Get_Name: Tl3WString;
      procedure Set_Name(const aValue: Tl3WString);
        {-}
      function  Get_Next: IeeSub;
        {-}
      function  Get_LeafPara: IeeLeafPara;
       {-}
      function  Get_Para: IeePara;
       {-}
    // public methods
      function  Delete: Windows.Bool;
        {* - удаляет метку. }
      function  Exists: Windows.Bool;
        {* - проверяет существует ли такая метка. }
      function  Select: Windows.Bool;
        {* - перейти на метку. }
      function  IsSame(const aSub: IeeSub): Windows.Bool;
        {* - проверяет совпадение меток. }
    // public properties
      property SubPlace: TevSubPlace
        read Get_SubPlace;
        {-}
      property ID: Integer
        read Get_ID;
        {* - идентификатор метки. }
      property LayerID: Integer
        read Get_LayerID;
        {* - идентификатор слоя которому принадлежит метка. }
      property Flag: Integer
        read Get_Flag;
        {* - флаг. }
      property Flags: Integer
        read Get_Flags;
        {* - флаги. }
      property Name: Tl3WString
        read Get_Name
        write Set_Name;
        {* - имя метки. }
      property Next: IeeSub
        read Get_Next;
        {* - следующая метка параграфа в том же слое. }
      property LeafPara: IeeLeafPara
        read Get_LeafPara;
        {* - абзац, на который указывает метка, является абзацем нижнего уровня }
      property Para: IeePara
        read Get_Para;
        {* - абзац, на который указывает метка }
  end;//IeeSub

  IeeBlock = interface(IeeSub)
   {* Блок. }
   ['{CE291312-FB96-4E64-908C-6973A3F93C12}']
    // property methods
      function Get_Document: IeeDocument;
        {-}
      function Get_ParentBlock: IeeBlock;
        {-}
    // public methods
      function InheritsFrom(aType: TeeTypeID): Windows.Bool;
        {* - наследуется ли от aType? }
    // public properties
      property Document: IeeDocument
        read Get_Document;
        {* - документ к которому принадлежит блок. }
      property ParentBlock: IeeBlock
        read Get_ParentBlock;
        {* - блок в который непосредствеено вложен данный блок. }
  end;//IeeBlock

  IeeDocument = interface(IeeBase)
   {* Документ. }
    ['{D2689D1A-39BA-4739-A8C9-C53B2E71DABF}']
    // property methods
      function Get_Block(anID: Integer): IeeBlock;
        {-}
      function Get_BlockEx(anID     : Integer;
                           aLayerID : Integer): IeeBlock;
        {-}
      function Get_Subs: IeeSubList;
        {-}
      function Get_Markers: IeeSubList;
        {-}
      function Get_Bookmarks: IeeSubList;
        {-}
      function Get_Marks: IeeSubList;
        {-}
      function pm_GetExternalHandle: Integer;
        {-}
    // public properties
      property Block[anID: Integer]: IeeBlock
        read Get_Block;
        {* - блоки документа. }
      property BlockEx[anID: Integer; aLayerID: Integer]: IeeBlock
        read Get_BlockEx;
        {* - блоки документа. }
      property Subs: IeeSubList
        read Get_Subs;
        {* - список меток в документе (Sub'ы). }
      property Markers: IeeSubList
        read Get_Markers;
        {* - список пользовательскиx меток в документе. }
      property Bookmarks: IeeSubList
        read Get_Bookmarks;
        {* - список пользовательскиx закладок в документе. }
      property Marks: IeeSubList
        read Get_Marks;
        {-}
      property ExternalHandle: Integer
        read pm_GetExternalHandle;
        {* - внешний идентификатор документа.}
  end;//IeeDocument

  IeeData = interface(IeeBase)
   {* Данные редактора. }
    // property methods
      function Get_Document: IeeDocument;
        {-}
    // public methods
(*      procedure Load(const anInStream: IStream; aFormat: TeeClipboardFormatID);
        overload;
        {* - загрузить данные из потока. }
      procedure Load(aHMem: hGlobal; aFormat: TeeClipboardFormatID);
        overload;
        {* - загрузить данные из памяти. }
      procedure Load(const anInStream: IStream; aFormat: TeeFormat = ee_fEverestBin);
        overload;
        {* - загрузить данные из потока. }
      procedure Load(aHMem: hGlobal; aFormat: TeeFormat = ee_fEverestBin);
        overload;
        {* - загрузить данные из памяти. }
      procedure Save(const anOutStream: IStream; aFormat: TeeClipboardFormatID);
        {* - сохранить данные в поток. }*)
    // public properties
      property Document: IeeDocument
        read Get_Document;
        {* - документ. }
  end;//IeeData

  IeeCommands = interface(IeeBase)
   {* Набор команд редактора. }
    // public methods
      procedure Cut;
        {* - копировать выделенный текст в буфер обмена и вырезать. }
      procedure Copy;
        {* - копировать выделенный текст в буфер обмена. }
      procedure Delete;
        {* - удалить выделенный текст. }
      function  Paste: Boolean;
        {* - вставить из буфера обмена. }
      procedure SelectAll;
        {* - выделить весь текст. }
      procedure HideSelection;
        {* - снять выделение. }
  end;//IeeCommands

  IeeSubList = interface(IeeBase)
   {* Список меток (точек входа). }
    // property methods
      function Get_Count: Integer;
        {-}
      function Get_Sub(anIndex: Integer): IeeSub;
        {-}
      function Get_SubByID(anID: Integer): IeeSub;
        {-}
    // public methods
      function Add(anID  : Integer = ee_SubAutoID;
                   aName : Il3CString = nil): IeeSub;
        {-}
    // public properties
      property Count: Integer
        read Get_Count;
        {* - количество меток. }
      property Subs[anIndex: Integer]: IeeSub
        read Get_Sub;
        {* - метка по порядковому номеру. }        
      property SubsByID[anID: Integer]: IeeSub
        read Get_SubByID;
        {* - метка по идентификатору. }        
  end;//IeeSubList

  IeePara = interface(IeeBase)
   {* Параграф. }
    ['{F7ED258A-0784-48B2-AB4C-764BABA79799}']
    // property methods
      function Get_Document: IeeDocument;
        {-}
      function Get_Parent: IeePara;
        {* - родительский параграф. }
      function Get_Block: IeeBlock;
        {* - родительский блок. }
      function Get_Subs: IeeSubList;
        {-}
      function Get_Markers: IeeSubList;
        {-}
      function Get_Bookmarks: IeeSubList;
        {-}
      function Get_Marks: IeeSubList;
        {-}
      function Get_ID: Integer;
        {-}
      function Get_Prev: IeePara;
        {-}
      function Get_Next: IeePara;
        {-}
      function Get_IndexInParent: Integer;
        {-}  
    // public methods
      function InheritsFrom(aType: TeeTypeID): Windows.Bool;
        {* - наследуется ли от aType? }
      function IsSame(const aPara: IeePara): Boolean;
        {-}
      function Delete: Boolean;
        {-}
      function IsUserComment: Boolean;
        {-}
    // public properties
      property Document: IeeDocument
        read Get_Document;
        {* - документ. }
      property Parent: IeePara
        read Get_Parent;
        {* - родительский параграф. }
      property Block: IeeBlock
        read Get_Block;
        {* - родительский блок. }
      property Subs: IeeSubList
        read Get_Subs;
        {* - метки стоящие на параграфе (Sub'ы). }
      property Markers: IeeSubList
        read Get_Markers;
        {* - пользовательские метки стоящие на параграфе. }  
      property Bookmarks: IeeSubList
        read Get_Bookmarks;
        {* - пользовательские закладки стоящие на параграфе. }
      property Marks: IeeSubList
        read Get_Marks;
        {-}
      property ID: Integer
        read Get_ID;
        {-}
      property IndexInParent: Integer
        read Get_IndexInParent;
        {-}  
      property Prev: IeePara
        read Get_Prev;
        {-}    
      property Next: IeePara
        read Get_Next;
        {-}    
  end;//IeePara

  IeeLeafPara = interface(IeePara)
   {* "Листьевой" параграф. }
    ['{FCA10981-C74D-49D0-A579-3AA1B52F0487}']
  end;//IeeLeafPara

  TeeCommentType = (ee_ctUsual, ee_ctUser, ee_ctVersion);
    {-}
  IeeStyledLeafPara = interface(IeeLeafPara)
   {* "Листьевой" параграф с оформлением. }
    ['{20E35057-0A3F-425A-8C60-96352D970975}']
    // public methods
      function IsComment: Boolean;
        overload;
        {-}
      function IsComment(aType: TeeCommentType): Boolean;
        overload;
        {-}
  end;//IeeStyledLeafPara

  IeeTextPara = interface(IeeStyledLeafPara)
   {* Текстовый параграф. }
    ['{A8CF3933-2646-4194-B049-795EBB655B12}']
    // property methods
      function Get_Text: Il3CString;
        {-}
    // public properties
      property Text: Il3CString
        read Get_Text;
        {-}
  end;//IeeTextPara

  IeePicture = interface(IeePara)
   {* Картинка. }
    ['{4B8E94AC-FC5A-4E46-9E1D-148ECB969ECE}']
    // property methods
      function  pm_GetName: Il3CString;
        {-}
    // public methods
      procedure SaveToStream(const aStream: IStream);
        {-}
    // public properties
      property Name: Il3CString
        read pm_GetName;
        {-}  
  end;//IeePicture

  IeeHotSpot = interface(IeeBase)
   {* "Горячая" точка. }
    ['{3998D1A1-3E08-43B1-8671-B6485D535BC7}']
    // property methods
      function Get_Para: IeePara;
        {-}
      function Get_Hyperlink: IevHyperlink;
        {-}
      function Get_InSelection: Windows.Bool;
        {-}
      function Get_Sub: IeeSub;
        {-}
    // public properties
      property Para: IeePara
        read Get_Para;
        {* - параграф. }
      property Hyperlink: IevHyperlink
        read Get_Hyperlink;
        {* - гиперссылка. }
      property InSelection: Windows.Bool
        read Get_InSelection;
        {* - ткнули в выделение? }
      property Sub: IeeSub
        read Get_Sub;
        {* - метка в которую ткнули. }  
  end;//IeeHotSpot

  TeeScrollInfo = packed record
   {* Информация о скроллере. }
   rScrollInfo  : TScrollInfo;
   rSmallChange : Integer;
   rLargeChange : Integer;
  end;//TeeScrollInfo

  IeeEditor = interface(IevF1LikeEditor)
   {* Корневой интерфейс, представляющий доступ к функциям редактора. }
    ['{E0CBE477-15DE-455F-A259-FDDB7D0DBCC1}']
    // property methods
      function  Get_Commands: IeeCommands;
        {-}
      function  Get_Data: IeeData;
        {-}
    // public methods
      function  GetHotspotOnPoint(const aPt      : TPoint;
                                  out theHotSpot : IeeHotSpot): Windows.Bool;
        {-}
      function  CanSplitPara(const aPara: IeePara): Windows.Bool;
        {-}
    // public properties
      property Commands: IeeCommands
        read Get_Commands;
        {* - набор команд редактора. }
      property Data: IeeData
        read Get_Data;
        {* - данные редактора. }
  end;//IeeEditor

  IeeSubViewDescriptor = interface(IeeBase)
   {* Описатель вида отображения слоя меток. }
    // property methods
      function  Get_Visible: Windows.Bool;
      procedure Set_Visible(aValue: Windows.Bool);
        {-}
    // public properties
      property Visible: Bool
        read Get_Visible
        write Set_Visible;
        {* - отображать? }
  end;//IeeSubViewDescriptor

  IeeSubViewDescriptors = interface(IeeBase)
   {* Описатели вида отображения слоев меток. }
    // property methods
      function Get_Subs: IeeSubViewDescriptor;
        {-}
      function Get_Markers: IeeSubViewDescriptor;
        {-}
      function Get_Bookmarks: IeeSubViewDescriptor;
        {-}
    // public properties
      property Subs: IeeSubViewDescriptor
        read Get_Subs;
        {* - описатель вида отображения слоя Sub'ов. }
      property Markers: IeeSubViewDescriptor
        read Get_Markers;
        {* - описатель вида отображения слоя пользовательских меток. }
      property Bookmarks: IeeSubViewDescriptor
        read Get_Bookmarks;
        {* - описатель вида отображения слоя пользовательских закладок. }
  end;//IeeSubViewDescriptors

  IeeSubPanel = interface(IeeBase)
   {* Корневой интерфейс, представляющий доступ к панели меток. }
    // property methods
      function Get_SubViewDescriptors: IeeSubViewDescriptors;
        {-}
    // public properties
      property SubViewDescriptors: IeeSubViewDescriptors
        read Get_SubViewDescriptors;
        {* - описатели вида отображения слоев меток. }
  end;//IeeSubPanel

  TeeNodeAction = function(const anIntf: IeeNode): Boolean;
   {* Подитеративная функция для перебора элементов дерева.
      Если возвращает true, то процесс перебора узлов прекращается. }

  IeeNode = interface(IeeBase)
   {* Узел дерева. }
    ['{A1ABE354-681A-4A83-98AF-11EDB291B62D}']
    // property methods
      function  Get_Text: Il3CString;
      procedure Set_Text(const aValue: Il3CString);
        {-}
      function  Get_ID: Integer;
      procedure Set_ID(aValue: Integer);
        {-}
      function  Get_HasChild: Windows.Bool;
        {-}
      function  Get_ChildNode: IeeNode;
        {-}
      function  Get_ParentNode: IeeNode;
        {-}
      function  Get_NextNode: IeeNode;
        {-}
      function  Get_PrevNode: IeeNode;
        {-}
      function  Get_IsFirst: Windows.Bool;
        {-}
      function  Get_IsLast: Windows.Bool;
        {-}
    // public methods
        {-}
      function InsertChild(const aNode: IeeNode): IeeNode;
        {-}
      function InsertChildBefore(const aNextChild: IeeNode; const aChild: IeeNode): IeeNode;
        {-}
      procedure Changing;
        {-}
      procedure Changed;
        {-}
      procedure Remove;
        {* - удалить узел из дерева. }
      procedure Delete;
        {* - удалить узел из дерева и с постоянного носителя. }
      procedure RemoveChildren;
        {* - освободить дочерние узлы. }
      function  Move(aDirection : TeeDirection) : Boolean;
        {* - переместить узел. }
      procedure RelocateChild(const aChild: IeeNode);
        {* - перемещает указанного ребенка, руководствуясь критериями
             сортировки относительно других детей (в пределах одного уровня)}
      procedure SortChilds;
        {* - пересортировывает всех детей (один уровень)}
      function  IsSameNode(const aNode: IeeNode): Windows.Bool;
        {-}
      function  GetLevelForParent(const aParent: IeeNode): Integer;
        {* Рассчитывает уровеньтекущей Ноду относительно заданного Paretnt'а }
      function  Iterate(Action          : TeeNodeAction;
                        IterMode        : Integer = 0;
                        const aFromNode : IeeNode = nil) : IeeNode;
       {* - перебрать все дочерние узлы. IterMode см. imExpandOnly etc. }
      function  IterateF(Action          : TeeNodeAction;
                         IterMode        : Integer = 0;
                         const aFromNode : IeeNode = nil) : IeeNode;
       {* - перебрать все дочерние узлы и освободить заглушку для Action. }
      function  Get_AllChildrenCount: Integer;
        {-}
      function  Get_ThisChildrenCount: Integer;
        {-}
    // public properties
      property Text: Il3CString
        read Get_Text
        write Set_Text;
        {* - текст узла. }
      property ID: Integer
        read Get_ID
        write Set_ID;
        {* - целочисленный идентификатор. }
      property HasChild: Windows.Bool
        read Get_HasChild;
        {* - есть ли дочерние узлы?}
      property ChildNode: IeeNode
        read Get_ChildNode;
        {-}
      property AllChildrenCount: Integer
        read Get_AllChildrenCount;
        {-}
      property ThisChildrenCount: Integer
        read Get_ThisChildrenCount;
        {-}
      property ParentNode: IeeNode
        read Get_ParentNode;
        {-}
      property NextNode: IeeNode
        read Get_NextNode;
        {-}
      property PrevNode: IeeNode
        read Get_PrevNode;
        {-}
      property IsFirst: Windows.Bool
        read Get_IsFirst;
        {-}
      property IsLast: Windows.Bool
        read Get_IsLast;
        {-}
  end;//IeeNode

  TeeSetBitType = (ee_sbSelect, ee_sbDeselect, ee_sbInvert);

  IeeTree = interface(IeeBase)
   {* Дерево. }
    ['{B68E8491-FB2E-4034-A717-E88BD6AD3EC7}']
    // property methods
      function  Get_Root: IeeNode;
      procedure Set_Root(const aValue: IeeNode);
        {-}
      function  Get_SelectedCount: Integer;
        {-}
      function  Get_NodeFlags(const aNode : IeeNode) : Integer;
      procedure Set_NodeFlags(const aNode : IeeNode; aValue : Integer);
        {-}
      function  Get_FlagsByAbsIndex(anAbsIndex: Integer) : Integer;
      procedure Set_FlagsByAbsIndex(anAbsIndex: Integer; aValue : Integer);
        {-}
      function  TestFlagMask(aAbsIndex: Longint; aFlagMask : Integer) : Boolean;
        {-}
      procedure SetFlagMask(aAbsIndex : Longint;
                            aFlagMask : Integer;
                            aMode     : TeeSetBitType);
        overload;
        {-}
      procedure SetFlagMask(const aRNode : IeeNode;
                            aFlagMask    : Integer;
                            aMode        : TeeSetBitType);
        overload;
        {-}
      procedure ExpandSubDir(const RNode : IeeNode = nil;
                             Expand      : Boolean = true;
                             DeepLevel   : Byte = 0);
        {* - развернуть/свернуть узлы. }
      function  ChangeExpand(const RNode : IeeNode;
                             Mode        : TeeSetBitType;
                             aForceMode  : Boolean = false) : Boolean;
        {-}
    // public methods
      function IsChanging : Boolean;
        {* - дерево находится в фазе обновления. }
      procedure Changing;
        {-}
      procedure Changed{(aCountView: Integer = ee_NeedCountView)};
        {-}
      function  GetAbsIndex(const aNode : IeeNode): Integer;
        overload;
        {-}
      function  GetAbsIndex(anIndex : Integer): Integer;
        overload;
        {-}
      function  Iterate(Action             : TeeNodeAction;
                        IterMode           : Integer = 0;
                        const aSubRootNode : IeeNode = nil;
                        const aFromNode    : IeeNode = nil) : IeeNode;
        {* - перебрать все узлы. IterMode см. imExpandOnly etc. }
      function  IterateF(Action             : TeeNodeAction;
                         IterMode           : Integer = 0;
                         const aSubRootNode : IeeNode = nil;
                         const aFromNode    : IeeNode = nil) : IeeNode;
        {* - перебрать все узлы и освободить заглушку для Action. }
      function  GetNextSelected(const aCurNode: IeeNode) : IeeNode;
        {-}
      procedure ClearSelected;
        {-}
      procedure SetAllFlags(aMode : TeeSetBitType; aFlags : Integer);
        {-}
      function  GetNode(anIndex : Integer): IeeNode;
        {-}
      function  GetNodeByAbsIndex(anAbsIndex : Integer): IeeNode;
        {-}
      function  Wake: Boolean;
        {-}
      function  IsExpanded(const aNode: IeeNode): Boolean;
       {* - раскрыт ли узел. }
    // public properties
      property Root: IeeNode
        read Get_Root
        write Set_Root;
        {-}
      property SelectedCount: Integer
        read Get_SelectedCount;
        {-}
      property NodeFlags[const aNode: IeeNode]: Integer
        read Get_NodeFlags
        write Set_NodeFlags;
        {-}
      property FlagsByAbsIndex[anAbsIndex: Integer]: Integer
        read Get_FlagsByAbsIndex
        write Set_FlagsByAbsIndex;
        {-}
  end;//IeeTree

  IeeTreeView = interface(IeeBase)
   {* Корневой интерфейс, представляющий доступ к контейнеру дерева. }
    ['{3E2146E9-31B8-4D16-8DC7-AF2F0956F1C3}']
    // property methods
      function Get_Tree: IeeTree;
        {-}
      function  Get_Current: Integer;
      procedure Set_Current(aValue: Integer);
        {-}
      function  Get_AbsCurrent: Integer;
        {-}
      function  Get_CurrentNode: IeeNode;
        {-}
      function  Get_NodeFlags(const aNode : IeeNode) : Integer;
      procedure Set_NodeFlags(const aNode : IeeNode; aValue : Integer);
        {-}
    // public methods
      function  GetNode(Index : Integer): IeeNode;
        {-}
      function  GetNodeIndex(const aNode: IeeNode): Integer;
        {-}
      function  GetNodeAbsIndex(const aNode: IeeNode): Integer;
        {-}
      procedure ExpandAll;
        {-}
      procedure CollapseAll;
        {-}
      function  GotoNode(const aNode : IeeNode) : Longint;
        {-}
    // public properties
      property Tree: IeeTree
        read Get_Tree;
        {-}
      property Current: Integer
        read Get_Current
        write Set_Current;
        {-}
      property AbsCurrent: Integer
        read Get_AbsCurrent;
        {-}
      property NodeFlags[const aNode: IeeNode]: Integer
        read Get_NodeFlags
        write Set_NodeFlags;
        {-}
      property CurrentNode: IeeNode
        read Get_CurrentNode;
        {-}
  end;//IeeTreeView

{$Include l3IterMode.inc}

implementation

end.

