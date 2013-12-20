unit Child_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/common/components/gui/Garant/VCM/View/ParentAndChild/Forms/Child_Form.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalContainer::Class>> Shared Delphi F1 Like Application::F1Like::View::ParentAndChild::ParentAndChildPrim::Child
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\common\components\gui\f1LikeAppDefine.inc}

interface

uses
  Classes
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  PrimChild_Form,
  F1Like_FormDefinitions_Controls
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  
  {$If defined(Nemesis)}
  ,
  nscFormsPageControl
  {$IfEnd} //Nemesis
  ,
  ElPgCtl,
  l3InterfacedComponent {a},
  vcmComponent {a},
  vcmBaseEntities {a},
  vcmEntities {a},
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;

type
  TChildForm = {final form} class(TvcmContainerFormRef, ChildFormDef)
  Entities : TvcmEntities;
  end;//TChildForm

implementation

{$R *.DFM}

uses
  SysUtils
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  
  ;

type
   Tkw_Form_Child = class(TtfwControlString)
    {* Слово словаря для идентификатора формы Child
----
*Пример использования*:
[code]
'aControl' форма::Child TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_Child

// start class Tkw_Form_Child

{$If not defined(NoScripts)}
function Tkw_Form_Child.GetString: AnsiString;
 {-}
begin
 Result := 'ChildForm';
end;//Tkw_Form_Child.GetString
{$IfEnd} //not NoScripts

type
   Tkw_Child_ChildZone_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола ChildZone формы Child }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Child_ChildZone_ControlInstance

// start class Tkw_Child_ChildZone_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Child_ChildZone_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TChildForm).ChildZone);
end;//Tkw_Child_ChildZone_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_Child_MainPageTab_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола MainPageTab формы Child }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Child_MainPageTab_ControlInstance

// start class Tkw_Child_MainPageTab_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Child_MainPageTab_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TChildForm).MainPageTab);
end;//Tkw_Child_MainPageTab_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

initialization
// Регистрация фабрики формы Child
 fm_ChildForm.SetFactory(TChildForm.Make);
// Регистрация Tkw_Form_Child
 Tkw_Form_Child.Register('форма::Child', TChildForm);
// Регистрация Tkw_Child_ChildZone_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TChildForm.ChildZone', Tkw_Child_ChildZone_ControlInstance);
// Регистрация Tkw_Child_MainPageTab_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TChildForm.MainPageTab', Tkw_Child_MainPageTab_ControlInstance);

end.