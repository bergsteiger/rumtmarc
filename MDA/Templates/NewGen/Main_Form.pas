unit Main_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Модуль: "w:/MDProcess/NewGen/Main_Form.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMMainForm::Class>> MDProcess$NewGen$Interface::NewGen::NewGen::Main
//
// НЕ Роза
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\MDProcess\NewGen\ngDefine.inc}

interface

{$If defined(NewGen)}
uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmInterfaces
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  l3StringIDEx
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  NewGenMainPrim_Form
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  Main_ut_Main_UserType
  {$If defined(Nemesis)}
  ,
  nscStatusBar
  {$IfEnd} //Nemesis
  ,
  vtPanel,
  vtProportionalPanel,
  vtSizeablePanel
  {$If defined(Nemesis)}
  ,
  nscNavigator
  {$IfEnd} //Nemesis
  ,
  l3InterfacedComponent {a},
  vcmComponent {a},
  vcmBaseEntities {a},
  vcmEntities {a},
  vcmExternalInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //NewGen

{$If defined(NewGen)}
const
   { MainIDs }
  fm_MainForm : TvcmFormDescriptor = (rName : 'MainForm'; rID : 0; rFactory : nil);
   { Идентификатор формы TMainForm }

type
 MainFormDef = interface(IUnknown)
  {* Идентификатор формы Main }
   ['{45D03D24-01B1-4C43-89B5-AF75285241AE}']
 end;//MainFormDef

 TMainForm = {final form} class(TvcmMainFormRef, MainFormDef)
  {* НЕ Роза }
  Entities : TvcmEntities;
 protected
  procedure MakeControls; override;
 protected
 // overridden protected methods
   procedure InitFields; override;
 end;//TMainForm
{$IfEnd} //NewGen

implementation

{$R *.DFM}

{$If defined(NewGen)}
uses
  SysUtils
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  ,
  l3MessageID
  ;
{$IfEnd} //NewGen

{$If defined(NewGen)}

var
   { Локализуемые строки ut_MainLocalConstants }
  str_ut_MainCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'ut_MainCaption'; rValue : 'НЕ Роза');
   { Заголовок пользовательского типа "НЕ Роза" }

type
  Tkw_Form_Main = class(TtfwControlString)
   {* Слово словаря для идентификатора формы Main
----
*Пример использования*:
[code]
'aControl' форма::Main TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Form_Main

// start class Tkw_Form_Main

{$If not defined(NoScripts)}
function Tkw_Form_Main.GetString: AnsiString;
 {-}
begin
 Result := 'MainForm';
end;//Tkw_Form_Main.GetString
{$IfEnd} //not NoScripts

type
  Tkw_Main_StatusBar_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола StatusBar формы Main }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Main_StatusBar_ControlInstance

// start class Tkw_Main_StatusBar_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Main_StatusBar_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TMainForm).StatusBar);
end;//Tkw_Main_StatusBar_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_Main_ClientZone_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола ClientZone формы Main }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Main_ClientZone_ControlInstance

// start class Tkw_Main_ClientZone_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Main_ClientZone_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TMainForm).ClientZone);
end;//Tkw_Main_ClientZone_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_Main_MainZone_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола MainZone формы Main }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Main_MainZone_ControlInstance

// start class Tkw_Main_MainZone_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Main_MainZone_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TMainForm).MainZone);
end;//Tkw_Main_MainZone_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_Main_ParentZonePanel_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола ParentZonePanel формы Main }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Main_ParentZonePanel_ControlInstance

// start class Tkw_Main_ParentZonePanel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Main_ParentZonePanel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TMainForm).ParentZonePanel);
end;//Tkw_Main_ParentZonePanel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_Main_ChildZonePanel_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола ChildZonePanel формы Main }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Main_ChildZonePanel_ControlInstance

// start class Tkw_Main_ChildZonePanel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Main_ChildZonePanel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TMainForm).ChildZonePanel);
end;//Tkw_Main_ChildZonePanel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_Main_BaseSearchPanel_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола BaseSearchPanel формы Main }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Main_BaseSearchPanel_ControlInstance

