{$IfNDef PrimText_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/PrimText.imp.pas"
// Начат: 23.12.2008 20:00
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Работа с документом и списком документов::Document::View::PrimText::PrimText
//
// Форма для работы с текстом документа
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define PrimText_imp}
{$If not defined(Admin) AND not defined(Monitorings)}
 InsDataSourceChangedInfo = interface(IUnknown)
  {* Данные об обновлении источника данных }
   ['{BB6DBD5C-6A17-4E47-B09C-6E92D971D857}']
   function pm_GetFromHistory: Boolean;
   function pm_GetNeedProcess: Boolean;
   procedure pm_SetNeedProcess(aValue: Boolean);
   procedure Init(aFromHistory: Boolean);
   function Clone: InsDataSourceChangedInfo;
   property FromHistory: Boolean
     read pm_GetFromHistory;
   property NeedProcess: Boolean
     read pm_GetNeedProcess
     write pm_SetNeedProcess;
     {* (!) Это что за ужас? }
 end;//InsDataSourceChangedInfo

 InsTextFormHistory = interface(IUnknown{, IvcmBase})
  {* Данные формы для истории }
   ['{41614567-92A0-493C-B9A1-A8B69CB63B42}']
   function pm_GetFormDataChangedInfo: InsDataSourceChangedInfo;
   property FormDataChangedInfo: InsDataSourceChangedInfo
     read pm_GetFormDataChangedInfo;
     {* Информация об изменённых данных формы }
  // Методы преобразования к реализуемым интерфейсам
   function As_IvcmBase: IvcmBase;
 end;//InsTextFormHistory

 _BaseDocumentForDocumentModule_Parent_ = _PrimText_Parent_;
 {$Include ..\View\BaseDocumentForDocumentModule.imp.pas}
 _afwSettingChanged_Parent_ = _BaseDocumentForDocumentModule_;
 {$Include w:\common\components\gui\Garant\AFW\implementation\afwSettingChanged.imp.pas}
 _nsUserSettingsListener_Parent_ = _afwSettingChanged_;
 {$Include w:\garant6x\implementation\Garant\GbaNemesis\Data\Common\nsUserSettingsListener.imp.pas}
 _BaseTextOperations_Parent_ = _nsUserSettingsListener_;
 {$Include ..\View\BaseTextOperations.imp.pas}
 _DocumentBaseSearcher_Parent_ = _BaseTextOperations_;
 {$Include ..\View\DocumentBaseSearcher.imp.pas}
 _PrimText_ = {abstract form} class(_DocumentBaseSearcher_)
  {* Форма для работы с текстом документа }
 private
 // private fields
   f_SubPanel : TeeSubPanel;
    {* Поле для свойства SubPanel}
   f_HScroll : TvtScrollBar;
    {* Поле для свойства HScroll}
   f_FormDataChangedInfo : InsDataSourceChangedInfo;
    {* Поле для свойства FormDataChangedInfo}
 protected
  procedure SignalDataSourceChanged(const anOld : IvcmViewAreaController;
                                const aDsNew : IvcmViewAreaController); override;
  procedure InitEntities; override;
  procedure MakeControls; override;
 private
 // private methods
   procedure RequestCheckFragmentsCount;
   procedure ScrollBarChange(aSender: TObject);
   procedure AddToWorkJournal;
     {* Сохраняет текущий документ в Журнал Работы }
   function IsDocumentForSaveInWorkJournal: Boolean;
     {* Определяет - нужно ли сохранять текущий документ в Журнал Работы }
 protected
 // property methods
   function pm_GetFormDataChangedInfo: InsDataSourceChangedInfo;
   function pm_GetDocument: IDocument;
 protected
 // realized methods
   procedure File_SaveToFolder_Test(const aParams: IvcmTestParamsPrim);
     {* Сохранить в папки }
   procedure File_SaveToFolder_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Сохранить в папки }
   procedure File_LoadFromFolder_Test(const aParams: IvcmTestParamsPrim);
     {* Загрузить из папок }
   procedure File_LoadFromFolder_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Загрузить из папок }
   function DocumentForExport: IDocument; override;
   function pm_GetHasDoc: Boolean; override;
   function IsDrug: Boolean; override;
   function DocumentForSearch: IDocument; override;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
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
   {$If not defined(NoVCM)}
   procedure InitControls; override;
     {* Процедура инициализации контролов. Для перекрытия в потомках }
   {$IfEnd} //not NoVCM
   procedure DoEditFindContextTest(const aParams: IvcmTestParamsPrim); override;
   procedure ClearFields; override;
 protected
 // protected fields
   ViewArea : IdsBaseDocument;
    {* Базовый документ}
   BaseSearchSupportQuery : IucbBaseSearchSupportQuery;
 protected
 // protected properties
   property FormDataChangedInfo: InsDataSourceChangedInfo
     read pm_GetFormDataChangedInfo
     write f_FormDataChangedInfo;
 public
 // public properties
   property SubPanel: TeeSubPanel
     read f_SubPanel;
   property HScroll: TvtScrollBar
     read f_HScroll;
   property Document: IDocument
     read pm_GetDocument;
     {* Адаптерный документ. Зачем-то }
 end;//_PrimText_
{$IfEnd} //not Admin AND not Monitorings

