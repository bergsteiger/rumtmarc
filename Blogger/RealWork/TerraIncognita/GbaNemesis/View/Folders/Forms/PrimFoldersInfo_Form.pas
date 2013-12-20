unit PrimFoldersInfo_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Folders/Forms/PrimFoldersInfo_Form.pas"
// Начат: 29.10.2009 19:12
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMContainer::Class>> F1 Основные прецеденты::Folders::View::Folders::PrimFoldersInfo
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
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  vtPanel,
  Folders_Strange_Controls,
  l3StringIDEx
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwBynameControlPush
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  PrimFoldersInfo_utFoldersInfoContainer_UserType,
  Controls,
  FoldersDomainInterfaces,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a},
  vcmContainerForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TPrimFoldersInfoForm = {form} class(TvcmContainerForm)
 private
 // private fields
   f_ChildZone : TvtPanel;
    {* Поле для свойства ChildZone}
 protected
  procedure InitEntities; override;
  procedure MakeControls; override;
 protected
 // property methods
   function pm_GetChildZone: TvtPanel;
 protected
 // realized methods
   procedure AdditionInfo_Close_Execute(aModalResult: Integer = mrCancel);
   procedure AdditionInfo_Close(const aParams: IvcmExecuteParams);
   procedure FolderElement_SetState_Execute(aInfoType: TFoldersInfoType);
   procedure FolderElement_SetState(const aParams: IvcmExecuteParams);
 public
 // public properties
   property ChildZone: TvtPanel
     read pm_GetChildZone;
 end;//TPrimFoldersInfoForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  nsFolders
  {$If not defined(NoVCM)}
  ,
  vcmBase
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  l3MessageID,
  StdRes {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

var
   { Локализуемые строки utFoldersInfoContainerLocalConstants }
  str_utFoldersInfoContainerCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'utFoldersInfoContainerCaption'; rValue : 'Свойства папок (модальный диалог)');
   { Заголовок пользовательского типа "Свойства папок (модальный диалог)" }

type
  Tkw_PrimFoldersInfo_Control_ChildZone = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола ChildZone
----
*Пример использования*:
[code]
контрол::ChildZone TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimFoldersInfo_Control_ChildZone

// start class Tkw_PrimFoldersInfo_Control_ChildZone

{$If not defined(NoScripts)}
function Tkw_PrimFoldersInfo_Control_ChildZone.GetString: AnsiString;
 {-}
begin
 Result := 'ChildZone';
end;//Tkw_PrimFoldersInfo_Control_ChildZone.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimFoldersInfo_Control_ChildZone_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола ChildZone
----
*Пример использования*:
[code]
контрол::ChildZone:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimFoldersInfo_Control_ChildZone_Push

// start class Tkw_PrimFoldersInfo_Control_ChildZone_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimFoldersInfo_Control_ChildZone_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('ChildZone');
 inherited;
end;//Tkw_PrimFoldersInfo_Control_ChildZone_Push.DoDoIt
{$IfEnd} //not NoScripts

function TPrimFoldersInfoForm.pm_GetChildZone: TvtPanel;
begin
 if (f_ChildZone = nil) then
  f_ChildZone := FindComponent('ChildZone') As TvtPanel;
 Result := f_ChildZone;
end;

procedure TPrimFoldersInfoForm.AdditionInfo_Close_Execute(aModalResult: Integer = mrCancel);
//#UC START# *4AE9BF890271_4AE9BEEF0229exec_var*
//#UC END# *4AE9BF890271_4AE9BEEF0229exec_var*
begin
//#UC START# *4AE9BF890271_4AE9BEEF0229exec_impl*
 ModalResult := aModalResult;
//#UC END# *4AE9BF890271_4AE9BEEF0229exec_impl*
end;//TPrimFoldersInfoForm.AdditionInfo_Close_Execute

procedure TPrimFoldersInfoForm.AdditionInfo_Close(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IAdditionInfo_Close_Params) do
  AdditionInfo_Close_Execute(ModalResult);
end;

procedure TPrimFoldersInfoForm.FolderElement_SetState_Execute(aInfoType: TFoldersInfoType);
//#UC START# *4AE9C01201BA_4AE9BEEF0229exec_var*
//#UC END# *4AE9C01201BA_4AE9BEEF0229exec_var*
begin
//#UC START# *4AE9C01201BA_4AE9BEEF0229exec_impl*
 CCaption := vcmCStr(cInfoCaptions[aInfoType]^);
//#UC END# *4AE9C01201BA_4AE9BEEF0229exec_impl*
end;//TPrimFoldersInfoForm.FolderElement_SetState_Execute

procedure TPrimFoldersInfoForm.FolderElement_SetState(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IFolderElement_SetState_Params) do
  FolderElement_SetState_Execute(InfoType);
end;

procedure TPrimFoldersInfoForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_AdditionInfo, nil);
  PublishFormEntity(en_FolderElement, nil);
  PublishOpWithResult(en_AdditionInfo, op_Close, AdditionInfo_Close, nil, nil);
  PublishOpWithResult(en_FolderElement, op_SetState, FolderElement_SetState, nil, nil);
 end;//with Entities.Entities
end;

procedure TPrimFoldersInfoForm.MakeControls;
begin
 inherited;
 with AddUsertype(utFoldersInfoContainerName,
  str_utFoldersInfoContainerCaption,
  str_utFoldersInfoContainerCaption,
  false,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(utFoldersInfoContainerName
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimFoldersInfo_Control_ChildZone
 Tkw_PrimFoldersInfo_Control_ChildZone.Register('контрол::ChildZone', TvtPanel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimFoldersInfo_Control_ChildZone_Push
 Tkw_PrimFoldersInfo_Control_ChildZone_Push.Register('контрол::ChildZone:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_utFoldersInfoContainerCaption
 str_utFoldersInfoContainerCaption.Init;
{$IfEnd} //not Admin AND not Monitorings

end.