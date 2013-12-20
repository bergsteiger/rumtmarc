unit UserCR1_WarningBaloon_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Document/Forms/UserCR1_WarningBaloon_Form.pas"
// Начат: 23.12.2011 17:16
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Работа с документом и списком документов::Document::View::Document::Document::UserCR1_WarningBaloon
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
  Common_FormDefinitions_Controls
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  PrimWarningBaloonOptions_Form
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  
  {$If defined(Nemesis)}
  ,
  nscEditor
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
  TUserCR1_WarningBaloonForm = {final form} class(TvcmEntityFormRef, UserCR1_WarningBaloonFormDef)
  Entities : TvcmEntities;
  end;//TUserCR1_WarningBaloonForm
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
   Tkw_Form_UserCR1_WarningBaloon = class(TtfwControlString)
    {* Слово словаря для идентификатора формы UserCR1_WarningBaloon
----
*Пример использования*:
[code]
'aControl' форма::UserCR1_WarningBaloon TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_UserCR1_WarningBaloon

// start class Tkw_Form_UserCR1_WarningBaloon

{$If not defined(NoScripts)}
function Tkw_Form_UserCR1_WarningBaloon.GetString: AnsiString;
 {-}
begin
 Result := 'UserCR1_WarningBaloonForm';
end;//Tkw_Form_UserCR1_WarningBaloon.GetString
{$IfEnd} //not NoScripts

type
   Tkw_UserCR1_WarningBaloon_Viewer_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола Viewer формы UserCR1_WarningBaloon }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_UserCR1_WarningBaloon_Viewer_ControlInstance

// start class Tkw_UserCR1_WarningBaloon_Viewer_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_UserCR1_WarningBaloon_Viewer_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TUserCR1_WarningBaloonForm).Viewer);
end;//Tkw_UserCR1_WarningBaloon_Viewer_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация фабрики формы UserCR1_WarningBaloon
 fm_UserCR1_WarningBaloonForm.SetFactory(TUserCR1_WarningBaloonForm.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_UserCR1_WarningBaloon
 Tkw_Form_UserCR1_WarningBaloon.Register('форма::UserCR1_WarningBaloon', TUserCR1_WarningBaloonForm);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_UserCR1_WarningBaloon_Viewer_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TUserCR1_WarningBaloonForm.Viewer', Tkw_UserCR1_WarningBaloon_Viewer_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.