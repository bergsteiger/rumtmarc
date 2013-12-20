unit evPrevVersion;

{* Возврат к предыдущей версии документа }

// $Id: evPrevVersion.pas,v 1.17 2013/01/22 15:52:01 kostitsin Exp $

// $Log: evPrevVersion.pas,v $
// Revision 1.17  2013/01/22 15:52:01  kostitsin
// [$424399029]
//
// Revision 1.16  2012/11/30 15:13:28  voba
// - tune
//
// Revision 1.15  2012/02/17 14:16:50  dinishev
// Правки для корректной работыы afwAnswer
//
// Revision 1.14  2012/01/17 06:08:06  dinishev
// {Requestlink:327812385}
//
// Revision 1.13  2009/07/20 12:39:20  voba
// - Засунул renum в атрибуты
//
// Revision 1.12  2009/03/17 14:07:41  lulin
// - используем локальные процедуры и перемещаем часть методов на объект.
//
// Revision 1.11  2009/01/16 10:19:40  narry
// - не читались нужные версии документа
//
// Revision 1.10  2008/05/20 12:03:57  lulin
// - <K>: 90448469.
//
// Revision 1.9  2008/05/08 10:00:07  dinishev
// Merge исправлений в ветке
//
// Revision 1.8  2008/04/23 09:52:55  lulin
// - <K>: 89105866.
//
// Revision 1.7  2007/12/04 12:47:41  lulin
// - перекладываем ветку в HEAD.
//
// Revision 1.1.2.3  2007/06/19 08:50:41  dinishev
// bug fix: не компилировалось
//
// Revision 1.1.2.2  2006/12/05 14:15:34  lulin
// - контрол переехал в визуальную библиотеку.
//
// Revision 1.1.2.1  2006/02/09 13:54:26  lulin
// - пока безуспешные попытки собрать Archi с Эверестом из ветки.
//
// Revision 1.31  2005/10/06 09:38:10  lulin
// - базовый класс панелей переехал в более правильное место.
//
// Revision 1.30  2005/05/27 15:36:50  lulin
// - базовый контрол переехал в быблиотеку L3.
//
// Revision 1.29  2005/04/06 16:08:20  voba
// - bug fix: не восстанавливалась самая первая версия вновь созданного документа
//
// Revision 1.28  2005/04/05 15:17:26  voba
// - bug fix
//
// Revision 1.27  2005/04/05 10:06:40  narry
// - update
//
// Revision 1.26  2005/03/31 11:55:08  narry
// - Update: для вновь созданного документа не показывалась самая первая версия
//
// Revision 1.25  2005/03/30 13:48:34  narry
// - update: загрузка версии из основного хранилища
//
// Revision 1.24  2005/03/17 15:58:35  lulin
// - флаги режима загрузки/вставки документа стали множеством, а не пачкой Boolean'ов.
//
// Revision 1.23  2005/02/18 14:26:38  voba
// - ынес DOCID и Family в новый класс DocInfo
//
// Revision 1.22  2005/02/14 16:41:23  lulin
// - в Архивариусе сделана возможность указать с каким потоком документа работать.
//
// Revision 1.21  2005/02/14 15:33:59  lulin
// - bug fix: не компилировалось.
//
// Revision 1.20  2004/12/11 12:02:40  lulin
// - в uses файлы, автодобавленные Delphi.
//
// Revision 1.19  2004/11/25 09:29:21  lulin
// - прописаны пути.
// - поправлены ошибки - не компилировалось.
//
// Revision 1.18  2004/09/21 11:22:23  lulin
// - Release заменил на Cleanup.
//
// Revision 1.17  2004/09/02 15:55:20  law
// - cleanup: удален модуль m3BackupFiler.
//
// Revision 1.16  2004/08/30 14:43:09  law
// - cleanup.
//
// Revision 1.15  2004/08/27 15:13:30  voba
// - merge with B_New_Text_Base
//
// Revision 1.14.6.1  2004/08/25 16:36:24  law
// - постепенно отказываемся от прямого использования старого хранилища.
//
// Revision 1.14  2004/05/06 16:11:49  law
// - new method: Tm3BackupFiler.Make.
//
// Revision 1.13  2003/11/06 09:29:10  voba
// no message
//
// Revision 1.12  2003/07/16 16:04:55  voba
// - bug fix: обработка ошибки загрузки версии документа
// - new: добавлена панель меток, окно получило возможность масштабирования
//
// Revision 1.11  2003/04/19 12:30:37  law
// - new file: ddDefine.inc.
//
// Revision 1.10  2003/02/11 10:05:33  voba
// - change: IUnknown вместо TObject.
//
// Revision 1.9  2002/10/18 09:35:24  narry
// - bug fix: для документа с одним исправлением сообшалось, что исправлений нет
//
// Revision 1.8  2002/10/17 13:56:47  narry
// - update: предупреждение, если у документа нет изменений
//
// Revision 1.7  2002/10/17 12:32:43  voba
// - new design
//
// Revision 1.6  2002/10/16 14:42:09  narry
// - update: изменение списка параметров вызова списка версий, расположения кнопок и обработка испорченных версий
//
// Revision 1.5  2002/10/16 14:15:52  narry
// - bug fix: не подавался номер текущей версии.
//
// Revision 1.4  2002/10/16 12:15:07  narry
// - new behavior: вывод даты и времени создания копии
//
// Revision 1.3  2002/10/16 11:49:17  narry
// - update: более корректная обработка максимального номера версии
//
// Revision 1.2  2002/10/16 11:10:30  voba
// - new behavior: добавлена процедура замены текста в окне редактора
//
// Revision 1.1  2002/10/16 09:10:57  narry
// - Откат на предыдущую версию документа
//

