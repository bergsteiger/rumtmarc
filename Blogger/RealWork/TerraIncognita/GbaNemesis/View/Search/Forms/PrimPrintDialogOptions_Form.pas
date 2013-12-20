unit PrimPrintDialogOptions_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View$For F1 and Monitorings"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/PrimPrintDialogOptions_Form.pas"
// Начат: 30.07.2010 15:46
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Common For Shell And Monitoring::Search::View$For F1 and Monitorings::Search$Presentation for F1 and Monitorings::PrimPrintDialogOptions
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
  vtComboBoxQS,
  OfficeLike_Result_Controls,
  PrimPrintDialog_Form,
  eeCheckBox
  {$If defined(Nemesis)}
  ,
  nscComboBox
  {$IfEnd} //Nemesis
  ,
  vtSpinEdit,
  eeButton
  {$If not defined(NoScripts)}
  ,
  kwBynameControlPush
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin

{$If not defined(Admin)}
type
 TPrimPrintDialogOptionsForm = {form} class(TPrimPrintDialogForm)
 private
 // private fields
   f_poDocumentNames : TeeRadioButton;
    {* Поле для свойства poDocumentNames}
   f_rbPrintSelected : TeeRadioButton;
    {* Поле для свойства rbPrintSelected}
   f_rbPrintCurrent : TeeRadioButton;
    {* Поле для свойства rbPrintCurrent}
   f_edPrintInterval : TnscEditWithoutPlusMinusShortcut;
    {* Поле для свойства edPrintInterval}
   f_edCopyCount : TvtSpinEdit;
    {* Поле для свойства edCopyCount}
   f_CollateCheckBox : TeeCheckBox;
    {* Поле для свойства CollateCheckBox}
   f_cbOddEven : TvtComboBoxQS;
    {* Поле для свойства cbOddEven}
   f_poDocumentTexts : TeeRadioButton;
    {* Поле для свойства poDocumentTexts}
   f_rbPrintAll : TeeRadioButton;
    {* Поле для свойства rbPrintAll}
   f_rbPrintInterval : TeeRadioButton;
    {* Поле для свойства rbPrintInterval}
   f_cbPrinter : TvtComboBoxQS;
    {* Поле для свойства cbPrinter}
   f_cbPrintInfo : TeeCheckBox;
    {* Поле для свойства cbPrintInfo}
 protected
  procedure InitEntities; override;
 protected
 // property methods
   function pm_GetPoDocumentNames: TeeRadioButton;
   function pm_GetRbPrintSelected: TeeRadioButton;
   function pm_GetRbPrintCurrent: TeeRadioButton;
   function pm_GetEdPrintInterval: TnscEditWithoutPlusMinusShortcut;
   function pm_GetEdCopyCount: TvtSpinEdit;
   function pm_GetCollateCheckBox: TeeCheckBox;
   function pm_GetCbOddEven: TvtComboBoxQS;
   function pm_GetPoDocumentTexts: TeeRadioButton;
   function pm_GetRbPrintAll: TeeRadioButton;
   function pm_GetRbPrintInterval: TeeRadioButton;
   function pm_GetCbPrinter: TvtComboBoxQS;
   function pm_GetCbPrintInfo: TeeCheckBox;
 protected
 // realized methods
   procedure Result_Cancel_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Отмена }
   procedure Result_Ok_Test(const aParams: IvcmTestParamsPrim);
     {* OK }
   procedure Result_Ok_GetState(var State: TvcmOperationStateIndex);
     {* OK }
   procedure Result_Ok_Execute(const aParams: IvcmExecuteParamsPrim);
     {* OK }
 public
 // public properties
   property poDocumentNames: TeeRadioButton
     read pm_GetPoDocumentNames;
   property rbPrintSelected: TeeRadioButton
     read pm_GetRbPrintSelected;
   property rbPrintCurrent: TeeRadioButton
     read pm_GetRbPrintCurrent;
   property edPrintInterval: TnscEditWithoutPlusMinusShortcut
     read pm_GetEdPrintInterval;
   property edCopyCount: TvtSpinEdit
     read pm_GetEdCopyCount;
   property CollateCheckBox: TeeCheckBox
     read pm_GetCollateCheckBox;
   property cbOddEven: TvtComboBoxQS
     read pm_GetCbOddEven;
   property poDocumentTexts: TeeRadioButton
     read pm_GetPoDocumentTexts;
   property rbPrintAll: TeeRadioButton
     read pm_GetRbPrintAll;
   property rbPrintInterval: TeeRadioButton
     read pm_GetRbPrintInterval;
   property cbPrinter: TvtComboBoxQS
     read pm_GetCbPrinter;
   property cbPrintInfo: TeeCheckBox
     read pm_GetCbPrintInfo;
 end;//TPrimPrintDialogOptionsForm

 TvcmEntityFormRef = TPrimPrintDialogOptionsForm;
{$IfEnd} //not Admin

