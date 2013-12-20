unit nsWebBrowser;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/InternetAgent/nsWebBrowser.pas"
// Начат: 20.04.2009 22:04
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<GuiControl::Class>> F1 Встроенные продукты::InternetAgent::View::InternetAgent::TnsWebBrowser
//
// Наследник от стандартного компонента, для заточек в F1
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
  Messages,
  nsWebBrowserPrim,
  OvcController,
  afwInterfaces,
  Classes
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 _afwShortcutsHandler_Parent_ = TnsWebBrowserPrim;
 {$Include w:\common\components\gui\Garant\AFW\implementation\afwShortcutsHandler.imp.pas}
 _evStyleTableListner_Parent_ = _afwShortcutsHandler_;
 {$Include w:\common\components\gui\Garant\Everest\evStyleTableListner.imp.pas}
 TnsWebBrowser = class(_evStyleTableListner_)
  {* Наследник от стандартного компонента, для заточек в F1 }
 private
 // private fields
   f_FPUCtrlWord : Word;
   f_Scale : Integer;
    {* Поле для свойства Scale}
 private
 // private methods
    {$If not defined(Admin) AND not defined(Monitorings) AND not defined(XE)}
   procedure DocumentComplete(Sender: TObject;
     const pDisp: IDispatch;
     var URL: OleVariant);
     {* Документ готов к работе }
    {$IfEnd} //not Admin AND not Monitorings AND not XE
   procedure ApplyZoom;
     {* Выставляет Zoom из таблицы стилей }
   procedure DocumentCompleteXE(Sender: TObject;
     const pDisp: IDispatch;
     const URL: OleVariant);
   procedure WMSize(var aMsg: TWMSize); message WM_Size;
 protected
 // property methods
   procedure pm_SetScale(aValue: Integer);
 protected
 // realized methods
   {$If not defined(DesignTimeLibrary)}
   procedure DoStyleTableChanged; override;
   {$IfEnd} //not DesignTimeLibrary
 protected
 // overridden protected methods
   procedure InitFields; override;
    {$If defined(l3HackedVCL) AND not defined(DesignTimeLibrary)}
   procedure ForceWMSize(aWidth: Integer;
     aHeight: Integer); override;
    {$IfEnd} //l3HackedVCL AND not DesignTimeLibrary
 public
 // overridden public methods
   constructor Create(AOwner: TComponent); override;
   destructor Destroy; override;
 public
 // public methods
   function ScaleDisabled: Boolean;
     {* Масштабирование запрещено }
 public
 // public properties
   property Scale: Integer
     read f_Scale
     write pm_SetScale;
     {* Масштаб }
 end;//TnsWebBrowser
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  evStyleTableTools,
  Variants,
  StrUtils,
  nsWebBrowserHelper,
  l3SysUtils,
  l3Base,
  SysUtils,
  OvcConst,
  Controls,
  Windows,
  Forms
  {$If not defined(DesignTimeLibrary)}
  ,
  evStyleTableSpy
  {$IfEnd} //not DesignTimeLibrary
  
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

{$Include w:\common\components\gui\Garant\AFW\implementation\afwShortcutsHandler.imp.pas}

{$Include w:\common\components\gui\Garant\Everest\evStyleTableListner.imp.pas}

// start class TnsWebBrowser

{$If not defined(Admin) AND not defined(Monitorings) AND not defined(XE)}
procedure TnsWebBrowser.DocumentComplete(Sender: TObject;
  const pDisp: IDispatch;
  var URL: OleVariant);
//#UC START# *49F0457A016C_49ECB8E002B0_var*
//#UC END# *49F0457A016C_49ECB8E002B0_var*
begin
//#UC START# *49F0457A016C_49ECB8E002B0_impl*
 DocumentCompleteXE(Sender, pDisp, URL);
//#UC END# *49F0457A016C_49ECB8E002B0_impl*
end;//TnsWebBrowser.DocumentComplete
{$IfEnd} //not Admin AND not Monitorings AND not XE

