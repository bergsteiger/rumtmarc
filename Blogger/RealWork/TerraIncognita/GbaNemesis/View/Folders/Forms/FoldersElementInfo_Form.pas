unit FoldersElementInfo_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Folders/Forms/FoldersElementInfo_Form.pas"
// Начат: 27.08.2009 20:37
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Основные прецеденты::Folders::View::Folders::PrimFolders$UC::FoldersElementInfo
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
  Common_FormDefinitions_Controls,
  PrimFoldersElementInfoOptions_Form
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
  eeMemoWithEditOperations,
  vtLabel
  {$If defined(Nemesis)}
  ,
  nscComboBoxWithReadOnly
  {$IfEnd} //Nemesis
  ,
  eeCheckBox,
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
  TenFoldersElementInfo = {final form} class(TvcmEntityFormRef, FoldersElementInfoFormDef)
  Entities : TvcmEntities;
  end;//TenFoldersElementInfo

  TFoldersElementInfoForm = TenFoldersElementInfo;
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
   Tkw_Form_FoldersElementInfo = class(TtfwControlString)
    {* Слово словаря для идентификатора формы FoldersElementInfo
----
*Пример использования*:
[code]
'aControl' форма::FoldersElementInfo TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_FoldersElementInfo

// start class Tkw_Form_FoldersElementInfo

{$If not defined(NoScripts)}
function Tkw_Form_FoldersElementInfo.GetString: AnsiString;
 {-}
begin
 Result := 'enFoldersElementInfo';
end;//Tkw_Form_FoldersElementInfo.GetString
{$IfEnd} //not NoScripts

type
   Tkw_FoldersElementInfo_CommentPanel_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола CommentPanel формы FoldersElementInfo }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_FoldersElementInfo_CommentPanel_ControlInstance

// start class Tkw_FoldersElementInfo_CommentPanel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_FoldersElementInfo_CommentPanel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TenFoldersElementInfo).CommentPanel);
end;//Tkw_FoldersElementInfo_CommentPanel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_FoldersElementInfo_ElementComment_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола ElementComment формы FoldersElementInfo }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_FoldersElementInfo_ElementComment_ControlInstance

// start class Tkw_FoldersElementInfo_ElementComment_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_FoldersElementInfo_ElementComment_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TenFoldersElementInfo).ElementComment);
end;//Tkw_FoldersElementInfo_ElementComment_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_FoldersElementInfo_CaptionPanel_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола CaptionPanel формы FoldersElementInfo }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_FoldersElementInfo_CaptionPanel_ControlInstance

// start class Tkw_FoldersElementInfo_CaptionPanel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_FoldersElementInfo_CaptionPanel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TenFoldersElementInfo).CaptionPanel);
end;//Tkw_FoldersElementInfo_CaptionPanel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_FoldersElementInfo_lblComment_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола lblComment формы FoldersElementInfo }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_FoldersElementInfo_lblComment_ControlInstance

// start class Tkw_FoldersElementInfo_lblComment_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_FoldersElementInfo_lblComment_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TenFoldersElementInfo).lblComment);
end;//Tkw_FoldersElementInfo_lblComment_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_FoldersElementInfo_TopPanel_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола TopPanel формы FoldersElementInfo }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_FoldersElementInfo_TopPanel_ControlInstance

// start class Tkw_FoldersElementInfo_TopPanel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_FoldersElementInfo_TopPanel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TenFoldersElementInfo).TopPanel);
end;//Tkw_FoldersElementInfo_TopPanel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_FoldersElementInfo_NamePanel_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола NamePanel формы FoldersElementInfo }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_FoldersElementInfo_NamePanel_ControlInstance

// start class Tkw_FoldersElementInfo_NamePanel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_FoldersElementInfo_NamePanel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TenFoldersElementInfo).NamePanel);
end;//Tkw_FoldersElementInfo_NamePanel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_FoldersElementInfo_lblElementName_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола lblElementName формы FoldersElementInfo }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_FoldersElementInfo_lblElementName_ControlInstance

// start class Tkw_FoldersElementInfo_lblElementName_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_FoldersElementInfo_lblElementName_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TenFoldersElementInfo).lblElementName);
end;//Tkw_FoldersElementInfo_lblElementName_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_FoldersElementInfo_ElementName_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола ElementName формы FoldersElementInfo }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_FoldersElementInfo_ElementName_ControlInstance

// start class Tkw_FoldersElementInfo_ElementName_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_FoldersElementInfo_ElementName_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TenFoldersElementInfo).ElementName);
end;//Tkw_FoldersElementInfo_ElementName_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_FoldersElementInfo_cbShared_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола cbShared формы FoldersElementInfo }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_FoldersElementInfo_cbShared_ControlInstance

// start class Tkw_FoldersElementInfo_cbShared_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_FoldersElementInfo_cbShared_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TenFoldersElementInfo).cbShared);
end;//Tkw_FoldersElementInfo_cbShared_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_FoldersElementInfo_InfoName_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола InfoName формы FoldersElementInfo }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_FoldersElementInfo_InfoName_ControlInstance

// start class Tkw_FoldersElementInfo_InfoName_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_FoldersElementInfo_InfoName_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TenFoldersElementInfo).InfoName);
end;//Tkw_FoldersElementInfo_InfoName_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация фабрики формы FoldersElementInfo
 fm_enFoldersElementInfo.SetFactory(TenFoldersElementInfo.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_FoldersElementInfo
 Tkw_Form_FoldersElementInfo.Register('форма::FoldersElementInfo', TenFoldersElementInfo);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FoldersElementInfo_CommentPanel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TenFoldersElementInfo.CommentPanel', Tkw_FoldersElementInfo_CommentPanel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FoldersElementInfo_ElementComment_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TenFoldersElementInfo.ElementComment', Tkw_FoldersElementInfo_ElementComment_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FoldersElementInfo_CaptionPanel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TenFoldersElementInfo.CaptionPanel', Tkw_FoldersElementInfo_CaptionPanel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FoldersElementInfo_lblComment_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TenFoldersElementInfo.lblComment', Tkw_FoldersElementInfo_lblComment_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FoldersElementInfo_TopPanel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TenFoldersElementInfo.TopPanel', Tkw_FoldersElementInfo_TopPanel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FoldersElementInfo_NamePanel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TenFoldersElementInfo.NamePanel', Tkw_FoldersElementInfo_NamePanel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FoldersElementInfo_lblElementName_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TenFoldersElementInfo.lblElementName', Tkw_FoldersElementInfo_lblElementName_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FoldersElementInfo_ElementName_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TenFoldersElementInfo.ElementName', Tkw_FoldersElementInfo_ElementName_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FoldersElementInfo_cbShared_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TenFoldersElementInfo.cbShared', Tkw_FoldersElementInfo_cbShared_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FoldersElementInfo_InfoName_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TenFoldersElementInfo.InfoName', Tkw_FoldersElementInfo_InfoName_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.