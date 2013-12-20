unit ProgressIndicator_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Common/Forms/ProgressIndicator_Form.pas"
// Начат: 24.08.2009 20:35
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Core::Common::View::Common::PrimF1Common::ProgressIndicator
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
  PrimProgressIndicator_Form
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  ComCtrls,
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
    { ProgressIndicatorIDs }
   fm_efProgressIndicator : TvcmFormDescriptor = (rFormID : (rName : 'efProgressIndicator'; rID : 0); rFactory : nil);
    { Идентификатор формы TefProgressIndicator }

type
 ProgressIndicatorFormDef = interface(IUnknown)
  {* Идентификатор формы ProgressIndicator }
   ['{83193317-8438-475F-9F0C-1C44F08B2DA4}']
 end;//ProgressIndicatorFormDef

  TefProgressIndicator = {final form} class(TvcmEntityFormRef, ProgressIndicatorFormDef)
  Entities : TvcmEntities;
  ProgressBar: TProgressBar;
  end;//TefProgressIndicator

  TProgressIndicatorForm = TefProgressIndicator;
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
   Tkw_Form_ProgressIndicator = class(TtfwControlString)
    {* Слово словаря для идентификатора формы ProgressIndicator
----
*Пример использования*:
[code]
'aControl' форма::ProgressIndicator TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_ProgressIndicator

// start class Tkw_Form_ProgressIndicator

{$If not defined(NoScripts)}
function Tkw_Form_ProgressIndicator.GetString: AnsiString;
 {-}
begin
 Result := 'efProgressIndicator';
end;//Tkw_Form_ProgressIndicator.GetString
{$IfEnd} //not NoScripts

type
   Tkw_ProgressIndicator_ProgressBar_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола ProgressBar формы ProgressIndicator }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_ProgressIndicator_ProgressBar_ControlInstance

// start class Tkw_ProgressIndicator_ProgressBar_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_ProgressIndicator_ProgressBar_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefProgressIndicator).ProgressBar);
end;//Tkw_ProgressIndicator_ProgressBar_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_ProgressIndicator
 Tkw_Form_ProgressIndicator.Register('форма::ProgressIndicator', TefProgressIndicator);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_ProgressIndicator_ProgressBar_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefProgressIndicator.ProgressBar', Tkw_ProgressIndicator_ProgressBar_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.