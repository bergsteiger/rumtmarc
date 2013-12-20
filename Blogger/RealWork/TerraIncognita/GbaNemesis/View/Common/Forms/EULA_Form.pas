unit EULA_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Common/Forms/EULA_Form.pas"
// Начат: 24.08.2009 20:35
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Core::Common::View::Common::PrimF1Common::EULA
//
// Условия использования
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
  
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  PrimEULA_Form,
  l3StringIDEx
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  EULA_ut_EULA_UserType,
  vtLabel,
  vtButton,
  eeMemoWithEditOperations,
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
    { EULAIDs }
   fm_efEULA : TvcmFormDescriptor = (rFormID : (rName : 'efEULA'; rID : 0); rFactory : nil);
    { Идентификатор формы TefEULA }

type
 EULAFormDef = interface(IUnknown)
  {* Идентификатор формы EULA }
   ['{DF5FBE77-74EC-44AD-8636-CBFDE4947FC7}']
 end;//EULAFormDef

  TefEULA = {final form} class(TvcmEntityFormRef, EULAFormDef)
   {* Условия использования }
  Entities : TvcmEntities;
  protected
   procedure MakeControls; override;
  end;//TefEULA

  TEULAForm = TefEULA;
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
  ,
  l3MessageID
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

var
    { Локализуемые строки ut_EULALocalConstants }
   str_ut_EULACaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'ut_EULACaption'; rValue : 'Условия использования');
    { Заголовок пользовательского типа "Условия использования" }

type
   Tkw_Form_EULA = class(TtfwControlString)
    {* Слово словаря для идентификатора формы EULA
----
*Пример использования*:
[code]
'aControl' форма::EULA TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_EULA

// start class Tkw_Form_EULA

{$If not defined(NoScripts)}
function Tkw_Form_EULA.GetString: AnsiString;
 {-}
begin
 Result := 'efEULA';
end;//Tkw_Form_EULA.GetString
{$IfEnd} //not NoScripts

type
   Tkw_EULA_ShellCaptionLabel_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола ShellCaptionLabel формы EULA }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_EULA_ShellCaptionLabel_ControlInstance

// start class Tkw_EULA_ShellCaptionLabel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_EULA_ShellCaptionLabel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefEULA).ShellCaptionLabel);
end;//Tkw_EULA_ShellCaptionLabel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_EULA_OkButton_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола OkButton формы EULA }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_EULA_OkButton_ControlInstance

// start class Tkw_EULA_OkButton_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_EULA_OkButton_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefEULA).OkButton);
end;//Tkw_EULA_OkButton_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_EULA_eeMemoWithEditOperations1_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола eeMemoWithEditOperations1 формы EULA }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_EULA_eeMemoWithEditOperations1_ControlInstance

// start class Tkw_EULA_eeMemoWithEditOperations1_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_EULA_eeMemoWithEditOperations1_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefEULA).eeMemoWithEditOperations1);
end;//Tkw_EULA_eeMemoWithEditOperations1_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

procedure TefEULA.MakeControls;
begin
 inherited;
 with AddUsertype(ut_EULAName,
  str_ut_EULACaption,
  str_ut_EULACaption,
  false,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(ut_EULAName
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация фабрики формы EULA
 fm_efEULA.SetFactory(TefEULA.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_EULA
 Tkw_Form_EULA.Register('форма::EULA', TefEULA);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_EULA_ShellCaptionLabel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefEULA.ShellCaptionLabel', Tkw_EULA_ShellCaptionLabel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_EULA_OkButton_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefEULA.OkButton', Tkw_EULA_OkButton_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_EULA_eeMemoWithEditOperations1_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefEULA.eeMemoWithEditOperations1', Tkw_EULA_eeMemoWithEditOperations1_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_ut_EULACaption
 str_ut_EULACaption.Init;
{$IfEnd} //not Admin AND not Monitorings

end.