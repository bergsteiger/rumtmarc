unit EditionsContainer_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Editions/Forms/EditionsContainer_Form.pas"
// Начат: 28.07.2009 13:11
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Пользовательские сервисы::CompareEditions::View::Editions::BaseEditions::EditionsContainer
//
// Сравнение редакций документа
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
  PrimEditionsContainer_Form
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  CompareEditions_FormDefinitions_Controls
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
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
  TEditionsContainerForm = {final form} class(TvcmContainerFormRef, EditionsContainerFormDef)
   {* Сравнение редакций документа }
  Entities : TvcmEntities;
  BackgroundPanel: TvtProportionalPanel;
  pnLeft: TvtSizeablePanel;
  pnRight: TvtPanel;
  end;//TEditionsContainerForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$R *.DFM}

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  SysUtils
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

type
   Tkw_Form_EditionsContainer = class(TtfwControlString)
    {* Слово словаря для идентификатора формы EditionsContainer
----
*Пример использования*:
[code]
'aControl' форма::EditionsContainer TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_EditionsContainer

// start class Tkw_Form_EditionsContainer

{$If not defined(NoScripts)}
function Tkw_Form_EditionsContainer.GetString: AnsiString;
 {-}
begin
 Result := 'EditionsContainerForm';
end;//Tkw_Form_EditionsContainer.GetString
{$IfEnd} //not NoScripts

type
   Tkw_EditionsContainer_BackgroundPanel_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола BackgroundPanel формы EditionsContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_EditionsContainer_BackgroundPanel_ControlInstance

// start class Tkw_EditionsContainer_BackgroundPanel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_EditionsContainer_BackgroundPanel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TEditionsContainerForm).BackgroundPanel);
end;//Tkw_EditionsContainer_BackgroundPanel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_EditionsContainer_pnLeft_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола pnLeft формы EditionsContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_EditionsContainer_pnLeft_ControlInstance

// start class Tkw_EditionsContainer_pnLeft_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_EditionsContainer_pnLeft_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TEditionsContainerForm).pnLeft);
end;//Tkw_EditionsContainer_pnLeft_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_EditionsContainer_pnRight_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола pnRight формы EditionsContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_EditionsContainer_pnRight_ControlInstance

// start class Tkw_EditionsContainer_pnRight_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_EditionsContainer_pnRight_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TEditionsContainerForm).pnRight);
end;//Tkw_EditionsContainer_pnRight_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация фабрики формы EditionsContainer
 fm_EditionsContainerForm.SetFactory(TEditionsContainerForm.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_EditionsContainer
 Tkw_Form_EditionsContainer.Register('форма::EditionsContainer', TEditionsContainerForm);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_EditionsContainer_BackgroundPanel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TEditionsContainerForm.BackgroundPanel', Tkw_EditionsContainer_BackgroundPanel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_EditionsContainer_pnLeft_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TEditionsContainerForm.pnLeft', Tkw_EditionsContainer_pnLeft_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_EditionsContainer_pnRight_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TEditionsContainerForm.pnRight', Tkw_EditionsContainer_pnRight_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.