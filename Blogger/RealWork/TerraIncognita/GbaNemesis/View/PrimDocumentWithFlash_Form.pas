unit PrimDocumentWithFlash_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/PrimDocumentWithFlash_Form.pas"
// Начат: 27.01.2009 13:15
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Работа с документом и списком документов::Document::View::DocumentWithFlash::PrimDocumentWithFlash
//
// Документ-схема
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  DocumentUnit,
  afwInterfaces
  {$If not defined(NoVCM)}
  ,
  vcmExternalInterfaces
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmInterfaces
  {$IfEnd} //not NoVCM
  ,
  Messages,
  l3SimpleObject,
  bsTypes,
  DocumentAndListInterfaces
  {$If defined(Nemesis)}
  ,
  nscEditor
  {$IfEnd} //Nemesis
  ,
  vtShockwaveFlashEx,
  nevGUIInterfaces,
  afwNavigation,
  nevNavigation,
  Base_Operations_Strange_Controls,
  Base_Operations_Editions_Controls,
  Search_Strange_Controls,
  Common_Strange_Controls,
  DocumentWithFlashUserTypes_dwftSynchro_UserType,
  DocInfoInterfaces,
  vcmEntityForm {a},
  vcmControllers {a},
  l3Bitmap,
  l3Interfaces,
  Graphics,
  OfficeLike_Usual_Controls,
  UnderControlUnit,
  l3TreeInterfaces,
  WorkWithDocumentInterfaces,
  BaseDocumentWithAttributesInterfaces
  {$If defined(Nemesis)}
  ,
  nscNewInterfaces
  {$IfEnd} //Nemesis
  ,
  UnderControlInterfaces,
  Hypertext_Controls_Controls
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  l3StringIDEx,
  DocumentWithFlashUserTypes_dwftMain_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  Classes,
  Forms,
  eeInterfaces,
  nsTypes
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
const
  { Ссылки }
 g_OpenDoc = Messages.WM_User + 100;

