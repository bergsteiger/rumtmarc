unit MemoryUsage_Form;

{ $Id: MemoryUsage_Form.pas,v 1.5 2013/04/24 09:35:56 lulin Exp $ }

// $Log: MemoryUsage_Form.pas,v $
// Revision 1.5  2013/04/24 09:35:56  lulin
// - портируем.
//
// Revision 1.4  2013/01/23 08:04:19  kostitsin
// не собиралось
//
// Revision 1.3  2013/01/22 15:59:49  kostitsin
// [$424399029]
//
// Revision 1.2  2012/10/22 14:21:09  lulin
// {RequestLink:405474881}
//
// Revision 1.1  2012/04/13 13:27:21  lulin
// {RequestLink:237994598}
//
// Revision 1.53  2011/11/16 17:35:06  lulin
// {RequestLink:232098711}
//
// Revision 1.52  2009/11/18 13:06:00  lulin
// - используем базовые параметры операции.
//
// Revision 1.51  2009/11/12 14:32:26  lulin
// - убираем возможность менять список параметров.
//
// Revision 1.50  2009/08/18 08:47:25  lulin
// {ReqestLink:158795592}. №2.
//
// Revision 1.49  2009/07/31 17:29:52  lulin
// - убираем мусор.
//
// Revision 1.48  2009/07/23 13:42:23  lulin
// - переносим процессор операций туда куда надо.
//
// Revision 1.47  2008/10/01 10:49:50  lulin
// - <K>: 120718563.
//
// Revision 1.46  2008/02/21 19:11:01  lulin
// - bug fix.
//
// Revision 1.45  2008/01/14 06:48:03  oman
// - fix: Стремные границы условной компиляции
//
// Revision 1.44  2008/01/10 07:23:10  oman
// Переход на новый адаптер
//
// Revision 1.43.4.2  2007/11/22 13:31:36  oman
// - fix: Убираем информацию о памяти на адаптере (K-71532847)
//
// Revision 1.43.4.1  2007/11/22 13:20:28  oman
// Перепиливаем на новый адаптер
//
// Revision 1.43  2007/03/19 14:24:14  lulin
// - избавляемся от прямого обращения к данным адаптерной строки.
//
// Revision 1.42  2007/03/16 14:17:06  lulin
// - переходим на собственную функцию форматирования строк.
//
// Revision 1.41  2007/02/12 18:06:01  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.40  2007/01/19 09:47:13  lulin
// - выделяем интерфейс параметров для создания формы.
//
// Revision 1.39  2007/01/17 14:02:49  lulin
// - вычищены последние нефиксированные параметры в тестах операций.
//
// Revision 1.38  2006/12/20 13:34:03  lulin
// - удален ненужный модуль.
//
// Revision 1.37  2006/12/07 12:40:29  lulin
// - повторный переход на "правильные" панели.
//
// Revision 1.36  2006/12/06 08:00:31  lulin
// - везде используем одни и те же метки.
//
// Revision 1.35  2006/12/05 14:15:31  lulin
// - контрол переехал в визуальную библиотеку.
//
// Revision 1.34  2006/12/05 13:49:37  lulin
// - контрол переехал в визуальную библиотеку.
//
// Revision 1.33  2006/04/19 13:34:29  oman
// - new beh: перекладываем StdStr в _StdRes
//
// Revision 1.32  2006/03/31 07:41:52  lulin
// - изменен тип параметров, подаваемый в Execte операции.
//
// Revision 1.31  2006/03/30 15:31:13  lulin
// - изменен тип параметров в _OnTest.
//
// Revision 1.30  2006/03/30 14:01:30  lulin
// - операция инициализации разделена на две - с параметрами и без - для того, чтобы в итоге избавится от первой.
//
// Revision 1.29  2006/03/30 11:49:25  lulin
// - cleanup: вытираем код для редактирования комментариев не в виде дерева.
//
// Revision 1.28  2006/03/21 15:03:58  oman
// - new beh: Перекладываем все текстовые константы в три места (StdStr, DebugStr и SystemStr)
//
// Revision 1.27  2006/02/02 14:56:10  mmorozov
// - add unit;
//
// Revision 1.26  2005/11/09 15:28:16  lulin
// - базовые интерфейсы перенесены в правильный модуль.
//
// Revision 1.25  2005/10/06 10:49:28  lulin
// - класс панелей переехал в более правильное место.
//
// Revision 1.24  2005/10/06 09:16:59  lulin
// - базовый класс панелей переехал в более правильное место.
//
// Revision 1.23  2005/06/30 07:48:05  cyberz
// READY FOR TIE-TEMPLATE GENERATION
//
// Revision 1.22  2005/06/23 15:47:53  lulin
// - new behavior: сделана возможность указывать, что хотим получать документы в виде деревьев.
//
// Revision 1.21  2005/05/27 14:46:18  lulin
// - базовый контрол переехал в быблиотеку L3.
//
// Revision 1.20  2005/05/26 15:37:30  lulin
// - базовая канва вывода теперь избавлена от знания о контролах управления.
//
// Revision 1.19  2005/01/24 17:55:58  lulin
// - обрамляем скобками процесс поднятия окна с ресурсами.
//
// Revision 1.18  2004/12/21 11:45:47  lulin
// - bug fix: неправильно отображался список классов.
//
// Revision 1.17  2004/10/19 18:12:30  lulin
// - new behavior: в диалоге статистики выводим ОБЩИЙ размер распределенной памяти.
//
// Revision 1.16  2004/10/11 08:20:29  lulin
// - new class: TevDocumentsCache.
//
// Revision 1.15  2004/10/07 08:31:44  lulin
// - new directive: l3DirectUseSystemMemManager.
//
// Revision 1.14  2004/10/07 07:29:58  lulin
// - new behavior: в диалог статистики выводим количество памяти, выделенной через стандартный GetMem.
//
// Revision 1.13  2004/09/30 11:26:46  lulin
// - добавлена операция "Запретить кеш документов".
//
// Revision 1.12  2004/09/30 09:23:21  lulin
// - сделана очистка кеша документов из оболочки.
//
// Revision 1.11  2004/09/29 12:40:50  lulin
// - new behavior: теперь в окне статистики выводим количество документов в кеше.
//
// Revision 1.10  2004/09/16 13:53:08  lulin
// - перевел на _TeeMemo - чтобы работали ShortCut'ы.
//
// Revision 1.9  2004/09/16 13:07:38  lulin
// - в диалог статистики добавлен вывод памяти, занимаемой адаптером.
//
// Revision 1.8  2004/09/16 11:34:21  lulin
// - навел подобие порядка с регистрацией компонент библиотеки.
//
// Revision 1.7  2004/06/01 08:27:09  demon
// - new behavior: изменена иерархия наследования деревьев и часть модулей переехали в VT
//
// Revision 1.6  2004/03/12 14:22:34  mmorozov
// - перевод формы _TMemoryUsageDlg на рельсы VCM;
//
// Revision 1.5  2004/03/12 12:01:25  demon
// - new behavior: Splitters заменены на ResizeablePanel
//
// Revision 1.4  2004/03/04 16:37:26  law
// - rename unit: VLister -> vtLister.
//
// Revision 1.3  2004/03/04 15:39:38  law
// - rename unit: VOtliner -> vtOutliner.
//
// Revision 1.2  2003/12/18 17:22:37  law
// - change: заменил TvtPanel -> TvtPanel.
//
// Revision 1.1  2003/09/16 11:54:39  demon
// - add: операция показа расхода памяти в оболочке.
//
// Revision 1.7  2002/04/06 11:33:56  law
// - Delphi 6.0.
//
// Revision 1.6.2.1  2002/02/07 15:23:05  law
// - rename class: IevBlock -> TevBlock, для того чтобы не путать его с интерфейсом.
//
// Revision 1.6  2001/04/02 11:30:27  law
// - убраны ненужные AutoCreat формы.
//
// Revision 1.5  2000/12/15 16:22:06  law
// - вставлены директивы Log.
//

