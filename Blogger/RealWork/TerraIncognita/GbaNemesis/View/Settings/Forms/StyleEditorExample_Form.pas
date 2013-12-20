unit StyleEditorExample_Form;

// $Id: StyleEditorExample_Form.pas,v 1.3 2013/01/22 15:59:52 kostitsin Exp $

// $Log: StyleEditorExample_Form.pas,v $
// Revision 1.3  2013/01/22 15:59:52  kostitsin
// [$424399029]
//
// Revision 1.2  2009/11/10 12:29:59  lulin
// - перестаЄм выливать идентификаторы внутренних операций.
//
// Revision 1.1  2009/09/23 13:32:43  lulin
// - начинаем перенос модул€ Ќастройки на модель.
//
// Revision 1.39  2009/07/31 17:30:14  lulin
// - убираем мусор.
//
// Revision 1.38  2009/07/11 09:24:51  lulin
// - избавл€емс€ от лишнего дЄргань€ счЄтчиков ссылок.
//
// Revision 1.37  2009/05/29 17:18:25  lulin
// [$142610853].
//
// Revision 1.36  2009/04/09 14:12:52  lulin
// [$140837386]. є15.
//
// Revision 1.35  2009/03/04 13:32:41  lulin
// - <K>: 137470629. √енерируем идентификаторы типов с модели и убираем их из общей помойки.
//
// Revision 1.34  2008/09/30 18:14:14  lulin
// - <K>: 120718561.
//
// Revision 1.33  2008/05/16 15:21:07  lulin
// - рисуем на модели.
//
// Revision 1.32  2007/09/13 10:51:32  lulin
// - bug fix: не собиралс€ Ќемезис с новой веткой.
//
// Revision 1.31  2007/02/12 18:55:47  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.30  2007/02/12 18:44:47  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.29  2007/02/12 17:15:52  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.28  2007/01/31 13:46:04  oman
// - fix: Ћокализаци€ библиотек и редактора стилей (cq24249)
//
// Revision 1.27  2007/01/31 13:00:38  lulin
// no message
//
// Revision 1.26  2007/01/31 12:59:08  lulin
// - обрамл€ем комментарий скобками.
//
// Revision 1.25  2007/01/31 12:51:56  lulin
// - испольжуем поток, работающий со строкой.
//
// Revision 1.24  2007/01/30 15:06:38  oman
// - fix: Ћокализаци€ редактора стилей - пока без перевода (cq24249)
//
// Revision 1.23  2007/01/30 12:24:57  lulin
// - выводим Hint'ы к параграфным стил€м.
//
// Revision 1.22  2007/01/30 09:46:51  lulin
// - передаем полную информацию о курсоре.
//
// Revision 1.21  2006/12/07 12:40:50  lulin
// - повторный переход на "правильные" панели.
//
// Revision 1.20  2006/12/05 14:15:57  lulin
// - контрол переехал в визуальную библиотеку.
//
// Revision 1.19  2006/05/18 10:53:04  mmorozov
// - new: использование компонентов - наследников редактора с разным набором операций;
//
// Revision 1.18  2006/04/17 14:42:33  oman
// - new beh: перекладываем StdStr в _StdRes
//
// Revision 1.17  2006/03/31 07:42:23  lulin
// - изменен тип параметров, подаваемый в Execte операции.
//
// Revision 1.16  2006/03/30 14:01:48  lulin
// - операци€ инициализации разделена на две - с параметрами и без - дл€ того, чтобы в итоге избавитс€ от первой.
//
// Revision 1.15  2006/03/16 11:35:59  oman
// - new beh: ѕерекладываем все текстовые константы в три места (StdStr, DebugStr и SystemStr)
//
// Revision 1.14  2005/10/11 09:26:03  lulin
// - интерфейс дл€ нотификации об изменении таблицы стилей переехал в общее место.
//
// Revision 1.13  2005/07/21 12:21:27  lulin
// - читатель формата EVD переехал в папку EVD.
//
// Revision 1.12  2005/05/27 14:46:38  lulin
// - базовый контрол переехал в быблиотеку L3.
//
// Revision 1.11  2005/04/25 09:39:11  lulin
// - подготовка к переходу в ветку B_Tag_Box.
//
// Revision 1.10  2005/03/19 16:32:23  lulin
// - спр€таны ненужные методы.
//
// Revision 1.9  2005/02/01 16:03:57  migel
// - fix: редактирование таблицы стилей.
//
// Revision 1.8  2005/01/19 12:36:46  lulin
// - new behavior: дл€ ReadOnly-редакторов не публикуем операции редактировани€.
//
// Revision 1.7  2004/12/23 13:00:06  lulin
// - new unit: nscTextSource.
//
// Revision 1.6  2004/03/31 14:25:02  migel
// - fix: не перегружаем таблицу стилей, если она не изменилась и пользователь "нажал" отмену + мелкий багфикс.
//
// Revision 1.5  2004/03/15 12:23:59  migel
// - fix: доступна кнопка `maximize`.
// - add: логи CVS.
//

