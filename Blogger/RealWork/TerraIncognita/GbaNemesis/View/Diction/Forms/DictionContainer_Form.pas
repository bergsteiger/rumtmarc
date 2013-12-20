unit DictionContainer_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Diction/Forms/DictionContainer_Form.pas"
// Начат: 11.03.2011 21:30
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalContainer::Class>> F1 Встроенные продукты::Diction::View::Diction::Diction$FP::DictionContainer
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
  Common_FormDefinitions_Controls,
  PrimDictionContainer_Form
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  vtPanel,
  vtLabel,
  ExtCtrls,
  vtProportionalPanel,
  vtSizeablePanel,
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
  TDictionContainerForm = {final form} class(TvcmContainerFormRef, DictionContainerFormDef)
  Entities : TvcmEntities;
  end;//TDictionContainerForm
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
   Tkw_Form_DictionContainer = class(TtfwControlString)
    {* Слово словаря для идентификатора формы DictionContainer
----
*Пример использования*:
[code]
'aControl' форма::DictionContainer TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_DictionContainer

// start class Tkw_Form_DictionContainer

{$If not defined(NoScripts)}
function Tkw_Form_DictionContainer.GetString: AnsiString;
 {-}
begin
 Result := 'DictionContainerForm';
end;//Tkw_Form_DictionContainer.GetString
{$IfEnd} //not NoScripts

type
   Tkw_DictionContainer_pnBackground_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола pnBackground формы DictionContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_DictionContainer_pnBackground_ControlInstance

// start class Tkw_DictionContainer_pnBackground_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_DictionContainer_pnBackground_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TDictionContainerForm).pnBackground);
end;//Tkw_DictionContainer_pnBackground_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_DictionContainer_NavigatorZone_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола NavigatorZone формы DictionContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_DictionContainer_NavigatorZone_ControlInstance

// start class Tkw_DictionContainer_NavigatorZone_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_DictionContainer_NavigatorZone_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TDictionContainerForm).NavigatorZone);
end;//Tkw_DictionContainer_NavigatorZone_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_DictionContainer_pnWorkArea_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола pnWorkArea формы DictionContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_DictionContainer_pnWorkArea_ControlInstance

// start class Tkw_DictionContainer_pnWorkArea_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_DictionContainer_pnWorkArea_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TDictionContainerForm).pnWorkArea);
end;//Tkw_DictionContainer_pnWorkArea_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_DictionContainer_ChildZone_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола ChildZone формы DictionContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_DictionContainer_ChildZone_ControlInstance

// start class Tkw_DictionContainer_ChildZone_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_DictionContainer_ChildZone_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TDictionContainerForm).ChildZone);
end;//Tkw_DictionContainer_ChildZone_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_DictionContainer_pnHeader_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола pnHeader формы DictionContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_DictionContainer_pnHeader_ControlInstance

// start class Tkw_DictionContainer_pnHeader_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_DictionContainer_pnHeader_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TDictionContainerForm).pnHeader);
end;//Tkw_DictionContainer_pnHeader_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_DictionContainer_lbHeader_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола lbHeader формы DictionContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_DictionContainer_lbHeader_ControlInstance

// start class Tkw_DictionContainer_lbHeader_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_DictionContainer_lbHeader_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TDictionContainerForm).lbHeader);
end;//Tkw_DictionContainer_lbHeader_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_DictionContainer_pbHeader_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола pbHeader формы DictionContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_DictionContainer_pbHeader_ControlInstance

// start class Tkw_DictionContainer_pbHeader_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_DictionContainer_pbHeader_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TDictionContainerForm).pbHeader);
end;//Tkw_DictionContainer_pbHeader_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_DictionContainer_ParentZone_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола ParentZone формы DictionContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_DictionContainer_ParentZone_ControlInstance

// start class Tkw_DictionContainer_ParentZone_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_DictionContainer_ParentZone_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TDictionContainerForm).ParentZone);
end;//Tkw_DictionContainer_ParentZone_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация фабрики формы DictionContainer
 fm_DictionContainerForm.SetFactory(TDictionContainerForm.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_DictionContainer
 Tkw_Form_DictionContainer.Register('форма::DictionContainer', TDictionContainerForm);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_DictionContainer_pnBackground_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TDictionContainerForm.pnBackground', Tkw_DictionContainer_pnBackground_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_DictionContainer_NavigatorZone_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TDictionContainerForm.NavigatorZone', Tkw_DictionContainer_NavigatorZone_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_DictionContainer_pnWorkArea_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TDictionContainerForm.pnWorkArea', Tkw_DictionContainer_pnWorkArea_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_DictionContainer_ChildZone_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TDictionContainerForm.ChildZone', Tkw_DictionContainer_ChildZone_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_DictionContainer_pnHeader_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TDictionContainerForm.pnHeader', Tkw_DictionContainer_pnHeader_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_DictionContainer_lbHeader_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TDictionContainerForm.lbHeader', Tkw_DictionContainer_lbHeader_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_DictionContainer_pbHeader_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TDictionContainerForm.pbHeader', Tkw_DictionContainer_pbHeader_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_DictionContainer_ParentZone_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TDictionContainerForm.ParentZone', Tkw_DictionContainer_ParentZone_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.