unit CreateFilter_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Лукьянец Р.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Filters/Forms/CreateFilter_Form.pas"
// Начат: 29.10.2010 15:00
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Основные прецеденты::Filters::View::Filters::Filters$FP::CreateFilter$Form
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
  PrimCreateFilter_Form
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  {$If defined(Nemesis)}
  nscEdit,
  {$IfEnd} //Nemesis
  vtLabel,
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
  TCreateFilterForm = {final form} class(TvcmEntityFormRef)
  Entities : TvcmEntities;
  NameLabel: TvtLabel;
  FilterName: TnscEdit;
  end;//TCreateFilterForm
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
   Tkw_Form_CreateFilter = class(TtfwControlString)
    {* Слово словаря для идентификатора формы CreateFilter$Form
----
*Пример использования*:
[code]
'aControl' форма::CreateFilter TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_CreateFilter

// start class Tkw_Form_CreateFilter

{$If not defined(NoScripts)}
function Tkw_Form_CreateFilter.GetString: AnsiString;
 {-}
begin
 Result := 'CreateFilterForm';
end;//Tkw_Form_CreateFilter.GetString
{$IfEnd} //not NoScripts

type
   Tkw_CreateFilter_NameLabel_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола NameLabel формы CreateFilter$Form }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_CreateFilter_NameLabel_ControlInstance

// start class Tkw_CreateFilter_NameLabel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_CreateFilter_NameLabel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TCreateFilterForm).NameLabel);
end;//Tkw_CreateFilter_NameLabel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_CreateFilter_FilterName_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола FilterName формы CreateFilter$Form }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_CreateFilter_FilterName_ControlInstance

// start class Tkw_CreateFilter_FilterName_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_CreateFilter_FilterName_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TCreateFilterForm).FilterName);
end;//Tkw_CreateFilter_FilterName_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_CreateFilter
 Tkw_Form_CreateFilter.Register('форма::CreateFilter', TCreateFilterForm);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_CreateFilter_NameLabel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TCreateFilterForm.NameLabel', Tkw_CreateFilter_NameLabel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_CreateFilter_FilterName_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TCreateFilterForm.FilterName', Tkw_CreateFilter_FilterName_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.