{$Include nsDefine.inc}

interface

uses
  Windows,
  Classes,
  Graphics,
  Forms,
  Controls,
  Buttons,
  StdCtrls,
  ExtCtrls,

  OvcBase,

  l3Types,

  vtLister,
  vtOutliner,
  vtSizeablePanel,

  eeTreeViewExport,
  eeTreeView,

  vcmBaseEntities,
  vcmEntities,
  vcmEntityForm,
  vcmInterfaces,

  vtOutlinerWithQuickSearch, 
  vtOutlinerWithDragDrop, vcmComponent, vtPanel, evEditorWindow,
  evMultiSelectEditorWindow, evEditor, evMemo, eeMemo, tb97GraphicControl,
  TB97Ctls, evCustomEditor, evEditorWithOperations, afwControl,
  afwInputControl, vtLabel, evCustomMemo, afwControlPrim, afwBaseControl,
  afwTextControlPrim, afwTextControl,

  vcmExternalInterfaces, l3InterfacedComponent, nevControl,
  evCustomEditorWindowModelPart, evCustomEditorWindowPrim,
  evCustomEditorWindow, evCustomEditorModelPart
  ;

type
  TMemoryUsageDlg = class(TvcmEntityForm)
    lbLocalMemory: TvtLabel;
    lbGlobalMemory: TvtLabel;
    lbObjectMemory: TvtLabel;
    lbObjectCount: TvtLabel;
    pnTagTree: TvtPanel;
    TagTree: TeeTreeView;
    memClasses: TevMemo;
    pnSummary: TvtSizeablePanel;
    pnMemClasses: TvtSizeablePanel;
    Entities: TvcmEntities;
    lbDocumentsInCacheCount: TvtLabel;
    lbAllLocalMemory: TvtLabel;
    lbTotalMemory: TvtLabel;
    procedure enResultopOkExecute(const aParams: IvcmExecuteParams);
    procedure enResultopCancelExecute(const aParams: IvcmExecuteParams);
    procedure vcmEntityFormInit;
    procedure enResultopOkTest(const aParams: IvcmTestParamsPrim);
    procedure enResultopHelpTest(const aParams: IvcmTestParamsPrim);
    procedure DocumentsCacheClearExecute(const aParams: IvcmExecuteParams);
    procedure DocumentsCacheDisableTest(const aParams: IvcmTestParamsPrim);
    procedure DocumentsCacheDisableExecute(const aParams: IvcmExecuteParams);
  private
    procedure UpdateDocumentsInCacheCount;
      {-}
  public
  end;
  
  TMemoryUsageForm = TMemoryUsageDlg;