implementation

{$If not defined(Admin)}
uses
  Controls,
  nsTrialSupport,
  PreviewInterfaces,
  evExcept,
  afwInterfaces,
  l3Interfaces,
  l3RangeManager,
  SysUtils,
  nsConst,
  afwFacade,
  afwTypes,
  l3Base,
  l3String
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  StdRes {a}
  ;
{$IfEnd} //not Admin

{$If not defined(Admin)}

type
  Tkw_PrimPrintDialogOptions_Control_poDocumentNames = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола poDocumentNames
----
*Пример использования*:
[code]
контрол::poDocumentNames TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimPrintDialogOptions_Control_poDocumentNames

// start class Tkw_PrimPrintDialogOptions_Control_poDocumentNames

{$If not defined(NoScripts)}
function Tkw_PrimPrintDialogOptions_Control_poDocumentNames.GetString: AnsiString;
 {-}
begin
 Result := 'poDocumentNames';
end;//Tkw_PrimPrintDialogOptions_Control_poDocumentNames.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimPrintDialogOptions_Control_poDocumentNames_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола poDocumentNames
----
*Пример использования*:
[code]
контрол::poDocumentNames:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimPrintDialogOptions_Control_poDocumentNames_Push

// start class Tkw_PrimPrintDialogOptions_Control_poDocumentNames_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimPrintDialogOptions_Control_poDocumentNames_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('poDocumentNames');
 inherited;
end;//Tkw_PrimPrintDialogOptions_Control_poDocumentNames_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimPrintDialogOptions_Control_rbPrintSelected = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола rbPrintSelected
----
*Пример использования*:
[code]
контрол::rbPrintSelected TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimPrintDialogOptions_Control_rbPrintSelected

// start class Tkw_PrimPrintDialogOptions_Control_rbPrintSelected

{$If not defined(NoScripts)}
function Tkw_PrimPrintDialogOptions_Control_rbPrintSelected.GetString: AnsiString;
 {-}
begin
 Result := 'rbPrintSelected';
end;//Tkw_PrimPrintDialogOptions_Control_rbPrintSelected.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimPrintDialogOptions_Control_rbPrintSelected_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола rbPrintSelected
----
*Пример использования*:
[code]
контрол::rbPrintSelected:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimPrintDialogOptions_Control_rbPrintSelected_Push

// start class Tkw_PrimPrintDialogOptions_Control_rbPrintSelected_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimPrintDialogOptions_Control_rbPrintSelected_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('rbPrintSelected');
 inherited;
end;//Tkw_PrimPrintDialogOptions_Control_rbPrintSelected_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimPrintDialogOptions_Control_rbPrintCurrent = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола rbPrintCurrent
----
*Пример использования*:
[code]
контрол::rbPrintCurrent TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimPrintDialogOptions_Control_rbPrintCurrent

// start class Tkw_PrimPrintDialogOptions_Control_rbPrintCurrent

{$If not defined(NoScripts)}
function Tkw_PrimPrintDialogOptions_Control_rbPrintCurrent.GetString: AnsiString;
 {-}
begin
 Result := 'rbPrintCurrent';
end;//Tkw_PrimPrintDialogOptions_Control_rbPrintCurrent.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimPrintDialogOptions_Control_rbPrintCurrent_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола rbPrintCurrent
----
*Пример использования*:
[code]
контрол::rbPrintCurrent:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimPrintDialogOptions_Control_rbPrintCurrent_Push

// start class Tkw_PrimPrintDialogOptions_Control_rbPrintCurrent_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimPrintDialogOptions_Control_rbPrintCurrent_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('rbPrintCurrent');
 inherited;
