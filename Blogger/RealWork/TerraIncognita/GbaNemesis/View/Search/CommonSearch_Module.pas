unit CommonSearch_Module;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View$For F1 and Monitorings"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/CommonSearch_Module.pas"
// Начат: 10.09.2009 21:03
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFormsPack::Class>> F1 Common For Shell And Monitoring::Search::View$For F1 and Monitorings::Search$Presentation for F1 and Monitorings::CommonSearch
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin)}
uses
  afwInterfaces
  {$If not defined(NoVCM)}
  ,
  vcmInterfaces
  {$IfEnd} //not NoVCM
  ,
  ConfigInterfaces
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  PrimPreview_Form,
  l3StringIDEx,
  Search_FormDefinitions_Controls,
  PrimPrintDialogOptions_Form,
  PrimQueryCardOptions_Form,
  PrimPageSetupOptions_Form
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  PrimSaveLoadOptionsWithUserTypes_Form
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  SaveLoad_Form,
  QueryCard_Form,
  Preview_Form,
  PageSetup_Form,
  PrintDialog_Form,
  Classes,
  l3Interfaces,
  vcmExternalInterfaces {a},
  vcmModule {a},
  vcmBase {a}
  ;
{$IfEnd} //not Admin

{$If not defined(Admin)}
type
 TCommonSearchModule = {formspack} class(TvcmModule, IafwPageSetup, IafwPrintManager)
 protected
  class procedure GetEntityForms(aList : TvcmClassList); override;
 protected
 // realized methods
   function pm_GetMargins: TafwRect;
   function pm_GetOrientation: Tl3PageOrientation;
   function CanPrint: Boolean;
   procedure PrintDialog(const aPreview: IafwDocumentPreview);
     {* выводит диалог печати. }
   procedure ShowPreview(const aPreview: IafwDocumentPreview);
     {* показывает предварительный просмотр печати. }
   function pm_GetPageSetup: IafwPageSetup;
 public
 // overridden public methods
   constructor Create(AOwner: TComponent); override;
 public
 // public methods
   class function MakeSaveLoadForm(const aParams: IvcmMakeParams;
     aZoneType: TvcmZoneType;
     aRecursive: Boolean;
     aUserType: TvcmUserType): IvcmEntityForm;
   class function MakeQueryCardForm(aFilter: Boolean;
     const aParams: IvcmMakeParams;
     aZoneType: TvcmZoneType;
     aRecursive: Boolean;
     aUserType: TvcmUserType): IvcmEntityForm;
   class function MakePreview(const aPreview: IafwDocumentPreview): IvcmEntityForm;
   class function MakePageSetup(const aData: InsPageSettingsInfo): Integer;
   class function MakePrintDialog(const aPreview: IafwDocumentPreview): IvcmEntityForm;
 end;//TCommonSearchModule
{$IfEnd} //not Admin

implementation

{$If not defined(Admin)}
uses
  SysUtils
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  ,
  nsFixedHAFMacroReplacer,
  f1QueryDocumentContainer,
  l3RangeManager,
  l3MessageID,
  nsUtils,
  evConst,
  DataAdapter,
  nsConst,
  Windows,
  afwFacade,
  vcmFormSetFactory {a},
  StdRes {a}
  ;
{$IfEnd} //not Admin

{$If not defined(Admin)}

type
  Tkw_Form_QueryCard = class(TtfwControlString)
   {* Слово словаря для идентификатора формы QueryCard
----
*Пример использования*:
[code]
'aControl' форма::QueryCard TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Form_QueryCard

// start class Tkw_Form_QueryCard

{$If not defined(NoScripts)}
function Tkw_Form_QueryCard.GetString: AnsiString;
 {-}
begin
 Result := 'enQueryCard';
end;//Tkw_Form_QueryCard.GetString
{$IfEnd} //not NoScripts

type
  Tkw_QueryCard_Editor_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола Editor формы QueryCard }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_QueryCard_Editor_ControlInstance

