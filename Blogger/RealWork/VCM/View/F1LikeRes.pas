unit F1LikeRes;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/common/components/gui/Garant/VCM/View/F1LikeRes.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMApplication::Class>> Shared Delphi F1 Like Application::F1Like::View::F1Like
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\common\components\gui\f1LikeAppDefine.inc}

interface

uses
  l3Interfaces
  {$If not defined(NoVCM)}
  ,
  vcmInterfaces
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmContainerForm
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmMainForm
  {$IfEnd} //not NoVCM
  ,
  PresentationInterfaces
  {$If defined(Nemesis)}
  ,
  nscNavigator
  {$IfEnd} //Nemesis
  ,
  vtSizeablePanel,
  vtPanel,
  vtProportionalPanel,
  OfficeLikeRes,
  OfficeLikeMain_Form
  {$If defined(Nemesis)}
  ,
  nscStatusBar
  {$IfEnd} //Nemesis
  
  {$If not defined(NoScripts)}
  ,
  kwBynameControlPush
  {$IfEnd} //not NoScripts
  ,
  MainPrim_Form,
  OfficeLike_System_Controls,
  F1Like_InternalOperations_Controls
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  Classes {a},
  vcmExternalInterfaces {a}
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  l3StringIDEx
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoVCM)}
  ,
  vcmTaskPanelInterfaces
  {$IfEnd} //not NoVCM
  ,
  Menus,
  PrimTasksPanelMenu_Module
  {$If not defined(NoVCM)}
  ,
  vcmPopupMenuPrim
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  F1Like_FormDefinitions_Controls
  {$If not defined(NoVCM)}
  ,
  vcmEntityForm
  {$IfEnd} //not NoVCM
  
  ;

type
TF1LikeRes = {abstract} class(TOfficeLikeRes)
protected
   procedure RegisterFormSetFactories; override;
   class procedure RegisterModules(aMain: TvcmMainForm); override;
   procedure Loaded; override;
protected
// overridden protected methods
    {$If not defined(NoVCM)}
   class procedure MakeResources; override;
    {$IfEnd} //not NoVCM
protected
// protected methods
   class procedure ReadyToRun; virtual;
     {* Вызывается непосредственно перед запуском приложения, например для инициализации/запуска тестов }
public
// public methods
   {$If defined(InsiderTest)}
   class function IsBatchMode: Boolean; virtual;
   {$IfEnd} //InsiderTest
 public
 // modules operations
   class procedure CustomizePanel(const aPanel: IvcmCustOps);
     {* Настроить панель иструментов }
   class function TasksPanelPopupMenu: TPopupMenu;
   class function MakeChild(aMainForm: TvcmMainForm;
     anOwner: TvcmEntityForm): IvcmEntityForm;
   class function MakeParent(aMainForm: TvcmMainForm): IvcmEntityForm;
 public
 // operations codes
   class function opcode_Common_ShowSplitter : TvcmOpID;
     {  ->  }
   class function opcode_Common_CheckChildZone : TvcmOpID;
     {  ->  }
   class function mod_opcode_TasksPanelMenu_Customize : TvcmMOpID;
     {  -> Настройка... }
   class function opcode_Switcher_BecomeActive : TvcmOpID;
     { Сущность для управления закладками формы-контейнера ->  }
   class function opcode_Switcher_SetFirstPageActive : TvcmOpID;
     { Сущность для управления закладками формы-контейнера ->  }
end;//TF1LikeRes

implementation

uses
  Graphics,
  Controls,
  Forms,
  nsWindowsList,
  l3Base,
  afwFacade,
  Windows,
  SysUtils,
  OfficeLikeAppInterfaces,
  l3String,
  nsFormUtils,
  nsSettingsConst
  {$If not defined(NoVCM)}
  ,
  vcmHistory
  {$IfEnd} //not NoVCM
  ,
  vtNavigator,
  StdRes {a},
  moTasksPanelMenu,
  moParentAndChild,
  vtStdRes,
  ParentAndChildPrim_Module
  ;

// start class TF1LikeRes

{$If defined(InsiderTest)}
class function TF1LikeRes.IsBatchMode: Boolean;
//#UC START# *4DA476580343_4F6B607F027E_var*
//#UC END# *4DA476580343_4F6B607F027E_var*
begin
//#UC START# *4DA476580343_4F6B607F027E_impl*
 Result := false;
//#UC END# *4DA476580343_4F6B607F027E_impl*
end;//TF1LikeRes.IsBatchMode
{$IfEnd} //InsiderTest

class procedure TF1LikeRes.ReadyToRun;
//#UC START# *4F79B9D500D7_4F6B607F027E_var*
//#UC END# *4F79B9D500D7_4F6B607F027E_var*
begin
//#UC START# *4F79B9D500D7_4F6B607F027E_impl*
 // - ничего не делаем
//#UC END# *4F79B9D500D7_4F6B607F027E_impl*
end;//TF1LikeRes.ReadyToRun

{$If not defined(NoVCM)}
class procedure TF1LikeRes.MakeResources;
//#UC START# *4F6AF5F00058_4F6B607F027E_var*
//#UC END# *4F6AF5F00058_4F6B607F027E_var*
begin
//#UC START# *4F6AF5F00058_4F6B607F027E_impl*
 Application.CreateForm(TvtStdResources, vtStdResources);
