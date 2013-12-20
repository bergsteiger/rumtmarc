unit afwFacade;

{$IfDef DesignTimeLibrary}
{$WEAKPACKAGEUNIT ON}
{$EndIf DesignTimeLibrary}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "AFW"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/AFW/afwFacade.pas"
// Начат: 20.12.2004 16:03
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi::AFW::afwFacade::afwFacade
//
// Метакласс, реализующий точку входа в интерфейсы библиотеки AFW.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\AFW\afwDefine.inc}

interface

uses
  afwInterfaces,
  Messages,
  Controls,
  Forms
  ;

type
 TafwCustomForm = Forms.TCustomForm;

 TafwControlFocusHook = procedure (aControl: TWinControl;
  aGot: Boolean);

 TafwControlMessageHook = procedure (aControl: TWinControl;
  const aMessage: TMessage);

 TafwIsAcceptableControlForTabNavigationHook = function (aControl: TWinControl): Boolean;

 TafwDoTabHook = function (aControl: TControl;
  aShift: Boolean): Boolean;

 Tafw = class
  {* Метакласс, реализующий точку входа в интерфейсы библиотеки AFW. }
 public
 // public methods
    {$If not defined(DesignTimeLibrary)}
   class function NeedFixWMSIZE(aControl: TWinControl): Boolean;
    {$IfEnd} //not DesignTimeLibrary
   class procedure TryActivateKeyboardLayout;
   class function Application: IafwApplication; virtual;
     {* приложение AFW. }
   class procedure BeginOp; virtual;
     {* начать операцию, внутри которой нельзя убивать контролы. }
   class procedure EndOp; virtual;
     {* закончить операцию, внутри которой нельзя убивать контролы. }
   class function InOp: Boolean;
   class function IsObjectLocked(aControl: TObject = nil): Boolean; virtual;
   class function GetParentForm(Component: TPersistent): TafwCustomForm;
   class function GetAnotherParentForm(Component: TPersistent): TafwCustomForm;
   class function GetTopParentForm(Component: TPersistent): TafwCustomForm;
   class function GetMainForm(Component: TPersistent): TafwCustomForm;
   class procedure ProcessMessages;
   class function Settings: IafwSettings;
     {* для работы с настройками системы. }
   class procedure LockActionUpdate;
     {* Запретить обновление операций }
   class procedure UnlockActionUpdate;
     {* Разрешить обновление операций }
   class function IsActionUpdateLocked: Boolean;
     {* Обновление операций запрещено }
   class function PermanentSettings: IafwSettingsPrim;
   class function IsMenuLocked(const aControl: IafwMenuUnlockedPostBuild): Boolean; virtual;
   class procedure ControlDestroying(const aControl: IafwMenuUnlockedPostBuild); virtual;
 end;//Tafw

var
   g_DisableMessageHook : Integer = 0;
var
   g_FocusHook : TafwControlFocusHook = nil;
var
   g_MessageHook : TafwControlMessageHook = nil;
var
   g_IsAcceptableControlForTabNavigationHook : TafwIsAcceptableControlForTabNavigationHook = nil;
var
   g_DoTabHook : TafwDoTabHook = nil;

type
 Rafw = class of Tafw;
  {* Ссылка на класс Tafw. }

var afw : Rafw = Tafw;
 {* Экземпляр фасада.}

implementation

uses
  Windows,
  SysUtils,
  afwSettingsImplSing,
  afwSettingsImplemented
  ;

var g_InOp : Integer = 0;
 {* Счетчик вложенных операций.}

var g_LockActionUpdate : Integer = 0;

  {$If not defined(DesignTimeLibrary)}
var
   g_IsWin2000 : Boolean = false;
  {$IfEnd} //not DesignTimeLibrary

type
  TafwHackPersistent = class(TPersistent)
   {* Для доступа к скрытой части TPersistent. }
  end;//TafwHackPersistent

// start class Tafw