procedure TnsWebBrowser.ApplyZoom;
//#UC START# *49F062A50141_49ECB8E002B0_var*
//#UC END# *49F062A50141_49ECB8E002B0_var*
begin
//#UC START# *49F062A50141_49ECB8E002B0_impl*
 try
  if not VarIsClear{VarIsNull}(OleObject) AND
     not VarIsClear{VarIsNull}(OleObject.Document) then
   if not VarIsClear{VarIsNull}(OleObject.Document.Body) then
   begin
    if ScaleDisabled then
     OleObject.Document.Body.Style.Zoom := 1
    else
     OleObject.Document.Body.Style.Zoom := f_Scale / 100{evGetDefaultZoom(12)};
   end;//not VarIsClear{VarIsNull}(OleObject.Document.Body)
 except
  on E: Exception do
   l3System.Exception2Log(E);
 end;//try..except
//#UC END# *49F062A50141_49ECB8E002B0_impl*
end;//TnsWebBrowser.ApplyZoom

procedure TnsWebBrowser.DocumentCompleteXE(Sender: TObject;
  const pDisp: IDispatch;
  const URL: OleVariant);
//#UC START# *5175412302EE_49ECB8E002B0_var*
//#UC END# *5175412302EE_49ECB8E002B0_var*
begin
//#UC START# *5175412302EE_49ECB8E002B0_impl*
 ApplyZoom;
//#UC END# *5175412302EE_49ECB8E002B0_impl*
end;//TnsWebBrowser.DocumentCompleteXE

function TnsWebBrowser.ScaleDisabled: Boolean;
//#UC START# *4BB3665300BC_49ECB8E002B0_var*
//#UC END# *4BB3665300BC_49ECB8E002B0_var*
begin
//#UC START# *4BB3665300BC_49ECB8E002B0_impl*
 Result := ANSIStartsText('http://mirror2.garant.ru', LocationURL) OR
           ANSIStartsText('http://gim.garant.ru', LocationURL);
//#UC END# *4BB3665300BC_49ECB8E002B0_impl*
end;//TnsWebBrowser.ScaleDisabled

procedure TnsWebBrowser.pm_SetScale(aValue: Integer);
//#UC START# *4BB32FCD0157_49ECB8E002B0set_var*
//#UC END# *4BB32FCD0157_49ECB8E002B0set_var*
begin
//#UC START# *4BB32FCD0157_49ECB8E002B0set_impl*
 if (f_Scale <> aValue) then
 begin
  f_Scale := aValue;
  ApplyZoom;
 end;//f_Scale <> aValue
//#UC END# *4BB32FCD0157_49ECB8E002B0set_impl*
end;//TnsWebBrowser.pm_SetScale

procedure TnsWebBrowser.WMSize(var aMsg: TWMSize);
//#UC START# *4E9574530051_49ECB8E002B0_var*
{$If not defined(DesignTimeLibrary)}
{$IfDef Never}
var
  Extent: TPoint;
  W, H: Integer;
  l_Res : HResult;
{$EndIf Never}
{$IfEnd}
//#UC END# *4E9574530051_49ECB8E002B0_var*
begin
//#UC START# *4E9574530051_49ECB8E002B0_impl*
 inherited;
 {$If not defined(DesignTimeLibrary)}
 {$IfDef Never}
 Exit;
 if VarIsClear{VarIsNull}(OleObject) OR
    VarIsClear{VarIsNull}(OleObject.Document) then
  Exit;
(* W := OleObject.Document.Body.OffsetWidth;
 H := OleObject.Document.Body.OffsetHeight;*)
(* W := OleObject.Document.Body.Width;
 H := OleObject.Document.Body.Height;*)
(* OleObject.Document.Body.OffsetWidth := Self.Width;
 OleObject.Document.Body.OffsetHeight := Self.Height;*)
(* W := OleObject.Document.{Window.}InnerWidth;
 H := OleObject.Document.{Window.}InnerHeight;*)
// Exit;
 if l3NeedsHackFor64System then
 begin