end;//Tkw_PrimPrintDialogOptions_Control_rbPrintCurrent_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimPrintDialogOptions_Control_edPrintInterval = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола edPrintInterval
----
*Пример использования*:
[code]
контрол::edPrintInterval TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimPrintDialogOptions_Control_edPrintInterval

// start class Tkw_PrimPrintDialogOptions_Control_edPrintInterval

{$If not defined(NoScripts)}
function Tkw_PrimPrintDialogOptions_Control_edPrintInterval.GetString: AnsiString;
 {-}
begin
 Result := 'edPrintInterval';
end;//Tkw_PrimPrintDialogOptions_Control_edPrintInterval.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimPrintDialogOptions_Control_edPrintInterval_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола edPrintInterval
----
*Пример использования*:
[code]
контрол::edPrintInterval:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimPrintDialogOptions_Control_edPrintInterval_Push

// start class Tkw_PrimPrintDialogOptions_Control_edPrintInterval_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimPrintDialogOptions_Control_edPrintInterval_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('edPrintInterval');
 inherited;
end;//Tkw_PrimPrintDialogOptions_Control_edPrintInterval_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimPrintDialogOptions_Control_edCopyCount = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола edCopyCount
----
*Пример использования*:
[code]
контрол::edCopyCount TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimPrintDialogOptions_Control_edCopyCount

// start class Tkw_PrimPrintDialogOptions_Control_edCopyCount

{$If not defined(NoScripts)}
function Tkw_PrimPrintDialogOptions_Control_edCopyCount.GetString: AnsiString;
 {-}
begin
 Result := 'edCopyCount';
end;//Tkw_PrimPrintDialogOptions_Control_edCopyCount.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimPrintDialogOptions_Control_edCopyCount_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола edCopyCount
----
*Пример использования*:
[code]
контрол::edCopyCount:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimPrintDialogOptions_Control_edCopyCount_Push

// start class Tkw_PrimPrintDialogOptions_Control_edCopyCount_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimPrintDialogOptions_Control_edCopyCount_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('edCopyCount');
 inherited;
end;//Tkw_PrimPrintDialogOptions_Control_edCopyCount_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimPrintDialogOptions_Control_CollateCheckBox = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола CollateCheckBox
----
*Пример использования*:
[code]
контрол::CollateCheckBox TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimPrintDialogOptions_Control_CollateCheckBox

// start class Tkw_PrimPrintDialogOptions_Control_CollateCheckBox

{$If not defined(NoScripts)}
function Tkw_PrimPrintDialogOptions_Control_CollateCheckBox.GetString: AnsiString;
 {-}
begin
 Result := 'CollateCheckBox';
end;//Tkw_PrimPrintDialogOptions_Control_CollateCheckBox.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimPrintDialogOptions_Control_CollateCheckBox_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола CollateCheckBox
----
*Пример использования*:
[code]
контрол::CollateCheckBox:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimPrintDialogOptions_Control_CollateCheckBox_Push

// start class Tkw_PrimPrintDialogOptions_Control_CollateCheckBox_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimPrintDialogOptions_Control_CollateCheckBox_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('CollateCheckBox');
 inherited;
end;//Tkw_PrimPrintDialogOptions_Control_CollateCheckBox_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimPrintDialogOptions_Control_cbOddEven = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола cbOddEven
----
*Пример использования*:
[code]
контрол::cbOddEven TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimPrintDialogOptions_Control_cbOddEven

// start class Tkw_PrimPrintDialogOptions_Control_cbOddEven

{$If not defined(NoScripts)}
function Tkw_PrimPrintDialogOptions_Control_cbOddEven.GetString: AnsiString;
 {-}
begin
 Result := 'cbOddEven';
end;//Tkw_PrimPrintDialogOptions_Control_cbOddEven.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimPrintDialogOptions_Control_cbOddEven_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола cbOddEven
----
*Пример использования*:
[code]
контрол::cbOddEven:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimPrintDialogOptions_Control_cbOddEven_Push

// start class Tkw_PrimPrintDialogOptions_Control_cbOddEven_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimPrintDialogOptions_Control_cbOddEven_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('cbOddEven');
 inherited;
end;//Tkw_PrimPrintDialogOptions_Control_cbOddEven_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimPrintDialogOptions_Control_poDocumentTexts = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола poDocumentTexts
----
*Пример использования*:
[code]
контрол::poDocumentTexts TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimPrintDialogOptions_Control_poDocumentTexts