// start class Tkw_Main_BaseSearchPanel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Main_BaseSearchPanel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TMainForm).BaseSearchPanel);
end;//Tkw_Main_BaseSearchPanel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_Main_LeftNavigator_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола LeftNavigator формы Main }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Main_LeftNavigator_ControlInstance

// start class Tkw_Main_LeftNavigator_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Main_LeftNavigator_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TMainForm).LeftNavigator);
end;//Tkw_Main_LeftNavigator_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts
{$If defined(HasRightNavigator) AND defined(NewGen)}

type
  Tkw_Main_RightNavigator_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола RightNavigator формы Main }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Main_RightNavigator_ControlInstance
{$IfEnd} //HasRightNavigator AND NewGen

{$If defined(HasRightNavigator) AND defined(NewGen)}

// start class Tkw_Main_RightNavigator_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Main_RightNavigator_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TMainForm).RightNavigator);
end;//Tkw_Main_RightNavigator_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //HasRightNavigator AND NewGen

procedure TMainForm.InitFields;
//#UC START# *47A042E100E2_4F6AEAE5007B_var*
//#UC END# *47A042E100E2_4F6AEAE5007B_var*
begin
//#UC START# *47A042E100E2_4F6AEAE5007B_impl*
 inherited;
//#UC END# *47A042E100E2_4F6AEAE5007B_impl*
end;//TMainForm.InitFields

procedure TMainForm.MakeControls;
begin
 inherited;
 with AddUsertype(ut_MainName,
  str_ut_MainCaption,
  str_ut_MainCaption,
  false,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(ut_MainName
end;

{$IfEnd} //NewGen

initialization
{$If defined(NewGen)}
// Регистрация фабрики формы Main
 fm_MainForm.SetFactory(TMainForm.Make);
{$IfEnd} //NewGen
{$If defined(NewGen)}
// Регистрация Tkw_Form_Main
 Tkw_Form_Main.Register('форма::Main', TMainForm);
{$IfEnd} //NewGen
{$If defined(NewGen)}
// Регистрация Tkw_Main_StatusBar_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TMainForm.StatusBar', Tkw_Main_StatusBar_ControlInstance);
{$IfEnd} //NewGen
{$If defined(NewGen)}
// Регистрация Tkw_Main_ClientZone_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TMainForm.ClientZone', Tkw_Main_ClientZone_ControlInstance);
{$IfEnd} //NewGen
{$If defined(NewGen)}
// Регистрация Tkw_Main_MainZone_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TMainForm.MainZone', Tkw_Main_MainZone_ControlInstance);
{$IfEnd} //NewGen
{$If defined(NewGen)}
// Регистрация Tkw_Main_ParentZonePanel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TMainForm.ParentZonePanel', Tkw_Main_ParentZonePanel_ControlInstance);
{$IfEnd} //NewGen
{$If defined(NewGen)}
// Регистрация Tkw_Main_ChildZonePanel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TMainForm.ChildZonePanel', Tkw_Main_ChildZonePanel_ControlInstance);
{$IfEnd} //NewGen
{$If defined(NewGen)}
// Регистрация Tkw_Main_BaseSearchPanel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TMainForm.BaseSearchPanel', Tkw_Main_BaseSearchPanel_ControlInstance);
{$IfEnd} //NewGen
{$If defined(NewGen)}
// Регистрация Tkw_Main_LeftNavigator_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TMainForm.LeftNavigator', Tkw_Main_LeftNavigator_ControlInstance);
{$IfEnd} //NewGen
{$If defined(HasRightNavigator) AND defined(NewGen)}
// Регистрация Tkw_Main_RightNavigator_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TMainForm.RightNavigator', Tkw_Main_RightNavigator_ControlInstance);
{$IfEnd} //HasRightNavigator AND NewGen
{$If defined(NewGen)}
// Инициализация str_ut_MainCaption
 str_ut_MainCaption.Init;
{$IfEnd} //NewGen

end.