unit Attributes_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Document/Forms/Attributes_Form.pas"
// Начат: 05.02.2009 19:28
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Работа с документом и списком документов::Document::View::Document::Document::Attributes
//
// Информация о документе
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
  PrimAttributesOptions_Form
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
  TAttributesForm = {final form} class(TvcmEntityFormRef, AttributesFormDef)
   {* Информация о документе }
  Entities : TvcmEntities;
  protected
   procedure MakeControls; override;
  end;//TAttributesForm
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
   Tkw_Form_Attributes = class(TtfwControlString)
    {* Слово словаря для идентификатора формы Attributes
----
*Пример использования*:
[code]
'aControl' форма::Attributes TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_Attributes

// start class Tkw_Form_Attributes

{$If not defined(NoScripts)}
function Tkw_Form_Attributes.GetString: AnsiString;
 {-}
begin
 Result := 'AttributesForm';
end;//Tkw_Form_Attributes.GetString
{$IfEnd} //not NoScripts

type
   Tkw_Attributes_tvAttributes_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола tvAttributes формы Attributes }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Attributes_tvAttributes_ControlInstance

// start class Tkw_Attributes_tvAttributes_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Attributes_tvAttributes_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TAttributesForm).tvAttributes);
end;//Tkw_Attributes_tvAttributes_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

procedure TAttributesForm.MakeControls;
begin
 inherited;
 tvAttributes.Parent := Self;
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация фабрики формы Attributes
 fm_AttributesForm.SetFactory(TAttributesForm.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_Attributes
 Tkw_Form_Attributes.Register('форма::Attributes', TAttributesForm);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Attributes_tvAttributes_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TAttributesForm.tvAttributes', Tkw_Attributes_tvAttributes_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.