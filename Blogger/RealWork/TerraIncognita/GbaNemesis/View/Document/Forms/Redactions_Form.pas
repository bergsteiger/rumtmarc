unit Redactions_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Крылов М.А.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Document/Forms/Redactions_Form.pas"
// Начат: 2003/06/20 06:51:14
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Работа с документом и списком документов::Document::View::Document::Document::Redactions
//
// Редакции
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
  PrimRedactionsOptions_Form
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
  TRedactionsForm = {final form} class(TvcmEntityFormRef, RedactionsFormDef)
   {* Редакции }
  Entities : TvcmEntities;
  end;//TRedactionsForm
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
   Tkw_Form_Redactions = class(TtfwControlString)
    {* Слово словаря для идентификатора формы Redactions
----
*Пример использования*:
[code]
'aControl' форма::Redactions TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_Redactions

// start class Tkw_Form_Redactions

{$If not defined(NoScripts)}
function Tkw_Form_Redactions.GetString: AnsiString;
 {-}
begin
 Result := 'RedactionsForm';
end;//Tkw_Form_Redactions.GetString
{$IfEnd} //not NoScripts

type
   Tkw_Redactions_RedactionTree_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола RedactionTree формы Redactions }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Redactions_RedactionTree_ControlInstance

// start class Tkw_Redactions_RedactionTree_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Redactions_RedactionTree_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TRedactionsForm).RedactionTree);
end;//Tkw_Redactions_RedactionTree_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация фабрики формы Redactions
 fm_RedactionsForm.SetFactory(TRedactionsForm.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_Redactions
 Tkw_Form_Redactions.Register('форма::Redactions', TRedactionsForm);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Redactions_RedactionTree_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TRedactionsForm.RedactionTree', Tkw_Redactions_RedactionTree_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.