// start class Tkw_PrimPrintDialogOptions_Control_poDocumentTexts

{$If not defined(NoScripts)}
function Tkw_PrimPrintDialogOptions_Control_poDocumentTexts.GetString: AnsiString;
 {-}
begin
 Result := 'poDocumentTexts';
end;//Tkw_PrimPrintDialogOptions_Control_poDocumentTexts.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimPrintDialogOptions_Control_poDocumentTexts_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола poDocumentTexts
----
*Пример использования*:
[code]
контрол::poDocumentTexts:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimPrintDialogOptions_Control_poDocumentTexts_Push

// start class Tkw_PrimPrintDialogOptions_Control_poDocumentTexts_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimPrintDialogOptions_Control_poDocumentTexts_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('poDocumentTexts');
 inherited;
end;//Tkw_PrimPrintDialogOptions_Control_poDocumentTexts_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimPrintDialogOptions_Control_rbPrintAll = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола rbPrintAll
----
*Пример использования*:
[code]
контрол::rbPrintAll TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimPrintDialogOptions_Control_rbPrintAll

// start class Tkw_PrimPrintDialogOptions_Control_rbPrintAll

{$If not defined(NoScripts)}
function Tkw_PrimPrintDialogOptions_Control_rbPrintAll.GetString: AnsiString;
 {-}
begin
 Result := 'rbPrintAll';
end;//Tkw_PrimPrintDialogOptions_Control_rbPrintAll.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimPrintDialogOptions_Control_rbPrintAll_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола rbPrintAll
----
*Пример использования*:
[code]
контрол::rbPrintAll:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimPrintDialogOptions_Control_rbPrintAll_Push

// start class Tkw_PrimPrintDialogOptions_Control_rbPrintAll_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimPrintDialogOptions_Control_rbPrintAll_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('rbPrintAll');
 inherited;
end;//Tkw_PrimPrintDialogOptions_Control_rbPrintAll_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimPrintDialogOptions_Control_rbPrintInterval = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола rbPrintInterval
----
*Пример использования*:
[code]
контрол::rbPrintInterval TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimPrintDialogOptions_Control_rbPrintInterval

// start class Tkw_PrimPrintDialogOptions_Control_rbPrintInterval

{$If not defined(NoScripts)}
function Tkw_PrimPrintDialogOptions_Control_rbPrintInterval.GetString: AnsiString;
 {-}
begin
 Result := 'rbPrintInterval';
end;//Tkw_PrimPrintDialogOptions_Control_rbPrintInterval.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimPrintDialogOptions_Control_rbPrintInterval_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола rbPrintInterval
----
*Пример использования*:
[code]
контрол::rbPrintInterval:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimPrintDialogOptions_Control_rbPrintInterval_Push

// start class Tkw_PrimPrintDialogOptions_Control_rbPrintInterval_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimPrintDialogOptions_Control_rbPrintInterval_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('rbPrintInterval');
 inherited;
end;//Tkw_PrimPrintDialogOptions_Control_rbPrintInterval_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimPrintDialogOptions_Control_cbPrinter = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола cbPrinter
----
*Пример использования*:
[code]
контрол::cbPrinter TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimPrintDialogOptions_Control_cbPrinter

// start class Tkw_PrimPrintDialogOptions_Control_cbPrinter

{$If not defined(NoScripts)}
function Tkw_PrimPrintDialogOptions_Control_cbPrinter.GetString: AnsiString;
 {-}
begin
 Result := 'cbPrinter';
end;//Tkw_PrimPrintDialogOptions_Control_cbPrinter.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimPrintDialogOptions_Control_cbPrinter_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола cbPrinter
----
*Пример использования*:
[code]
контрол::cbPrinter:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimPrintDialogOptions_Control_cbPrinter_Push

// start class Tkw_PrimPrintDialogOptions_Control_cbPrinter_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimPrintDialogOptions_Control_cbPrinter_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('cbPrinter');
 inherited;
end;//Tkw_PrimPrintDialogOptions_Control_cbPrinter_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimPrintDialogOptions_Control_cbPrintInfo = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола cbPrintInfo
----
*Пример использования*:
[code]
контрол::cbPrintInfo TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimPrintDialogOptions_Control_cbPrintInfo