{$Else PrimText_imp}

{$IfNDef PrimText_imp_impl}
{$Define PrimText_imp_impl}

{$If not defined(Admin) AND not defined(Monitorings)}


{$Include ..\View\BaseDocumentForDocumentModule.imp.pas}

{$Include w:\common\components\gui\Garant\AFW\implementation\afwSettingChanged.imp.pas}

{$Include w:\garant6x\implementation\Garant\GbaNemesis\Data\Common\nsUserSettingsListener.imp.pas}


{$Include ..\View\BaseTextOperations.imp.pas}


{$Include ..\View\DocumentBaseSearcher.imp.pas}

type
  TnsDataSourceChangedInfo = class(Tl3SimpleObject, InsDataSourceChangedInfo)
  private
  // private fields
   f_FromHistory : Boolean;
   f_Old : IvcmFormDataSource;
   f_NeedProcess : Boolean;
  protected
  // realized methods
   procedure Init(aFromHistory: Boolean);
   function Clone: InsDataSourceChangedInfo;
   function pm_GetFromHistory: Boolean;
   function pm_GetNeedProcess: Boolean;
   procedure pm_SetNeedProcess(aValue: Boolean);
  protected
  // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
  public
  // public methods
   class function Make: InsDataSourceChangedInfo; reintroduce;
     {* Фабричный метод }
  end;//TnsDataSourceChangedInfo

// start class TnsDataSourceChangedInfo

class function TnsDataSourceChangedInfo.Make: InsDataSourceChangedInfo;
var
 l_Inst : TnsDataSourceChangedInfo;
begin
 l_Inst := Create;
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

procedure TnsDataSourceChangedInfo.Init(aFromHistory: Boolean);
//#UC START# *49538FDE013D_49539788003E_var*
//#UC END# *49538FDE013D_49539788003E_var*
begin
//#UC START# *49538FDE013D_49539788003E_impl*
 f_FromHistory := aFromHistory;
 f_NeedProcess := True; 
//#UC END# *49538FDE013D_49539788003E_impl*
end;//TnsDataSourceChangedInfo.Init

function TnsDataSourceChangedInfo.Clone: InsDataSourceChangedInfo;
//#UC START# *49538FF7018A_49539788003E_var*
//#UC END# *49538FF7018A_49539788003E_var*
begin
//#UC START# *49538FF7018A_49539788003E_impl*
 Result := Make;
 with Result do
 begin
  Init(f_FromHistory);
  NeedProcess := f_NeedProcess;
 end;//with Result do
//#UC END# *49538FF7018A_49539788003E_impl*
end;//TnsDataSourceChangedInfo.Clone

function TnsDataSourceChangedInfo.pm_GetFromHistory: Boolean;
//#UC START# *495390070146_49539788003Eget_var*
//#UC END# *495390070146_49539788003Eget_var*
begin
//#UC START# *495390070146_49539788003Eget_impl*
 Result := f_FromHistory;
//#UC END# *495390070146_49539788003Eget_impl*
end;//TnsDataSourceChangedInfo.pm_GetFromHistory

