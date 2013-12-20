unit l3ComponentNameHelper;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "VCM$Visual"
// Автор: Костицын
// Модуль: "w:/common/components/gui/Garant/VCM/l3ComponentNameHelper.pas"
// Начат: 28.03.2012
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::VCM$Visual::TestSupport::Tl3ComponentNameHelper
//
// Следит за кликами на компоненты и показывает их имена.
// Для тестов.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\VCM\vcmDefine.inc}

interface

{$If not defined(NoVCM)}
uses
  l3Interfaces,
  vcmInterfaces,
  Controls,
  vcmEntityForm,
  l3ProtoObject,
  vcmMenuManager,
  l3Core
  ;
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
type
 Tl3ComponentNameHelper = class(Tl3ProtoObject, Il3GetMessageListener)
  {* Следит за кликами на компоненты и показывает их имена.
Для тестов. }
 private
 // private fields
   f_Popup : TvcmPopupMenu;
   f_PopupForm : TvcmEntityForm;
 private
 // private methods
   function CheckPopup(const anEntityDef: IvcmEntityDef): IvcmEntity;
 protected
 // realized methods
   procedure GetMessageListenerNotify(Code: Integer;
     aWParam: WPARAM;
     Msg: PMsg;
     var theResult: Tl3HookProcResult);
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   procedure InitFields; override;
 public
 // singleton factory method
   class function Instance: Tl3ComponentNameHelper;
    {- возвращает экземпляр синглетона. }
 end;//Tl3ComponentNameHelper
{$IfEnd} //not NoVCM

implementation

{$If not defined(NoVCM)}
uses
  l3Base {a},
  l3ListenersManager,
  Windows,
  Messages,
  Forms,
  Classes,
  vcmEntityAction,
  vcmModuleAction
  {$If not defined(NoVGScene)}
  ,
  vg_scene
  {$IfEnd} //not NoVGScene
  
  {$If not defined(NoVGScene)}
  ,
  vg_controls
  {$IfEnd} //not NoVGScene
  ,
  TypInfo,
  ActnList,
  vcmBase,
  vcmOperationAction,
  vcmMessagesSupport,
  Dialogs,
  l3MessageID,
  l3RTTI,
  StrUtils,
  Menus,
  vcmBaseMenuManager,
  SysUtils,
  vcmUserControls,
  vcmEntitiesDefIteratorForContextMenu,
  afwFacade,
  vcmMenus
  ;
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}


// start class Tl3ComponentNameHelper

var g_Tl3ComponentNameHelper : Tl3ComponentNameHelper = nil;

procedure Tl3ComponentNameHelperFree;
begin
 l3Free(g_Tl3ComponentNameHelper);
end;

class function Tl3ComponentNameHelper.Instance: Tl3ComponentNameHelper;
begin
 if (g_Tl3ComponentNameHelper = nil) then
 begin
  l3System.AddExitProc(Tl3ComponentNameHelperFree);
  g_Tl3ComponentNameHelper := Create;
 end;
 Result := g_Tl3ComponentNameHelper;
end;


type
  THackControl = class(TControl)
  end;//THackControl

// start class Tl3ComponentNameHelper

function Tl3ComponentNameHelper.CheckPopup(const anEntityDef: IvcmEntityDef): IvcmEntity;
//#UC START# *51ED0195036B_4F72CAA90045_var*
//#UC END# *51ED0195036B_4F72CAA90045_var*
begin
//#UC START# *51ED0195036B_4F72CAA90045_impl*
 with f_Popup, f_PopupForm do
  if (PopupComponent Is TControl) then
   with TControl(PopupComponent).ScreenToClient(PopupPoint) do
    Result := GetInnerForControl(anEntityDef.ID, PopupComponent, X, Y)
  else
   Result := GetInnerForControl(anEntityDef.ID, PopupComponent);
//#UC END# *51ED0195036B_4F72CAA90045_impl*
end;//Tl3ComponentNameHelper.CheckPopup

procedure Tl3ComponentNameHelper.GetMessageListenerNotify(Code: Integer;
  aWParam: WPARAM;
  Msg: PMsg;
  var theResult: Tl3HookProcResult);