{$If not defined(DesignTimeLibrary)}
class function Tafw.NeedFixWMSIZE(aControl: TWinControl): Boolean;
//#UC START# *4B6C58480346_477515240332_var*
//#UC END# *4B6C58480346_477515240332_var*
begin
//#UC START# *4B6C58480346_477515240332_impl*
 Result := g_IsWin2000;
//#UC END# *4B6C58480346_477515240332_impl*
end;//Tafw.NeedFixWMSIZE
{$IfEnd} //not DesignTimeLibrary

class procedure Tafw.TryActivateKeyboardLayout;
//#UC START# *4E2FE68C032B_477515240332_var*
var
 i,
 l_LanguageId,
 l_LayoutsCount  : Integer;
 l_Buffer        : array [0..KL_NAMELENGTH] of Char;
 l_CurrentLayout : HKL;
 l_LayoutsArray  : array of HKL;
//#UC END# *4E2FE68C032B_477515240332_var*
begin
//#UC START# *4E2FE68C032B_477515240332_impl*
 if (Application = nil) then
  l_LanguageId := 1049
 else
  l_LanguageId := Application.LocaleInfo.ID;
// мы пишем так. потому как под отладчиком VC падаем с AV из-за ненулевого второго
// параметра.
// Ноги тут - http://mdp.garant.ru/pages/viewpage.action?pageId=227972114 .
 l_LayoutsCount := GetKeyboardLayoutList(0, (nil)^);
 if l_LayoutsCount > 1 then
 begin
  SetLength(l_LayoutsArray, l_LayoutsCount);
  l_LayoutsCount := GetKeyboardLayoutList(l_LayoutsCount, l_LayoutsArray[0]);
  for i := 0 to l_LayoutsCount - 1 do
   if ((l_LayoutsArray[i] and $FFFF) = l_LanguageId) then
   ActivateKeyboardLayout(l_LayoutsArray[i], 0);
 end
 else
  if l_LayoutsCount = 0 then // если ошибка при загрузке списка (в Win98 всегда)
   ActivateKeyboardLayout(LoadKeyBoardLayout(PChar(Format('%.8x',[l_LanguageId])), 0), 0);
//#UC END# *4E2FE68C032B_477515240332_impl*
end;//Tafw.TryActivateKeyboardLayout

class function Tafw.Application: IafwApplication;
//#UC START# *4775153A0006_477515240332_var*
//#UC END# *4775153A0006_477515240332_var*
begin
//#UC START# *4775153A0006_477515240332_impl*
 Result := nil;
//#UC END# *4775153A0006_477515240332_impl*
end;//Tafw.Application

class procedure Tafw.BeginOp;
//#UC START# *4775163F024C_477515240332_var*
//#UC END# *4775163F024C_477515240332_var*
begin
//#UC START# *4775163F024C_477515240332_impl*
 Inc(g_InOp);
//#UC END# *4775163F024C_477515240332_impl*
end;//Tafw.BeginOp

class procedure Tafw.EndOp;
//#UC START# *4775165403AE_477515240332_var*
//#UC END# *4775165403AE_477515240332_var*
begin
//#UC START# *4775165403AE_477515240332_impl*
 Dec(g_InOp);
//#UC END# *4775165403AE_477515240332_impl*
end;//Tafw.EndOp

class function Tafw.InOp: Boolean;
//#UC START# *4775166D031F_477515240332_var*
//#UC END# *4775166D031F_477515240332_var*
begin
//#UC START# *4775166D031F_477515240332_impl*
 Result := (g_InOp > 0);
//#UC END# *4775166D031F_477515240332_impl*
end;//Tafw.InOp

class function Tafw.IsObjectLocked(aControl: TObject = nil): Boolean;
//#UC START# *47751681028E_477515240332_var*
//#UC END# *47751681028E_477515240332_var*
begin
//#UC START# *47751681028E_477515240332_impl*
 Result := false;
//#UC END# *47751681028E_477515240332_impl*
end;//Tafw.IsObjectLocked

