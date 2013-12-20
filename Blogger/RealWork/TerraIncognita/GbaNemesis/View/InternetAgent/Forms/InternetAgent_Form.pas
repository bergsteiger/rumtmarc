unit InternetAgent_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/InternetAgent/Forms/InternetAgent_Form.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Встроенные продукты::InternetAgent::View::InternetAgent::PrimInternetAgent$FP::InternetAgent$F
//
// Новости онлайн
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
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmInterfaces
  {$IfEnd} //not NoVCM
  ,
  PrimInternetAgent_Form
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  l3InterfacedComponent {a},
  vcmComponent {a},
  vcmBaseEntities {a},
  vcmEntities {a},
  vcmExternalInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
const
    { InternetAgent$FIDs }
   fm_InternetAgentForm : TvcmFormDescriptor = (rFormID : (rName : 'InternetAgentForm'; rID : 0); rFactory : nil);
    { Идентификатор формы TInternetAgentForm }

type
 InternetAgentFormDef = interface(IUnknown)
  {* Идентификатор формы InternetAgent$F }
   ['{4953CF3C-7760-41BE-BBC7-7CA06BAE484D}']
 end;//InternetAgentFormDef

  TInternetAgentForm = {final form} class(TvcmEntityFormRef, InternetAgentFormDef)
   {* Новости онлайн }
  Entities : TvcmEntities;
  end;//TInternetAgentForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$R *.DFM}

{$If not defined(Admin) AND not defined(Monitorings)}

type
   Tkw_Form_InternetAgent = class(TtfwControlString)
    {* Слово словаря для идентификатора формы InternetAgent$F
----
*Пример использования*:
[code]
'aControl' форма::InternetAgent TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_InternetAgent

// start class Tkw_Form_InternetAgent

{$If not defined(NoScripts)}
function Tkw_Form_InternetAgent.GetString: AnsiString;
 {-}
begin
 Result := 'InternetAgentForm';
end;//Tkw_Form_InternetAgent.GetString
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация фабрики формы InternetAgent$F
 fm_InternetAgentForm.SetFactory(TInternetAgentForm.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_InternetAgent
 Tkw_Form_InternetAgent.Register('форма::InternetAgent', TInternetAgentForm);
{$IfEnd} //not Admin AND not Monitorings

end.