//#UC START# *4F62032D0058_4F72CAA90045_var*
 procedure AddInfo(var theInfo: string; const aCaption, aValue: string; aNewLine: Boolean = False); overload;
 begin
  if Length(aValue) > 0 then
  begin
   if Length(theInfo) > 0 then
    if aNewLine
     then theInfo := theInfo + #13#10
     else theInfo := theInfo + ', ';
   theInfo := theInfo + aCaption + ':' + aValue;
  end;
 end;

 procedure AddInfo(var theInfo: string; const aCaption: string; aValue: Il3CString; aNewLine: Boolean = False); overload;
 begin
  AddInfo(theInfo, aCaption, vcmStr(aValue), aNewLine);
 end;

 function MenuInfo(aMenu: TMenu; const aCaption: string): string;

  function MenuItemInfo(anItem: TMenuItem; aLevel: Integer): string;

   function FormatName(const aName: string): string;
   begin
    Result := aName;
    if Length(aName) = 0 then
     Result := '-';
   end;

  var
   I: Integer;
   l_Action: TCustomAction;
   l_ItemInfo: string;
   l_ActionInfo: string;
   l_OpName: string;
   l_S: string;
  begin
   Result := '';
   if not (Assigned(anItem) and anItem.Visible) then
    Exit;
   {$IfDef l3HackedVCL}
   anItem.CallInitiateActions;
   {$EndIf l3HackedVCL}
   if aLevel > 0
    then l_ItemInfo := '''' + anItem.Caption + ''' ' {+ FormatName(anItem.Name) + ': ' + anItem.ClassName}
    else l_ItemInfo := '';
   if Assigned(anItem.Action) then
   begin
    Assert(anItem.Action is TCustomAction);
    l_Action := anItem.Action as TCustomAction;
    if Assigned(l_Action) then
    begin
     l_ActionInfo := FormatName(l_Action.Name) + ': ' + l_Action.ClassName;
     if l_Action is TvcmOperationAction then
     begin
      l_S := '';
      AddInfo(l_S, 'OpDef', TvcmOperationAction(l_Action).OpDef.Name);
      if l_Action is TvcmEntityAction then
       AddInfo(l_S, 'EntityDef', TvcmEntityAction(l_Action).EntityDef.Name);
      if l_Action is TvcmActiveEntityActionEx then
       AddInfo(l_S, 'EntityDef', TvcmActiveEntityActionEx(l_Action).EntityDef.Name);
      if l_Action is TvcmModuleAction then
       AddInfo(l_S, 'ModuleDef', TvcmModuleAction(l_Action).ModuleDef.Name);
      l_ActionInfo := l_ActionInfo + ' (' + l_S + ');';
     end;
     l_ItemInfo := l_ItemInfo + ', Action: ' + l_ActionInfo;
    end;
   end;
   if Length(l_ItemInfo) > 0 then
    l_ItemInfo := DupeString('  ', aLevel - 1) + l_ItemInfo;
   l_ItemInfo := l_ItemInfo + #13#10;
   for I := 0 to anItem.Count - 1 do
    l_ItemInfo := l_ItemInfo + MenuItemInfo(anItem.Items[I], aLevel + 1);
   Result := l_ItemInfo;
  end; // MenuItemInfo

 var
  l_Item: TMenuItem;
 begin
  Result := '';
  if not Assigned(aMenu) then
   Exit;
  Result := Trim(MenuItemInfo(aMenu.Items, 0));
  if Length(Result) > 0 then
   Result := '{cloak}'#13#10 + aCaption + #13#10 + Result + #13#10'{/cloak}'#13#10;
 end; // MenuInfo

