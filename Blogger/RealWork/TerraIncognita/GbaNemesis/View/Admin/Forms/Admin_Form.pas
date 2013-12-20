unit Admin_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Тучнин Д.А.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Admin/Forms/Admin_Form.pas"
// Начат: 2005/08/16 09:41:37
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Администратор::Admin::View::Admin::Admin::AdminForm
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If defined(Admin)}
uses
  PrimAdminOptions_Form
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  Admin_FormDefinitions_Controls
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  vtProportionalPanel,
  vtSizeablePanel,
  vtPanel,
  Classes {a},
  l3InterfacedComponent {a},
  vcmComponent {a},
  vcmBaseEntities {a},
  vcmEntities {a},
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //Admin

{$If defined(Admin)}
type
  TcfAdminForm = {final form} class(TvcmContainerFormRef, AdminFormFormDef)
  Entities : TvcmEntities;
  BackgroundPanel: TvtProportionalPanel;
  PropertyZone: TvtSizeablePanel;
  TreeZone: TvtPanel;
  end;//TcfAdminForm

  TAdminForm = TcfAdminForm;
{$IfEnd} //Admin

implementation

{$R *.DFM}

{$If defined(Admin)}
uses
  SysUtils
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  
  ;
{$IfEnd} //Admin

{$If defined(Admin)}

type
   Tkw_Form_AdminForm = class(TtfwControlString)
    {* Слово словаря для идентификатора формы AdminForm
----
*Пример использования*:
[code]
'aControl' форма::AdminForm TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_AdminForm

// start class Tkw_Form_AdminForm

{$If not defined(NoScripts)}
function Tkw_Form_AdminForm.GetString: AnsiString;
 {-}
begin
 Result := 'cfAdminForm';
end;//Tkw_Form_AdminForm.GetString
{$IfEnd} //not NoScripts

type
   Tkw_AdminForm_BackgroundPanel_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола BackgroundPanel формы AdminForm }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_AdminForm_BackgroundPanel_ControlInstance

// start class Tkw_AdminForm_BackgroundPanel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AdminForm_BackgroundPanel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TcfAdminForm).BackgroundPanel);
end;//Tkw_AdminForm_BackgroundPanel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_AdminForm_PropertyZone_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола PropertyZone формы AdminForm }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_AdminForm_PropertyZone_ControlInstance

// start class Tkw_AdminForm_PropertyZone_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AdminForm_PropertyZone_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TcfAdminForm).PropertyZone);
end;//Tkw_AdminForm_PropertyZone_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_AdminForm_TreeZone_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола TreeZone формы AdminForm }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_AdminForm_TreeZone_ControlInstance

// start class Tkw_AdminForm_TreeZone_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AdminForm_TreeZone_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TcfAdminForm).TreeZone);
end;//Tkw_AdminForm_TreeZone_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //Admin

initialization
{$If defined(Admin)}
// Регистрация фабрики формы AdminForm
 fm_cfAdminForm.SetFactory(TcfAdminForm.Make);
{$IfEnd} //Admin
{$If defined(Admin)}
// Регистрация Tkw_Form_AdminForm
 Tkw_Form_AdminForm.Register('форма::AdminForm', TcfAdminForm);
{$IfEnd} //Admin
{$If defined(Admin)}
// Регистрация Tkw_AdminForm_BackgroundPanel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TcfAdminForm.BackgroundPanel', Tkw_AdminForm_BackgroundPanel_ControlInstance);
{$IfEnd} //Admin
{$If defined(Admin)}
// Регистрация Tkw_AdminForm_PropertyZone_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TcfAdminForm.PropertyZone', Tkw_AdminForm_PropertyZone_ControlInstance);
{$IfEnd} //Admin
{$If defined(Admin)}
// Регистрация Tkw_AdminForm_TreeZone_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TcfAdminForm.TreeZone', Tkw_AdminForm_TreeZone_ControlInstance);
{$IfEnd} //Admin

end.