(*  EnumChildWindows(WindowHandle,
                   @EnumChildWindowProc,
                   LParam(LoWord(Width) + (LoWord(Height) shl 16))
                   {TMessage(aMsg).lParam});
  l_Res := THackOleControl(Self).FOleObject.GetExtent(DVASPECT_CONTENT, Extent);
  if (l_Res <> S_OK) then
   Assert(false);
  W := MulDiv(Extent.X, Screen.PixelsPerInch, 2540);
  H := MulDiv(Extent.Y, Screen.PixelsPerInch, 2540);
//  ControlInterface.Width := W;
//  ControlInterface.Height := H;
  ControlInterface.Width := Self.Width;
  ControlInterface.Height := Self.Height;*)
  ControlInterface.Refresh;
 end;//l3NeedsHackFor64System
 {$EndIf Never}
 {$IfEnd} //not DesignTimeLibrary
//#UC END# *4E9574530051_49ECB8E002B0_impl*
end;//TnsWebBrowser.WMSize

{$If not defined(DesignTimeLibrary)}
procedure TnsWebBrowser.DoStyleTableChanged;
//#UC START# *4A485B710126_49ECB8E002B0_var*
//#UC END# *4A485B710126_49ECB8E002B0_var*
begin
//#UC START# *4A485B710126_49ECB8E002B0_impl*
 ApplyZoom;
//#UC END# *4A485B710126_49ECB8E002B0_impl*
end;//TnsWebBrowser.DoStyleTableChanged
{$IfEnd} //not DesignTimeLibrary

constructor TnsWebBrowser.Create(AOwner: TComponent);
//#UC START# *47D1602000C6_49ECB8E002B0_var*
//#UC END# *47D1602000C6_49ECB8E002B0_var*
begin
//#UC START# *47D1602000C6_49ECB8E002B0_impl*
 // Попытка лечения EZeroDivide из mshtml.dll от IE 10
 // http://mdp.garant.ru/pages/viewpage.action?pageId=475141873
 f_FPUCtrlWord := Get8087CW;
 Set8087CW($027F);
 inherited;
 OnDocumentComplete := {$IfDef XE}Self.DocumentCompleteXE{$Else}Self.DocumentComplete{$EndIf};
//#UC END# *47D1602000C6_49ECB8E002B0_impl*
end;//TnsWebBrowser.Create

destructor TnsWebBrowser.Destroy;
//#UC START# *48077504027E_49ECB8E002B0_var*
//#UC END# *48077504027E_49ECB8E002B0_var*
begin
//#UC START# *48077504027E_49ECB8E002B0_impl*
 // http://mdp.garant.ru/pages/viewpage.action?pageId=475141873
 Set8087CW(f_FPUCtrlWord);
 inherited;
//#UC END# *48077504027E_49ECB8E002B0_impl*
end;//TnsWebBrowser.Destroy

procedure TnsWebBrowser.InitFields;
//#UC START# *49F0577C02ED_49ECB8E002B0_var*
//#UC END# *49F0577C02ED_49ECB8E002B0_var*
begin
//#UC START# *49F0577C02ED_49ECB8E002B0_impl*
 inherited;
 f_Scale := 100;
//#UC END# *49F0577C02ED_49ECB8E002B0_impl*
end;//TnsWebBrowser.InitFields

{$If defined(l3HackedVCL) AND not defined(DesignTimeLibrary)}
procedure TnsWebBrowser.ForceWMSize(aWidth: Integer;
  aHeight: Integer);
//#UC START# *4E955E8F0237_49ECB8E002B0_var*
//#UC END# *4E955E8F0237_49ECB8E002B0_var*
begin
//#UC START# *4E955E8F0237_49ECB8E002B0_impl*
 inherited;
(* SendMessage(WindowHandle,
             WM_Size,
             0, LParam(LoWord(Width) + (LoWord(Height) shl 16)));*)
(* SendMessage(WindowHandle,
             WM_Size,
             0, LParam(LoWord(aWidth) + (LoWord(AHeight) shl 16)));
 EnumChildWindows(WindowHandle,
                  @EnumChildWindowProc,
                  LParam(LoWord(aWidth) + (LoWord(AHeight) shl 16)));*)
(* ShowScrollBar(WindowHandle, SB_Horz, true);
 ShowScrollBar(WindowHandle, SB_Vert, true);*)
//#UC END# *4E955E8F0237_49ECB8E002B0_impl*
end;//TnsWebBrowser.ForceWMSize
{$IfEnd} //l3HackedVCL AND not DesignTimeLibrary

{$IfEnd} //not Admin AND not Monitorings

end.