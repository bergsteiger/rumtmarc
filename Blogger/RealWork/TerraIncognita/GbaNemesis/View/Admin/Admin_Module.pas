unit Admin_Module;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Admin/Admin_Module.pas"
// Начат: 07.09.2009 18:00
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFormsPack::Class>> F1 Администратор::Admin::View::Admin::Admin
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If defined(Admin)}
uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmInterfaces
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmFormSetFactory
  {$IfEnd} //not NoVCM
  ,
  AdminInterfaces
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  ForbidAutoregistration_Form,
  l3StringIDEx,
  PrimUserProperty_admUseProperties_UserType,
  PrimGroupsList_admGroupList_UserType,
  PrimUserList_admUserList_UserType,
  PrimUserListOptions_Form,
  PrimAdminOptions_Form,
  PrimAdmin_utAdmin_UserType,
  PrimForbidAutoregistrationOptions_Form,
  PrimGroupsListOptions_Form,
  PrimGroupPropertyOptions_Form,
  PrimUserPropertyOptions_Form
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  Admin_FormDefinitions_Controls
  {$If not defined(NoVCM)}
  ,
  vcmFormSetFormsCollectionItemPrim
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  fsAdmin,
  GroupProperty_Form,
  UserList_Form,
  UserProperty_Form,
  GroupList_Form,
  Admin_Form,
  vcmExternalInterfaces {a},
  vcmModule {a},
  vcmBase {a}
  ;
{$IfEnd} //Admin

{$If defined(Admin)}
type
 TAdminModule = {formspack} class(TvcmModule)
 protected
  class procedure GetEntityForms(aList : TvcmClassList); override;
 public
 // public methods
   class procedure OpenUserList(const aContainer: IvcmContainer);
   class function ShowRenameGroupDialog(const aData: IbsEditGroupName): Integer;
 end;//TAdminModule
{$IfEnd} //Admin

implementation

{$If defined(Admin)}
uses
  l3Base {a},
  l3MessageID,
  SysUtils {a},
  deAdmin,
  sdsAdmin,
  DataAdapter,
  deNode,
  l3String
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  ,
  PrimGroupProperty_admCreateGroup_UserType,
  PrimGroupProperty_admRenameGroup_UserType,
  StdRes {a}
  ;
{$IfEnd} //Admin

{$If defined(Admin)}

type
  Tkw_Form_GroupProperty = class(TtfwControlString)
   {* Слово словаря для идентификатора формы GroupProperty
----
*Пример использования*:
[code]
'aControl' форма::GroupProperty TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Form_GroupProperty

// start class Tkw_Form_GroupProperty

{$If not defined(NoScripts)}
function Tkw_Form_GroupProperty.GetString: AnsiString;
 {-}
begin
 Result := 'efGroupProperty';
end;//Tkw_Form_GroupProperty.GetString
{$IfEnd} //not NoScripts

type
  Tkw_GroupProperty_edName_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола edName формы GroupProperty }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_GroupProperty_edName_ControlInstance