class function Tafw.GetParentForm(Component: TPersistent): TafwCustomForm;
//#UC START# *4775169B0334_477515240332_var*
//#UC END# *4775169B0334_477515240332_var*
begin
//#UC START# *4775169B0334_477515240332_impl*
 Result := nil;
 if (Component Is TControl) then
  while (Component <> nil) AND (Result = nil) do
   if (Component Is TCustomForm) then
    Result := TCustomForm(Component)
   else
    Component := TControl(Component).Parent;
 while (Component <> nil) AND (Result = nil) do begin
  if (Component Is TCustomForm) then
   Result := TCustomForm(Component)
  else
   Component := TafwHackPersistent(Component).GetOwner;
 end;{C <> nil..}
//#UC END# *4775169B0334_477515240332_impl*
end;//Tafw.GetParentForm

class function Tafw.GetAnotherParentForm(Component: TPersistent): TafwCustomForm;
//#UC START# *477530450083_477515240332_var*
//#UC END# *477530450083_477515240332_var*
begin
//#UC START# *477530450083_477515240332_impl*
 Result := nil;
 if not Assigned(Component) then
  Exit;
 Result := GetParentForm(Component);
 if (Result = Component) then begin
  if TForm(Result).FormStyle = fsMDIChild then
   Result := Forms.Application.MainForm
  else if (Result.Parent <> nil) then
   Result := GetParentForm(Result.Parent)
  else if (Result.Owner <> nil) then
   Result := GetParentForm(Result.Owner)
  else
   Result := nil;
 end;
//#UC END# *477530450083_477515240332_impl*
end;//Tafw.GetAnotherParentForm

class function Tafw.GetTopParentForm(Component: TPersistent): TafwCustomForm;
//#UC START# *4775305B0003_477515240332_var*
var
 l_Form : TCustomForm;
//#UC END# *4775305B0003_477515240332_var*
begin
//#UC START# *4775305B0003_477515240332_impl*
 Result := nil;
 l_Form := GetAnotherParentForm(Component);
 while true do
 begin
  if (l_Form = nil) then
   break
  else
  begin
   Result := l_Form;
   l_Form := GetAnotherParentForm(l_Form);
  end;//l_Form = nil
 end;//while true
//#UC END# *4775305B0003_477515240332_impl*
end;//Tafw.GetTopParentForm

class function Tafw.GetMainForm(Component: TPersistent): TafwCustomForm;
//#UC START# *4775306A03AC_477515240332_var*
//#UC END# *4775306A03AC_477515240332_var*
begin
//#UC START# *4775306A03AC_477515240332_impl*
 Result := GetTopParentForm(Component);
//#UC END# *4775306A03AC_477515240332_impl*
end;//Tafw.GetMainForm

class procedure Tafw.ProcessMessages;
//#UC START# *4775307B00B7_477515240332_var*
{$IfNDef afwNoProcessMessages}
{$IfNDef DesignTimeLibrary}
var
 Msg : TMsg;
 l_Cnt : Cardinal;
 l_PntCnt : Cardinal;
{$EndIf  DesignTimeLibrary}
{$EndIf  afwNoProcessMessages}
//#UC END# *4775307B00B7_477515240332_var*
begin
//#UC START# *4775307B00B7_477515240332_impl*
 {$IfNDef afwNoProcessMessages}
 {$IfNDef DesignTimeLibrary}
 {$IfDef XE}
 Forms.Application.ProcessMessages;
 {$Else  XE}
 {$IfDef OVP}
 Forms.Application.ProcessMessages;
 {$Else  OVP}
 // !!! Есть тут одна засада - http://mdp.garant.ru/pages/viewpage.action?pageId=226005144&focusedCommentId=226006336#comment-226006336
 l_Cnt := 0;
 l_PntCnt := 0;
 while Forms.Application.CallProcessMessage(Msg) AND (l_Cnt < 3000) do
 begin
  Inc(l_Cnt);
  if (Msg.Message = 0{WM_NULL}) OR (Msg.Message = 15{WM_PAINT}) then
  begin
   // http://mdp.garant.ru/pages/viewpage.action?pageId=226005144&focusedCommentId=226006362#comment-226006362
   Inc(l_PntCnt);
   if (l_PntCnt > 1000) then
   begin
    Assert(false);
    break;
   end;//l_PntCnt > 500
  end;//Msg.Message = 0{WM_NULL}
 end;//while Forms.Application.CallProcessMessage(Msg)
 {$EndIf OVP}
 {$EndIf XE}
 {$Else  DesignTimeLibrary}
 Forms.Application.ProcessMessages;
 {$EndIf DesignTimeLibrary}
 {$EndIf  afwNoProcessMessages}