{$I ddDefine.inc }

interface

uses
  Windows, 
  Messages, 
  SysUtils, 
  Variants, 
  Classes, 
  Graphics, 
  Controls, 
  Forms,
  ActiveX,
  Dialogs,
  StdCtrls,
  ExtCtrls,
  Buttons,

  OvcBase,

  m3DBInterfaces,

  evCustomEditor,
  evEditorWindow,
  evEditor,
  evMemo,
  evSubPn,
  evToolPanel,
  evLinkedToolPanel,
  evRuler,
  evTextSource,
  evMultiSelectEditorWindow,
  evEditorWithOperations,
  evTunedEditor,
  evEditorWindowTextSource,

  l3InterfacedComponent,
  l3ProgressComponent,

  DocIntf,
  BottomBtnDlg,
  Main,

  vtPanel,

  afwControl, evCustomTextSource, afwTextControlPrim, afwTextControl,
  afwControlPrim, afwBaseControl, nevControl, evCustomEditorWindowPrim,
  evCustomEditorWindow, evCustomEditorWindowModelPart,
  evCustomEditorModelPart;

type
  TddDocumentVersionForm = class(TBottomBtnDlg)
    evEditor1: TevEditor;
    evTextSource1: TevTextSource;
    PrevVersionButton: TBitBtn;
    NextVersionButton: TBitBtn;
    evSubPanel1: TevSubPanel;
    procedure PrevVersionButtonClick(Sender: TObject);
    procedure NextVersionButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
   f_DocID: Longint;
   f_UserDocID: Longint;           
   f_Version: Longint;
   f_DocumentStream : Tm3DocPartSelector;
   f_MaxVersion: Longint;
   f_BaseName: String;
   procedure SetDocID(Value: Longint);
   function LoadVersion(FromMain: Boolean = False): Boolean;
    procedure Write2TextSource(aStream : IStream);
  protected
  public
    { Public declarations }
   property DocID: Longint
    read f_DocID
    write SetDocID;
   property UserDocID: Longint
    read f_UserDocID
    write f_UserDocID;

   property BaseName: string
    read f_BaseName
    write f_BaseName;
   property Version: Longint
    read f_Version;
   property MaxVersion: Longint
    read f_MaxVersion;

    {-}
   property DocumentStream: Tm3DocPartSelector
     read f_DocumentStream
     write f_DocumentStream;
     {-}
  end;

var
  ddDocumentVersionForm: TddDocumentVersionForm;
                                 
procedure ReplaceVersionInEditor(aDocument       : TarTextOfDocument;
                                 const aBaseName : String;
                                 const aSubDescriptors: TevSubDescriptors);

implementation

{$R *.dfm}
Uses
 l3Base,
 l3Stream,
 l3Date,
 l3InterfacesMisc,

 m3BackupTools,

 evTypes,
 evInternalInterfaces,

 nevBase,
 nevTools,

 vtDialogs,

{$IFDEF InsiderTest}
 afwAnswer,
{$ENDIF InsiderTest} 

 dt_Const,
 dt_Serv,
 dt_LinkServ
 ;


procedure TddDocumentVersionForm.PrevVersionButtonClick(Sender: TObject);
begin
 Dec(f_Version);
 if f_Version >= 0 then
 begin
  NextVersionButton.Enabled:= True;
  LoadVersion;
 end;
 PrevVersionButton.Enabled:= Version > 0;
end;

procedure TddDocumentVersionForm.NextVersionButtonClick(Sender: TObject);
begin
 Inc(f_Version);
 if f_Version < f_MaxVersion then
 begin
  PrevVersionButton.Enabled:= True;
  LoadVersion;
 end
 else
  LoadVersion(True);
 NextVersionButton.Enabled:= Version < f_MaxVersion;
end;

procedure TddDocumentVersionForm.SetDocID(Value: Longint);
begin
 f_DocID:= Value;                                      
 f_UserDocID := LinkServer(CurrentFamily).Renum.GetExtDocID(f_DocID);
 f_Version:= 0;
 f_MaxVersion:= -1;
 PrevVersionButton.Enabled:= False;
 if BaseName <> '' then
 begin
  f_MaxVersion:= m3GetMaxVersionNumber(BaseName, DocID);
  LoadVersion(f_MaxVersion = 0);
 end; // BaseName <> ''
 NextVersionButton.Enabled:= f_MaxVersion > 0;
end;