// start class Tkw_PrimPrintDialogOptions_Control_cbPrintInfo

{$If not defined(NoScripts)}
function Tkw_PrimPrintDialogOptions_Control_cbPrintInfo.GetString: AnsiString;
 {-}
begin
 Result := 'cbPrintInfo';
end;//Tkw_PrimPrintDialogOptions_Control_cbPrintInfo.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimPrintDialogOptions_Control_cbPrintInfo_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола cbPrintInfo
----
*Пример использования*:
[code]
контрол::cbPrintInfo:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimPrintDialogOptions_Control_cbPrintInfo_Push

// start class Tkw_PrimPrintDialogOptions_Control_cbPrintInfo_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimPrintDialogOptions_Control_cbPrintInfo_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('cbPrintInfo');
 inherited;
end;//Tkw_PrimPrintDialogOptions_Control_cbPrintInfo_Push.DoDoIt
{$IfEnd} //not NoScripts

function TPrimPrintDialogOptionsForm.pm_GetPoDocumentNames: TeeRadioButton;
begin
 if (f_poDocumentNames = nil) then
  f_poDocumentNames := FindComponent('poDocumentNames') As TeeRadioButton;
 Result := f_poDocumentNames;
end;

function TPrimPrintDialogOptionsForm.pm_GetRbPrintSelected: TeeRadioButton;
begin
 if (f_rbPrintSelected = nil) then
  f_rbPrintSelected := FindComponent('rbPrintSelected') As TeeRadioButton;
 Result := f_rbPrintSelected;
end;

function TPrimPrintDialogOptionsForm.pm_GetRbPrintCurrent: TeeRadioButton;
begin
 if (f_rbPrintCurrent = nil) then
  f_rbPrintCurrent := FindComponent('rbPrintCurrent') As TeeRadioButton;
 Result := f_rbPrintCurrent;
end;

function TPrimPrintDialogOptionsForm.pm_GetEdPrintInterval: TnscEditWithoutPlusMinusShortcut;
begin
 if (f_edPrintInterval = nil) then
  f_edPrintInterval := FindComponent('edPrintInterval') As TnscEditWithoutPlusMinusShortcut;
 Result := f_edPrintInterval;
end;

function TPrimPrintDialogOptionsForm.pm_GetEdCopyCount: TvtSpinEdit;
begin
 if (f_edCopyCount = nil) then
  f_edCopyCount := FindComponent('edCopyCount') As TvtSpinEdit;
 Result := f_edCopyCount;
end;

function TPrimPrintDialogOptionsForm.pm_GetCollateCheckBox: TeeCheckBox;
begin
 if (f_CollateCheckBox = nil) then
  f_CollateCheckBox := FindComponent('CollateCheckBox') As TeeCheckBox;
 Result := f_CollateCheckBox;
end;

function TPrimPrintDialogOptionsForm.pm_GetCbOddEven: TvtComboBoxQS;
begin
 if (f_cbOddEven = nil) then
  f_cbOddEven := FindComponent('cbOddEven') As TvtComboBoxQS;
 Result := f_cbOddEven;
end;

function TPrimPrintDialogOptionsForm.pm_GetPoDocumentTexts: TeeRadioButton;
begin
 if (f_poDocumentTexts = nil) then
  f_poDocumentTexts := FindComponent('poDocumentTexts') As TeeRadioButton;
 Result := f_poDocumentTexts;
end;

function TPrimPrintDialogOptionsForm.pm_GetRbPrintAll: TeeRadioButton;
begin
 if (f_rbPrintAll = nil) then
  f_rbPrintAll := FindComponent('rbPrintAll') As TeeRadioButton;
 Result := f_rbPrintAll;
end;

function TPrimPrintDialogOptionsForm.pm_GetRbPrintInterval: TeeRadioButton;
begin
 if (f_rbPrintInterval = nil) then
  f_rbPrintInterval := FindComponent('rbPrintInterval') As TeeRadioButton;
 Result := f_rbPrintInterval;
end;

function TPrimPrintDialogOptionsForm.pm_GetCbPrinter: TvtComboBoxQS;
begin
 if (f_cbPrinter = nil) then
  f_cbPrinter := FindComponent('cbPrinter') As TvtComboBoxQS;
 Result := f_cbPrinter;
end;