//#UC END# *4F6AF5F00058_4F6B607F027E_impl*
end;//TF1LikeRes.MakeResources
{$IfEnd} //not NoVCM

procedure TF1LikeRes.RegisterFormSetFactories;
begin
 inherited;
end;

class procedure TF1LikeRes.RegisterModules(aMain: TvcmMainForm);
begin
 inherited;
 aMain.RegisterModule(Tmo_TasksPanelMenu);
 aMain.RegisterModule(Tmo_ParentAndChild);
end;

var
 g_opcode_Common_ShowSplitter : TvcmOpID;
 g_opcode_Common_CheckChildZone : TvcmOpID;
 g_module_opcode_TasksPanelMenu_Customize : TvcmMOpID;
 g_opcode_Switcher_BecomeActive : TvcmOpID;
 g_opcode_Switcher_SetFirstPageActive : TvcmOpID;

procedure TF1LikeRes.Loaded;
begin
 inherited;
 PublishModule(Tmo_TasksPanelMenu, 'Настройка панели задач');
 PublishModule(Tmo_ParentAndChild, 'Поддержка работы с родительской и дочерней зонами');
 g_opcode_Common_ShowSplitter :=
  PublishInternalOperation(en_Common,
                    op_ShowSplitter,
                    en_capCommon,
                    op_capShowSplitter);
 g_opcode_Common_CheckChildZone :=
  PublishInternalOperation(en_Common,
                    op_CheckChildZone,
                    en_capCommon,
                    op_capCheckChildZone);
 PublishOperation(en_Common,
                    op_OpenNewWindowByUser,
                    en_capCommon,
                    op_capOpenNewWindowByUser);
 PublishOperation(en_Common,
                    op_GetWindowList,
                    en_capCommon,
                    op_capGetWindowList);
 PublishOperation(en_Common,
                    op_CascadeWindows,
                    en_capCommon,
                    op_capCascadeWindows);
 PublishOperation(en_Common,
                    op_TileWindowsHorizontal,
                    en_capCommon,
                    op_capTileWindowsHorizontal);
 PublishOperation(en_Common,
                    op_TileWindowsVertical,
                    en_capCommon,
                    op_capTileWindowsVertical);
 PublishOperation(en_Common,
                    op_CloseAllWindows,
                    en_capCommon,
                    op_capCloseAllWindows);
 g_module_opcode_TasksPanelMenu_Customize := 
  PublishModuleOperation(Tmo_TasksPanelMenu, 'Customize', 'Настройка...');
 g_opcode_Switcher_BecomeActive :=
  PublishInternalOperation(en_Switcher,
                    op_BecomeActive,
                    en_capSwitcher,
                    op_capBecomeActive);
 g_opcode_Switcher_SetFirstPageActive :=
  PublishInternalOperation(en_Switcher,
                    op_SetFirstPageActive,
                    en_capSwitcher,
                    op_capSetFirstPageActive);
end;

// modules operations

class procedure TF1LikeRes.CustomizePanel(const aPanel: IvcmCustOps);
begin
 TPrimTasksPanelMenuModule.CustomizePanel(aPanel);
end;

class function TF1LikeRes.TasksPanelPopupMenu: TPopupMenu;
begin
 Result := TPrimTasksPanelMenuModule.TasksPanelPopupMenu;
end;

class function TF1LikeRes.MakeChild(aMainForm: TvcmMainForm;
  anOwner: TvcmEntityForm): IvcmEntityForm;
begin
 Result := TParentAndChildPrimModule.MakeChild(aMainForm, anOwner);
end;

class function TF1LikeRes.MakeParent(aMainForm: TvcmMainForm): IvcmEntityForm;
begin
 Result := TParentAndChildPrimModule.MakeParent(aMainForm);
end;

// operations codes

class function TF1LikeRes.opcode_Common_ShowSplitter : TvcmOpID;
begin
 Result := g_opcode_Common_ShowSplitter;
 Assert((Result.rEnID > 0) AND (Result.rOpID > 0));
end;

class function TF1LikeRes.opcode_Common_CheckChildZone : TvcmOpID;
begin
 Result := g_opcode_Common_CheckChildZone;
 Assert((Result.rEnID > 0) AND (Result.rOpID > 0));
end;

class function TF1LikeRes.mod_opcode_TasksPanelMenu_Customize : TvcmMOpID;
begin
 Result := g_module_opcode_TasksPanelMenu_Customize;
 Assert((Result.rMoID > 0) AND (Result.rOpID > 0));
end;

class function TF1LikeRes.opcode_Switcher_BecomeActive : TvcmOpID;
begin
 Result := g_opcode_Switcher_BecomeActive;
 Assert((Result.rEnID > 0) AND (Result.rOpID > 0));
end;

class function TF1LikeRes.opcode_Switcher_SetFirstPageActive : TvcmOpID;
begin
 Result := g_opcode_Switcher_SetFirstPageActive;
 Assert((Result.rEnID > 0) AND (Result.rOpID > 0));
end;

end.