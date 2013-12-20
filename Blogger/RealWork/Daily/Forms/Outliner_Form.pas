unit Outliner_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Forms"
// Автор: Инишев Д.А.
// Модуль: "w:/common/components/gui/Garant/Daily/Forms/Outliner_Form.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> Shared Delphi Operations For Tests::TestForms::Forms::Outliner::OutlinerForm
//
// Форма для тестирования списка
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

interface

{$If defined(nsTest) AND not defined(NoVCM)}
uses
  vcmInterfaces,
  vcmEntityForm,
  vcmUserControls,
  l3StringIDEx,
  vtOutlinerControl
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwBynameControlPush
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  OutlinerForm_ut_OutlinerForm_UserType,
  Classes {a},
  l3InterfacedComponent {a},
  vcmComponent {a},
  vcmBaseEntities {a},
  vcmEntities {a},
  vcmExternalInterfaces {a}
  ;
{$IfEnd} //nsTest AND not NoVCM

{$If defined(nsTest) AND not defined(NoVCM)}
const
   { OutlinerFormIDs }
  fm_OutlinerFormForm : TvcmFormDescriptor = (rFormID : (rName : 'OutlinerFormForm'; rID : 0); rFactory : nil);
   { Идентификатор формы TOutlinerFormForm }

type
 OutlinerFormFormDef = interface(IUnknown)
  {* Идентификатор формы OutlinerForm }
   ['{0BC56D56-6AF0-47F9-9D0B-4AE7FEEE4483}']
 end;//OutlinerFormFormDef

 TOutlinerFormForm = {final form} class(TvcmEntityForm, OutlinerFormFormDef)
  {* Форма для тестирования списка }
  Entities : TvcmEntities;
 private
 // private fields
   f_TreeControl : TvtOutlinerControl;
    {* Поле для свойства TreeControl}
 protected
  procedure MakeControls; override;
 protected
 // overridden protected methods
   procedure InitControls; override;
     {* Процедура инициализации контролов. Для перекрытия в потомках }
 public
 // public properties
   property TreeControl: TvtOutlinerControl
     read f_TreeControl;
 end;//TOutlinerFormForm
{$IfEnd} //nsTest AND not NoVCM

implementation

{$R *.DFM}

{$If defined(nsTest) AND not defined(NoVCM)}
uses
  Controls
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  ,
  l3MessageID
  ;
{$IfEnd} //nsTest AND not NoVCM

{$If defined(nsTest) AND not defined(NoVCM)}

var
   { Локализуемые строки ut_OutlinerFormLocalConstants }
  str_ut_OutlinerFormCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'ut_OutlinerFormCaption'; rValue : 'Форма для тестирования списка');
   { Заголовок пользовательского типа "Форма для тестирования списка" }

type
  Tkw_OutlinerForm_Control_TreeControl = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола TreeControl
----
*Пример использования*:
[code]
контрол::TreeControl TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_OutlinerForm_Control_TreeControl

// start class Tkw_OutlinerForm_Control_TreeControl

{$If not defined(NoScripts)}
function Tkw_OutlinerForm_Control_TreeControl.GetString: AnsiString;
 {-}
begin
 Result := 'TreeControl';
end;//Tkw_OutlinerForm_Control_TreeControl.GetString
{$IfEnd} //not NoScripts

type
  Tkw_OutlinerForm_Control_TreeControl_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола TreeControl
----
*Пример использования*:
[code]
контрол::TreeControl:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_OutlinerForm_Control_TreeControl_Push

// start class Tkw_OutlinerForm_Control_TreeControl_Push

{$If not defined(NoScripts)}
procedure Tkw_OutlinerForm_Control_TreeControl_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('TreeControl');
 inherited;
end;//Tkw_OutlinerForm_Control_TreeControl_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_Form_OutlinerForm = class(TtfwControlString)
   {* Слово словаря для идентификатора формы OutlinerForm
----
*Пример использования*:
[code]
'aControl' форма::OutlinerForm TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Form_OutlinerForm

// start class Tkw_Form_OutlinerForm

{$If not defined(NoScripts)}
function Tkw_Form_OutlinerForm.GetString: AnsiString;
 {-}
begin
 Result := 'OutlinerFormForm';
end;//Tkw_Form_OutlinerForm.GetString
{$IfEnd} //not NoScripts

type
  Tkw_OutlinerForm_TreeControl_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола TreeControl формы OutlinerForm }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_OutlinerForm_TreeControl_ControlInstance

// start class Tkw_OutlinerForm_TreeControl_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_OutlinerForm_TreeControl_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TOutlinerFormForm).TreeControl);
end;//Tkw_OutlinerForm_TreeControl_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

procedure TOutlinerFormForm.InitControls;
//#UC START# *4A8E8F2E0195_4D4697F30281_var*
//#UC END# *4A8E8F2E0195_4D4697F30281_var*
begin
//#UC START# *4A8E8F2E0195_4D4697F30281_impl*
 inherited;
 f_TreeControl.Align := alClient;
//#UC END# *4A8E8F2E0195_4D4697F30281_impl*
end;//TOutlinerFormForm.InitControls

procedure TOutlinerFormForm.MakeControls;
begin
 inherited;
 f_TreeControl := TvtOutlinerControl.Create(Self);
 f_TreeControl.Name := 'TreeControl';
 f_TreeControl.Parent := Self;
 with AddUsertype(ut_OutlinerFormName,
  str_ut_OutlinerFormCaption,
  str_ut_OutlinerFormCaption,
  false,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(ut_OutlinerFormName
end;

{$IfEnd} //nsTest AND not NoVCM

initialization
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация Tkw_OutlinerForm_Control_TreeControl
 Tkw_OutlinerForm_Control_TreeControl.Register('контрол::TreeControl', TvtOutlinerControl);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация Tkw_OutlinerForm_Control_TreeControl_Push
 Tkw_OutlinerForm_Control_TreeControl_Push.Register('контрол::TreeControl:push');
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация фабрики формы OutlinerForm
 fm_OutlinerFormForm.SetFactory(TOutlinerFormForm.Make);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация Tkw_Form_OutlinerForm
 Tkw_Form_OutlinerForm.Register('форма::OutlinerForm', TOutlinerFormForm);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация Tkw_OutlinerForm_TreeControl_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TOutlinerFormForm.TreeControl', Tkw_OutlinerForm_TreeControl_ControlInstance);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// Инициализация str_ut_OutlinerFormCaption
 str_ut_OutlinerFormCaption.Init;
{$IfEnd} //nsTest AND not NoVCM

end.