type
 InsDocumentWithFlashState = interface(IvcmBase)
   ['{5F467A22-A292-4360-B74C-CCA62C7A957B}']
   function pm_GetFrame: Integer;
   property Frame: Integer
     read pm_GetFrame;
     {* номер кадра }
 end;//InsDocumentWithFlashState

 TnsDocumentWithFlashState = class(Tl3SimpleObject, InsDocumentWithFlashState)
 private
 // private fields
   f_Frame : Integer;
 protected
 // realized methods
   function pm_GetFrame: Integer;
 public
 // public methods
   constructor Create(aFrame: Integer); reintroduce;
   class function Make(aFrame: Integer): InsDocumentWithFlashState; reintroduce;
 end;//TnsDocumentWithFlashState

 _BaseDocumentForDocumentModule_Parent_ = TvcmEntityForm;
 {$Include ..\View\BaseDocumentForDocumentModule.imp.pas}
 _PrintableFlash_Parent_ = _BaseDocumentForDocumentModule_;
 {$Include w:\garant6x\implementation\Garant\GbaNemesis\Printing\PrintableFlash.imp.pas}
 _CommonForTextAndFlashOperations_Parent_ = _PrintableFlash_;
 {$Include ..\View\CommonForTextAndFlashOperations.imp.pas}
 _DocumentWithFlashUserTypes_Parent_ = _CommonForTextAndFlashOperations_;
 {$Include ..\View\DocumentWithFlashUserTypes.imp.pas}
 TPrimDocumentWithFlashForm = {form} class(_DocumentWithFlashUserTypes_)
  {* Документ-схема }
 private
 // private fields
   f_Flash : TvtShockwaveFlashEx;
    {* Поле для свойства Flash}
   f_Editor : TnscEditor;
    {* Поле для свойства Editor}
   f_FromHistory : Boolean;
    {* Поле для свойства FromHistory}
   f_State : InsDocumentWithFlashState;
    {* Поле для свойства State}
 protected
  procedure SignalDataSourceChanged(const anOld : IvcmViewAreaController;
                                const aDsNew : IvcmViewAreaController); override;
  procedure InitEntities; override;
 protected
 // property methods
   function pm_GetDocument: IDocument;
   function pm_GetFlash: TvtShockwaveFlashEx;
 protected
 // realized methods
   procedure File_Save_Test(const aParams: IvcmTestParamsPrim);
     {* Сохранить }
   procedure File_Save_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Сохранить }
   procedure File_SaveToFolder_Test(const aParams: IvcmTestParamsPrim);
     {* Сохранить в папки }
   procedure File_SaveToFolder_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Сохранить в папки }
   procedure File_LoadFromFolder_Test(const aParams: IvcmTestParamsPrim);
     {* Загрузить из папок }
   procedure File_LoadFromFolder_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Загрузить из папок }
   procedure Document_OpenCorrespondentList_Test(const aParams: IvcmTestParamsPrim);
     {* Коллеги, это что? }
   procedure Document_OpenCorrespondentList_Execute(aKind: TlstCRType;
    const aCRType: Il3SimpleNode);
     {* Коллеги, это что? }
   procedure Document_OpenCorrespondentList(const aParams: IvcmExecuteParams);
     {* Коллеги, это что? }
   procedure Document_OpenRespondentList_Test(const aParams: IvcmTestParamsPrim);
     {* Коллеги, это что? }
   procedure Document_OpenRespondentList_Execute(aKind: TlstCRType;
    const aCRType: Il3SimpleNode);
     {* Коллеги, это что? }
   procedure Document_OpenRespondentList(const aParams: IvcmExecuteParams);
     {* Коллеги, это что? }
   procedure Document_GetAttributesFrmAct_Test(const aParams: IvcmTestParamsPrim);
     {* Информация о документе }
   procedure Document_GetAttributesFrmAct_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Информация о документе }
   function Loadable_Load_Execute(const aNode: IeeNode;
    const aData: IUnknown;
    anOp: TListLogicOperation = LLO_NONE): Boolean;
     {* Коллеги, кто может описать этот метод? }
   procedure Loadable_Load(const aParams: IvcmExecuteParams);
     {* Коллеги, кто может описать этот метод? }
   procedure Document_GetRelatedDocFrmAct_Test(const aParams: IvcmTestParamsPrim);
     {* Справка к документу }
   procedure Document_GetRelatedDocFrmAct_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Справка к документу }
   procedure SetBookmark; override;
     {* Устанавливает закладку на текущее место текущего документа }
   function CanAddBookmark: Boolean; override;
     {* Можно ли сейчас добавлять закладку }
   procedure Document_GetCorrespondentList_Test(const aParams: IvcmTestParamsPrim);
     {* Ссылки на документ }
   procedure Document_GetCorrespondentList_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Ссылки на документ }
   procedure Document_GetRespondentList_Test(const aParams: IvcmTestParamsPrim);
     {* Ссылки из документа }
   procedure Document_GetRespondentList_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Ссылки из документа }
   function Document_AttributesCanBeClosed_Execute: Boolean;
     {* Это кандидат на перенос в Facet или что-то подобное }
   procedure Document_AttributesCanBeClosed(const aParams: IvcmExecuteParams);
     {* Это кандидат на перенос в Facet или что-то подобное }
   procedure Document_CommonDocumentOpenNewWindow_Execute(aUserType: Integer);
     {* Что это? }
   procedure Document_CommonDocumentOpenNewWindow(const aParams: IvcmExecuteParams);
     {* Что это? }
   procedure Document_GetCorrespondentListExFrmAct_Test(const aParams: IvcmTestParamsPrim);
     {* Ссылки на документ (вид информации) }
   procedure Document_GetCorrespondentListExFrmAct_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Ссылки на документ (вид информации) }
   procedure Document_GetRespondentListExFrmAct_Test(const aParams: IvcmTestParamsPrim);
     {* Ссылки из документа (вид информации) }
   procedure Document_GetRespondentListExFrmAct_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Ссылки из документа (вид информации) }
   procedure Document_GetGraphicImage_Test(const aParams: IvcmTestParamsPrim);
   procedure Document_GetGraphicImage_Execute(const aParams: IvcmExecuteParamsPrim);
   function pm_GetFlashForPrint: TvtShockwaveFlashEx; override;
   function Name: Il3CString; override;
   function ShortName: Il3CString; override;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   procedure WndProc(var Message: TMessage); override;
   {$If not defined(NoVCM)}
   procedure NotifyDataSourceChanged(const anOld: IvcmViewAreaController;
    const aNew: IvcmViewAreaController); override;
     {* Изменился источник данных. Для перекрытия в потомках }
   {$IfEnd} //not NoVCM
   {$If not defined(NoVCM)}
   function CallCloseQuery(aCaller: TCustomForm): Boolean; override;
   {$IfEnd} //not NoVCM
   {$If not defined(NoVCM)}
   function DoSaveState(out theState: IvcmBase;
    aStateType: TvcmStateType): Boolean; override;
     {* Сохраняет состояние формы. Для перекрытия в потомках }
   {$IfEnd} //not NoVCM
   {$If not defined(NoVCM)}
   function DoLoadState(const aState: IvcmBase;
    aStateType: TvcmStateType): Boolean; override;
     {* Загружает состояние формы. Для перекрытия в потомках }
   {$IfEnd} //not NoVCM
   function NeedsStatusBarItems: Boolean; override;
     {* Определяет, что операции в статусной строке таки надо публиковать }
   {$If not defined(NoVCM)}
   procedure InitControls; override;
     {* Процедура инициализации контролов. Для перекрытия в потомках }
   {$IfEnd} //not NoVCM
   procedure ClearFields; override;
   procedure DoPrintExecute(const aParams: IvcmExecuteParamsPrim); override;
   procedure DoPreviewExecute(const aParams: IvcmExecuteParamsPrim); override;
 public
 // overridden public methods
   constructor Create(AOwner: TComponent); override;
   {$If not defined(NoVCM)}
   procedure SetPositionByDS; override;
     {* Вызывается когда нужно изменить позицию используя источник данных. [$136258455] }
   {$IfEnd} //not NoVCM
 protected
 // protected fields
   bsFlash : IbsFlash;
   dsBaseDocument : IdsBaseDocument;
 protected
 // protected methods
   function DocumnetOnJumpTo(Sender: TObject;
     anEffects: TafwJumpToEffects;
     const aMoniker: IevMoniker): Boolean;
     {* Переход по ссылке }
   procedure OnFSCommand(aSender: TObject;
    const command: WideString;
    const args: WideString);
     {* обработка ссылок в ролике }
   procedure OnLoadFlash(aSender: TObject);
     {* загрузить ролик по требованию }
   procedure DoLoadFlash;
     {* загрузить ролик }
   procedure AddToWorkJournal;
   procedure DocumentGetHotSpotInfo(Sender: TObject;
    const aHotSpot: IevHotSpot;
    const aKeys: TafwCursorState;
    var theInfo: TafwCursorInfo);
     {* вид курсора }
   procedure OpenCRListTest(const aParams: IvcmTestParamsPrim;
    aType: TlstCRType);
 protected
 // protected properties
   property Document: IDocument
     read pm_GetDocument;
     {* Адаптерный документ }
   property Flash: TvtShockwaveFlashEx
     read pm_GetFlash;
     {* компонент для проигрывания flash-роликов }
   property Editor: TnscEditor
     read f_Editor
     write f_Editor;
     {* сообщение о том, что плеер не установлен в системе }
   property FromHistory: Boolean
     read f_FromHistory
     write f_FromHistory;
     {* форму открытили переходом по истории. Нужно чтобы сделать загрузку по требованию }
   property State: InsDocumentWithFlashState
     read f_State
     write f_State;
     {* состояние ролика }
 end;//TPrimDocumentWithFlashForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  ShellAPI
  {$If not defined(NoVCM)}
  ,
  vcmBase
  {$IfEnd} //not NoVCM
  ,
  nsDocumentTools,
  FoldersDomainInterfaces
  {$If not defined(NoVCM)}
  ,
  StdRes
  {$IfEnd} //not NoVCM
  ,
  nsUtils,
  nsConst,
  k2Prim,
  k2Tags,
  Controls,
  FlashUtils,
  Windows,
  nsExternalObject,
  l3String,
  DataAdapter,
  BaseTreeSupportUnit,
  BaseTypesUnit,
  nsOpenUtils,
  FoldersUnit,
  Document_Const,
  bsTypesNew,
  nsDocumentPrintEvent,
  nsDocumentPrintPreviewEvent,
  LoggingInterfaces,
  SysUtils {a},
  evBitmapDataObject,
  nsFixedHAFMacroReplacer,
  nsObjectPreview,
  nevBase,
  nsHAFPainter,
  afwFacade,
  bsUtils,
  DynamicTreeUnit,
  DocumentInterfaces,
  ExternalObjectUnit,
  nsDocumentFromListNavigationEvent
  {$If defined(Nemesis)}
  ,
  nscStatusBarItemDef
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscStatusBarOperationDef
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscStatusBarDelimiterDef
  {$IfEnd} //Nemesis
  ,
  DocumentUtil
  {$If defined(Nemesis)}
  ,
  nscStatusBarOperationDefsList
  {$IfEnd} //Nemesis
  ,
  Common_FormDefinitions_Controls,
  evConstStringData,
  l3Base,
  evdHyperlinkInfo,
  nsHyperlinkToDocumentProducerConst,
  l3MessageID
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

type _Instance_R_ = TPrimDocumentWithFlashForm;

{$Include ..\View\BaseDocumentForDocumentModule.imp.pas}

{$Include w:\garant6x\implementation\Garant\GbaNemesis\Printing\PrintableFlash.imp.pas}

{$Include ..\View\CommonForTextAndFlashOperations.imp.pas}

{$Include ..\View\DocumentWithFlashUserTypes.imp.pas}

// start class TPrimDocumentWithFlashForm