interface

uses
 Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
 Dialogs, vcmInterfaces, vcmBase, vcmEntityForm, vcmEntities,
 vcmBaseEntities, OvcBase,  evEditorWindow,
 evMultiSelectEditorWindow, evEditor, eeEditorExport, eeEditor,
 l3InterfacedComponent, l3ProgressComponent, evInternalInterfaces, evCustomTextSource,
 eeTextSourceExport, eeTextSource, eeInterfaces, ExtCtrls, nscTextSource,
  vcmComponent, evCustomEditor, evEditorWithOperations, evTunedEditor,
  evEditorWindowTextSource, afwControl, vtPanel, afwInterfaces, nevTools,
  afwControlPrim, afwBaseControl, afwTextControlPrim, afwTextControl,
  nevGUIInterfaces,
  nevControl, evCustomEditorWindowModelPart,

  PrimStyleEditorExample_Form
  ;

type
 TStyleEditorExampleForm = class(TvcmEntityFormRef)
  Entities: TvcmEntities;
  //
  f_EditorPanel: TvtPanel;
  f_Editor: TeeEditorWithoutOperations;
  //
  f_TextSource: TnscTextSource;
  //
  procedure EntityFormInit;
    procedure f_EditorGetHotSpotInfo(Sender: TObject;
      const aHotSpot: IevHotSpot; const aKeys: TafwCursorState;
      var theInfo: TafwCursorInfo);
 end;

implementation

{$R *.RES}
{$R *.DFM}

uses
  l3InterfacesMisc,
  l3String,
  l3Base,
  l3Stream,
  l3Filer,
  l3Memory,

  k2Interfaces,
  k2Tags,
  k2Base,

  afwFacade,

  evdReader,

  nsTypes,

  StdRes,

  TextSegment_Const,
  StyledLeafPara_Const
  ;

const
 CDefaultStyleTableExampleResourceName = 'nsDefaultStyleTableExample';
 //
procedure TStyleEditorExampleForm.EntityFormInit;
var
 l_Filer  : Tl3CustomFiler;
 l_Reader : TevdNativeReader;
 l_Stream : TStream;
 l_String : String;
begin
 try
  if afw.Application.LocaleInfo.Language = afw_lngRussian then
   l_String := ''
  else
  l_String := vcmConstString(str_StyleTableExample);
  if (l_String <> '') then
   l_Stream := Tl3StringStream.Create(l3PCharLen(l_String))
  else
   l_Stream := Tl3ResourceStream.Create(HInstance, CDefaultStyleTableExampleResourceName);
  try
   l_Filer := Tl3CustomFiler.Create;
   try
    l_Filer.Stream := l_Stream;
    l_Reader := TevdNativeReader.Create;
    try
     l_Reader.Filer := l_Filer;
     f_Editor.TextSource.Load(l_Reader);
    finally
     l3Free(l_Reader);
    end;//try..finally
   finally
    l3Free(l_Filer);
   end;//try..finally
  finally
   l3Free(l_Stream);
  end;//try..finally
 except
  on EResNotFound do;
 end;//try..except
end;

procedure TStyleEditorExampleForm.f_EditorGetHotSpotInfo(Sender: TObject;
  const aHotSpot: IevHotSpot; const aKeys: TafwCursorState;
  var theInfo: TafwCursorInfo);
var
 l_TagWrap : Ik2Tag;
 l_Point   : InevBasePoint;
begin
 if l3BQueryInterface(aHotSpot, Ik2Tag, l_TagWrap) then
  try
   with l_TagWrap do
    if InheritsFrom(k2_idTextSegment) then
     with theInfo do
     begin
      rCursor := ev_csHelp;
      rHint := vcmFmt(str_StyleEditorExampleHint, [Attr[k2_tiStyle].AsString]);
      Exit;
     end;//with theInfo
  finally
   l_TagWrap := nil;
  end;
 if (Sender As TevCustomEditorWindow).GetPtPoint(aKeys.rPoint, l_Point) then
  with l_Point.MostInner.Obj^ do
   if InheritsFrom(k2_idStyledLeafPara) then
    with theInfo do
    begin
     rCursor := ev_csHelp;
     rHint := vcmFmt(str_StyleEditorExampleHint, [Attr[k2_tiStyle].AsString]);
     Exit;
    end;//with theInfo
end;

end.