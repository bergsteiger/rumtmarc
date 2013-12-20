unit AttributeSelect_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/LiteSearch/Forms/AttributeSelect_Form.pas"
// Начат: 15.09.2009 12:26
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Базовые определения предметной области::SearchLite::View::LiteSearch::LiteSearch::AttributeSelect
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

uses
  PrimAttributeSelectOptions_Form,
  SearchLite_FormDefinitions_Controls
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
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

type
  TcfAttributeSelect = {final form} class(TvcmContainerFormRef, AttributeSelectFormDef)
  Entities : TvcmEntities;
  end;//TcfAttributeSelect

  TAttributeSelectForm = TcfAttributeSelect;

implementation

{$R *.DFM}

uses
  l3String
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  
  ;

type
   Tkw_Form_AttributeSelect = class(TtfwControlString)
    {* Слово словаря для идентификатора формы AttributeSelect
----
*Пример использования*:
[code]
'aControl' форма::AttributeSelect TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_AttributeSelect

// start class Tkw_Form_AttributeSelect

{$If not defined(NoScripts)}
function Tkw_Form_AttributeSelect.GetString: AnsiString;
 {-}
begin
 Result := 'cfAttributeSelect';
end;//Tkw_Form_AttributeSelect.GetString
{$IfEnd} //not NoScripts

type
   Tkw_AttributeSelect_BackgroundPanel_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола BackgroundPanel формы AttributeSelect }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_AttributeSelect_BackgroundPanel_ControlInstance

// start class Tkw_AttributeSelect_BackgroundPanel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AttributeSelect_BackgroundPanel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TcfAttributeSelect).BackgroundPanel);
end;//Tkw_AttributeSelect_BackgroundPanel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_AttributeSelect_SelectedZone_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола SelectedZone формы AttributeSelect }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_AttributeSelect_SelectedZone_ControlInstance

// start class Tkw_AttributeSelect_SelectedZone_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AttributeSelect_SelectedZone_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TcfAttributeSelect).SelectedZone);
end;//Tkw_AttributeSelect_SelectedZone_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_AttributeSelect_ValuesZone_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола ValuesZone формы AttributeSelect }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_AttributeSelect_ValuesZone_ControlInstance

// start class Tkw_AttributeSelect_ValuesZone_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AttributeSelect_ValuesZone_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TcfAttributeSelect).ValuesZone);
end;//Tkw_AttributeSelect_ValuesZone_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

initialization
// Регистрация фабрики формы AttributeSelect
 fm_cfAttributeSelect.SetFactory(TcfAttributeSelect.Make);
// Регистрация Tkw_Form_AttributeSelect
 Tkw_Form_AttributeSelect.Register('форма::AttributeSelect', TcfAttributeSelect);
// Регистрация Tkw_AttributeSelect_BackgroundPanel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TcfAttributeSelect.BackgroundPanel', Tkw_AttributeSelect_BackgroundPanel_ControlInstance);
// Регистрация Tkw_AttributeSelect_SelectedZone_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TcfAttributeSelect.SelectedZone', Tkw_AttributeSelect_SelectedZone_ControlInstance);
// Регистрация Tkw_AttributeSelect_ValuesZone_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TcfAttributeSelect.ValuesZone', Tkw_AttributeSelect_ValuesZone_ControlInstance);

end.