function GetVersionForRead(const aBaseName: String;
  aDocHandle: Integer;
  aDocPart: Tm3DocPartSelector;
  aIndex: Integer;
  aLevel: Integer): IStream; 
   {* получить версию документа из сохраненных }

 procedure DoGetVersion;
 begin//DoGetVersion
  // - выделена, чтобы сразу отвускать хранилище
  Result := m3GetVersionForRead(m3GetVersionsStorage(aBaseName), aDocHandle, False, aDocPart, aIndex, aLevel);
 end;//DoGetVersion

begin
 DoGetVersion;
end;

function TddDocumentVersionForm.LoadVersion(FromMain: Boolean = False): Boolean;
var
 l_IStream: IStream;
 l_VersionDateTime: TDateTime;
 l_Template: string;
 l_PrevStatus, l_NextStatus : Boolean;
begin
 l_PrevStatus := PrevVersionButton.Enabled;
 l_NextStatus := NextVersionButton.Enabled;
 PrevVersionButton.Enabled := False;
 NextVersionButton.Enabled := False;
 Screen.Cursor := crHourGlass;
 try
  try
   if FromMain then
   begin
    l_IStream := m3GetMain(Basename, DocID);
    if l_IStream = nil then
     l_IStream:= GetVersionForRead(BaseName, DocID, DocumentStream, 0, f_Version);
   end
   else
    l_IStream:= GetVersionForRead(BaseName, DocID, DocumentStream, 0, f_Version);
   try
    Result:= l_IStream <> nil;
    if Result then
    begin
     l_VersionDateTime:= m3GetVersionDateTime(BaseName, DocID, Version);
     if l_VersionDateTime = BadDateTime then
      l_Template:= 'Документ № %d (версия %d)'
     else
      l_Template:= 'Документ № %d (версия от '+
                   FormatDateTime('h:nn:ss d/m/yy', l_VersionDateTime)+')';
     Caption:= Format(l_Template, [UserDocID, f_Version]);
     Write2TextSource(l_IStream);
    end // Result
    else
    begin
     evTextSource1.New;
     Caption:= 'Информация о версии документа отсутствует'
    end;
    evTextSource1.Invalidate;
   finally
    l_IStream:= nil;
   end;
  except
   Result:= f_MaxVersion > 0;
  end;
 finally
  PrevVersionButton.Enabled := l_PrevStatus;
  NextVersionButton.Enabled := l_NextStatus;
  Screen.Cursor := crDefault;
 end;
end;

procedure TddDocumentVersionForm.FormCreate(Sender: TObject);
begin
 evEditor1.ShowDocumentParts:= True;
end;

procedure TddDocumentVersionForm.Write2TextSource(aStream : IStream);
begin
 evTextSource1.DocumentContainer.TagWriter.WriteTag(evEditor1.View, cf_EverestBin, aStream);
end;

procedure ReplaceVersionInEditor(aDocument       : TarTextOfDocument;
                                 const aBaseName : String;
                                 const aSubDescriptors: TevSubDescriptors);

var
 l_ShowModal : Integer;
 l_IStream   : IStream;
 l_Version   : Longint;
begin
 if m3GetMaxVersionNumber(aBaseName, aDocument.DocInfo.DocID) >= 0 then
  with TddDocumentVersionForm.Create(Application) do
  try
   BaseName:= aBaseName;
   DocID:= aDocument.DocInfo.DocID;
   UserDocID:= aDocument.DocInfo.GetUserDocID;
   DocumentStream := aDocument.DocPart;
   evSubPanel1.SubDescriptors := aSubDescriptors;
   {$IFDEF InsiderTest}
   if g_BatchMode then
   begin
    Show;
    l_ShowModal := AfwGetAnswer;
    if l_ShowModal = mrOK then
     Inc(g_WasWait);
   end // if g_BatchMode then
   else
    l_ShowModal := ShowModal;
   if l_ShowModal = mrOK then
   {$ELSE}
   if ShowModal = mrOK then
   {$ENDIF InsiderTest}
   begin
    l_Version:= Version;
    if aDocument.Modified then
    begin
     aDocument.SaveText;
     Inc(l_Version);
    end; // aDocument.Modified
    if Version = MaxVersion then
    begin
     l_IStream := m3GetMain(Basename, DocID);
     if l_IStream = nil then
      l_IStream:= GetVersionForRead(BaseName, DocID, DocumentStream, 0, l_Version);
    end
    else
     l_IStream:= GetVersionForRead(BaseName, DocID, DocumentStream, 0, l_Version);
    try
     if l_IStream <> nil then
     begin
      aDocument.DocumentContainer.TagWriter.WriteTag(nil,cf_EverestBin, l_IStream, nil, evDefaultLoadFlags + [ev_lfInternal]);
      aDocument.Modified:= True;
      aDocument.Invalidate;
     end; // l_IStream <> nil
    finally
     l_IStream:= nil;
    end; // l_IStream
   end; //ShowModal = mrOK
  finally
   Free;
  end // TddDocumentVersionForm
 else
  vtMessageDlg(l3CStr('Данный документ не изменялся'), mtInformation);
end;

end.
