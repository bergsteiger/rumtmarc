unit nscStatusBarButton;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Nemesis"
// Модуль: "w:/common/components/gui/Garant/Nemesis/nscStatusBarButton.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<GuiControl::Class>> Shared Delphi For F1::Nemesis::StatusBar::TnscStatusBarButton
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Nemesis\nscDefine.inc}

interface

{$If defined(Nemesis)}
uses
  tb97Ctls,
  Messages,
  nscNewInterfaces,
  StatusBarUtils,
  Controls {a},
  Types
  ;
{$IfEnd} //Nemesis

{$If defined(Nemesis)}
type
//#UC START# *503DE6F30027ci*
//#UC END# *503DE6F30027ci*
 _nscStatusBarItemNotification_Parent_ = TCustomToolbarButton97;
 {$Include ..\Nemesis\nscStatusBarItemNotification.imp.pas}
 TnscStatusBarButton = class(_nscStatusBarItemNotification_)
 protected
 // overridden protected methods
   function IsGtbToolbarButtonSizeNeeded: Boolean; override;
   function GetIsAutoCenter: Boolean; override;
   procedure CalcSize(var aSize: TSize); override;
   function NeedAutoDown: Boolean; override;
//#UC START# *503DE6F30027publ*
  public
    property AutoSize;
//#UC END# *503DE6F30027publ*
 end;//TnscStatusBarButton
{$IfEnd} //Nemesis

implementation

{$If defined(Nemesis)}
uses
  ActnList,
  l3Base
  ;
{$IfEnd} //Nemesis

{$If defined(Nemesis)}

{$Include ..\Nemesis\nscStatusBarItemNotification.imp.pas}

// start class TnscStatusBarButton

function TnscStatusBarButton.IsGtbToolbarButtonSizeNeeded: Boolean;
//#UC START# *503DE82B0311_503DE6F30027_var*
//#UC END# *503DE82B0311_503DE6F30027_var*
begin
//#UC START# *503DE82B0311_503DE6F30027_impl*
 Result := False;
//#UC END# *503DE82B0311_503DE6F30027_impl*
end;//TnscStatusBarButton.IsGtbToolbarButtonSizeNeeded

function TnscStatusBarButton.GetIsAutoCenter: Boolean;
//#UC START# *503E27CA010E_503DE6F30027_var*
//#UC END# *503E27CA010E_503DE6F30027_var*
begin
//#UC START# *503E27CA010E_503DE6F30027_impl*
 Result := True;
//#UC END# *503E27CA010E_503DE6F30027_impl*
end;//TnscStatusBarButton.GetIsAutoCenter

procedure TnscStatusBarButton.CalcSize(var aSize: TSize);
//#UC START# *504779E00385_503DE6F30027_var*
//#UC END# *504779E00385_503DE6F30027_var*
begin
//#UC START# *504779E00385_503DE6F30027_impl*
 inherited CalcSize(aSize);
 aSize.cy := cStatusbarItemSize;
 if DisplayMode = dmGlyphOnly then
  aSize.cx := cStatusbarItemSize;
//#UC END# *504779E00385_503DE6F30027_impl*
end;//TnscStatusBarButton.CalcSize

function TnscStatusBarButton.NeedAutoDown: Boolean;
//#UC START# *50477A430157_503DE6F30027_var*
//#UC END# *50477A430157_503DE6F30027_var*
begin
//#UC START# *50477A430157_503DE6F30027_impl*
 Result := (Action as TCustomAction).AutoCheck;
//#UC END# *50477A430157_503DE6F30027_impl*
end;//TnscStatusBarButton.NeedAutoDown

//#UC START# *503DE6F30027impl*
//#UC END# *503DE6F30027impl*

{$IfEnd} //Nemesis

end.