function TnsDataSourceChangedInfo.pm_GetNeedProcess: Boolean;
//#UC START# *4953906A002A_49539788003Eget_var*
//#UC END# *4953906A002A_49539788003Eget_var*
begin
//#UC START# *4953906A002A_49539788003Eget_impl*
 Result := f_NeedProcess;
//#UC END# *4953906A002A_49539788003Eget_impl*
end;//TnsDataSourceChangedInfo.pm_GetNeedProcess

procedure TnsDataSourceChangedInfo.pm_SetNeedProcess(aValue: Boolean);
//#UC START# *4953906A002A_49539788003Eset_var*
//#UC END# *4953906A002A_49539788003Eset_var*
begin
//#UC START# *4953906A002A_49539788003Eset_impl*
 f_NeedProcess := aValue;
//#UC END# *4953906A002A_49539788003Eset_impl*
end;//TnsDataSourceChangedInfo.pm_SetNeedProcess

procedure TnsDataSourceChangedInfo.Cleanup;
//#UC START# *479731C50290_49539788003E_var*
//#UC END# *479731C50290_49539788003E_var*
begin
//#UC START# *479731C50290_49539788003E_impl*
 f_FromHistory := False;
 inherited;
//#UC END# *479731C50290_49539788003E_impl*
end;//TnsDataSourceChangedInfo.Cleanup

type
  TnsTextFormHistory = class(Tl3SimpleObject, InsTextFormHistory, IvcmBase {from InsTextFormHistory})
  private
  // private fields
   f_DataSourceChangedInfo : InsDataSourceChangedInfo;
  protected
  // realized methods
   function pm_GetFormDataChangedInfo: InsDataSourceChangedInfo;
  protected
  // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
  public
  // public methods
   constructor Create(const aDataSourceChangedInfo: InsDataSourceChangedInfo); reintroduce;
   class function Make(const aDataSourceChangedInfo: InsDataSourceChangedInfo): IvcmBase; reintroduce;
  protected
  // Методы преобразования к реализуемым интерфейсам
   function As_IvcmBase: IvcmBase;
  end;//TnsTextFormHistory

// start class TnsTextFormHistory

constructor TnsTextFormHistory.Create(const aDataSourceChangedInfo: InsDataSourceChangedInfo);
//#UC START# *49539A8A0125_49539A5102F1_var*
//#UC END# *49539A8A0125_49539A5102F1_var*
begin
//#UC START# *49539A8A0125_49539A5102F1_impl*
 inherited Create;
 f_DataSourceChangedInfo := aDataSourceChangedInfo;
//#UC END# *49539A8A0125_49539A5102F1_impl*
end;//TnsTextFormHistory.Create

class function TnsTextFormHistory.Make(const aDataSourceChangedInfo: InsDataSourceChangedInfo): IvcmBase;
var
 l_Inst : TnsTextFormHistory;
begin
 l_Inst := Create(aDataSourceChangedInfo);
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

function TnsTextFormHistory.pm_GetFormDataChangedInfo: InsDataSourceChangedInfo;
//#UC START# *4953909C02C9_49539A5102F1get_var*
//#UC END# *4953909C02C9_49539A5102F1get_var*
begin
//#UC START# *4953909C02C9_49539A5102F1get_impl*
 Result := f_DataSourceChangedInfo;
//#UC END# *4953909C02C9_49539A5102F1get_impl*
end;//TnsTextFormHistory.pm_GetFormDataChangedInfo

procedure TnsTextFormHistory.Cleanup;
//#UC START# *479731C50290_49539A5102F1_var*
//#UC END# *479731C50290_49539A5102F1_var*
begin
//#UC START# *479731C50290_49539A5102F1_impl*
 f_DataSourceChangedInfo := nil;
 inherited;
//#UC END# *479731C50290_49539A5102F1_impl*
end;//TnsTextFormHistory.Cleanup

// Методы преобразования к реализуемым интерфейсам

function TnsTextFormHistory.As_IvcmBase: IvcmBase;
begin
 Result := Self;
end;

type
  Tkw_PrimText_Control_SubPanel = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола SubPanel
----
*Пример использования*:
[code]
контрол::SubPanel TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimText_Control_SubPanel