//#UC END# *4775307B00B7_477515240332_impl*
end;//Tafw.ProcessMessages

class function Tafw.Settings: IafwSettings;
//#UC START# *47753A3300D9_477515240332_var*
//#UC END# *47753A3300D9_477515240332_var*
begin
//#UC START# *47753A3300D9_477515240332_impl*
 if (Self <> nil) then
  Result := Application.Settings
 else
  Result := nil;
//#UC END# *47753A3300D9_477515240332_impl*
end;//Tafw.Settings

class procedure Tafw.LockActionUpdate;
//#UC START# *4A362F8A01C0_477515240332_var*
//#UC END# *4A362F8A01C0_477515240332_var*
begin
//#UC START# *4A362F8A01C0_477515240332_impl*
 Inc(g_LockActionUpdate);
//#UC END# *4A362F8A01C0_477515240332_impl*
end;//Tafw.LockActionUpdate

class procedure Tafw.UnlockActionUpdate;
//#UC START# *4A362FB70028_477515240332_var*
//#UC END# *4A362FB70028_477515240332_var*
begin
//#UC START# *4A362FB70028_477515240332_impl*
 Dec(g_LockActionUpdate);
//#UC END# *4A362FB70028_477515240332_impl*
end;//Tafw.UnlockActionUpdate

class function Tafw.IsActionUpdateLocked: Boolean;
//#UC START# *4A362FC603AF_477515240332_var*
//#UC END# *4A362FC603AF_477515240332_var*
begin
//#UC START# *4A362FC603AF_477515240332_impl*
 Result := (g_LockActionUpdate > 0);
//#UC END# *4A362FC603AF_477515240332_impl*
end;//Tafw.IsActionUpdateLocked

class function Tafw.PermanentSettings: IafwSettingsPrim;
//#UC START# *4AB73320020A_477515240332_var*
//#UC END# *4AB73320020A_477515240332_var*
begin
//#UC START# *4AB73320020A_477515240332_impl*
 if (Self <> nil) then
  Result := Application.PermanentSettings
 else
  Result := nil;
//#UC END# *4AB73320020A_477515240332_impl*
end;//Tafw.PermanentSettings

class function Tafw.IsMenuLocked(const aControl: IafwMenuUnlockedPostBuild): Boolean;
//#UC START# *4B05260901E6_477515240332_var*
//#UC END# *4B05260901E6_477515240332_var*
begin
//#UC START# *4B05260901E6_477515240332_impl*
 Result := false;
//#UC END# *4B05260901E6_477515240332_impl*
end;//Tafw.IsMenuLocked

class procedure Tafw.ControlDestroying(const aControl: IafwMenuUnlockedPostBuild);
//#UC START# *4B0535ED02A1_477515240332_var*
//#UC END# *4B0535ED02A1_477515240332_var*
begin
//#UC START# *4B0535ED02A1_477515240332_impl*
//Do Nothiong;
//#UC END# *4B0535ED02A1_477515240332_impl*
end;//Tafw.ControlDestroying

initialization
{$If not defined(DesignTimeLibrary)}
//#UC START# *4B6C57D9019A*
 g_IsWin2000 := (Win32Platform = VER_PLATFORM_WIN32_NT) and (Win32MajorVersion = 5) and (Win32MinorVersion = 0); 
//#UC END# *4B6C57D9019A*
{$IfEnd} //not DesignTimeLibrary

end.