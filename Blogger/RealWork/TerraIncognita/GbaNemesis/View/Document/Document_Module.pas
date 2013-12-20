unit Document_Module;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Document/Document_Module.pas"
// Начат: 05.02.2009 19:28
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFormsPack::Class>> F1 Работа с документом и списком документов::Document::View::Document::Document
//
// Работа с документом
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
  DocumentUnit
  {$If not defined(NoVCM)}
  ,
  vcmInterfaces
  {$IfEnd} //not NoVCM
  ,
  DocumentAndListInterfaces
  {$If not defined(NoVCM)}
  ,
  vcmContainerForm
  {$IfEnd} //not NoVCM
  ,
  PresentationInterfaces,
  DocumentDomainInterfaces
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  DocNumberQuery_Form,
  NavigationInterfaces,
  DocumentUserTypes_dftDocument_UserType,
  nsLogEvent,
  DocumentInterfaces,
  l3StringIDEx,
  DocumentWithFlashUserTypes_dwftMain_UserType,
  Common_FormDefinitions_Controls,
  ExTextOptions_Form,
  PrimSynchroViewOptions_Form,
  PrimRedactionsOptions_Form,
  PrimPictureInfoOptions_Form,
  PrimDocNumberQueryOptions_Form,
  PrimAttributesOptions_Form,
  PrimPictureOptions_Form,
  PrimDocumentWithFlashOptions_Form,
  PrimContentsOptions_Form,
  PrimTurnOnTimeMachineOptions_Form,
  WorkWithDocumentInterfaces,
  DocInfoInterfaces,
  BaloonWarningUserTypes_WarnJuror_UserType,
  BaloonWarningUserTypes_WarnPreActive_UserType,
  BaloonWarningUserTypes_WarnIsAbolished_UserType,
  BaloonWarningUserTypes_WarnOnControl_UserType,
  BaloonWarningUserTypes_WarnInactualDocument_UserType,
  BaloonWarningUserTypes_WarnTimeMachineOn_UserType,
  BaloonWarningUserTypes_WarnRedaction_UserType,
  BaloonWarningUserTypes_WarnTimeMachineWarning_UserType,
  BaloonWarningUserTypes_WarnTimeMachineException_UserType
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  PrimWarningBaloonOptions_Form,
  PrimDockedWarning_Form
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoVCM)}
  ,
  vcmFormSetFormsCollectionItemPrim
  {$IfEnd} //not NoVCM
  ,
  fsAbstractDocument
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  DocumentWithFlash_Form,
  Text_Form,
  Redactions_Form,
  Contents_Form,
  fsDocument,
  fsDocumentWithFlash,
  Picture_Form,
  PictureInfo_Form,
  Warning_Form,
  Attributes_Form,
  SynchroView_Form,
  TurnOnTimeMachine_Form,
  WarningBaloon_Form,
  SynchroView_WarningBaloon_Form,
  Translation_WarningBaloon_Form,
  UserCR1_WarningBaloon_Form,
  UserCR2_WarningBaloon_Form,
  vcmExternalInterfaces {a},
  vcmModule {a},
  vcmBase {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TDocumentModule = {formspack} class(TvcmModule)
  {* Работа с документом }
 protected
  procedure Loaded; override;
  class procedure GetEntityForms(aList : TvcmClassList); override;
 protected
 // protected methods
   procedure opOpenDocOnNumberTest(const aParams: IvcmTestParamsPrim);
     {* Открыть документ по номеру }
   procedure opOpenDocOnNumber(const aParams: IvcmExecuteParamsPrim);
     {* Открыть документ по номеру }
 public
 // public methods
   class procedure OpenDocument(const aDocInfo: IdeDocInfo;
     const aContainer: IvcmContainer);
     {* Открывает документ }
   class function OpenEntityAsDocument(const anEntity: IUnknown;
     const aContainer: IvcmContainer): IDocument;
   class function SafeOpenDocument(const aBaseEntity: IUnknown): IDocument;
   class procedure OpenDocumentWithCheck(const aDocInfo: IdeDocInfo;
     const aContainer: IvcmContainer);
   class function OpenExternalObject(const aContainer: IvcmContainer;
     const aData: InsLinkedObjectData): IvcmEntityForm;
   class function OpenPicture(const aContainer: IvcmContainer;
     const aData: InsLinkedObjectData): IvcmEntityForm;
   class function OpenPictureInfo(const aContainer: IvcmContainer;
     const aData: InsLinkedObjectDescription): IvcmEntityForm;
   class function OpenTurnOnTimeMachine(const anIntf: InsTurnOnTimeMachine): IvcmEntityForm;
   class function OpenEditionsListModal(const anEditionsHolder: IsdsEditionsHolder;
     const anAggregate: IvcmAggregate): IvcmEntityForm;
   class function MakeBaloonForm(aCaller: TvcmContainerForm;
     aUserType: TvcmEffectiveUserType;
     const aWarning: IdsWarning): IvcmEntityForm;
   class function DocumentPrintAndExportSetting: Boolean;
     {* Метод для получения значения настройки "Печать и экспорт" }
   class procedure WriteDocumentPrintAndExportSetting(aValue: Boolean);
     {* Метод для записи значения настройки "Печать и экспорт" }
   class function DocumentPrintAndExportFontSizeSetting: Integer;
     {* Метод для получения значения настройки "Использовать для экспорта и печати следующий размер шрифта" }
   class procedure WriteDocumentPrintAndExportFontSizeSetting(aValue: Integer);
     {* Метод для записи значения настройки "Использовать для экспорта и печати следующий размер шрифта" }
   class function DocumentShowChangesInfoSetting: Boolean;
     {* Метод для получения значения настройки "Показывать историю изменений в документе" }
   class procedure WriteDocumentShowChangesInfoSetting(aValue: Boolean);
     {* Метод для записи значения настройки "Показывать историю изменений в документе" }
 end;//TDocumentModule
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  resWarnImages,
  Base_Operations_Editions_Controls,
  Document_Strange_Controls
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  ,
  nsTypes,
  nsManagers,
  sdsDocument,
  sdsDocumentWithFlash,
  l3Base {a},
  bsUtils,
  l3MessageID,
  SysUtils {a},
  BaseTypesUnit,
  deDocInfo,
  bsTypesNew
  {$If not defined(NoVCM)}
  ,
  vcmMessagesSupport
  {$IfEnd} //not NoVCM
  ,
  nsExternalObject,
  ExternalObjectUnit,
  nsConst,
  nsUtils,
  afwFacade,
  nsOpenDocOnNumberData,
  WarningConst,
  LoggingUnit,
  DocumentPrintAndExportSettingRes,
  DocumentPrintAndExportFontSizeSettingRes,
  stDocumentPrintAndExportFontSizeItem,
  DocumentShowChangesInfoSettingRes,
  stDocumentShowChangesInfoItem,
  kw_Document_OpenDocOnNumber,
  vcmFormSetFactory {a},
  StdRes {a},
  vcmModuleDef {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

type
  TnsOpenDocumentByNumber = {final} class(TnsLogEvent)
  public
  // public methods
   class procedure Log(aDocID: Integer);
  end;//TnsOpenDocumentByNumber

// start class TnsOpenDocumentByNumber

class procedure TnsOpenDocumentByNumber.Log(aDocID: Integer);
//#UC START# *4B150AAA0334_4B150A890212_var*
var
 l_Data: ILogEventData;
//#UC END# *4B150AAA0334_4B150A890212_var*
begin
//#UC START# *4B150AAA0334_4B150A890212_impl*
 l_Data := MakeParamsList;
 l_Data.AddULong(aDocID);
 GetLogger.AddEvent(LE_OPEN_DOCUMENT_BY_NUMBER, l_Data);
//#UC END# *4B150AAA0334_4B150A890212_impl*
end;//TnsOpenDocumentByNumber.Log

type
  Tkw_Form_Text = class(TtfwControlString)
   {* Слово словаря для идентификатора формы Text
----
*Пример использования*:
[code]
'aControl' форма::Text TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Form_Text

// start class Tkw_Form_Text

{$If not defined(NoScripts)}
function Tkw_Form_Text.GetString: AnsiString;
 {-}
begin
 Result := 'TextForm';
end;//Tkw_Form_Text.GetString
{$IfEnd} //not NoScripts

type
  Tkw_Text_WarnPreActive_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола WarnPreActive формы Text }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Text_WarnPreActive_ControlInstance

// start class Tkw_Text_WarnPreActive_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Text_WarnPreActive_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TTextForm).WarnPreActive);
end;//Tkw_Text_WarnPreActive_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_Text_WarnRedaction_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола WarnRedaction формы Text }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Text_WarnRedaction_ControlInstance

// start class Tkw_Text_WarnRedaction_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Text_WarnRedaction_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TTextForm).WarnRedaction);
end;//Tkw_Text_WarnRedaction_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_Text_WarnTimeMachineException_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола WarnTimeMachineException формы Text }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Text_WarnTimeMachineException_ControlInstance

// start class Tkw_Text_WarnTimeMachineException_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Text_WarnTimeMachineException_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TTextForm).WarnTimeMachineException);
end;//Tkw_Text_WarnTimeMachineException_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_Text_WarnIsAbolished_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола WarnIsAbolished формы Text }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Text_WarnIsAbolished_ControlInstance

// start class Tkw_Text_WarnIsAbolished_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Text_WarnIsAbolished_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TTextForm).WarnIsAbolished);
end;//Tkw_Text_WarnIsAbolished_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_Text_WarnJuror_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола WarnJuror формы Text }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Text_WarnJuror_ControlInstance

// start class Tkw_Text_WarnJuror_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Text_WarnJuror_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TTextForm).WarnJuror);
end;//Tkw_Text_WarnJuror_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_Text_WarnOnControl_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола WarnOnControl формы Text }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Text_WarnOnControl_ControlInstance

// start class Tkw_Text_WarnOnControl_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Text_WarnOnControl_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TTextForm).WarnOnControl);
end;//Tkw_Text_WarnOnControl_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_Text_WarnTimeMachineOn_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола WarnTimeMachineOn формы Text }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Text_WarnTimeMachineOn_ControlInstance

// start class Tkw_Text_WarnTimeMachineOn_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Text_WarnTimeMachineOn_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TTextForm).WarnTimeMachineOn);
end;//Tkw_Text_WarnTimeMachineOn_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_Text_WarnTimeMachineWarning_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола WarnTimeMachineWarning формы Text }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Text_WarnTimeMachineWarning_ControlInstance

// start class Tkw_Text_WarnTimeMachineWarning_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Text_WarnTimeMachineWarning_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TTextForm).WarnTimeMachineWarning);
end;//Tkw_Text_WarnTimeMachineWarning_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_Text_WarnInactualDocument_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола WarnInactualDocument формы Text }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Text_WarnInactualDocument_ControlInstance

// start class Tkw_Text_WarnInactualDocument_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Text_WarnInactualDocument_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TTextForm).WarnInactualDocument);
end;//Tkw_Text_WarnInactualDocument_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_Text_RemindersLine_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола RemindersLine формы Text }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Text_RemindersLine_ControlInstance

// start class Tkw_Text_RemindersLine_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Text_RemindersLine_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TTextForm).RemindersLine);
end;//Tkw_Text_RemindersLine_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_Text_SubPanel_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола SubPanel формы Text }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Text_SubPanel_ControlInstance

// start class Tkw_Text_SubPanel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Text_SubPanel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TTextForm).SubPanel);
end;//Tkw_Text_SubPanel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_Text_HScroll_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола HScroll формы Text }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Text_HScroll_ControlInstance

// start class Tkw_Text_HScroll_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Text_HScroll_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TTextForm).HScroll);
end;//Tkw_Text_HScroll_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_Text_Text_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола Text формы Text }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Text_Text_ControlInstance

// start class Tkw_Text_Text_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Text_Text_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TTextForm).Text);
end;//Tkw_Text_Text_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_Form_Picture = class(TtfwControlString)
   {* Слово словаря для идентификатора формы Picture
----
*Пример использования*:
[code]
'aControl' форма::Picture TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Form_Picture

// start class Tkw_Form_Picture

{$If not defined(NoScripts)}
function Tkw_Form_Picture.GetString: AnsiString;
 {-}
begin
 Result := 'PictureForm';
end;//Tkw_Form_Picture.GetString
{$IfEnd} //not NoScripts

type
  Tkw_Picture_ieProc_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола ieProc формы Picture }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Picture_ieProc_ControlInstance

// start class Tkw_Picture_ieProc_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Picture_ieProc_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TPictureForm).ieProc);
end;//Tkw_Picture_ieProc_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_Picture_ieViewer_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола ieViewer формы Picture }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Picture_ieViewer_ControlInstance

// start class Tkw_Picture_ieViewer_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Picture_ieViewer_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TPictureForm).ieViewer);
end;//Tkw_Picture_ieViewer_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_Picture_ieIO_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола ieIO формы Picture }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Picture_ieIO_ControlInstance

// start class Tkw_Picture_ieIO_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Picture_ieIO_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TPictureForm).ieIO);
end;//Tkw_Picture_ieIO_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_Form_TurnOnTimeMachine = class(TtfwControlString)
   {* Слово словаря для идентификатора формы TurnOnTimeMachine
----
*Пример использования*:
[code]
'aControl' форма::TurnOnTimeMachine TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Form_TurnOnTimeMachine

// start class Tkw_Form_TurnOnTimeMachine

{$If not defined(NoScripts)}
function Tkw_Form_TurnOnTimeMachine.GetString: AnsiString;
 {-}
begin
 Result := 'en_TurnOnTimeMachine';
end;//Tkw_Form_TurnOnTimeMachine.GetString
{$IfEnd} //not NoScripts

type
  Tkw_TurnOnTimeMachine_rb_totmOnDate_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола rb_totmOnDate формы TurnOnTimeMachine }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_TurnOnTimeMachine_rb_totmOnDate_ControlInstance

// start class Tkw_TurnOnTimeMachine_rb_totmOnDate_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_TurnOnTimeMachine_rb_totmOnDate_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_TurnOnTimeMachine).rb_totmOnDate);
end;//Tkw_TurnOnTimeMachine_rb_totmOnDate_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_TurnOnTimeMachine_rb_totmOnCurrentRedation_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола rb_totmOnCurrentRedation формы TurnOnTimeMachine }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_TurnOnTimeMachine_rb_totmOnCurrentRedation_ControlInstance

// start class Tkw_TurnOnTimeMachine_rb_totmOnCurrentRedation_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_TurnOnTimeMachine_rb_totmOnCurrentRedation_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_TurnOnTimeMachine).rb_totmOnCurrentRedation);
end;//Tkw_TurnOnTimeMachine_rb_totmOnCurrentRedation_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_TurnOnTimeMachine_deDate_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола deDate формы TurnOnTimeMachine }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_TurnOnTimeMachine_deDate_ControlInstance

// start class Tkw_TurnOnTimeMachine_deDate_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_TurnOnTimeMachine_deDate_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_TurnOnTimeMachine).deDate);
end;//Tkw_TurnOnTimeMachine_deDate_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

class procedure TDocumentModule.OpenDocument(const aDocInfo: IdeDocInfo;
  const aContainer: IvcmContainer);

 procedure CheckAlive;
 //#UC START# *4AA118F20394__var*
//#UC END# *4AA118F20394__var*
 begin
 //#UC START# *4AA118F20394__impl*
  if Assigned(aDocInfo.Doc) and not aDocInfo.Doc.IsAlive then
   raise ETryOpenMissingDocument.Create('');
 //#UC END# *4AA118F20394__impl*
 end;//CheckAlive

var
 __WasEnter : Boolean;
//#UC START# *4AA11788033F_498B135601B6_var*
//#UC END# *4AA11788033F_498B135601B6_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AA11788033F_498B135601B6_impl*
 {$IfDef vcmUseProfilers}
 ProfilersManager.Document.Start;
 try
 {$EndIf vcmUseProfilers}
  case aDocInfo.DocType of
   DT_DOCUMENT, DT_BOOK:
    Tfs_Document.Make(TsdsDocument.Make(aDocInfo),
                      CheckContainer(aContainer));
   DT_EXPLANATORY:
   begin
    CheckAlive;
    TdmStdRes.OpenDictionary(aDocInfo, CheckContainer(aContainer));
   end;//DT_EXPLANATORY
   DT_TIP:
   begin
    CheckAlive;
    TdmStdRes.OpenTip(aDocInfo, CheckContainer(aContainer));
   end;//DT_TIP
   DT_MEDICAL_EXPLANATORY:
   begin
    CheckAlive;
    TdmStdRes.OpenMedicDiction(aDocInfo, CheckContainer(aContainer));
   end;//DT_MEDICAL_EXPLANATORY
   DT_MEDICAL_FIRM:
   begin
    CheckAlive;
    TdmStdRes.OpenMedicFirmDocument(aDocInfo, CheckContainer(aContainer));
   end;//DT_MEDICAL_FIRM
   DT_MEDICAL_DOCUMENT:
   begin
    TdmStdRes.OpenDrugDocument(aDocInfo, CheckContainer(aContainer));
   end;//DT_MEDICAL_DOCUMENT
   DT_FLASH:
    Tfs_DocumentWithFlash.Make(TsdsDocumentWithFlash.Make(aDocInfo),
                               CheckContainer(aContainer));
   DT_ACTUAL_ANALYTICS:
    TdmStdRes.MakeAAC(aDocInfo, CheckContainer(aContainer));
   DT_ACTUAL_ANALYTICS_CONTENTS:
    TdmStdRes.MakeAACContents(aDocInfo, CheckContainer(aContainer));
   else
    Assert(false);
  end//case l_DocInfo.Doc.GetDocType of
 {$IfDef vcmUseProfilers}
 finally
  ProfilersManager.Document.FormSetCreated;
 end;//try..finally
 {$EndIf vcmUseProfilers}
//#UC END# *4AA11788033F_498B135601B6_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TDocumentModule.OpenDocument

class function TDocumentModule.OpenEntityAsDocument(const anEntity: IUnknown;
  const aContainer: IvcmContainer): IDocument;
var
 __WasEnter : Boolean;
//#UC START# *4AA1327E0334_498B135601B6_var*
var
 l_Para : TParaId;
//#UC END# *4AA1327E0334_498B135601B6_var*
var
 l_Bookmark : IBookmark;
 l_JBookmark : IJournalBookmark;
 l_DocInfo : IdeDocInfo;
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AA1327E0334_498B135601B6_impl*
 Result := nil;
 if Supports(anEntity, IBookmark, l_Bookmark) then
 begin
  try
   l_Bookmark.GetDocument(Result);
  except
   on ECanNotFindData do ;
  end;//try..except
  try
   if (Result <> nil) then
    l_Para := l_Bookmark.GetParagraph
   else
    l_Para := 0;
   if (l_Para <> 0) then
    l_DocInfo := TdeDocInfo.Make(Result, TbsDocPos_PID(l_Para))
   else
    l_DocInfo := TdeDocInfo.Make(Result, TbsDocPos_C(dptBookmark, l_Bookmark.GetEid));
  except
   on ENotSaved do
    l_DocInfo := TdeDocInfo.Make(Result, TbsDocPos_PID(l_Bookmark.GetParagraph));
  end;//try..except
 end//if Supports(anEntity, IBookmark, l_Bookmark) then
 else
 if Supports(anEntity, IJournalBookmark, l_JBookmark) then
 begin
  try
   l_JBookmark.GetDocument(Result);
  except
   on ECanNotFindData do ;
  end;//try..except
  l_DocInfo := TdeDocInfo.Make(Result, TbsDocPos_PID(l_JBookMark.GetParaID));
 end//if Supports(anEntity, IBookmark, l_Bookmark) then
 else
 if Supports(anEntity, IDocument, Result) then
  l_DocInfo := TdeDocInfo.Make(Result);
 if Assigned(Result) then
  OpenDocument(l_DocInfo, aContainer);
//#UC END# *4AA1327E0334_498B135601B6_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TDocumentModule.OpenEntityAsDocument

class function TDocumentModule.SafeOpenDocument(const aBaseEntity: IUnknown): IDocument;
var
 __WasEnter : Boolean;
//#UC START# *4AA13F010182_498B135601B6_var*
//#UC END# *4AA13F010182_498B135601B6_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AA13F010182_498B135601B6_impl*
 Result := OpenEntityAsDocument(aBaseEntity, nil);
 if (Result = nil) then
  vcmAsk(err_BookmarkHasNoDocument);
//#UC END# *4AA13F010182_498B135601B6_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TDocumentModule.SafeOpenDocument

class procedure TDocumentModule.OpenDocumentWithCheck(const aDocInfo: IdeDocInfo;
  const aContainer: IvcmContainer);
var
 __WasEnter : Boolean;
//#UC START# *4AA4C6090157_498B135601B6_var*
//#UC END# *4AA4C6090157_498B135601B6_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AA4C6090157_498B135601B6_impl*
 if (aDocInfo.Doc.GetDocType <> DT_FLASH) then
  OpenDocument(aDocInfo, aContainer);
//#UC END# *4AA4C6090157_498B135601B6_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TDocumentModule.OpenDocumentWithCheck

class function TDocumentModule.OpenExternalObject(const aContainer: IvcmContainer;
  const aData: InsLinkedObjectData): IvcmEntityForm;
var
 __WasEnter : Boolean;
//#UC START# *4AAFCF8001A8_498B135601B6_var*
//#UC END# *4AAFCF8001A8_498B135601B6_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AAFCF8001A8_498B135601B6_impl*
 Result := nil;
 if aData.IsPicture then
 begin
  vcmDispatcher.FormDispatcher.Lock;
  try
   Result := OpenPicture(aContainer, aData);
  finally
   vcmDispatcher.FormDispatcher.UnLock;
  end;//try..finally
 end//aData.IsPicture
 else
 begin
  if vcmAsk(qr_OpenExternalQuery, [aData.ObjectTitle]) then
   nsExecuteExternalObject(aData as IExternalObject);
 end;//aData.IsPicture
//#UC END# *4AAFCF8001A8_498B135601B6_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TDocumentModule.OpenExternalObject

class function TDocumentModule.OpenPicture(const aContainer: IvcmContainer;
  const aData: InsLinkedObjectData): IvcmEntityForm;
var
 __WasEnter : Boolean;
//#UC START# *4AB12B14001A_498B135601B6_var*
//#UC END# *4AB12B14001A_498B135601B6_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AB12B14001A_498B135601B6_impl*
 Result := TPictureForm.Make(vcmMakeParams(nil, CheckContainer(aContainer)));
 if (aData <> nil) then
  op_Picture_InitNewContent.Call(Result, aData);
//#UC END# *4AB12B14001A_498B135601B6_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TDocumentModule.OpenPicture

class function TDocumentModule.OpenPictureInfo(const aContainer: IvcmContainer;
  const aData: InsLinkedObjectDescription): IvcmEntityForm;
var
 __WasEnter : Boolean;
//#UC START# *4AB12F3700CB_498B135601B6_var*
//#UC END# *4AB12F3700CB_498B135601B6_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AB12F3700CB_498B135601B6_impl*
 Result := Ten_PictureInfo.Make(aData, vcmMakeParams(nil, CheckContainer(aContainer)));
//#UC END# *4AB12F3700CB_498B135601B6_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TDocumentModule.OpenPictureInfo

procedure TDocumentModule.opOpenDocOnNumberTest(const aParams: IvcmTestParamsPrim);
//#UC START# *4AB133720122_498B135601B6test_var*
//#UC END# *4AB133720122_498B135601B6test_var*
var
 l_Data : InsOpenDocOnNumberData;
begin
//#UC START# *4AB133720122_498B135601B6test_impl*
 aParams.Op.Flag[vcm_ofVisible] := False;
//#UC END# *4AB133720122_498B135601B6test_impl*
end;//TDocumentModule.opOpenDocOnNumberTest

procedure TDocumentModule.opOpenDocOnNumber(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4AB133720122_498B135601B6exec_var*
//#UC END# *4AB133720122_498B135601B6exec_var*
var
 l_Data : InsOpenDocOnNumberData;
begin
//#UC START# *4AB133720122_498B135601B6exec_impl*
 { Чтение настроек }
 l_Data := TnsOpenDocOnNumberData.Make(
  afw.Settings.LoadInteger(pi_Document_LastOpen_DocNumber,
                           dv_Document_LastOpen_DocNumber),
  afw.Settings.LoadInteger(pi_Document_LastOpen_Position,
                           dv_Document_LastOpen_Position),
  TDocumentPositionType(afw.Settings.LoadInteger(pi_Document_LastOpen_PosType,
                                                 dv_Document_LastOpen_PosType)),
  afw.Settings.LoadBoolean(pi_Document_LastOpen_IsInternal,
                           dv_Document_LastOpen_IsInternal),
  afw.Settings.LoadString(pi_Document_LastOpen_DocHistory,
                          dv_Document_LastOpen_DocHistory));

 try
  { Показываем форму }
  TDocNumberQueryForm.Make(l_Data);

  if not l_Data.Done then
   Exit;

  { Сохранение настроек }
  afw.Settings.SaveBoolean(pi_Document_LastOpen_IsInternal, l_Data.Internal);
  afw.Settings.SaveInteger(pi_Document_LastOpen_DocNumber, l_Data.DocID);
  afw.Settings.SaveInteger(pi_Document_LastOpen_Position, l_Data.PosID);
  afw.Settings.SaveInteger(pi_Document_LastOpen_PosType, Integer(l_Data.PosType));
  afw.Settings.SaveString(pi_Document_LastOpen_DocHistory, l_Data.History);

  { Поиск документа }
  if l_Data.Internal then
   l_Data.DocID := l_Data.DocID + c_InternalDocShift;

  TnsOpenDocumentByNumber.Log(l_Data.DocID);
  nsOpenDocumentByNumber(l_Data.DocID, l_Data.PosID, l_Data.PosType);
 finally
  l_Data := nil;
 end;//try..finally
//#UC END# *4AB133720122_498B135601B6exec_impl*
end;//TDocumentModule.opOpenDocOnNumber

class function TDocumentModule.OpenTurnOnTimeMachine(const anIntf: InsTurnOnTimeMachine): IvcmEntityForm;
var
 __WasEnter : Boolean;
//#UC START# *4B26253C0205_498B135601B6_var*
//#UC END# *4B26253C0205_498B135601B6_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4B26253C0205_498B135601B6_impl*
 Result := Ten_TurnOnTimeMachine.Make(anIntf);
//#UC END# *4B26253C0205_498B135601B6_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TDocumentModule.OpenTurnOnTimeMachine

class function TDocumentModule.OpenEditionsListModal(const anEditionsHolder: IsdsEditionsHolder;
  const anAggregate: IvcmAggregate): IvcmEntityForm;
var
 __WasEnter : Boolean;
//#UC START# *4ED90DDC00A5_498B135601B6_var*
//#UC END# *4ED90DDC00A5_498B135601B6_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4ED90DDC00A5_498B135601B6_impl*
 Result := TRedactionsForm.Make(vcmMakeParams(anAggregate, CheckContainer(nil)),
                                vcm_ztModal,
                                0,
                                nil,
                                anEditionsHolder.EditionsList);
//#UC END# *4ED90DDC00A5_498B135601B6_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TDocumentModule.OpenEditionsListModal

class function TDocumentModule.MakeBaloonForm(aCaller: TvcmContainerForm;
  aUserType: TvcmEffectiveUserType;
  const aWarning: IdsWarning): IvcmEntityForm;
var
 __WasEnter : Boolean;
//#UC START# *4F7D90530076_498B135601B6_var*
//#UC END# *4F7D90530076_498B135601B6_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4F7D90530076_498B135601B6_impl*
  Result := TWarningBaloonForm.Make(vcmMakeParams(nil{f_sdsMainWindow{?}, aCaller, aCaller),
                                    vcm_ztReminder,
                                    aUserType,
                                    nil,
                                    aWarning);
//#UC END# *4F7D90530076_498B135601B6_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TDocumentModule.MakeBaloonForm

class function TDocumentModule.DocumentPrintAndExportSetting: Boolean;
 {-}
begin
 if (afw.Settings = nil) then
  Result := dv_Document_PrintAndExport
 else
  Result := afw.Settings.LoadBoolean(pi_Document_PrintAndExport, dv_Document_PrintAndExport);
end;//TDocumentModule.DocumentPrintAndExportSetting

class procedure TDocumentModule.WriteDocumentPrintAndExportSetting(aValue: Boolean);
 {-}
begin
 if (afw.Settings <> nil) then
  afw.Settings.SaveBoolean(pi_Document_PrintAndExport, aValue);
end;//TDocumentModule.WriteDocumentPrintAndExportSetting

class function TDocumentModule.DocumentPrintAndExportFontSizeSetting: Integer;
 {-}
begin
 if (afw.Settings = nil) then
  Result := dv_Document_PrintAndExportFontSize
 else
  Result := afw.Settings.LoadInteger(pi_Document_PrintAndExportFontSize, dv_Document_PrintAndExportFontSize);
end;//TDocumentModule.DocumentPrintAndExportFontSizeSetting

class procedure TDocumentModule.WriteDocumentPrintAndExportFontSizeSetting(aValue: Integer);
 {-}
begin
 if (afw.Settings <> nil) then
  afw.Settings.SaveInteger(pi_Document_PrintAndExportFontSize, aValue);
end;//TDocumentModule.WriteDocumentPrintAndExportFontSizeSetting

class function TDocumentModule.DocumentShowChangesInfoSetting: Boolean;
 {-}
begin
 if (afw.Settings = nil) then
  Result := dv_Document_ShowChangesInfo
 else
  Result := afw.Settings.LoadBoolean(pi_Document_ShowChangesInfo, dv_Document_ShowChangesInfo);
end;//TDocumentModule.DocumentShowChangesInfoSetting

class procedure TDocumentModule.WriteDocumentShowChangesInfoSetting(aValue: Boolean);
 {-}
begin
 if (afw.Settings <> nil) then
  afw.Settings.SaveBoolean(pi_Document_ShowChangesInfo, aValue);
end;//TDocumentModule.WriteDocumentShowChangesInfoSetting

procedure TDocumentModule.Loaded;
begin
 inherited;
 PublishOp('opOpenDocOnNumber', opOpenDocOnNumber, opOpenDocOnNumberTest);
end;

class procedure TDocumentModule.GetEntityForms(aList : TvcmClassList);
begin
 inherited;
 aList.Add(TDocumentWithFlashForm);
 aList.Add(TTextForm);
 aList.Add(TRedactionsForm);
 aList.Add(TContentsForm);
 aList.Add(TPictureForm);
 aList.Add(Ten_PictureInfo);
 aList.Add(TDocNumberQueryForm);
 aList.Add(TWarningForm);
 aList.Add(TAttributesForm);
 aList.Add(TfcSynchroView);
 aList.Add(Ten_TurnOnTimeMachine);
 aList.Add(TWarningBaloonForm);
 aList.Add(TSynchroView_WarningBaloonForm);
 aList.Add(TTranslation_WarningBaloonForm);
 aList.Add(TUserCR1_WarningBaloonForm);
 aList.Add(TUserCR2_WarningBaloonForm);
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация фабрики формы Text
 fm_TextForm.SetFactory(TTextForm.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_Text
 Tkw_Form_Text.Register('форма::Text', TTextForm);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Text_WarnPreActive_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TTextForm.WarnPreActive', Tkw_Text_WarnPreActive_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Text_WarnRedaction_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TTextForm.WarnRedaction', Tkw_Text_WarnRedaction_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Text_WarnTimeMachineException_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TTextForm.WarnTimeMachineException', Tkw_Text_WarnTimeMachineException_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Text_WarnIsAbolished_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TTextForm.WarnIsAbolished', Tkw_Text_WarnIsAbolished_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Text_WarnJuror_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TTextForm.WarnJuror', Tkw_Text_WarnJuror_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Text_WarnOnControl_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TTextForm.WarnOnControl', Tkw_Text_WarnOnControl_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Text_WarnTimeMachineOn_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TTextForm.WarnTimeMachineOn', Tkw_Text_WarnTimeMachineOn_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Text_WarnTimeMachineWarning_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TTextForm.WarnTimeMachineWarning', Tkw_Text_WarnTimeMachineWarning_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Text_WarnInactualDocument_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TTextForm.WarnInactualDocument', Tkw_Text_WarnInactualDocument_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Text_RemindersLine_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TTextForm.RemindersLine', Tkw_Text_RemindersLine_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Text_SubPanel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TTextForm.SubPanel', Tkw_Text_SubPanel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Text_HScroll_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TTextForm.HScroll', Tkw_Text_HScroll_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Text_Text_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TTextForm.Text', Tkw_Text_Text_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_Picture
 Tkw_Form_Picture.Register('форма::Picture', TPictureForm);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Picture_ieProc_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TPictureForm.ieProc', Tkw_Picture_ieProc_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Picture_ieViewer_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TPictureForm.ieViewer', Tkw_Picture_ieViewer_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Picture_ieIO_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TPictureForm.ieIO', Tkw_Picture_ieIO_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_TurnOnTimeMachine
 Tkw_Form_TurnOnTimeMachine.Register('форма::TurnOnTimeMachine', Ten_TurnOnTimeMachine);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_TurnOnTimeMachine_rb_totmOnDate_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_TurnOnTimeMachine.rb_totmOnDate', Tkw_TurnOnTimeMachine_rb_totmOnDate_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_TurnOnTimeMachine_rb_totmOnCurrentRedation_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_TurnOnTimeMachine.rb_totmOnCurrentRedation', Tkw_TurnOnTimeMachine_rb_totmOnCurrentRedation_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_TurnOnTimeMachine_deDate_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_TurnOnTimeMachine.deDate', Tkw_TurnOnTimeMachine_deDate_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.