// start class Tkw_PrimText_Control_SubPanel

{$If not defined(NoScripts)}
function Tkw_PrimText_Control_SubPanel.GetString: AnsiString;
 {-}
begin
 Result := 'SubPanel';
end;//Tkw_PrimText_Control_SubPanel.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimText_Control_SubPanel_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола SubPanel
----
*Пример использования*:
[code]
контрол::SubPanel:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimText_Control_SubPanel_Push

// start class Tkw_PrimText_Control_SubPanel_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimText_Control_SubPanel_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('SubPanel');
 inherited;
end;//Tkw_PrimText_Control_SubPanel_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimText_Control_HScroll = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола HScroll
----
*Пример использования*:
[code]
контрол::HScroll TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimText_Control_HScroll

// start class Tkw_PrimText_Control_HScroll

{$If not defined(NoScripts)}
function Tkw_PrimText_Control_HScroll.GetString: AnsiString;
 {-}
begin
 Result := 'HScroll';
end;//Tkw_PrimText_Control_HScroll.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimText_Control_HScroll_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола HScroll
----
*Пример использования*:
[code]
контрол::HScroll:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimText_Control_HScroll_Push

// start class Tkw_PrimText_Control_HScroll_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimText_Control_HScroll_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('HScroll');
 inherited;
end;//Tkw_PrimText_Control_HScroll_Push.DoDoIt
{$IfEnd} //not NoScripts

procedure _PrimText_.RequestCheckFragmentsCount;
//#UC START# *4A1FEF160285_495118ED00F6_var*
//#UC END# *4A1FEF160285_495118ED00F6_var*
begin
//#UC START# *4A1FEF160285_495118ED00F6_impl*
 TdmStdRes.BaseSearchCheckFragmentsCount(NativeMainForm);
//#UC END# *4A1FEF160285_495118ED00F6_impl*
end;//_PrimText_.RequestCheckFragmentsCount

procedure _PrimText_.ScrollBarChange(aSender: TObject);
//#UC START# *4DF7789202F2_495118ED00F6_var*
//#UC END# *4DF7789202F2_495118ED00F6_var*
begin
//#UC START# *4DF7789202F2_495118ED00F6_impl*
 //HScroll.Visible := (HScroll.PageSize < HScroll.Max);
 // - это не работает, есть запил в TevCustomEditorWindow.SetHScrollRange
//#UC END# *4DF7789202F2_495118ED00F6_impl*
end;//_PrimText_.ScrollBarChange

procedure _PrimText_.AddToWorkJournal;
//#UC START# *500D5D3C0051_495118ED00F6_var*
var
 l_Para     : IeeLeafPara;
 l_BookMark : IJournalBookmark;
//#UC END# *500D5D3C0051_495118ED00F6_var*
begin
//#UC START# *500D5D3C0051_495118ED00F6_impl*
 if Text.HasDocument AND IsDocumentForSaveInWorkJournal then
 begin
  l_Para := GetParaForPositionning(false);
  if (l_Para <> nil) then
   try
    Document.CreateJournalBookmark(l_Para.ID, l_Bookmark);
    TdmStdRes.MakeWorkJournal.AddBookMark(l_Bookmark);
   finally
    l_Para := nil;
   end;//try..finally
 end;//Text.HasDocument..
//#UC END# *500D5D3C0051_495118ED00F6_impl*
end;//_PrimText_.AddToWorkJournal

function _PrimText_.IsDocumentForSaveInWorkJournal: Boolean;
//#UC START# *500D61A700B4_495118ED00F6_var*
//#UC END# *500D61A700B4_495118ED00F6_var*
begin
//#UC START# *500D61A700B4_495118ED00F6_impl*
 Result := (UserType in [dftDocument,
                         dftMedicFirm,
                         dftDictEntry,
                         dftMedDictEntry,
                         dftDrug,
                         dftAACLeft,
                         dftAACContentsRight]);
//#UC END# *500D61A700B4_495118ED00F6_impl*
end;//_PrimText_.IsDocumentForSaveInWorkJournal

