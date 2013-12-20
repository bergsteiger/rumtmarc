unit Preview_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View$For F1 and Monitorings"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/Preview_Form.pas"
// Начат: 15.09.2009 14:42
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Common For Shell And Monitoring::Search::View$For F1 and Monitorings::Search$Presentation for F1 and Monitorings::CommonSearch::PreviewForm
//
// Предварительный просмотр
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin)}
uses
  PrimPreview_Form,
  Search_FormDefinitions_Controls
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
  nscPreviewPanel
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
{$IfEnd} //not Admin

{$If not defined(Admin)}
type
  TefPreviewForm = {final form} class(TvcmEntityFormRef, PreviewFormDef)
   {* Предварительный просмотр }
  Entities : TvcmEntities;
  PreviewPanel: TnscPreviewPanel;
  end;//TefPreviewForm

  TPreviewForm = TefPreviewForm;
{$IfEnd} //not Admin

implementation

{$R *.DFM}

{$If not defined(Admin)}
uses
  SysUtils
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  
  ;
{$IfEnd} //not Admin

{$If not defined(Admin)}

type
   Tkw_Form_PreviewForm = class(TtfwControlString)
    {* Слово словаря для идентификатора формы PreviewForm
----
*Пример использования*:
[code]
'aControl' форма::PreviewForm TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_PreviewForm

// start class Tkw_Form_PreviewForm

{$If not defined(NoScripts)}
function Tkw_Form_PreviewForm.GetString: AnsiString;
 {-}
begin
 Result := 'efPreviewForm';
end;//Tkw_Form_PreviewForm.GetString
{$IfEnd} //not NoScripts

type
   Tkw_PreviewForm_PreviewPanel_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола PreviewPanel формы PreviewForm }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_PreviewForm_PreviewPanel_ControlInstance

// start class Tkw_PreviewForm_PreviewPanel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_PreviewForm_PreviewPanel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefPreviewForm).PreviewPanel);
end;//Tkw_PreviewForm_PreviewPanel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin

initialization
{$If not defined(Admin)}
// Регистрация Tkw_Form_PreviewForm
 Tkw_Form_PreviewForm.Register('форма::PreviewForm', TefPreviewForm);
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PreviewForm_PreviewPanel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefPreviewForm.PreviewPanel', Tkw_PreviewForm_PreviewPanel_ControlInstance);
{$IfEnd} //not Admin

end.