// start class Tkw_GroupProperty_edName_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_GroupProperty_edName_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefGroupProperty).edName);
end;//Tkw_GroupProperty_edName_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_Form_UserList = class(TtfwControlString)
   {* Слово словаря для идентификатора формы UserList
----
*Пример использования*:
[code]
'aControl' форма::UserList TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Form_UserList

// start class Tkw_Form_UserList

{$If not defined(NoScripts)}
function Tkw_Form_UserList.GetString: AnsiString;
 {-}
begin
 Result := 'efUserList';
end;//Tkw_Form_UserList.GetString
{$IfEnd} //not NoScripts

type
  Tkw_Form_UserProperty = class(TtfwControlString)
   {* Слово словаря для идентификатора формы UserProperty
----
*Пример использования*:
[code]
'aControl' форма::UserProperty TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Form_UserProperty

// start class Tkw_Form_UserProperty

{$If not defined(NoScripts)}
function Tkw_Form_UserProperty.GetString: AnsiString;
 {-}
begin
 Result := 'efUserProperty';
end;//Tkw_Form_UserProperty.GetString
{$IfEnd} //not NoScripts

type
  Tkw_UserProperty_edGroup_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола edGroup формы UserProperty }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_UserProperty_edGroup_ControlInstance

// start class Tkw_UserProperty_edGroup_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_UserProperty_edGroup_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefUserProperty).edGroup);
end;//Tkw_UserProperty_edGroup_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_Form_GroupList = class(TtfwControlString)
   {* Слово словаря для идентификатора формы GroupList
----
*Пример использования*:
[code]
'aControl' форма::GroupList TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Form_GroupList

// start class Tkw_Form_GroupList

{$If not defined(NoScripts)}
function Tkw_Form_GroupList.GetString: AnsiString;
 {-}
begin
 Result := 'efGroupList';
end;//Tkw_Form_GroupList.GetString
{$IfEnd} //not NoScripts

class procedure TAdminModule.OpenUserList(const aContainer: IvcmContainer);
var
 __WasEnter : Boolean;
//#UC START# *4AA512AA00C5_4AA5120303E5_var*
//#UC END# *4AA512AA00C5_4AA5120303E5_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AA512AA00C5_4AA5120303E5_impl*
 // Данные для инициализации сборки администратор
 if DefDataAdapter.AdministratorLogin then
  Tfs_Admin.Make(TsdsAdmin.Make(
                  TdeAdmin.Make(
                   TdeNode.Make(defDataAdapter.GetGroupsTree),
                   TdeNode.Make(defDataAdapter.GetUsersTree)
                  )
                 ), aContainer);
//#UC END# *4AA512AA00C5_4AA5120303E5_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TAdminModule.OpenUserList

class function TAdminModule.ShowRenameGroupDialog(const aData: IbsEditGroupName): Integer;
var
 __WasEnter : Boolean;
//#UC START# *4AA8E2C60357_4AA5120303E5_var*
const
 cUserType: array [Boolean] of TvcmUserType = (Ord(admCreateGroup), Ord(admRenameGroup));
//#UC END# *4AA8E2C60357_4AA5120303E5_var*
var
 l_Form : IvcmEntityForm;
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AA8E2C60357_4AA5120303E5_impl*
 l_Form := TefGroupProperty.Make(aData,
                                   nil,
                                   vcm_ztManualModal,
                                   cUserType[not l3IsNil(aData.Name)]);
 Result := l_Form.ShowModal;
//#UC END# *4AA8E2C60357_4AA5120303E5_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TAdminModule.ShowRenameGroupDialog

class procedure TAdminModule.GetEntityForms(aList : TvcmClassList);
begin
 inherited;
 aList.Add(TefGroupProperty);
 aList.Add(TefForbidAutoregistration);
 aList.Add(TefUserList);
 aList.Add(TefUserProperty);
 aList.Add(TefGroupList);
 aList.Add(TcfAdminForm);
end;

{$IfEnd} //Admin

initialization
{$If defined(Admin)}
// Регистрация Tkw_Form_GroupProperty
 Tkw_Form_GroupProperty.Register('форма::GroupProperty', TefGroupProperty);
{$IfEnd} //Admin
{$If defined(Admin)}
// Регистрация Tkw_GroupProperty_edName_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefGroupProperty.edName', Tkw_GroupProperty_edName_ControlInstance);
{$IfEnd} //Admin
{$If defined(Admin)}
// Регистрация фабрики формы UserList
 fm_efUserList.SetFactory(TefUserList.Make);
{$IfEnd} //Admin
{$If defined(Admin)}
// Регистрация Tkw_Form_UserList
 Tkw_Form_UserList.Register('форма::UserList', TefUserList);
{$IfEnd} //Admin
{$If defined(Admin)}
// Регистрация фабрики формы UserProperty
 fm_efUserProperty.SetFactory(TefUserProperty.Make);
{$IfEnd} //Admin
{$If defined(Admin)}
// Регистрация Tkw_Form_UserProperty
 Tkw_Form_UserProperty.Register('форма::UserProperty', TefUserProperty);
{$IfEnd} //Admin
{$If defined(Admin)}
// Регистрация Tkw_UserProperty_edGroup_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefUserProperty.edGroup', Tkw_UserProperty_edGroup_ControlInstance);
{$IfEnd} //Admin
{$If defined(Admin)}
// Регистрация фабрики формы GroupList
 fm_efGroupList.SetFactory(TefGroupList.Make);
{$IfEnd} //Admin
{$If defined(Admin)}
// Регистрация Tkw_Form_GroupList
 Tkw_Form_GroupList.Register('форма::GroupList', TefGroupList);
{$IfEnd} //Admin

end.