function TPrimPrintDialogOptionsForm.pm_GetCbPrintInfo: TeeCheckBox;
begin
 if (f_cbPrintInfo = nil) then
  f_cbPrintInfo := FindComponent('cbPrintInfo') As TeeCheckBox;
 Result := f_cbPrintInfo;
end;

procedure TPrimPrintDialogOptionsForm.Result_Cancel_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4A8AD46D0226_4C52BA5D01A8exec_var*
//#UC END# *4A8AD46D0226_4C52BA5D01A8exec_var*
begin
//#UC START# *4A8AD46D0226_4C52BA5D01A8exec_impl*
 ModalResult := mrCancel;
//#UC END# *4A8AD46D0226_4C52BA5D01A8exec_impl*
end;//TPrimPrintDialogOptionsForm.Result_Cancel_Execute

procedure TPrimPrintDialogOptionsForm.Result_Ok_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4A97EBE702F8_4C52BA5D01A8test_var*
//#UC END# *4A97EBE702F8_4C52BA5D01A8test_var*
begin
//#UC START# *4A97EBE702F8_4C52BA5D01A8test_impl*
 aParams.Op.Flag[vcm_ofEnabled] := (f_Preview <> nil) and
                                  f_Preview.HasText and
                                  f_Preview.Printer.HasPrinter and
                                  not (f_Preview.PreviewResetting or
                                       f_Preview.InProcess);
 {$If not defined(Admin) AND not defined(Monitorings)}
 nsDisableOperationInTrialMode(aParams);
 {$IfEnd} //not Admin AND not Monitorings
//#UC END# *4A97EBE702F8_4C52BA5D01A8test_impl*
end;//TPrimPrintDialogOptionsForm.Result_Ok_Test

procedure TPrimPrintDialogOptionsForm.Result_Ok_GetState(var State: TvcmOperationStateIndex);
//#UC START# *4A97EBE702F8_4C52BA5D01A8getstate_var*
//#UC END# *4A97EBE702F8_4C52BA5D01A8getstate_var*
begin
//#UC START# *4A97EBE702F8_4C52BA5D01A8getstate_impl*
 State := st_user_Result_Ok_Print;
//#UC END# *4A97EBE702F8_4C52BA5D01A8getstate_impl*
end;//TPrimPrintDialogOptionsForm.Result_Ok_GetState

procedure TPrimPrintDialogOptionsForm.Result_Ok_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4A97EBE702F8_4C52BA5D01A8exec_var*
var
 l_Preview  : IafwComplexDocumentPreview;
 l_Interval : String;
 l_RangeMgr : Il3RangeManager;
 l_SuperPreview: InsSuperComplexDocumentPreview;
 l_MultiDocumentPreviewContainer: InsTreeMultiDocumentPreviewContainer;