function _PrimText_.pm_GetFormDataChangedInfo: InsDataSourceChangedInfo;
//#UC START# *498069760104_495118ED00F6get_var*
//#UC END# *498069760104_495118ED00F6get_var*
begin
//#UC START# *498069760104_495118ED00F6get_impl*
 if f_FormDataChangedInfo = nil then
  f_FormDataChangedInfo := TnsDataSourceChangedInfo.Make;
 Result := f_FormDataChangedInfo;
//#UC END# *498069760104_495118ED00F6get_impl*
end;//_PrimText_.pm_GetFormDataChangedInfo

function _PrimText_.pm_GetDocument: IDocument;
//#UC START# *49513BB1031F_495118ED00F6get_var*
//#UC END# *49513BB1031F_495118ED00F6get_var*
begin
//#UC START# *49513BB1031F_495118ED00F6get_impl*
 if (ViewArea <> nil) then
  Result := ViewArea.DocInfo.Doc
 else
  Result := nil;
//#UC END# *49513BB1031F_495118ED00F6get_impl*
end;//_PrimText_.pm_GetDocument

procedure _PrimText_.File_SaveToFolder_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *49885D540232_495118ED00F6test_var*
//#UC END# *49885D540232_495118ED00F6test_var*
begin
//#UC START# *49885D540232_495118ED00F6test_impl*
 if aParams.Op.Flag[vcm_ofEnabled] then
  aParams.Op.Flag[vcm_ofEnabled] := TextSource.HasDocument;
//#UC END# *49885D540232_495118ED00F6test_impl*
end;//_PrimText_.File_SaveToFolder_Test

procedure _PrimText_.File_SaveToFolder_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *49885D540232_495118ED00F6exec_var*
//#UC END# *49885D540232_495118ED00F6exec_var*
begin
//#UC START# *49885D540232_495118ED00F6exec_impl*
 AddBookmark(GetParaForPositionning(false));
//#UC END# *49885D540232_495118ED00F6exec_impl*
end;//_PrimText_.File_SaveToFolder_Execute

procedure _PrimText_.File_LoadFromFolder_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *49885D59018D_495118ED00F6test_var*
//#UC END# *49885D59018D_495118ED00F6test_var*
begin
//#UC START# *49885D59018D_495118ED00F6test_impl*
 // - ничего не делаем
//#UC END# *49885D59018D_495118ED00F6test_impl*
end;//_PrimText_.File_LoadFromFolder_Test

procedure _PrimText_.File_LoadFromFolder_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *49885D59018D_495118ED00F6exec_var*
//#UC END# *49885D59018D_495118ED00F6exec_var*
begin
//#UC START# *49885D59018D_495118ED00F6exec_impl*
 TdmStdRes.SelectOpen(self.as_IvcmEntityForm,
                      FilterInfoFactory.MakeFilterInfo(ffBookmark),
                      str_OpenBookmark);
//#UC END# *49885D59018D_495118ED00F6exec_impl*
end;//_PrimText_.File_LoadFromFolder_Execute

function _PrimText_.DocumentForExport: IDocument;
//#UC START# *4AE1B48A0120_495118ED00F6_var*
//#UC END# *4AE1B48A0120_495118ED00F6_var*
begin
//#UC START# *4AE1B48A0120_495118ED00F6_impl*
 Result := Self.Document;
//#UC END# *4AE1B48A0120_495118ED00F6_impl*
end;//_PrimText_.DocumentForExport

function _PrimText_.pm_GetHasDoc: Boolean;
//#UC START# *4AE1C7A8016C_495118ED00F6get_var*
//#UC END# *4AE1C7A8016C_495118ED00F6get_var*
begin
//#UC START# *4AE1C7A8016C_495118ED00F6get_impl*
 Result := (ViewArea <> nil) and ViewArea.HasDoc;
//#UC END# *4AE1C7A8016C_495118ED00F6get_impl*
end;//_PrimText_.pm_GetHasDoc

function _PrimText_.IsDrug: Boolean;
//#UC START# *4AE1C9890311_495118ED00F6_var*
//#UC END# *4AE1C9890311_495118ED00F6_var*
begin
//#UC START# *4AE1C9890311_495118ED00F6_impl*
 Result := (UserType = dftDrug);
//#UC END# *4AE1C9890311_495118ED00F6_impl*
end;//_PrimText_.IsDrug