procedure MemoryUsageDlg;
  {-}
  
implementation

uses
  SysUtils,

  l3Interfaces,
  l3Base,

  nevTools,
  
  evOp,
  evDocumentsCache,

  vcmBase,

  nsTypes,
  
  StdRes
  ;

{$R *.DFM}

function SepInt(I: LongInt): string;
var
 D : Double;
 C : Char;
begin
 D := I;
 C := {$IfDef XE}FormatSettings.{$EndIf}ThousandSeparator;
 try
  {$IfDef XE}FormatSettings.{$EndIf}ThousandSeparator := ',';
  Result := Format('%n', [D]);
  SetLength(Result, Length(Result)-3);
 finally
  {$IfDef XE}FormatSettings.{$EndIf}ThousandSeparator := C;
 end;{try..finally}
end;

procedure MemoryUsageDlg;
  {-}
begin
 TMemoryUsageDlg.Make(vcmMakeParams);
end;

procedure TMemoryUsageDlg.enResultopOkExecute(const aParams: IvcmExecuteParams);
begin
 ModalResult := mrOk;
end;

procedure TMemoryUsageDlg.enResultopCancelExecute(const aParams: IvcmExecuteParams);
begin
 ModalResult := mrCancel;
end;

procedure TMemoryUsageDlg.vcmEntityFormInit;
{$IfDef l3TraceClasses}
var
 i    : Long;
 CL   : TStrings;
 l_Op : InevOp;
{$EndIf l3TraceClasses}
begin
 with l3Base.l3System do begin
  lbLocalMemory.CCaption := vcmFmt(str_l3LocalMemory, [SepInt(LocalMemUsed)]);
  lbAllLocalMemory.CCaption := vcmFmt(str_LocalMemory, [SepInt(SysLocalMemUsed)]);
  lbGlobalMemory.CCaption := vcmFmt(str_GlobalMemory, [SepInt(GlobalMemUsed)]);
  lbObjectMemory.CCaption := vcmFmt(str_ObjectMemory, [SepInt(ObjectMemUsed)]);
  lbTotalMemory.CCaption := vcmFmt(str_OverallMemory, [SepInt(LocalMemUsed + SysLocalMemUsed + GlobalMemUsed + ObjectMemUsed)]);
  lbObjectCount.CCaption := vcmFmt(str_ObjectCount, [SepInt(ObjectCount)]);
 end;//with l3Base.l3System
 UpdateDocumentsInCacheCount;
 {$IfDef k2TagTree}
 TagTree.TreeSource := GetStandardTypeTable.TagTree;
 {$Else  k2TagTree}
 TagTree.Visible := false;
 pnMemClasses.Align := alClient;
 pnMemClasses.SizeableSides := [];
 {$EndIf k2TagTree}
 memClasses.Text := '';
 {$IfDef l3TraceClasses}
 with memClasses do
 begin
  Document;
  CL := l3System.ClassList;
  TextSource.Indicator.Start(Pred(CL.Count), vcmCStr(str_LoadingObjectList));
  try
   l_Op := StartOp;
   try
    with Range do
    begin
     for i := 0 to Pred(CL.Count) do
     begin
      TextSource.Indicator.Progress(i);
      InsertString(CL[i] + ' = ' + IntToStr(Long(CL.Objects[i])));
      InsertParaBreak;
     end;//for i
    end;//with Range
    InevSelection(Selection).Unselect;
    MoveLeafCursor(ev_ocTopLeft, true);
   finally
    l_Op := nil;
   end;//try..finally
  finally
   TextSource.Indicator.Finish;
  end;//try..finally
 end;//with memClasses
 {$Else  l3TraceClasses}
 memClasses.Visible := false;
 {$EndIf l3TraceClasses}
 if not memClasses.Visible AND not TagTree.Visible then begin
  pnTagTree.Visible := false;
  pnSummary.Align := alClient;
 end;//not memClasses.Visible..
