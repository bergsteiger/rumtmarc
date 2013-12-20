unit Translation_WarningBaloon_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Document/Forms/Translation_WarningBaloon_Form.pas"
// Начат: 09.12.2011 19:56
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Работа с документом и списком документов::Document::View::Document::Document::Translation_WarningBaloon
//
// Балон с предупреждением для перевода
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
  TTranslation_WarningBaloonForm = {final form} class(TvcmEntityFormRef, Translation_WarningBaloonFormDef)
   {* Балон с предупреждением для перевода }
  Entities : TvcmEntities;
  end;//TTranslation_WarningBaloonForm
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
   Tkw_Form_Translation_WarningBaloon = class(TtfwControlString)
    {* Слово словаря для идентификатора формы Translation_WarningBaloon
----
*Пример использования*:
[code]
'aControl' форма::Translation_WarningBaloon TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_Translation_WarningBaloon

// start class Tkw_Form_Translation_WarningBaloon

{$If not defined(NoScripts)}
function Tkw_Form_Translation_WarningBaloon.GetString: AnsiString;
 {-}
begin
 Result := 'Translation_WarningBaloonForm';
end;//Tkw_Form_Translation_WarningBaloon.GetString
{$IfEnd} //not NoScripts

type
   Tkw_Translation_WarningBaloon_Viewer_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола Viewer формы Translation_WarningBaloon }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Translation_WarningBaloon_Viewer_ControlInstance

// start class Tkw_Translation_WarningBaloon_Viewer_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Translation_WarningBaloon_Viewer_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TTranslation_WarningBaloonForm).Viewer);
end;//Tkw_Translation_WarningBaloon_Viewer_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация фабрики формы Translation_WarningBaloon
 fm_Translation_WarningBaloonForm.SetFactory(TTranslation_WarningBaloonForm.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_Translation_WarningBaloon
 Tkw_Form_Translation_WarningBaloon.Register('форма::Translation_WarningBaloon', TTranslation_WarningBaloonForm);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Translation_WarningBaloon_Viewer_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TTranslation_WarningBaloonForm.Viewer', Tkw_Translation_WarningBaloon_Viewer_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.