function TPrimDocumentWithFlashForm.DocumnetOnJumpTo(Sender: TObject;
  anEffects: TafwJumpToEffects;
  const aMoniker: IevMoniker): Boolean;
//#UC START# *4A23B242004C_497EDE780363_var*
//#UC END# *4A23B242004C_497EDE780363_var*
var
 l_HL : IevHyperlink;
 l_Form : IvcmEntityForm;
begin
//#UC START# *4A23B242004C_497EDE780363_impl*
 Result := False;
 if Supports(aMoniker, IevHyperlink, l_HL) then
 begin
  case l_HL.ID of
   Ord(cnsFlashActiveXInstallLinkId):
   begin
    ShellExecute(0, 'open', c_FlashActiveXInstallURL, nil, nil, SW_SHOWNORMAL);
    Result := True;
   end;//Ord(cnsFlashActiveXInstallLinkId)
   else
    Assert(false);
  end;//case l_HL.ID of
 end;//if Supports(aMoniker, IevHyperlink, l_HL) then
//#UC END# *4A23B242004C_497EDE780363_impl*
end;//TPrimDocumentWithFlashForm.DocumnetOnJumpTo
// start class TnsDocumentWithFlashState

constructor TnsDocumentWithFlashState.Create(aFrame: Integer);
//#UC START# *49900CC302D0_498855F60137_var*
//#UC END# *49900CC302D0_498855F60137_var*
begin
//#UC START# *49900CC302D0_498855F60137_impl*
 inherited Create;
 f_Frame := aFrame;
//#UC END# *49900CC302D0_498855F60137_impl*
end;//TnsDocumentWithFlashState.Create

class function TnsDocumentWithFlashState.Make(aFrame: Integer): InsDocumentWithFlashState;
var
 l_Inst : TnsDocumentWithFlashState;
begin
 l_Inst := Create(aFrame);
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

function TnsDocumentWithFlashState.pm_GetFrame: Integer;
//#UC START# *49900C5303E7_498855F60137get_var*
//#UC END# *49900C5303E7_498855F60137get_var*
begin
//#UC START# *49900C5303E7_498855F60137get_impl*
 Result := f_Frame;
//#UC END# *49900C5303E7_498855F60137get_impl*
end;//TnsDocumentWithFlashState.pm_GetFrame

function TPrimDocumentWithFlashForm.pm_GetDocument: IDocument;
//#UC START# *4988194E02F8_497EDE780363get_var*
//#UC END# *4988194E02F8_497EDE780363get_var*
begin
//#UC START# *4988194E02F8_497EDE780363get_impl*
 if (sdsBaseDocument <> nil) and Assigned(sdsBaseDocument.DocInfo) then
  Result := sdsBaseDocument.DocInfo.Doc
 else
  Result := nil;
//#UC END# *4988194E02F8_497EDE780363get_impl*
end;//TPrimDocumentWithFlashForm.pm_GetDocument

function TPrimDocumentWithFlashForm.pm_GetFlash: TvtShockwaveFlashEx;
//#UC START# *498845CE003C_497EDE780363get_var*
const
 c_HyperlinkLenght = 10;

  procedure lp_MakeEditor;

    procedure lp_GenerateText;
    var
     l_Gen: Ik2TagGenerator;
    begin
     with Editor do
      l_Gen := TextSource.GetGenerator(View, nil);
     with l_Gen do
     begin
      Start;
      try
       StartChild(k2_idDocument);
       try
        with vcmCStr(str_FlashActiveXDoesNotInstalled) do
         bsEditorAddPara(l_Gen,
                         AsWStr,
                         false,
                         cNoneWarningSub,
                         cnsFlashActiveXInstallLinkId,
                         Pred(AsWStr.SLen - c_HyperlinkLenght),
                          // - Pred - пропускаем точку в конце.
                         Pred(AsWStr.SLen)
                          // - Pred - пропускаем точку в конце.
                         );
       finally
        Finish;
       end;//StartChild(k2_idDocument);
      finally
       Finish;
      end;//Start;
     end;//with aGen do
    end;//lp_GenerateText

  begin
   Editor := TnscEditor.Create(nil);
   with Editor do
   begin
    Parent := Self;
    Align := alClient;
    IsStaticText := True;
    OnJumpTo := DocumnetOnJumpTo;
    OnGetHotSpotInfo := DocumentGetHotSpotInfo;
   end;//with f_Editor do
   if (UserType <> dwftSynchro) then
    if Editor.CanFocus then
     Editor.SetFocus;
   //ActiveControl := Editor;
   lp_GenerateText;
  end;

//#UC END# *498845CE003C_497EDE780363get_var*
begin
//#UC START# *498845CE003C_497EDE780363get_impl*
 if (f_Flash = nil) and (Editor = nil) then
  // Создадим компонент для показа flash-ролика:
  if nsMakeFlashActiveX(Self, false, f_Flash) then
  begin
   with f_Flash do
   begin
    Name := 'Flash';
    OnFSCommand := Self.OnFSCommand;
    OnLoadFlash := Self.OnLoadFlash;
   end;//with f_Flash
  end//nsMakeFlashActiveX
  // Напишем, что компонент в системе не установлен:
  else
  if Editor = nil then
   lp_MakeEditor;
 Result := f_Flash;
//#UC END# *498845CE003C_497EDE780363get_impl*
end;//TPrimDocumentWithFlashForm.pm_GetFlash

procedure TPrimDocumentWithFlashForm.OnFSCommand(aSender: TObject;
  const command: WideString;
  const args: WideString);
//#UC START# *4988487A023D_497EDE780363_var*
var
 l_DocId   : Integer;
 l_PosId   : Integer;
 l_PosType : TDocumentPositionType;
//#UC END# *4988487A023D_497EDE780363_var*
begin
//#UC START# *4988487A023D_497EDE780363_impl*
 if (command = 'open') then
 begin
  nsParseDocumentNumber(nsCStr(args), l_DocId, l_PosId, l_PosType);
  Inc(l_DocId, c_InternalDocShift);
  Flash.Stop;
  if l_PosType = dptSub then
   PostMessage(Handle, g_OpenDoc, l_DocId, l_PosID)
  else
   PostMessage(Handle, g_OpenDoc, l_DocId, 0)
 end;//command = 'open'
//#UC END# *4988487A023D_497EDE780363_impl*
end;//TPrimDocumentWithFlashForm.OnFSCommand

procedure TPrimDocumentWithFlashForm.OnLoadFlash(aSender: TObject);
//#UC START# *498848DB00BD_497EDE780363_var*
//#UC END# *498848DB00BD_497EDE780363_var*
begin
//#UC START# *498848DB00BD_497EDE780363_impl*
 DoLoadFlash;
//#UC END# *498848DB00BD_497EDE780363_impl*
end;//TPrimDocumentWithFlashForm.OnLoadFlash