var
 l_Pos: TPoint;
 
 procedure InfoForControl(aControl: TControl; out theText: string; vgHierarchy: Boolean = False);
 var
  l_CPos: TPoint;
  l_VO: TvgVisualObject;
  l_O: TvgObject;
  l_ActionProp: TObject;
 begin
  if (aControl is TvgCustomScene) then
  begin
   l_CPos := TvgCustomScene(aControl).ScreenToClient(l_Pos);
   l_VO := TvgCustomScene(aControl).ObjectByPoint(l_CPos.X, l_CPos.Y);
   repeat
    if (l_VO <> nil) then
    begin
     AddInfo(theText, 'name', l_VO.Name, True);
     if l_VO is TvgTextControl then
      AddInfo(theText, 'text', TvgTextControl(l_VO).Text);
     AddInfo(theText, 'class', l_VO.ClassName);
     l_O := l_VO.Parent;
     if l_O is TvgVisualObject
      then l_VO := TvgVisualObject(l_O)
      else l_VO := nil;
    end;//l_VO <> nil
   until not (vgHierarchy and Assigned(l_VO));
  end;
  if (theText = '') then
   if Assigned(aControl) then
   begin
    AddInfo(theText, 'name', aControl.Name, True);
    AddInfo(theText, 'class', aControl.ClassName);
    try
     l_ActionProp := GetObjectProp(aControl, 'Action', TCustomAction);
    except
     l_ActionProp := nil;
    end;
    if Assigned(l_ActionProp) then
    begin
     AddInfo(theText, 'act.name', TCustomAction(l_ActionProp).Name);
     if l_ActionProp is TvcmOperationAction then
     begin
      AddInfo(theText, 'act.OpDef', TvcmOperationAction(l_ActionProp).OpDef.Caption);
      AddInfo(theText, 'act.OpDef', TvcmOperationAction(l_ActionProp).OpDef.Name);
      if l_ActionProp is TvcmEntityAction then
      begin
       AddInfo(theText, 'act.EntityDef', TvcmEntityAction(l_ActionProp).EntityDef.Caption);
       AddInfo(theText, 'act.EntityDef', TvcmEntityAction(l_ActionProp).EntityDef.Name);
      end;
      if l_ActionProp is TvcmActiveEntityActionEx then
      begin
       AddInfo(theText, 'act.EntityDef', TvcmActiveEntityActionEx(l_ActionProp).EntityDef.Caption);
       AddInfo(theText, 'act.EntityDef', TvcmActiveEntityActionEx(l_ActionProp).EntityDef.Name);
      end;
      if l_ActionProp is TvcmModuleAction then
      begin
       AddInfo(theText, 'act.ModuleDef', TvcmModuleAction(l_ActionProp).ModuleDef.Caption);
       AddInfo(theText, 'act.ModuleDef', TvcmModuleAction(l_ActionProp).ModuleDef.Name);
      end;
     end;//l_ActionProp is TvcmOperationAction
    end;//Assigned(l_ActionProp)
   end;//Assigned(aControl)
 end;//procedure InfoForControl

 procedure GetvcmPopupMenu(aControl: TControl; aMenu: TMenuItem);
 var
  l_Form: TCustomForm;
 begin
  l_Form := afw.GetParentForm(aControl);
  if l_Form is TvcmEntityForm then
  begin
   f_PopupForm := TvcmEntityForm(l_Form);
   vcmMakeEntitiesMenus(aMenu,
                        TvcmEntitiesDefIteratorForContextMenu.Make(f_PopupForm.GetEntitiesDefIterator),
                        [vcm_ooShowInContextMenu],
                        True,
                        vcm_icExternal,
                        nil,
                        CheckPopup
                        );
  end;
 end;

var
 l_Menu: TMenu;
 l_Control: TControl;
 l_LoopControl: TControl;
 l_Parent: TWinControl;
 l_S, l_Info, l_MenuInfo: string;
 l_C: string;
