unit MedicFirmList_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Inpharm/Forms/MedicFirmList_Form.pas"
// Начат: 04.09.2009 12:57
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Встроенные продукты::Inpharm::View::Inpharm::Inpharm::MedicFirmList$Form
//
// Фармацевтические фирмы (полный список)
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
  PrimMedicFirmListOptions_Form
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  vtPanel
  {$If defined(Nemesis)}
  ,
  nscContextFilter
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscTreeView
  {$IfEnd} //Nemesis
  ,
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
  Ten_MedicFirmList = {final form} class(TvcmEntityFormRef, MedicFirmListFormDef)
   {* Фармацевтические фирмы (полный список) }
  Entities : TvcmEntities;
  end;//Ten_MedicFirmList

  TMedicFirmListForm = Ten_MedicFirmList;
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
   Tkw_Form_MedicFirmList = class(TtfwControlString)
    {* Слово словаря для идентификатора формы MedicFirmList$Form
----
*Пример использования*:
[code]
'aControl' форма::MedicFirmList TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_MedicFirmList

// start class Tkw_Form_MedicFirmList

{$If not defined(NoScripts)}
function Tkw_Form_MedicFirmList.GetString: AnsiString;
 {-}
begin
 Result := 'en_MedicFirmList';
end;//Tkw_Form_MedicFirmList.GetString
{$IfEnd} //not NoScripts

type
   Tkw_MedicFirmList_BackgroundPanel_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола BackgroundPanel формы MedicFirmList$Form }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_MedicFirmList_BackgroundPanel_ControlInstance

// start class Tkw_MedicFirmList_BackgroundPanel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MedicFirmList_BackgroundPanel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_MedicFirmList).BackgroundPanel);
end;//Tkw_MedicFirmList_BackgroundPanel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_MedicFirmList_ContextFilter_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола ContextFilter формы MedicFirmList$Form }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_MedicFirmList_ContextFilter_ControlInstance

// start class Tkw_MedicFirmList_ContextFilter_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MedicFirmList_ContextFilter_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_MedicFirmList).ContextFilter);
end;//Tkw_MedicFirmList_ContextFilter_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_MedicFirmList_ListTree_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола ListTree формы MedicFirmList$Form }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_MedicFirmList_ListTree_ControlInstance

// start class Tkw_MedicFirmList_ListTree_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MedicFirmList_ListTree_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_MedicFirmList).ListTree);
end;//Tkw_MedicFirmList_ListTree_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация фабрики формы MedicFirmList$Form
 fm_en_MedicFirmList.SetFactory(Ten_MedicFirmList.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_MedicFirmList
 Tkw_Form_MedicFirmList.Register('форма::MedicFirmList', Ten_MedicFirmList);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MedicFirmList_BackgroundPanel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_MedicFirmList.BackgroundPanel', Tkw_MedicFirmList_BackgroundPanel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MedicFirmList_ContextFilter_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_MedicFirmList.ContextFilter', Tkw_MedicFirmList_ContextFilter_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MedicFirmList_ListTree_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_MedicFirmList.ListTree', Tkw_MedicFirmList_ListTree_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.