procedure TPrimDocumentWithFlashForm.DoLoadFlash;
//#UC START# *49884900020F_497EDE780363_var*

  procedure lp_LoadFlash;
  var
   l_Flash  : IbsFlash;
   l_Stream : TnsExternalObjectStream;
   l_FrameIndex : Integer;
  begin
   if (Flash <> nil) and
      (bsFlash <> nil) and
      (bsFlash.FlashData <> nil) then
   begin
    l_Stream := TnsExternalObjectStream.Create(bsFlash.FlashData);
    try
     with Flash do
     begin
      Stop;
      LoadMovieFromStream(l_Stream);
      Stop;
     end;
     if FromHistory then
     begin
      Flash.FrameNum := State.Frame;
      State := nil;
     end
     else
      SetPositionByDS;

     // http://mdp.garant.ru/pages/viewpage.action?pageId=294599729&focusedCommentId=306938204#comment-306938204
     l_FrameIndex := Flash.CurrentFrame;
     if l_FrameIndex > 0 then
     begin
       Flash.Rewind;
       Flash.FrameNum := l_FrameIndex;
     end;
    finally
     FreeAndNil(l_Stream);
    end;//try..finally
   end;//Flash <> nil
  end;

//#UC END# *49884900020F_497EDE780363_var*
begin
//#UC START# *49884900020F_497EDE780363_impl*
 lp_LoadFlash;
 case UserType of
  dwftMain:
   CCaption := l3Cat(CurUserType.Caption+ ' : ', DataSource.DisplayName);
  else
   CCaption := nsCStr(CurUserType.Caption);
 end;
 if FromHistory then
  AddToWorkJournal;
//#UC END# *49884900020F_497EDE780363_impl*
end;//TPrimDocumentWithFlashForm.DoLoadFlash

procedure TPrimDocumentWithFlashForm.AddToWorkJournal;
//#UC START# *49884DFB0368_497EDE780363_var*
var
 l_BookMark: IJournalBookmark;
//#UC END# *49884DFB0368_497EDE780363_var*
begin
//#UC START# *49884DFB0368_497EDE780363_impl*
 if Document <> nil then
 begin
  Document.CreateJournalBookmark(0, l_Bookmark);
  TdmStdRes.MakeWorkJournal.AddBookMark(l_Bookmark);
 end;
//#UC END# *49884DFB0368_497EDE780363_impl*
end;//TPrimDocumentWithFlashForm.AddToWorkJournal

procedure TPrimDocumentWithFlashForm.DocumentGetHotSpotInfo(Sender: TObject;
  const aHotSpot: IevHotSpot;
  const aKeys: TafwCursorState;
  var theInfo: TafwCursorInfo);
//#UC START# *49884FB500EB_497EDE780363_var*
//#UC END# *49884FB500EB_497EDE780363_var*
begin
//#UC START# *49884FB500EB_497EDE780363_impl*
 if Supports(aHotSpot, IevHyperlink) then
  theInfo.rCursor := ev_csExternalHand;
//#UC END# *49884FB500EB_497EDE780363_impl*
end;//TPrimDocumentWithFlashForm.DocumentGetHotSpotInfo

procedure TPrimDocumentWithFlashForm.OpenCRListTest(const aParams: IvcmTestParamsPrim;
  aType: TlstCRType);
//#UC START# *498859BF027A_497EDE780363_var*
var
 l_List: IvcmNodes;
//#UC END# *498859BF027A_497EDE780363_var*
begin
//#UC START# *498859BF027A_497EDE780363_impl*
 OpenCRListOpTest(aParams, aType);
 if aParams.Op.Flag[vcm_ofEnabled] then
 begin
  l_List := aParams.Op.SubNodes;
  if l_List <> nil then
   l_List.Add(DefDataAdapter.CRSimpleListTypeRootNode);
 end;
//#UC END# *498859BF027A_497EDE780363_impl*
end;//TPrimDocumentWithFlashForm.OpenCRListTest

procedure TPrimDocumentWithFlashForm.File_Save_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *495235F401C0_497EDE780363test_var*
//#UC END# *495235F401C0_497EDE780363test_var*
begin
//#UC START# *495235F401C0_497EDE780363test_impl*
 aParams.Op.Flag[vcm_ofEnabled] := false;
//#UC END# *495235F401C0_497EDE780363test_impl*
end;//TPrimDocumentWithFlashForm.File_Save_Test

procedure TPrimDocumentWithFlashForm.File_Save_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *495235F401C0_497EDE780363exec_var*
//#UC END# *495235F401C0_497EDE780363exec_var*
begin
//#UC START# *495235F401C0_497EDE780363exec_impl*
 Assert(false);
//#UC END# *495235F401C0_497EDE780363exec_impl*
end;//TPrimDocumentWithFlashForm.File_Save_Execute

procedure TPrimDocumentWithFlashForm.File_SaveToFolder_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *49885D540232_497EDE780363test_var*
//#UC END# *49885D540232_497EDE780363test_var*
begin
//#UC START# *49885D540232_497EDE780363test_impl*
 aParams.Op.Flag[vcm_ofEnabled] := (Document <> nil);
//#UC END# *49885D540232_497EDE780363test_impl*
end;//TPrimDocumentWithFlashForm.File_SaveToFolder_Test

procedure TPrimDocumentWithFlashForm.File_SaveToFolder_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *49885D540232_497EDE780363exec_var*
//#UC END# *49885D540232_497EDE780363exec_var*
begin
//#UC START# *49885D540232_497EDE780363exec_impl*
 SetBookMark;
//#UC END# *49885D540232_497EDE780363exec_impl*
end;//TPrimDocumentWithFlashForm.File_SaveToFolder_Execute

procedure TPrimDocumentWithFlashForm.File_LoadFromFolder_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *49885D59018D_497EDE780363test_var*
//#UC END# *49885D59018D_497EDE780363test_var*
begin
//#UC START# *49885D59018D_497EDE780363test_impl*
 // - ничего не делаем
//#UC END# *49885D59018D_497EDE780363test_impl*
end;//TPrimDocumentWithFlashForm.File_LoadFromFolder_Test

procedure TPrimDocumentWithFlashForm.File_LoadFromFolder_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *49885D59018D_497EDE780363exec_var*
//#UC END# *49885D59018D_497EDE780363exec_var*
begin
//#UC START# *49885D59018D_497EDE780363exec_impl*
 TdmStdRes.SelectOpen(Self.as_IvcmEntityForm,
                      dsBaseDocument.As_IucpFilterInfoFactory.MakeFilterInfo(ffBookmark),
                      str_OpenBookmark);
//#UC END# *49885D59018D_497EDE780363exec_impl*
end;//TPrimDocumentWithFlashForm.File_LoadFromFolder_Execute

procedure TPrimDocumentWithFlashForm.Document_OpenCorrespondentList_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4988752302F4_497EDE780363test_var*
//#UC END# *4988752302F4_497EDE780363test_var*
begin
//#UC START# *4988752302F4_497EDE780363test_impl*
 OpenCRListTest(aParams, crtCorrespondents);
//#UC END# *4988752302F4_497EDE780363test_impl*
end;//TPrimDocumentWithFlashForm.Document_OpenCorrespondentList_Test

