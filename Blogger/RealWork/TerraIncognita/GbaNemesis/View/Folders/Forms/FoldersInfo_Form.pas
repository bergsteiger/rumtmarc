unit FoldersInfo_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Тучнин Д.А.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Folders/Forms/FoldersInfo_Form.pas"
// Начат: 2004/07/05 08:05:59
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Основные прецеденты::Folders::View::Folders::PrimFolders$UC::FoldersInfo
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
  PrimFoldersInfoOptions_Form
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  vtPanel,
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
    { FoldersInfoIDs }
   fm_cfFoldersInfo : TvcmFormDescriptor = (rFormID : (rName : 'cfFoldersInfo'; rID : 0); rFactory : nil);
    { Идентификатор формы TcfFoldersInfo }

type
 FoldersInfoFormDef = interface(IUnknown)
  {* Идентификатор формы FoldersInfo }
   ['{A7FC5777-8418-45E1-9EE1-511BCC3B18B5}']
 end;//FoldersInfoFormDef

  TcfFoldersInfo = {final form} class(TvcmContainerFormRef, FoldersInfoFormDef)
  Entities : TvcmEntities;
  ChildZone: TvtPanel;
  end;//TcfFoldersInfo

  TFoldersInfoForm = TcfFoldersInfo;
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
   Tkw_Form_FoldersInfo = class(TtfwControlString)
    {* Слово словаря для идентификатора формы FoldersInfo
----
*Пример использования*:
[code]
'aControl' форма::FoldersInfo TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_FoldersInfo

// start class Tkw_Form_FoldersInfo

{$If not defined(NoScripts)}
function Tkw_Form_FoldersInfo.GetString: AnsiString;
 {-}
begin
 Result := 'cfFoldersInfo';
end;//Tkw_Form_FoldersInfo.GetString
{$IfEnd} //not NoScripts

type
   Tkw_FoldersInfo_ChildZone_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола ChildZone формы FoldersInfo }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_FoldersInfo_ChildZone_ControlInstance

// start class Tkw_FoldersInfo_ChildZone_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_FoldersInfo_ChildZone_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TcfFoldersInfo).ChildZone);
end;//Tkw_FoldersInfo_ChildZone_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация фабрики формы FoldersInfo
 fm_cfFoldersInfo.SetFactory(TcfFoldersInfo.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_FoldersInfo
 Tkw_Form_FoldersInfo.Register('форма::FoldersInfo', TcfFoldersInfo);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FoldersInfo_ChildZone_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TcfFoldersInfo.ChildZone', Tkw_FoldersInfo_ChildZone_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.