//#UC END# *4A97EBE702F8_4C52BA5D01A8exec_var*
begin
//#UC START# *4A97EBE702F8_4C52BA5D01A8exec_impl*
 if (f_Preview <> nil) then
 begin
  if Supports(f_Preview, InsSuperComplexDocumentPreview, l_SuperPreview) then
  try
   if poDocumentNames.Checked then
    l_SuperPreview.SuperContentKind := ns_spkDocumentTitles;
   if poDocumentTexts.Checked then
   begin
    l_SuperPreview.SuperContentKind := ns_spkDocumentTexts;
    if rbPrintSelected.Checked then
     Supports(l_SuperPreview.SuperCurrent.Selection, InsTreeMultiDocumentPreviewContainer, l_MultiDocumentPreviewContainer)
    else
     Supports(l_SuperPreview.SuperCurrent.Document, InsTreeMultiDocumentPreviewContainer, l_MultiDocumentPreviewContainer);
    if not afw.Application.IsInternal and (l_MultiDocumentPreviewContainer.ApproxDocCount > c_MaxDocumentInListLimit) then
    begin
     Say(war_TryToPrintTooManyDocs,[c_MaxDocumentInListLimit]);
     Exit;
    end;
    l_MultiDocumentPreviewContainer.Prepare;
   end
   else
    if Assigned(l_SuperPreview.DocumentTexts) then
    begin
     if rbPrintSelected.Checked then
      Supports(l_SuperPreview.DocumentTexts.Selection, InsTreeMultiDocumentPreviewContainer, l_MultiDocumentPreviewContainer)
     else
      Supports(l_SuperPreview.DocumentTexts.Document, InsTreeMultiDocumentPreviewContainer, l_MultiDocumentPreviewContainer);
     if (l_MultiDocumentPreviewContainer.ApproxDocCount > c_MaxTotalDocumentInListLimit) then
     begin
      Say(war_TryToPrintTooManyTotalDocs,[c_MaxTotalDocumentInListLimit]);
      Exit;
     end;
    end;
  finally
   l_SuperPreview := nil;
  end;
  if Supports(f_Preview, IafwComplexDocumentPreview, l_Preview) then
   try
    if rbPrintCurrent.Checked then
     l_Preview.ContentKind := afw_pckDocument
    else
    if rbPrintAll.Checked then
     l_Preview.ContentKind := afw_pckDocument
    else
    if rbPrintSelected.Checked then
     l_Preview.ContentKind := afw_pckSelection
    else
    if rbPrintInterval.Checked then
     l_Preview.ContentKind := afw_pckDocument;
   finally
    l_Preview := nil;
   end;//try..finally
  f_Preview.Printer.PrinterIndex := cbPrinter.ItemIndex;
  if rbPrintCurrent.Checked then
   l_Interval := IntToStr(Succ(f_Preview.CurrentPage))
  else
  if rbPrintInterval.Checked then
   l_Interval := l3Str(edPrintInterval.Text)
  else
   l_Interval := '';
  try
   l_RangeMgr := Tl3RangeManager.Make(l_Interval);
  except
   on ERangeManagerParseError do
   begin
    Say(err_PageRangeParse);
    FocusControl(edPrintInterval);
    Exit;
   end;
   on EConvertError do
   begin
    Say(err_PageRangeParse);
    FocusControl(edPrintInterval);
    Exit;
   end;
   on EIntOverflow do
   begin
    Say(err_PageRangeParse);
    FocusControl(edPrintInterval);
    Exit;
   end;
  end;//try..except

  try
   f_Preview.Print(TafwPagesInterval(cbOddEven.ItemIndex),
                   l_RangeMgr,
                   edCopyCount.AsInteger,
                   '',
                   CollateCheckBox.CHecked);
  except
   on EevNothingToPrint do
   begin
    Say(err_PageRangeParse);
    FocusControl(edPrintInterval);
    Exit;
   end;
  end;
  if cbPrintInfo.Checked AND
     Supports(f_Preview, IafwComplexDocumentPreview, l_Preview) then
   try
    if (l_Preview.Info <> nil) then
    begin
     // - печатаем справку
     l_Preview.Info.Print(afw_piAll, nil,
                          edCopyCount.AsInteger,
                          '',
                          CollateCheckBox.CHecked);
    end;
   finally
    l_Preview := nil;
   end;//try..finally
  ModalResult := mrOk;
 end;//f_Preview <> nil
//#UC END# *4A97EBE702F8_4C52BA5D01A8exec_impl*
end;//TPrimPrintDialogOptionsForm.Result_Ok_Execute

procedure TPrimPrintDialogOptionsForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_Result, nil);
  PublishOp(en_Result, op_Cancel, Result_Cancel_Execute, nil, nil);
  ShowInContextMenu(en_Result, op_Cancel, false);
  ShowInToolbar(en_Result, op_Cancel, true);
  PublishOp(en_Result, op_Ok, Result_Ok_Execute, Result_Ok_Test, Result_Ok_GetState);
  ShowInContextMenu(en_Result, op_Ok, false);
  ShowInToolbar(en_Result, op_Ok, true);
 end;//with Entities.Entities
end;

{$IfEnd} //not Admin