//#UC END# *4F62032D0058_4F72CAA90045_var*
begin
//#UC START# *4F62032D0058_4F72CAA90045_impl*
 if ([ssShift, ssAlt, ssCtrl] * KeyboardStateToShiftState = [ssShift, ssAlt, ssCtrl]) then
  if (Msg.Message = WM_LBUTTONDOWN) or (Msg.Message = WM_RBUTTONDOWN) then
  begin
   l_S := '';
   l_C := '';
   GetCursorPos(l_Pos);
   l_Control := FindDragTarget(l_Pos, True);

   if not Assigned(l_Control) then
    Exit;

   if Msg.Message = WM_LBUTTONDOWN then
   begin // строим информацию по меню
    l_S := '';
    l_LoopControl := l_Control;
    while (Length(l_S) = 0) and Assigned(l_LoopControl) do
    begin
     if l_LoopControl is TCustomForm then
      l_S := MenuInfo((l_LoopControl as TCustomForm).Menu, 'Главное меню');
     l_LoopControl := l_LoopControl.Parent;
    end;
    l_MenuInfo := l_S;
    l_S := '';
    l_LoopControl := l_Control;
    while (Length(l_S) = 0) and Assigned(l_LoopControl) do
    begin
     f_Popup := TvcmPopupMenu.Create(l_LoopControl);
     try
      f_Popup.PopupComponent := l_LoopControl;
      PPoint(@f_Popup.PopupPoint)^ := l_Pos;
      GetvcmPopupMenu(l_LoopControl, f_Popup.Items);
      if f_Popup.Items.Count > 0 then
       l_Menu := f_Popup;
      if not Assigned(l_Menu) then
       l_Menu := (g_MenuManager as TvcmCustomMenuManager).FillPopupMenu(l_Pos, l_LoopControl);
      if not Assigned(l_Menu) then
       l_Menu := THackControl(l_LoopControl).PopupMenu;
      if Assigned(l_Menu) then
       l_S := MenuInfo(l_Menu, 'Контекстное меню');
     finally
      l3Free(f_Popup);
     end;
     l_LoopControl := l_LoopControl.Parent;
    end;
    l_MenuInfo := l_MenuInfo + l_S;
   end;

   InfoForControl(l_Control, l_Info, Msg.Message = WM_RBUTTONDOWN);
   l_S := l_Info;
   if Length(l_MenuInfo) > 0 then
    l_S := l_MenuInfo + #13#10 + l_Info;

   if (Msg.Message = WM_RBUTTONDOWN) then
   repeat
    l_Parent := l_Control.Parent;

    if Assigned(l_Parent) and (l_Parent is TControl) then
    begin
     l_Control := TControl(l_Parent);
     InfoForControl(l_Control, l_Info, True);
     l_S := l_S + #13#10 + l_Info;
    end else
     Break;
   until False;

   if (Msg.Message = WM_LBUTTONDOWN) then
    l_S := l_S + #13#10#13#10 + L3FormatRTTIInfo(l_Control);

   if (l_S <> '') then
    vcmMessageDlg(Tl3Message_C(vcmCStr(l_S), '', mtInformation));
   Msg.Message := 0;
  end;//WM_LBUTTONDOWN or WM_RBUTTONDOWN
//#UC END# *4F62032D0058_4F72CAA90045_impl*
end;//Tl3ComponentNameHelper.GetMessageListenerNotify

procedure Tl3ComponentNameHelper.Cleanup;
//#UC START# *479731C50290_4F72CAA90045_var*
//#UC END# *479731C50290_4F72CAA90045_var*
begin
//#UC START# *479731C50290_4F72CAA90045_impl*
 Tl3ListenersManager.RemoveGetMessageListener(Self);
 inherited;
//#UC END# *479731C50290_4F72CAA90045_impl*
end;//Tl3ComponentNameHelper.Cleanup

procedure Tl3ComponentNameHelper.InitFields;
//#UC START# *47A042E100E2_4F72CAA90045_var*
//#UC END# *47A042E100E2_4F72CAA90045_var*
begin
//#UC START# *47A042E100E2_4F72CAA90045_impl*
 inherited;
 Tl3ListenersManager.AddGetMessageListener(Self);
//#UC END# *47A042E100E2_4F72CAA90045_impl*
end;//Tl3ComponentNameHelper.InitFields

{$IfEnd} //not NoVCM

initialization
{$If not defined(NoVCM)}
//#UC START# *4F72D9FF0074*
 Tl3ComponentNameHelper.Instance;
//#UC END# *4F72D9FF0074*
{$IfEnd} //not NoVCM

end.