procedure TPrimDocumentWithFlashForm.Document_OpenCorrespondentList_Execute(aKind: TlstCRType;
  const aCRType: Il3SimpleNode);
//#UC START# *4988752302F4_497EDE780363exec_var*
//#UC END# *4988752302F4_497EDE780363exec_var*
begin
//#UC START# *4988752302F4_497EDE780363exec_impl*
 //if not Operation(TdmStdRes.opcode_Document_GetCorrespondentListExFrmAct).Done then
  Assert(false);
 //OpenCRListOpExecute(crtCorrespondents, aParams.CurrentNode);
//#UC END# *4988752302F4_497EDE780363exec_impl*
end;//TPrimDocumentWithFlashForm.Document_OpenCorrespondentList_Execute

procedure TPrimDocumentWithFlashForm.Document_OpenCorrespondentList(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IDocument_OpenCorrespondentList_Params) do
  Document_OpenCorrespondentList_Execute(Kind, CRType);
end;

procedure TPrimDocumentWithFlashForm.Document_OpenRespondentList_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *49888E8003B9_497EDE780363test_var*
//#UC END# *49888E8003B9_497EDE780363test_var*
begin
//#UC START# *49888E8003B9_497EDE780363test_impl*
 OpenCRListTest(aParams, crtRespondents);
//#UC END# *49888E8003B9_497EDE780363test_impl*
end;//TPrimDocumentWithFlashForm.Document_OpenRespondentList_Test

procedure TPrimDocumentWithFlashForm.Document_OpenRespondentList_Execute(aKind: TlstCRType;
  const aCRType: Il3SimpleNode);
//#UC START# *49888E8003B9_497EDE780363exec_var*
//#UC END# *49888E8003B9_497EDE780363exec_var*
begin
//#UC START# *49888E8003B9_497EDE780363exec_impl*
 //if not Operation(TdmStdRes.opcode_Document_GetRespondentListExFrmAct).Done then
  Assert(false);
 //OpenCRListOpExecute(crtRespondents, aParams.CurrentNode);
//#UC END# *49888E8003B9_497EDE780363exec_impl*
end;//TPrimDocumentWithFlashForm.Document_OpenRespondentList_Execute

procedure TPrimDocumentWithFlashForm.Document_OpenRespondentList(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IDocument_OpenRespondentList_Params) do
  Document_OpenRespondentList_Execute(Kind, CRType);
end;

procedure TPrimDocumentWithFlashForm.Document_GetAttributesFrmAct_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *498891640253_497EDE780363test_var*
//#UC END# *498891640253_497EDE780363test_var*
begin
//#UC START# *498891640253_497EDE780363test_impl*
 OpenAttributesOpTest(aParams);
//#UC END# *498891640253_497EDE780363test_impl*
end;//TPrimDocumentWithFlashForm.Document_GetAttributesFrmAct_Test

procedure TPrimDocumentWithFlashForm.Document_GetAttributesFrmAct_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *498891640253_497EDE780363exec_var*
//#UC END# *498891640253_497EDE780363exec_var*
begin
//#UC START# *498891640253_497EDE780363exec_impl*
 OpenAttributesOpExecute;
//#UC END# *498891640253_497EDE780363exec_impl*
end;//TPrimDocumentWithFlashForm.Document_GetAttributesFrmAct_Execute

function TPrimDocumentWithFlashForm.Loadable_Load_Execute(const aNode: IeeNode;
  const aData: IUnknown;
  anOp: TListLogicOperation = LLO_NONE): Boolean;
//#UC START# *49895A2102E8_497EDE780363exec_var*
var
 l_FolderNode : INode;
 l_BaseEntity : IUnknown;
//#UC END# *49895A2102E8_497EDE780363exec_var*
begin
//#UC START# *49895A2102E8_497EDE780363exec_impl*
 Result := true;
 if Supports(aNode, INode, l_FolderNode) then
 try
  try
   l_FolderNode.Open(l_BaseEntity);
  except
   on ECanNotFindData do
   begin
    nsSayAdapterObjectMissing(Self, l_FolderNode);
    Result := false;
    Exit;
   end;//on ECanNotFindData
  end;//try..except
  try
   case TFoldersItemType(l_FolderNode.GetObjectType) of
    FIT_BOOKMARK, FIT_PHARM_BOOKMARK:
     TdmStdRes.OpenEntityAsDocument(l_BaseEntity, nil);
   end;//case TFoldersItemType(l_FolderNode.GetObjectType)
  finally
   l_BaseEntity := nil;
  end;//try..finally
 finally
  l_FolderNode := nil;
 end;//try..finally
//#UC END# *49895A2102E8_497EDE780363exec_impl*
end;//TPrimDocumentWithFlashForm.Loadable_Load_Execute

procedure TPrimDocumentWithFlashForm.Loadable_Load(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As ILoadable_Load_Params) do
  ResultValue := Loadable_Load_Execute(Node, Data, nOp);
end;

procedure TPrimDocumentWithFlashForm.Document_GetRelatedDocFrmAct_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *498993C801DC_497EDE780363test_var*
//#UC END# *498993C801DC_497EDE780363test_var*
begin
//#UC START# *498993C801DC_497EDE780363test_impl*
 OpenRelatedDocOpTest(aParams);
//#UC END# *498993C801DC_497EDE780363test_impl*
end;//TPrimDocumentWithFlashForm.Document_GetRelatedDocFrmAct_Test

procedure TPrimDocumentWithFlashForm.Document_GetRelatedDocFrmAct_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *498993C801DC_497EDE780363exec_var*
//#UC END# *498993C801DC_497EDE780363exec_var*
begin
//#UC START# *498993C801DC_497EDE780363exec_impl*
 // ничего не делаем, т.к. это FormActivate - http://mdp.garant.ru/pages/viewpage.action?pageId=135136020&focusedCommentId=136258958#comment-136258958
//#UC END# *498993C801DC_497EDE780363exec_impl*
end;//TPrimDocumentWithFlashForm.Document_GetRelatedDocFrmAct_Execute

procedure TPrimDocumentWithFlashForm.SetBookmark;
//#UC START# *4989CD040306_497EDE780363_var*
var
 l_Bookmark : IBookmark;
//#UC END# *4989CD040306_497EDE780363_var*
begin
//#UC START# *4989CD040306_497EDE780363_impl*
 CreateBookmark(Document, 0, true, l_Bookmark);
 if (l_Bookmark <> nil) then
 try
  TdmStdRes.SaveOpen(Self.As_IvcmEntityForm,
                     dsBaseDocument.As_IucpFilterInfoFactory.MakeFilterInfo(ffListAndBookMarks),
                     fetBookMark,
                     l_Bookmark,
                     false);
 finally
  l_Bookmark := nil;
 end;//try..finally
//#UC END# *4989CD040306_497EDE780363_impl*
end;//TPrimDocumentWithFlashForm.SetBookmark

function TPrimDocumentWithFlashForm.CanAddBookmark: Boolean;
//#UC START# *4989CF90010A_497EDE780363_var*
//#UC END# *4989CF90010A_497EDE780363_var*
begin
//#UC START# *4989CF90010A_497EDE780363_impl*
 Result := (Document <> nil);