initialization
{$If not defined(Admin)}
// Регистрация Tkw_PrimPrintDialogOptions_Control_poDocumentNames
 Tkw_PrimPrintDialogOptions_Control_poDocumentNames.Register('контрол::poDocumentNames', TeeRadioButton);
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PrimPrintDialogOptions_Control_poDocumentNames_Push
 Tkw_PrimPrintDialogOptions_Control_poDocumentNames_Push.Register('контрол::poDocumentNames:push');
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PrimPrintDialogOptions_Control_rbPrintSelected
 Tkw_PrimPrintDialogOptions_Control_rbPrintSelected.Register('контрол::rbPrintSelected', TeeRadioButton);
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PrimPrintDialogOptions_Control_rbPrintSelected_Push
 Tkw_PrimPrintDialogOptions_Control_rbPrintSelected_Push.Register('контрол::rbPrintSelected:push');
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PrimPrintDialogOptions_Control_rbPrintCurrent
 Tkw_PrimPrintDialogOptions_Control_rbPrintCurrent.Register('контрол::rbPrintCurrent', TeeRadioButton);
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PrimPrintDialogOptions_Control_rbPrintCurrent_Push
 Tkw_PrimPrintDialogOptions_Control_rbPrintCurrent_Push.Register('контрол::rbPrintCurrent:push');
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PrimPrintDialogOptions_Control_edPrintInterval
 Tkw_PrimPrintDialogOptions_Control_edPrintInterval.Register('контрол::edPrintInterval', TnscEditWithoutPlusMinusShortcut);
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PrimPrintDialogOptions_Control_edPrintInterval_Push
 Tkw_PrimPrintDialogOptions_Control_edPrintInterval_Push.Register('контрол::edPrintInterval:push');
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PrimPrintDialogOptions_Control_edCopyCount
 Tkw_PrimPrintDialogOptions_Control_edCopyCount.Register('контрол::edCopyCount', TvtSpinEdit);
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PrimPrintDialogOptions_Control_edCopyCount_Push
 Tkw_PrimPrintDialogOptions_Control_edCopyCount_Push.Register('контрол::edCopyCount:push');
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PrimPrintDialogOptions_Control_CollateCheckBox
 Tkw_PrimPrintDialogOptions_Control_CollateCheckBox.Register('контрол::CollateCheckBox', TeeCheckBox);
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PrimPrintDialogOptions_Control_CollateCheckBox_Push
 Tkw_PrimPrintDialogOptions_Control_CollateCheckBox_Push.Register('контрол::CollateCheckBox:push');
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PrimPrintDialogOptions_Control_cbOddEven
 Tkw_PrimPrintDialogOptions_Control_cbOddEven.Register('контрол::cbOddEven', TvtComboBoxQS);
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PrimPrintDialogOptions_Control_cbOddEven_Push
 Tkw_PrimPrintDialogOptions_Control_cbOddEven_Push.Register('контрол::cbOddEven:push');
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PrimPrintDialogOptions_Control_poDocumentTexts
 Tkw_PrimPrintDialogOptions_Control_poDocumentTexts.Register('контрол::poDocumentTexts', TeeRadioButton);
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PrimPrintDialogOptions_Control_poDocumentTexts_Push
 Tkw_PrimPrintDialogOptions_Control_poDocumentTexts_Push.Register('контрол::poDocumentTexts:push');
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PrimPrintDialogOptions_Control_rbPrintAll
 Tkw_PrimPrintDialogOptions_Control_rbPrintAll.Register('контрол::rbPrintAll', TeeRadioButton);
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PrimPrintDialogOptions_Control_rbPrintAll_Push
 Tkw_PrimPrintDialogOptions_Control_rbPrintAll_Push.Register('контрол::rbPrintAll:push');
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PrimPrintDialogOptions_Control_rbPrintInterval
 Tkw_PrimPrintDialogOptions_Control_rbPrintInterval.Register('контрол::rbPrintInterval', TeeRadioButton);
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PrimPrintDialogOptions_Control_rbPrintInterval_Push
 Tkw_PrimPrintDialogOptions_Control_rbPrintInterval_Push.Register('контрол::rbPrintInterval:push');
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PrimPrintDialogOptions_Control_cbPrinter
 Tkw_PrimPrintDialogOptions_Control_cbPrinter.Register('контрол::cbPrinter', TvtComboBoxQS);
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PrimPrintDialogOptions_Control_cbPrinter_Push
 Tkw_PrimPrintDialogOptions_Control_cbPrinter_Push.Register('контрол::cbPrinter:push');
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PrimPrintDialogOptions_Control_cbPrintInfo
 Tkw_PrimPrintDialogOptions_Control_cbPrintInfo.Register('контрол::cbPrintInfo', TeeCheckBox);
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PrimPrintDialogOptions_Control_cbPrintInfo_Push
 Tkw_PrimPrintDialogOptions_Control_cbPrintInfo_Push.Register('контрол::cbPrintInfo:push');
{$IfEnd} //not Admin

end.