end;

procedure TMemoryUsageDlg.enResultopOkTest(const aParams: IvcmTestParamsPrim);
begin
 aParams.Op.Flag[vcm_ofEnabled] := True;
end;

procedure TMemoryUsageDlg.enResultopHelpTest(const aParams: IvcmTestParamsPrim);
begin
 aParams.Op.Flag[vcm_ofEnabled] := True;
end;

procedure TMemoryUsageDlg.DocumentsCacheClearExecute(
  const aParams: IvcmExecuteParams);
begin
 TevDocumentsCache.Clear;
 UpdateDocumentsInCacheCount;
end;

procedure TMemoryUsageDlg.DocumentsCacheDisableTest(const aParams: IvcmTestParamsPrim);
begin
 aParams.Op.Flag[vcm_ofChecked] := not g_evDocumentsCacheEnabled;
end;

procedure TMemoryUsageDlg.DocumentsCacheDisableExecute(
  const aParams: IvcmExecuteParams);
begin
 if g_evDocumentsCacheEnabled then
 begin
  TevDocumentsCache.Clear;
  UpdateDocumentsInCacheCount;
  g_evDocumentsCacheEnabled := false;
 end
 else
  g_evDocumentsCacheEnabled := true;
end;

procedure TMemoryUsageDlg.UpdateDocumentsInCacheCount;
  {-}
begin
 lbDocumentsInCacheCount.CCaption := vcmFmt(str_CachedDocumentsCount, [TevDocumentsCache.Count]);
end;

end.