//#UC END# *4989CF90010A_497EDE780363_impl*
end;//TPrimDocumentWithFlashForm.CanAddBookmark

procedure TPrimDocumentWithFlashForm.Document_GetCorrespondentList_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4989D65C0275_497EDE780363test_var*
//#UC END# *4989D65C0275_497EDE780363test_var*
begin
//#UC START# *4989D65C0275_497EDE780363test_impl*
 OpenCRListOpTest(aParams, crtCorrespondents, False);
//#UC END# *4989D65C0275_497EDE780363test_impl*
end;//TPrimDocumentWithFlashForm.Document_GetCorrespondentList_Test

procedure TPrimDocumentWithFlashForm.Document_GetCorrespondentList_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4989D65C0275_497EDE780363exec_var*
//#UC END# *4989D65C0275_497EDE780363exec_var*
begin
//#UC START# *4989D65C0275_497EDE780363exec_impl*
 OpenCRListOpExecute(crtCorrespondents, nil);
//#UC END# *4989D65C0275_497EDE780363exec_impl*
end;//TPrimDocumentWithFlashForm.Document_GetCorrespondentList_Execute

procedure TPrimDocumentWithFlashForm.Document_GetRespondentList_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4989D8430128_497EDE780363test_var*
//#UC END# *4989D8430128_497EDE780363test_var*
begin
//#UC START# *4989D8430128_497EDE780363test_impl*
 OpenCRListOpTest(aParams, crtRespondents, False);
//#UC END# *4989D8430128_497EDE780363test_impl*
end;//TPrimDocumentWithFlashForm.Document_GetRespondentList_Test

procedure TPrimDocumentWithFlashForm.Document_GetRespondentList_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4989D8430128_497EDE780363exec_var*
//#UC END# *4989D8430128_497EDE780363exec_var*
begin
//#UC START# *4989D8430128_497EDE780363exec_impl*
 OpenCRListOpExecute(crtRespondents, nil);
//#UC END# *4989D8430128_497EDE780363exec_impl*
end;//TPrimDocumentWithFlashForm.Document_GetRespondentList_Execute

function TPrimDocumentWithFlashForm.Document_AttributesCanBeClosed_Execute: Boolean;
//#UC START# *4989DE3702CF_497EDE780363exec_var*
//#UC END# *4989DE3702CF_497EDE780363exec_var*
begin
//#UC START# *4989DE3702CF_497EDE780363exec_impl*
 Result := OpenAttributesOpCanBeClosed;
//#UC END# *4989DE3702CF_497EDE780363exec_impl*
end;//TPrimDocumentWithFlashForm.Document_AttributesCanBeClosed_Execute

procedure TPrimDocumentWithFlashForm.Document_AttributesCanBeClosed(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IDocument_AttributesCanBeClosed_Params) do
  ResultValue := Document_AttributesCanBeClosed_Execute;
end;

procedure TPrimDocumentWithFlashForm.Document_CommonDocumentOpenNewWindow_Execute(aUserType: Integer);
//#UC START# *4A8EF02E007D_497EDE780363exec_var*
//#UC END# *4A8EF02E007D_497EDE780363exec_var*
begin
//#UC START# *4A8EF02E007D_497EDE780363exec_impl*
 Assert(false);
//#UC END# *4A8EF02E007D_497EDE780363exec_impl*
end;//TPrimDocumentWithFlashForm.Document_CommonDocumentOpenNewWindow_Execute

procedure TPrimDocumentWithFlashForm.Document_CommonDocumentOpenNewWindow(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IDocument_CommonDocumentOpenNewWindow_Params) do
  Document_CommonDocumentOpenNewWindow_Execute(UserType);
end;

procedure TPrimDocumentWithFlashForm.Document_GetCorrespondentListExFrmAct_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4AF329F6002A_497EDE780363test_var*
//#UC END# *4AF329F6002A_497EDE780363test_var*
begin
//#UC START# *4AF329F6002A_497EDE780363test_impl*
 OpenCRListTest(aParams, crtCorrespondents);
//#UC END# *4AF329F6002A_497EDE780363test_impl*
end;//TPrimDocumentWithFlashForm.Document_GetCorrespondentListExFrmAct_Test

procedure TPrimDocumentWithFlashForm.Document_GetCorrespondentListExFrmAct_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4AF329F6002A_497EDE780363exec_var*
//#UC END# *4AF329F6002A_497EDE780363exec_var*
begin
//#UC START# *4AF329F6002A_497EDE780363exec_impl*
 OpenCRListOpExecute(crtCorrespondents, aParams.CurrentNode);
//#UC END# *4AF329F6002A_497EDE780363exec_impl*
end;//TPrimDocumentWithFlashForm.Document_GetCorrespondentListExFrmAct_Execute

procedure TPrimDocumentWithFlashForm.Document_GetRespondentListExFrmAct_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4AF329FD014D_497EDE780363test_var*
//#UC END# *4AF329FD014D_497EDE780363test_var*
begin
//#UC START# *4AF329FD014D_497EDE780363test_impl*
 OpenCRListTest(aParams, crtRespondents);
//#UC END# *4AF329FD014D_497EDE780363test_impl*
end;//TPrimDocumentWithFlashForm.Document_GetRespondentListExFrmAct_Test

procedure TPrimDocumentWithFlashForm.Document_GetRespondentListExFrmAct_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4AF329FD014D_497EDE780363exec_var*
//#UC END# *4AF329FD014D_497EDE780363exec_var*
begin
//#UC START# *4AF329FD014D_497EDE780363exec_impl*
 OpenCRListOpExecute(crtRespondents, aParams.CurrentNode);
//#UC END# *4AF329FD014D_497EDE780363exec_impl*
end;//TPrimDocumentWithFlashForm.Document_GetRespondentListExFrmAct_Execute

procedure TPrimDocumentWithFlashForm.Document_GetGraphicImage_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C3C77CC012A_497EDE780363test_var*
//#UC END# *4C3C77CC012A_497EDE780363test_var*
begin
//#UC START# *4C3C77CC012A_497EDE780363test_impl*
 aParams.Op.Flag[vcm_ofEnabled] := false;
//#UC END# *4C3C77CC012A_497EDE780363test_impl*
end;//TPrimDocumentWithFlashForm.Document_GetGraphicImage_Test

procedure TPrimDocumentWithFlashForm.Document_GetGraphicImage_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C3C77CC012A_497EDE780363exec_var*
//#UC END# *4C3C77CC012A_497EDE780363exec_var*
begin
//#UC START# *4C3C77CC012A_497EDE780363exec_impl*
 Assert(false);
//#UC END# *4C3C77CC012A_497EDE780363exec_impl*
end;//TPrimDocumentWithFlashForm.Document_GetGraphicImage_Execute