// start class Tkw_QueryCard_Editor_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_QueryCard_Editor_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TenQueryCard).Editor);
end;//Tkw_QueryCard_Editor_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_Form_PageSetup = class(TtfwControlString)
   {* Слово словаря для идентификатора формы PageSetup
----
*Пример использования*:
[code]
'aControl' форма::PageSetup TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Form_PageSetup

// start class Tkw_Form_PageSetup

{$If not defined(NoScripts)}
function Tkw_Form_PageSetup.GetString: AnsiString;
 {-}
begin
 Result := 'en_PageSetup';
end;//Tkw_Form_PageSetup.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PageSetup_PreviewGroupBox_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола PreviewGroupBox формы PageSetup }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PageSetup_PreviewGroupBox_ControlInstance

// start class Tkw_PageSetup_PreviewGroupBox_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_PageSetup_PreviewGroupBox_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_PageSetup).PreviewGroupBox);
end;//Tkw_PageSetup_PreviewGroupBox_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PageSetup_SettingsPageControl_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола SettingsPageControl формы PageSetup }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PageSetup_SettingsPageControl_ControlInstance

// start class Tkw_PageSetup_SettingsPageControl_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_PageSetup_SettingsPageControl_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_PageSetup).SettingsPageControl);
end;//Tkw_PageSetup_SettingsPageControl_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_Form_PrintDialog = class(TtfwControlString)
   {* Слово словаря для идентификатора формы PrintDialog
----
*Пример использования*:
[code]
'aControl' форма::PrintDialog TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Form_PrintDialog

// start class Tkw_Form_PrintDialog

{$If not defined(NoScripts)}
function Tkw_Form_PrintDialog.GetString: AnsiString;
 {-}
begin
 Result := 'en_PrintDialog';
end;//Tkw_Form_PrintDialog.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrintDialog_poDocumentNames_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола poDocumentNames формы PrintDialog }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrintDialog_poDocumentNames_ControlInstance

// start class Tkw_PrintDialog_poDocumentNames_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_PrintDialog_poDocumentNames_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_PrintDialog).poDocumentNames);
end;//Tkw_PrintDialog_poDocumentNames_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrintDialog_rbPrintSelected_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола rbPrintSelected формы PrintDialog }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrintDialog_rbPrintSelected_ControlInstance

// start class Tkw_PrintDialog_rbPrintSelected_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_PrintDialog_rbPrintSelected_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_PrintDialog).rbPrintSelected);
end;//Tkw_PrintDialog_rbPrintSelected_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrintDialog_rbPrintCurrent_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола rbPrintCurrent формы PrintDialog }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrintDialog_rbPrintCurrent_ControlInstance

// start class Tkw_PrintDialog_rbPrintCurrent_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_PrintDialog_rbPrintCurrent_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_PrintDialog).rbPrintCurrent);
end;//Tkw_PrintDialog_rbPrintCurrent_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrintDialog_edPrintInterval_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола edPrintInterval формы PrintDialog }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrintDialog_edPrintInterval_ControlInstance

// start class Tkw_PrintDialog_edPrintInterval_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_PrintDialog_edPrintInterval_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_PrintDialog).edPrintInterval);
end;//Tkw_PrintDialog_edPrintInterval_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrintDialog_edCopyCount_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола edCopyCount формы PrintDialog }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrintDialog_edCopyCount_ControlInstance

// start class Tkw_PrintDialog_edCopyCount_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_PrintDialog_edCopyCount_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_PrintDialog).edCopyCount);
end;//Tkw_PrintDialog_edCopyCount_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrintDialog_CollateCheckBox_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола CollateCheckBox формы PrintDialog }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrintDialog_CollateCheckBox_ControlInstance

// start class Tkw_PrintDialog_CollateCheckBox_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_PrintDialog_CollateCheckBox_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_PrintDialog).CollateCheckBox);
end;//Tkw_PrintDialog_CollateCheckBox_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrintDialog_cbOddEven_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола cbOddEven формы PrintDialog }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrintDialog_cbOddEven_ControlInstance

// start class Tkw_PrintDialog_cbOddEven_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_PrintDialog_cbOddEven_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_PrintDialog).cbOddEven);
end;//Tkw_PrintDialog_cbOddEven_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrintDialog_poDocumentTexts_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола poDocumentTexts формы PrintDialog }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrintDialog_poDocumentTexts_ControlInstance

// start class Tkw_PrintDialog_poDocumentTexts_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_PrintDialog_poDocumentTexts_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_PrintDialog).poDocumentTexts);
end;//Tkw_PrintDialog_poDocumentTexts_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrintDialog_rbPrintAll_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола rbPrintAll формы PrintDialog }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrintDialog_rbPrintAll_ControlInstance

// start class Tkw_PrintDialog_rbPrintAll_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_PrintDialog_rbPrintAll_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_PrintDialog).rbPrintAll);
end;//Tkw_PrintDialog_rbPrintAll_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrintDialog_rbPrintInterval_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола rbPrintInterval формы PrintDialog }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrintDialog_rbPrintInterval_ControlInstance

// start class Tkw_PrintDialog_rbPrintInterval_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_PrintDialog_rbPrintInterval_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_PrintDialog).rbPrintInterval);
end;//Tkw_PrintDialog_rbPrintInterval_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrintDialog_cbPrinter_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола cbPrinter формы PrintDialog }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrintDialog_cbPrinter_ControlInstance

// start class Tkw_PrintDialog_cbPrinter_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_PrintDialog_cbPrinter_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_PrintDialog).cbPrinter);
end;//Tkw_PrintDialog_cbPrinter_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrintDialog_cbPrintInfo_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола cbPrintInfo формы PrintDialog }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrintDialog_cbPrintInfo_ControlInstance

// start class Tkw_PrintDialog_cbPrintInfo_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_PrintDialog_cbPrintInfo_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_PrintDialog).cbPrintInfo);
end;//Tkw_PrintDialog_cbPrintInfo_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

class function TCommonSearchModule.MakeSaveLoadForm(const aParams: IvcmMakeParams;
  aZoneType: TvcmZoneType;
  aRecursive: Boolean;
  aUserType: TvcmUserType): IvcmEntityForm;
var
 __WasEnter : Boolean;
//#UC START# *4AA93293002B_4AA931390118_var*
//#UC END# *4AA93293002B_4AA931390118_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AA93293002B_4AA931390118_impl*
 Assert(aRecursive);
 Result := TcfSaveLoad.MakeSingleChild(aParams.Container,
                                             aParams,
                                             aZoneType,
                                             aUserType);
//#UC END# *4AA93293002B_4AA931390118_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TCommonSearchModule.MakeSaveLoadForm

class function TCommonSearchModule.MakeQueryCardForm(aFilter: Boolean;
  const aParams: IvcmMakeParams;
  aZoneType: TvcmZoneType;
  aRecursive: Boolean;
  aUserType: TvcmUserType): IvcmEntityForm;
var
 __WasEnter : Boolean;
//#UC START# *4AA9396E02B8_4AA931390118_var*
//#UC END# *4AA9396E02B8_4AA931390118_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AA9396E02B8_4AA931390118_impl*
 Assert(aRecursive);
 Result := TenQueryCard.MakeSingleChild(aFilter,
                                        aParams.Container,
                                        aParams.Aggregate,
                                        aZoneType,
                                        aUserType);
//#UC END# *4AA9396E02B8_4AA931390118_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TCommonSearchModule.MakeQueryCardForm

class function TCommonSearchModule.MakePreview(const aPreview: IafwDocumentPreview): IvcmEntityForm;
var
 __WasEnter : Boolean;
//#UC START# *4AAF73E6039E_4AA931390118_var*
//#UC END# *4AAF73E6039E_4AA931390118_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AAF73E6039E_4AA931390118_impl*
 Result := TPreviewForm.Make(aPreview, vcmMakeParams(nil, CheckContainer(nil)));
//#UC END# *4AAF73E6039E_4AA931390118_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TCommonSearchModule.MakePreview

class function TCommonSearchModule.MakePageSetup(const aData: InsPageSettingsInfo): Integer;
var
 __WasEnter : Boolean;
//#UC START# *4AAF85DA01D1_4AA931390118_var*
//#UC END# *4AAF85DA01D1_4AA931390118_var*
var
 l_Form : IvcmEntityForm;
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AAF85DA01D1_4AA931390118_impl*
 l_Form := Ten_PageSetup.Make(aData);
 try
  Assert((l_Form <> nil));
  Result := l_Form.ShowModal;
 finally
  l_Form := nil;
 end;//try..finally
//#UC END# *4AAF85DA01D1_4AA931390118_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TCommonSearchModule.MakePageSetup

class function TCommonSearchModule.MakePrintDialog(const aPreview: IafwDocumentPreview): IvcmEntityForm;
var
 __WasEnter : Boolean;
//#UC START# *4AAF8EE1019C_4AA931390118_var*
//#UC END# *4AAF8EE1019C_4AA931390118_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AAF8EE1019C_4AA931390118_impl*
 Result := Ten_PrintDialog.Make(aPreview);
 if (Result <> nil) AND (Result.ZoneType <> vcm_ztModal) then
 begin
  Result.ShowModal;
  Result := nil;
 end;//Result <> nil
//#UC END# *4AAF8EE1019C_4AA931390118_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TCommonSearchModule.MakePrintDialog

function TCommonSearchModule.pm_GetMargins: TafwRect;
//#UC START# *473D8F8602AE_4AA931390118get_var*
//#UC END# *473D8F8602AE_4AA931390118get_var*
begin
//#UC START# *473D8F8602AE_4AA931390118get_impl*
 with Result.R do
 begin
  Left := Round(afw.Settings.LoadDouble(pi_Print_Metrics_Margins_Left,
                                       StrToFloat(dv_Print_Metrics_Margins_Left)) * evInchMul / (ev_mmInInch / 10));
  Right := Round(afw.Settings.LoadDouble(pi_Print_Metrics_Margins_Right,
                                        StrToFloat(dv_Print_Metrics_Margins_Right)) * evInchMul / (ev_mmInInch / 10));
  Top := Round(afw.Settings.LoadDouble(pi_Print_Metrics_Margins_Top,
                                     StrToFloat(dv_Print_Metrics_Margins_Top)) * evInchMul / (ev_mmInInch / 10));
  Bottom := Round(afw.Settings.LoadDouble(pi_Print_Metrics_Margins_Bottom,
                                       StrToFloat(dv_Print_Metrics_Margins_Bottom)) * evInchMul / (ev_mmInInch / 10));
 end;//with Result.R
//#UC END# *473D8F8602AE_4AA931390118get_impl*
end;//TCommonSearchModule.pm_GetMargins

function TCommonSearchModule.pm_GetOrientation: Tl3PageOrientation;
//#UC START# *473D8F9202F2_4AA931390118get_var*
//#UC END# *473D8F9202F2_4AA931390118get_var*
begin
//#UC START# *473D8F9202F2_4AA931390118get_impl*
 if StringToOrientation(afw.Settings.LoadString(pi_Print_Metrics_Orientation,
                                  dv_Print_Metrics_Orientation)) = DMORIENT_LANDSCAPE then
  Result := l3_poLandscape
 else
  Result := l3_poPortrait;                                            
//#UC END# *473D8F9202F2_4AA931390118get_impl*
end;//TCommonSearchModule.pm_GetOrientation

function TCommonSearchModule.CanPrint: Boolean;
//#UC START# *473D8FB70042_4AA931390118_var*
//#UC END# *473D8FB70042_4AA931390118_var*
begin
//#UC START# *473D8FB70042_4AA931390118_impl*
 Result := not DefDataAdapter.IsTrialMode;
//#UC END# *473D8FB70042_4AA931390118_impl*
end;//TCommonSearchModule.CanPrint

procedure TCommonSearchModule.PrintDialog(const aPreview: IafwDocumentPreview);
//#UC START# *473D8FC5038B_4AA931390118_var*
//#UC END# *473D8FC5038B_4AA931390118_var*
begin
//#UC START# *473D8FC5038B_4AA931390118_impl*
 MakePrintDialog(aPreview);
//#UC END# *473D8FC5038B_4AA931390118_impl*
end;//TCommonSearchModule.PrintDialog

procedure TCommonSearchModule.ShowPreview(const aPreview: IafwDocumentPreview);
//#UC START# *473D8FDC01EA_4AA931390118_var*
//#UC END# *473D8FDC01EA_4AA931390118_var*
begin
//#UC START# *473D8FDC01EA_4AA931390118_impl*
 MakePreview(aPreview);
//#UC END# *473D8FDC01EA_4AA931390118_impl*
end;//TCommonSearchModule.ShowPreview

function TCommonSearchModule.pm_GetPageSetup: IafwPageSetup;
//#UC START# *473D8FEE0222_4AA931390118get_var*
//#UC END# *473D8FEE0222_4AA931390118get_var*
begin
//#UC START# *473D8FEE0222_4AA931390118get_impl*
 Result := Self;
//#UC END# *473D8FEE0222_4AA931390118get_impl*
end;//TCommonSearchModule.pm_GetPageSetup

constructor TCommonSearchModule.Create(AOwner: TComponent);
//#UC START# *47D1602000C6_4AA931390118_var*
//#UC END# *47D1602000C6_4AA931390118_var*
begin
//#UC START# *47D1602000C6_4AA931390118_impl*
 inherited;
 if (afw.Application <> nil) then
  afw.Application.PrintManager := Self;
//#UC END# *47D1602000C6_4AA931390118_impl*
end;//TCommonSearchModule.Create

class procedure TCommonSearchModule.GetEntityForms(aList : TvcmClassList);
begin
 inherited;
 aList.Add(TcfSaveLoad);
 aList.Add(TenQueryCard);
 aList.Add(TefPreviewForm);
 aList.Add(Ten_PageSetup);
 aList.Add(Ten_PrintDialog);
end;

{$IfEnd} //not Admin

initialization
{$If not defined(Admin)}
// Регистрация фабрики формы QueryCard
 fm_enQueryCard.SetFactory(TenQueryCard.Make);
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_Form_QueryCard
 Tkw_Form_QueryCard.Register('форма::QueryCard', TenQueryCard);
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_QueryCard_Editor_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TenQueryCard.Editor', Tkw_QueryCard_Editor_ControlInstance);
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_Form_PageSetup
 Tkw_Form_PageSetup.Register('форма::PageSetup', Ten_PageSetup);
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PageSetup_PreviewGroupBox_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_PageSetup.PreviewGroupBox', Tkw_PageSetup_PreviewGroupBox_ControlInstance);
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PageSetup_SettingsPageControl_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_PageSetup.SettingsPageControl', Tkw_PageSetup_SettingsPageControl_ControlInstance);
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_Form_PrintDialog
 Tkw_Form_PrintDialog.Register('форма::PrintDialog', Ten_PrintDialog);
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PrintDialog_poDocumentNames_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_PrintDialog.poDocumentNames', Tkw_PrintDialog_poDocumentNames_ControlInstance);
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PrintDialog_rbPrintSelected_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_PrintDialog.rbPrintSelected', Tkw_PrintDialog_rbPrintSelected_ControlInstance);
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PrintDialog_rbPrintCurrent_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_PrintDialog.rbPrintCurrent', Tkw_PrintDialog_rbPrintCurrent_ControlInstance);
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PrintDialog_edPrintInterval_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_PrintDialog.edPrintInterval', Tkw_PrintDialog_edPrintInterval_ControlInstance);
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PrintDialog_edCopyCount_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_PrintDialog.edCopyCount', Tkw_PrintDialog_edCopyCount_ControlInstance);
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PrintDialog_CollateCheckBox_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_PrintDialog.CollateCheckBox', Tkw_PrintDialog_CollateCheckBox_ControlInstance);
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PrintDialog_cbOddEven_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_PrintDialog.cbOddEven', Tkw_PrintDialog_cbOddEven_ControlInstance);
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PrintDialog_poDocumentTexts_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_PrintDialog.poDocumentTexts', Tkw_PrintDialog_poDocumentTexts_ControlInstance);
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PrintDialog_rbPrintAll_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_PrintDialog.rbPrintAll', Tkw_PrintDialog_rbPrintAll_ControlInstance);
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PrintDialog_rbPrintInterval_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_PrintDialog.rbPrintInterval', Tkw_PrintDialog_rbPrintInterval_ControlInstance);
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PrintDialog_cbPrinter_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_PrintDialog.cbPrinter', Tkw_PrintDialog_cbPrinter_ControlInstance);
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PrintDialog_cbPrintInfo_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_PrintDialog.cbPrintInfo', Tkw_PrintDialog_cbPrintInfo_ControlInstance);
{$IfEnd} //not Admin

end.