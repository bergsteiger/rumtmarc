unit ConfigurationList_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Settings/Forms/ConfigurationList_Form.pas"
// Начат: 09.09.2009 16:29
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Основные прецеденты::Settings::View::Settings::Settings::ConfigurationList
//
// Конфигурации
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
  PrimConfigurationList_Form,
  Common_FormDefinitions_Controls
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  
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
  Ten_ConfigurationList = {final form} class(TvcmEntityFormRef, ConfigurationListFormDef)
   {* Конфигурации }
  Entities : TvcmEntities;
  end;//Ten_ConfigurationList

  TConfigurationListForm = Ten_ConfigurationList;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$R *.DFM}

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  OfficeLike_Result_Controls
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

type
   Tkw_Form_ConfigurationList = class(TtfwControlString)
    {* Слово словаря для идентификатора формы ConfigurationList
----
*Пример использования*:
[code]
'aControl' форма::ConfigurationList TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_ConfigurationList

// start class Tkw_Form_ConfigurationList

{$If not defined(NoScripts)}
function Tkw_Form_ConfigurationList.GetString: AnsiString;
 {-}
begin
 Result := 'en_ConfigurationList';
end;//Tkw_Form_ConfigurationList.GetString
{$IfEnd} //not NoScripts

type
   Tkw_ConfigurationList_tvConfs_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола tvConfs формы ConfigurationList }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_ConfigurationList_tvConfs_ControlInstance

// start class Tkw_ConfigurationList_tvConfs_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_ConfigurationList_tvConfs_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_ConfigurationList).tvConfs);
end;//Tkw_ConfigurationList_tvConfs_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация фабрики формы ConfigurationList
 fm_en_ConfigurationList.SetFactory(Ten_ConfigurationList.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_ConfigurationList
 Tkw_Form_ConfigurationList.Register('форма::ConfigurationList', Ten_ConfigurationList);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_ConfigurationList_tvConfs_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_ConfigurationList.tvConfs', Tkw_ConfigurationList_tvConfs_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.