function TPrimDocumentWithFlashForm.pm_GetFlashForPrint: TvtShockwaveFlashEx;
//#UC START# *4CDACDBE00B2_497EDE780363get_var*
//#UC END# *4CDACDBE00B2_497EDE780363get_var*
begin
//#UC START# *4CDACDBE00B2_497EDE780363get_impl*
 Result := Flash;
//#UC END# *4CDACDBE00B2_497EDE780363get_impl*
end;//TPrimDocumentWithFlashForm.pm_GetFlashForPrint

function TPrimDocumentWithFlashForm.Name: Il3CString;
//#UC START# *4CDAD282005F_497EDE780363_var*
//#UC END# *4CDAD282005F_497EDE780363_var*
begin
//#UC START# *4CDAD282005F_497EDE780363_impl*
 Result := nsGetDocumentName(Document);
//#UC END# *4CDAD282005F_497EDE780363_impl*
end;//TPrimDocumentWithFlashForm.Name

function TPrimDocumentWithFlashForm.ShortName: Il3CString;
//#UC START# *4CDAD29D0169_497EDE780363_var*
//#UC END# *4CDAD29D0169_497EDE780363_var*
begin
//#UC START# *4CDAD29D0169_497EDE780363_impl*
 Result := nsGetDocumentShortName(Document);
//#UC END# *4CDAD29D0169_497EDE780363_impl*
end;//TPrimDocumentWithFlashForm.ShortName

procedure TPrimDocumentWithFlashForm.Cleanup;
//#UC START# *479731C50290_497EDE780363_var*
//#UC END# *479731C50290_497EDE780363_var*
begin
//#UC START# *479731C50290_497EDE780363_impl*
 ActiveOleControl := nil;
 FreeAndNil(f_Flash);
 FreeAndNil(f_Editor);
 f_State := nil;
 inherited;
//#UC END# *479731C50290_497EDE780363_impl*
end;//TPrimDocumentWithFlashForm.Cleanup

constructor TPrimDocumentWithFlashForm.Create(AOwner: TComponent);
//#UC START# *47D1602000C6_497EDE780363_var*
//#UC END# *47D1602000C6_497EDE780363_var*
begin
//#UC START# *47D1602000C6_497EDE780363_impl*
 inherited;
 //Flash;
//#UC END# *47D1602000C6_497EDE780363_impl*
end;//TPrimDocumentWithFlashForm.Create

procedure TPrimDocumentWithFlashForm.WndProc(var Message: TMessage);
//#UC START# *47E136A80191_497EDE780363_var*
//#UC END# *47E136A80191_497EDE780363_var*
begin
//#UC START# *47E136A80191_497EDE780363_impl*
 if (Message.Msg = g_OpenDoc) then
  nsOpenDocumentByNumber(Message.WParam, Message.LParam, dptSub)
 else
  inherited WndProc(Message);
//#UC END# *47E136A80191_497EDE780363_impl*
end;//TPrimDocumentWithFlashForm.WndProc

{$If not defined(NoVCM)}
procedure TPrimDocumentWithFlashForm.NotifyDataSourceChanged(const anOld: IvcmViewAreaController;
  const aNew: IvcmViewAreaController);
//#UC START# *497469C90140_497EDE780363_var*
//#UC END# *497469C90140_497EDE780363_var*
begin
//#UC START# *497469C90140_497EDE780363_impl*
 inherited;
 FromHistory := InHistoryStep;
 if (aNew <> nil) then
 begin
  ActiveOleControl := nil;
  ActiveControl := nil;
  FreeAndNil(f_Flash);
  if (Flash <> nil) then
  begin
   Flash.LoadByRequest;
   if (UserType <> dwftSynchro) then
    if Self.CanFocus then
     if Self.Visible AND Self.Enabled then
      if Flash.CanFocus then
       try
        Flash.SetFocus;
       except
        on EInvalidOperation do;
       end;//try..except
  end;//Flash <> nil
 end;//aNew <> nil
//#UC END# *497469C90140_497EDE780363_impl*
end;//TPrimDocumentWithFlashForm.NotifyDataSourceChanged
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
function TPrimDocumentWithFlashForm.CallCloseQuery(aCaller: TCustomForm): Boolean;
//#UC START# *4980407F0076_497EDE780363_var*
//#UC END# *4980407F0076_497EDE780363_var*
begin
//#UC START# *4980407F0076_497EDE780363_impl*
 Result := inherited CallCloseQuery(aCaller);
 AddToWorkJournal;
//#UC END# *4980407F0076_497EDE780363_impl*
end;//TPrimDocumentWithFlashForm.CallCloseQuery
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
function TPrimDocumentWithFlashForm.DoSaveState(out theState: IvcmBase;
  aStateType: TvcmStateType): Boolean;
//#UC START# *49806ED503D5_497EDE780363_var*
//#UC END# *49806ED503D5_497EDE780363_var*
begin
//#UC START# *49806ED503D5_497EDE780363_impl*
 if (aStateType = vcm_stContent) and (Flash <> nil) then
 begin
  AddToWorkJournal;
  theState := TnsDocumentWithFlashState.Make(Flash.FrameNum);
  Result := true;
 end
 else
  Result := inherited DoSaveState(theState, aStateType);
//#UC END# *49806ED503D5_497EDE780363_impl*
end;//TPrimDocumentWithFlashForm.DoSaveState
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
function TPrimDocumentWithFlashForm.DoLoadState(const aState: IvcmBase;
  aStateType: TvcmStateType): Boolean;
//#UC START# *49807428008C_497EDE780363_var*
//#UC END# *49807428008C_497EDE780363_var*
begin
//#UC START# *49807428008C_497EDE780363_impl*
 if (aStateType = vcm_stContent) then
 begin
  Result := Supports(aState, InsDocumentWithFlashState, f_State);
 end//aStateType = vcm_stContent
 else
  Result := inherited DoLoadState(aState, aStateType);
//#UC END# *49807428008C_497EDE780363_impl*
end;//TPrimDocumentWithFlashForm.DoLoadState
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
procedure TPrimDocumentWithFlashForm.SetPositionByDS;
//#UC START# *498953170108_497EDE780363_var*
//#UC END# *498953170108_497EDE780363_var*
begin
//#UC START# *498953170108_497EDE780363_impl*
 inherited;
 if Flash = nil then exit;
 if (dsDocument <> nil) then
 begin
  if (dsDocument.DocInfo.Pos.rRefType = dptSub) OR
     (dsDocument.DocInfo.Pos.rRefType = dptPara)
     // http://mdp.garant.ru/pages/viewpage.action?pageId=235865644
     // http://mdp.garant.ru/pages/viewpage.action?pageId=235865644&focusedCommentId=294604779&#comment-294604779
   then
   Flash.FrameNum := dsDocument.DocInfo.Pos.rPos
  else
   Flash.FrameNum := 0;
 end;//dsDocument <> nil
//#UC END# *498953170108_497EDE780363_impl*
end;//TPrimDocumentWithFlashForm.SetPositionByDS
{$IfEnd} //not NoVCM

