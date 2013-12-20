unit FromWithPanel_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Forms"
// Автор: Инишев Д.А.
// Модуль: "w:/common/components/gui/Garant/Daily/Forms/FromWithPanel_Form.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> Shared Delphi Operations For Tests::TestForms::Forms::FormWithPanel::FromWithPanel
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
  vtPanel,
  l3StringIDEx
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
  FromWithPanel_ut_FromWithPanel_UserType,
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
   { FromWithPanelIDs }
  fm_FromWithPanelForm : TvcmFormDescriptor = (rFormID : (rName : 'FromWithPanelForm'; rID : 0); rFactory : nil);
   { Идентификатор формы TFromWithPanelForm }

type
 FromWithPanelFormDef = interface(IUnknown)
  {* Идентификатор формы FromWithPanel }
   ['{52A98A72-5DD1-4BDA-8FD3-152438D1B28D}']
 end;//FromWithPanelFormDef

 TFromWithPanelForm = {final form} class(TvcmEntityForm, FromWithPanelFormDef)
  Entities : TvcmEntities;
 private
 // private fields
   f_WorkSpace : TvtPanel;
    {* Поле для свойства WorkSpace}
 protected
  procedure MakeControls; override;
 protected
 // overridden protected methods
   procedure InitControls; override;
     {* Процедура инициализации контролов. Для перекрытия в потомках }
 public
 // public properties
   property WorkSpace: TvtPanel
     read f_WorkSpace;
 end;//TFromWithPanelForm
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
   { Локализуемые строки ut_FromWithPanelLocalConstants }
  str_ut_FromWithPanelCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'ut_FromWithPanelCaption'; rValue : 'FromWithPanel');
   { Заголовок пользовательского типа "FromWithPanel" }

type
  Tkw_FromWithPanel_Control_WorkSpace = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола WorkSpace
----
*Пример использования*:
[code]
контрол::WorkSpace TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FromWithPanel_Control_WorkSpace

// start class Tkw_FromWithPanel_Control_WorkSpace

{$If not defined(NoScripts)}
function Tkw_FromWithPanel_Control_WorkSpace.GetString: AnsiString;
 {-}
begin
 Result := 'WorkSpace';
end;//Tkw_FromWithPanel_Control_WorkSpace.GetString
{$IfEnd} //not NoScripts

type
  Tkw_FromWithPanel_Control_WorkSpace_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола WorkSpace
----
*Пример использования*:
[code]
контрол::WorkSpace:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FromWithPanel_Control_WorkSpace_Push

// start class Tkw_FromWithPanel_Control_WorkSpace_Push

{$If not defined(NoScripts)}
procedure Tkw_FromWithPanel_Control_WorkSpace_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('WorkSpace');
 inherited;
end;//Tkw_FromWithPanel_Control_WorkSpace_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_Form_FromWithPanel = class(TtfwControlString)
   {* Слово словаря для идентификатора формы FromWithPanel
----
*Пример использования*:
[code]
'aControl' форма::FromWithPanel TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Form_FromWithPanel

// start class Tkw_Form_FromWithPanel

{$If not defined(NoScripts)}
function Tkw_Form_FromWithPanel.GetString: AnsiString;
 {-}
begin
 Result := 'FromWithPanelForm';
end;//Tkw_Form_FromWithPanel.GetString
{$IfEnd} //not NoScripts

type
  Tkw_FromWithPanel_WorkSpace_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола WorkSpace формы FromWithPanel }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FromWithPanel_WorkSpace_ControlInstance

// start class Tkw_FromWithPanel_WorkSpace_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_FromWithPanel_WorkSpace_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TFromWithPanelForm).WorkSpace);
end;//Tkw_FromWithPanel_WorkSpace_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

procedure TFromWithPanelForm.InitControls;
//#UC START# *4A8E8F2E0195_51D534260378_var*
//#UC END# *4A8E8F2E0195_51D534260378_var*
begin
//#UC START# *4A8E8F2E0195_51D534260378_impl*
 inherited;
 f_WorkSpace.Align := alClient;
//#UC END# *4A8E8F2E0195_51D534260378_impl*
end;//TFromWithPanelForm.InitControls

procedure TFromWithPanelForm.MakeControls;
begin
 inherited;
 f_WorkSpace := TvtPanel.Create(Self);
 f_WorkSpace.Name := 'WorkSpace';
 f_WorkSpace.Parent := Self;
 with AddUsertype(ut_FromWithPanelName,
  str_ut_FromWithPanelCaption,
  str_ut_FromWithPanelCaption,
  false,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(ut_FromWithPanelName
end;

{$IfEnd} //nsTest AND not NoVCM

initialization
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация Tkw_FromWithPanel_Control_WorkSpace
 Tkw_FromWithPanel_Control_WorkSpace.Register('контрол::WorkSpace', TvtPanel);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация Tkw_FromWithPanel_Control_WorkSpace_Push
 Tkw_FromWithPanel_Control_WorkSpace_Push.Register('контрол::WorkSpace:push');
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация фабрики формы FromWithPanel
 fm_FromWithPanelForm.SetFactory(TFromWithPanelForm.Make);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация Tkw_Form_FromWithPanel
 Tkw_Form_FromWithPanel.Register('форма::FromWithPanel', TFromWithPanelForm);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация Tkw_FromWithPanel_WorkSpace_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TFromWithPanelForm.WorkSpace', Tkw_FromWithPanel_WorkSpace_ControlInstance);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// Инициализация str_ut_FromWithPanelCaption
 str_ut_FromWithPanelCaption.Init;
{$IfEnd} //nsTest AND not NoVCM

end.