function _PrimText_.DocumentForSearch: IDocument;
//#UC START# *4B4EF0A200BD_495118ED00F6_var*
//#UC END# *4B4EF0A200BD_495118ED00F6_var*
begin
//#UC START# *4B4EF0A200BD_495118ED00F6_impl*
 Result := Document;
//#UC END# *4B4EF0A200BD_495118ED00F6_impl*
end;//_PrimText_.DocumentForSearch

procedure _PrimText_.Cleanup;
//#UC START# *479731C50290_495118ED00F6_var*
//#UC END# *479731C50290_495118ED00F6_var*
begin
//#UC START# *479731C50290_495118ED00F6_impl*
 f_FormDataChangedInfo := nil;
 inherited;
//#UC END# *479731C50290_495118ED00F6_impl*
end;//_PrimText_.Cleanup

{$If not defined(NoVCM)}
procedure _PrimText_.NotifyDataSourceChanged(const anOld: IvcmViewAreaController;
  const aNew: IvcmViewAreaController);
//#UC START# *497469C90140_495118ED00F6_var*
//#UC END# *497469C90140_495118ED00F6_var*
begin
//#UC START# *497469C90140_495118ED00F6_impl*
 inherited NotifyDataSourceChanged(anOld, aNew);
 RequestCheckFragmentsCount;
//#UC END# *497469C90140_495118ED00F6_impl*
end;//_PrimText_.NotifyDataSourceChanged
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
function _PrimText_.CallCloseQuery(aCaller: TCustomForm): Boolean;
//#UC START# *4980407F0076_495118ED00F6_var*
//#UC END# *4980407F0076_495118ED00F6_var*
begin
//#UC START# *4980407F0076_495118ED00F6_impl*
 Result := inherited CallCloseQuery(aCaller);
 // Сохраняем текущий документ в журнал работы
 AddToWorkJournal;
//#UC END# *4980407F0076_495118ED00F6_impl*
end;//_PrimText_.CallCloseQuery
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
function _PrimText_.DoSaveState(out theState: IvcmBase;
  aStateType: TvcmStateType): Boolean;
//#UC START# *49806ED503D5_495118ED00F6_var*
//#UC END# *49806ED503D5_495118ED00F6_var*
begin
//#UC START# *49806ED503D5_495118ED00F6_impl*
 if (aStateType = vcm_stContent) then
 begin
  AddToWorkJournal;
  theState := TnsTextFormHistory.Make(FormDataChangedInfo.Clone);
  Result := true;
  inherited DoSaveState(theState, aStateType);
  // - кажется, что это неправильно - ведь TnsTextFormHistory сразу же перетирается
  //   но почему-то так работает.
  //   Но в TPrimInternetAgentForm, однако сделал по-другому - без вызова inherited.
  // - ! Есть вариант, что надо перекрывать SaveOwnFormState
  //   А в TPrimInternetAgentForm всё работает, т.к. там нет контролов, которые сами хотят 
  //   сохранять своё состояние.
  Exit;
 end;//aStateType = vcm_stContent
 Result := inherited DoSaveState(theState, aStateType);
//#UC END# *49806ED503D5_495118ED00F6_impl*
end;//_PrimText_.DoSaveState
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
function _PrimText_.DoLoadState(const aState: IvcmBase;
  aStateType: TvcmStateType): Boolean;
//#UC START# *49807428008C_495118ED00F6_var*
var
 l_TextFormHistory: InsTextFormHistory;
//#UC END# *49807428008C_495118ED00F6_var*
begin
//#UC START# *49807428008C_495118ED00F6_impl*
 if (aStateType = vcm_stContent) then
 begin
  AddToWorkJournal;
  if Supports(aState, InsTextFormHistory, l_TextFormHistory) then
  try
   // Сюда похоже никогда не попадаем. См. комментарий в _DoSaveState.
   // Т.к. TnsTextFormHistory - перетёрлось.
   Assert(false); // - проверим эту догадку
   FormDataChangedInfo := l_TextFormHistory.FormDataChangedInfo;
   Result := true;
   //inherited DoLoadState(aState, aStateType);
   Exit;
  finally
   l_TextFormHistory := nil;
  end;//try..finally
 end;//aStateType = vcm_stContent
 Result := inherited DoLoadState(aState, aStateType);