function TPrimDocumentWithFlashForm.NeedsStatusBarItems: Boolean;
//#UC START# *4A8E5CEC021F_497EDE780363_var*
//#UC END# *4A8E5CEC021F_497EDE780363_var*
begin
//#UC START# *4A8E5CEC021F_497EDE780363_impl*
 Result := (UserType <> dwftSynchro);
//#UC END# *4A8E5CEC021F_497EDE780363_impl*
end;//TPrimDocumentWithFlashForm.NeedsStatusBarItems

{$If not defined(NoVCM)}
procedure TPrimDocumentWithFlashForm.InitControls;
//#UC START# *4A8E8F2E0195_497EDE780363_var*
//#UC END# *4A8E8F2E0195_497EDE780363_var*
begin
//#UC START# *4A8E8F2E0195_497EDE780363_impl*
 inherited;
 AutoScroll := true;
 Color := clWhite;
 // http://mdp.garant.ru/pages/viewpage.action?pageId=235872341
//#UC END# *4A8E8F2E0195_497EDE780363_impl*
end;//TPrimDocumentWithFlashForm.InitControls
{$IfEnd} //not NoVCM

procedure TPrimDocumentWithFlashForm.ClearFields;
 {-}
begin
 State := nil;
 inherited;
end;//TPrimDocumentWithFlashForm.ClearFields

procedure TPrimDocumentWithFlashForm.DoPrintExecute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *51A45199015E_497EDE780363_var*
var
 l_Preview : IafwDocumentPreview;
 l_Event: InsEventHolder;
//#UC END# *51A45199015E_497EDE780363_var*
begin
//#UC START# *51A45199015E_497EDE780363_impl*
 l_Preview := Preview;
 if (Supports(l_Preview, InsEventHolder, l_Event)) then
  l_Event.SetEvent(TnsDocumentPrintEvent.Make(Document, False))
 else
  Assert(False);
 inherited;
//#UC END# *51A45199015E_497EDE780363_impl*
end;//TPrimDocumentWithFlashForm.DoPrintExecute

procedure TPrimDocumentWithFlashForm.DoPreviewExecute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *51A451E20376_497EDE780363_var*
var
 l_Event: InsEventHolder;
//#UC END# *51A451E20376_497EDE780363_var*
begin
//#UC START# *51A451E20376_497EDE780363_impl*
 TnsDocumentPrintPreviewEvent.Log(Document);
 inherited;
//#UC END# *51A451E20376_497EDE780363_impl*
end;//TPrimDocumentWithFlashForm.DoPreviewExecute

procedure TPrimDocumentWithFlashForm.SignalDataSourceChanged(const anOld : IvcmViewAreaController;
 const aDsNew : IvcmViewAreaController);
begin
 inherited;
 if (aDsNew = nil) then
 begin
  bsFlash := nil;
  dsBaseDocument := nil;
 end//aDsNew = nil
 else
 begin
  aDsNew.CastUCC(IbsFlash, bsFlash);
  Supports(aDsNew, IdsBaseDocument, dsBaseDocument);
 end;//aDsNew = nil
end;

procedure TPrimDocumentWithFlashForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_File, nil);
  PublishFormEntity(en_Document, nil);
  PublishFormEntity(en_Loadable, nil);
  PublishOp(en_File, op_Save, File_Save_Execute, File_Save_Test, nil);
  PublishOp(en_File, op_SaveToFolder, File_SaveToFolder_Execute, File_SaveToFolder_Test, nil);
  PublishOp(en_File, op_LoadFromFolder, File_LoadFromFolder_Execute, File_LoadFromFolder_Test, nil);
  PublishOpWithResult(en_Document, op_OpenCorrespondentList, Document_OpenCorrespondentList, Document_OpenCorrespondentList_Test, nil);
  PublishOpWithResult(en_Document, op_OpenRespondentList, Document_OpenRespondentList, Document_OpenRespondentList_Test, nil);
  PublishOp(en_Document, op_GetAttributesFrmAct, Document_GetAttributesFrmAct_Execute, Document_GetAttributesFrmAct_Test, nil);
  PublishOpWithResult(en_Loadable, op_Load, Loadable_Load, nil, nil);
  PublishOp(en_Document, op_GetRelatedDocFrmAct, Document_GetRelatedDocFrmAct_Execute, Document_GetRelatedDocFrmAct_Test, nil);
  PublishOp(en_Document, op_GetCorrespondentList, Document_GetCorrespondentList_Execute, Document_GetCorrespondentList_Test, nil);
  PublishOp(en_Document, op_GetRespondentList, Document_GetRespondentList_Execute, Document_GetRespondentList_Test, nil);
  PublishOpWithResult(en_Document, op_AttributesCanBeClosed, Document_AttributesCanBeClosed, nil, nil);
  PublishOpWithResult(en_Document, op_CommonDocumentOpenNewWindow, Document_CommonDocumentOpenNewWindow, nil, nil);
  PublishOp(en_Document, op_GetCorrespondentListExFrmAct, Document_GetCorrespondentListExFrmAct_Execute, Document_GetCorrespondentListExFrmAct_Test, nil);
  PublishOp(en_Document, op_GetRespondentListExFrmAct, Document_GetRespondentListExFrmAct_Execute, Document_GetRespondentListExFrmAct_Test, nil);
  PublishOp(en_Document, op_GetGraphicImage, Document_GetGraphicImage_Execute, Document_GetGraphicImage_Test, nil);
 end;//with Entities.Entities
 AddUserTypeExclude(dwftSynchroName, en_Document, op_NextDocumentInList, false);
 AddUserTypeExclude(dwftSynchroName, en_Document, op_ReturnToList, false);
 AddUserTypeExclude(dwftSynchroName, en_Document, op_AddToControl, false);
 AddUserTypeExclude(dwftSynchroName, en_Document, op_GetAttributesFrmAct, false);
 AddUserTypeExclude(dwftSynchroName, en_Document, op_GetRelatedDocFrmAct, false);
 AddUserTypeExclude(dwftSynchroName, en_Document, op_UserCR1, false);
 AddUserTypeExclude(dwftSynchroName, en_Document, op_UserCR2, false);
 AddUserTypeExclude(dwftSynchroName, en_Document, op_GetCorrespondentList, false);
 AddUserTypeExclude(dwftSynchroName, en_Document, op_GetRespondentList, false);
 AddUserTypeExclude(dwftSynchroName, en_Document, op_AttributesCanBeClosed, false);
 AddUserTypeExclude(dwftSynchroName, en_Document, op_GetCorrespondentListExFrmAct, false);
 AddUserTypeExclude(dwftSynchroName, en_Document, op_GetRespondentListExFrmAct, false);
 AddUserTypeExclude(dwftSynchroName, en_Document, op_PrevDocumentInList, false);
 AddUserTypeExclude(dwftSynchroName, en_Document, op_DocumentIsUseful, false);
 AddUserTypeExclude(dwftSynchroName, en_Document, op_DocumentIsUseless, false);
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
 {$Include ..\View\DocumentWithFlashUserTypes.imp.pas}
{$IfEnd} //not Admin AND not Monitorings

end.