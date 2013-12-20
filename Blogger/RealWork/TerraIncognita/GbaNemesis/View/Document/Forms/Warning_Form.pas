unit Warning_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Document/Forms/Warning_Form.pas"
// Начат: 2003/11/28 13:36:55
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Работа с документом и списком документов::Document::View::Document::Document::Warning
//
// Предупреждение
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
  PrimDockedWarning_Form
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
  TWarningForm = {final form} class(TvcmEntityFormRef, WarningFormDef)
   {* Предупреждение }
  Entities : TvcmEntities;
  end;//TWarningForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$R *.DFM}

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  WarningConst
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

type
   Tkw_Form_Warning = class(TtfwControlString)
    {* Слово словаря для идентификатора формы Warning
----
*Пример использования*:
[code]
'aControl' форма::Warning TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_Warning

// start class Tkw_Form_Warning

{$If not defined(NoScripts)}
function Tkw_Form_Warning.GetString: AnsiString;
 {-}
begin
 Result := 'WarningForm';
end;//Tkw_Form_Warning.GetString
{$IfEnd} //not NoScripts

type
   Tkw_Warning_Viewer_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола Viewer формы Warning }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Warning_Viewer_ControlInstance

// start class Tkw_Warning_Viewer_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Warning_Viewer_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TWarningForm).Viewer);
end;//Tkw_Warning_Viewer_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация фабрики формы Warning
 fm_WarningForm.SetFactory(TWarningForm.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_Warning
 Tkw_Form_Warning.Register('форма::Warning', TWarningForm);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Warning_Viewer_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TWarningForm.Viewer', Tkw_Warning_Viewer_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.