//#UC END# *49807428008C_495118ED00F6_impl*
end;//_PrimText_.DoLoadState
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
procedure _PrimText_.InitControls;
//#UC START# *4A8E8F2E0195_495118ED00F6_var*
//#UC END# *4A8E8F2E0195_495118ED00F6_var*
begin
//#UC START# *4A8E8F2E0195_495118ED00F6_impl*
 inherited;
 HScroll.Align := sbalBottom;
 HScroll.TabStop := false;
 HScroll.OnChange := Self.ScrollBarChange;
 Text.HScrollBar := Self.HScroll;
//#UC END# *4A8E8F2E0195_495118ED00F6_impl*
end;//_PrimText_.InitControls
{$IfEnd} //not NoVCM

procedure _PrimText_.DoEditFindContextTest(const aParams: IvcmTestParamsPrim);
//#UC START# *4C8DCA3402C1_495118ED00F6_var*
//#UC END# *4C8DCA3402C1_495118ED00F6_var*
begin
//#UC START# *4C8DCA3402C1_495118ED00F6_impl*
 inherited;
 if aParams.Op.Flag[vcm_ofEnabled] and Assigned(BaseSearchSupportQuery) and not BaseSearchSupportQuery.CanRunBaseSearch then
 begin
  aParams.Op.Flag[vcm_ofEnabled] := False;
  aParams.Op.Flag[vcm_ofVisible] := False;
 end;
//#UC END# *4C8DCA3402C1_495118ED00F6_impl*
end;//_PrimText_.DoEditFindContextTest

procedure _PrimText_.ClearFields;
 {-}
begin
 FormDataChangedInfo := nil;
 inherited;
end;//_PrimText_.ClearFields

procedure _PrimText_.SignalDataSourceChanged(const anOld : IvcmViewAreaController;
 const aDsNew : IvcmViewAreaController);
begin
 inherited;
 if (aDsNew = nil) then
 begin
  ViewArea := nil;
  BaseSearchSupportQuery := nil;
 end//aDsNew = nil
 else
 begin
  ViewArea := aDsNew As IdsBaseDocument;
  Supports(aDsNew, IucbBaseSearchSupportQuery, BaseSearchSupportQuery);
 end;//aDsNew = nil
end;

procedure _PrimText_.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_File, nil);
  PublishFormEntity(en_SubPanelSettings, nil);
  MakeEntitySupportedByControl(en_SubPanelSettings, SubPanel);
  PublishOp(en_File, op_SaveToFolder, File_SaveToFolder_Execute, File_SaveToFolder_Test, nil);
  PublishOp(en_File, op_LoadFromFolder, File_LoadFromFolder_Execute, File_LoadFromFolder_Test, nil);
 end;//with Entities.Entities
end;

procedure _PrimText_.MakeControls;
begin
 inherited;
 f_SubPanel := TeeSubPanel.Create(Self);
 f_SubPanel.Name := 'SubPanel';
 f_SubPanel.Parent := Self;
 f_HScroll := TvtScrollBar.Create(Self);
 f_HScroll.Name := 'HScroll';
 f_HScroll.Parent := Self;
end;

{$IfEnd} //not Admin AND not Monitorings

{$Else  PrimText_imp_impl}
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimText_Control_SubPanel
 Tkw_PrimText_Control_SubPanel.Register('контрол::SubPanel', TeeSubPanel);
// Регистрация Tkw_PrimText_Control_SubPanel_Push
 Tkw_PrimText_Control_SubPanel_Push.Register('контрол::SubPanel:push');
// Регистрация Tkw_PrimText_Control_HScroll
 Tkw_PrimText_Control_HScroll.Register('контрол::HScroll', TvtScrollBar);
// Регистрация Tkw_PrimText_Control_HScroll_Push
 Tkw_PrimText_Control_HScroll_Push.Register('контрол::HScroll:push');
 {$Include ..\View\BaseTextOperations.imp.pas}
{$IfEnd} //not Admin AND not Monitorings

{$EndIf PrimText_imp_impl}
{$EndIf PrimText_imp}
