unit vcmToolbar;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "VCM"
// Модуль: "w:/common/components/gui/Garant/VCM/implementation/Components/vcmToolbar.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi::VCM::Components::vcmToolbar
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\common\components\gui\Garant\VCM\vcmDefine.inc}

interface

uses
  Classes,
  ExtCtrls,
  vcmUserControls,
  //vcmMenuManager,
  TB97Tlbr
  ;

type
 TvcmToolbarDef = class(TToolbar97)
 private
 // private fields
   f_Pos : TvcmEffectiveToolBarPos;
    {* Поле для свойства Pos}
 private
 // private methods
   procedure LockDock;
     {* Сигнатура метода LockDock }
 protected
 // property methods
   function pm_GetButtonCount: integer;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   procedure VisibleChanging; override;
   procedure ExecuteHandler(Sender: TObject); override;
   procedure ExecuteDefered; override;
     {* Сигнатура метода ExecuteDefered }
   procedure UpdateEmpty(aUpdateVisibility: Boolean = True); override;
 public
 // public methods
   procedure VcmDeleteLastIfSeparator;
     {* Сигнатура метода vcmDeleteLastIfSeparator }
   procedure DeleteControls;
     {* Сигнатура метода DeleteControls }
 public
 // public properties
   property Pos: TvcmEffectiveToolBarPos
     read f_Pos;
   property ButtonCount: integer
     read pm_GetButtonCount;
 end;//TvcmToolbarDef

 TvcmSeparatorDef = class(TToolbarSep97)
 end;//TvcmSeparatorDef

 TvcmToolbarDockPanel = class(TCustomPanel)
 private
 // private fields
   f_Pos : TvcmDockDef;
    {* Поле для свойства }
 protected
 // overridden protected methods
   procedure Paint; override;
     {* Сигнатура метода Paint }
 public
 // public methods
   class function Make(AOwner: TComponent;
     aDock: TvcmDockDef = nil): 
; reintroduce;
 public
 // public properties
   property : TvcmDockDef
     read f_Pos
     write f_Pos;
 end;//TvcmToolbarDockPanel

 TvcmToolbar = class(TvcmToolbarDef)
 private
 // private fields
   f_DockDef : TvcmDockDef;
    {* Поле для свойства DockDef}
 protected
 // overridden protected methods
   procedure RequestAlign; override;
     {* Сигнатура метода RequestAlign }
 public
 // overridden public methods
   procedure BeginUpdate; override;
     {* Сигнатура метода BeginUpdate }
   procedure EndUpdate; override;
     {* Сигнатура метода EndUpdate }
 public
 // public methods
   constructor Create(anOwner: TComponent;
     aDock: TvcmDockDef); reintroduce;
 public
 // public properties
   property DockDef: TvcmDockDef
     read f_DockDef;
 end;//TvcmToolbar

implementation

// start class TvcmToolbarDef

procedure TvcmToolbarDef.LockDock;
//#UC START# *50289F8500B8_50289DB9036F_var*
//#UC END# *50289F8500B8_50289DB9036F_var*
begin
//#UC START# *50289F8500B8_50289DB9036F_impl*
 !!! Needs to be implemented !!!
//#UC END# *50289F8500B8_50289DB9036F_impl*
end;//TvcmToolbarDef.LockDock

procedure TvcmToolbarDef.VcmDeleteLastIfSeparator;
//#UC START# *50289E6F021D_50289DB9036F_var*
//#UC END# *50289E6F021D_50289DB9036F_var*
begin
//#UC START# *50289E6F021D_50289DB9036F_impl*
 !!! Needs to be implemented !!!
//#UC END# *50289E6F021D_50289DB9036F_impl*
end;//TvcmToolbarDef.VcmDeleteLastIfSeparator

procedure TvcmToolbarDef.DeleteControls;
//#UC START# *50289E7E0162_50289DB9036F_var*
//#UC END# *50289E7E0162_50289DB9036F_var*
begin
//#UC START# *50289E7E0162_50289DB9036F_impl*
 !!! Needs to be implemented !!!
//#UC END# *50289E7E0162_50289DB9036F_impl*
end;//TvcmToolbarDef.DeleteControls

function TvcmToolbarDef.pm_GetButtonCount: integer;
//#UC START# *50289E1803C4_50289DB9036Fget_var*
//#UC END# *50289E1803C4_50289DB9036Fget_var*
begin
//#UC START# *50289E1803C4_50289DB9036Fget_impl*
 !!! Needs to be implemented !!!
//#UC END# *50289E1803C4_50289DB9036Fget_impl*
end;//TvcmToolbarDef.pm_GetButtonCount

procedure TvcmToolbarDef.Cleanup;
//#UC START# *479731C50290_50289DB9036F_var*
//#UC END# *479731C50290_50289DB9036F_var*
begin
//#UC START# *479731C50290_50289DB9036F_impl*
 !!! Needs to be implemented !!!
//#UC END# *479731C50290_50289DB9036F_impl*
end;//TvcmToolbarDef.Cleanup

procedure TvcmToolbarDef.VisibleChanging;
//#UC START# *4CC8658C017B_50289DB9036F_var*
//#UC END# *4CC8658C017B_50289DB9036F_var*
begin
//#UC START# *4CC8658C017B_50289DB9036F_impl*
 !!! Needs to be implemented !!!
//#UC END# *4CC8658C017B_50289DB9036F_impl*
end;//TvcmToolbarDef.VisibleChanging

procedure TvcmToolbarDef.ExecuteHandler(Sender: TObject);
//#UC START# *5028A00600B5_50289DB9036F_var*
//#UC END# *5028A00600B5_50289DB9036F_var*
begin
//#UC START# *5028A00600B5_50289DB9036F_impl*
 !!! Needs to be implemented !!!
//#UC END# *5028A00600B5_50289DB9036F_impl*
end;//TvcmToolbarDef.ExecuteHandler

procedure TvcmToolbarDef.ExecuteDefered;
//#UC START# *5028A09900D5_50289DB9036F_var*
//#UC END# *5028A09900D5_50289DB9036F_var*
begin
//#UC START# *5028A09900D5_50289DB9036F_impl*
 !!! Needs to be implemented !!!
//#UC END# *5028A09900D5_50289DB9036F_impl*
end;//TvcmToolbarDef.ExecuteDefered

procedure TvcmToolbarDef.UpdateEmpty(aUpdateVisibility: Boolean = True);
//#UC START# *5028A1220383_50289DB9036F_var*
//#UC END# *5028A1220383_50289DB9036F_var*
begin
//#UC START# *5028A1220383_50289DB9036F_impl*
 !!! Needs to be implemented !!!
//#UC END# *5028A1220383_50289DB9036F_impl*
end;//TvcmToolbarDef.UpdateEmpty
// start class TvcmToolbarDockPanel

class function TvcmToolbarDockPanel.Make(AOwner: TComponent;
  aDock: TvcmDockDef = nil): 
;
var
 l_Inst : TvcmToolbarDockPanel;
begin
 l_Inst := Create(AOwner, aDock);
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

procedure TvcmToolbarDockPanel.Paint;
//#UC START# *5028A60300AD_5028A43300CE_var*
//#UC END# *5028A60300AD_5028A43300CE_var*
begin
//#UC START# *5028A60300AD_5028A43300CE_impl*
 !!! Needs to be implemented !!!
//#UC END# *5028A60300AD_5028A43300CE_impl*
end;//TvcmToolbarDockPanel.Paint
// start class TvcmToolbar

constructor TvcmToolbar.Create(anOwner: TComponent;
  aDock: TvcmDockDef);
//#UC START# *5028A7DE0329_5028A4C0019B_var*
//#UC END# *5028A7DE0329_5028A4C0019B_var*
begin
//#UC START# *5028A7DE0329_5028A4C0019B_impl*
 !!! Needs to be implemented !!!
//#UC END# *5028A7DE0329_5028A4C0019B_impl*
end;//TvcmToolbar.Create

procedure TvcmToolbar.RequestAlign;
//#UC START# *5022104B03A6_5028A4C0019B_var*
//#UC END# *5022104B03A6_5028A4C0019B_var*
begin
//#UC START# *5022104B03A6_5028A4C0019B_impl*
 !!! Needs to be implemented !!!
//#UC END# *5022104B03A6_5028A4C0019B_impl*
end;//TvcmToolbar.RequestAlign

procedure TvcmToolbar.BeginUpdate;
//#UC START# *5028A78000B6_5028A4C0019B_var*
//#UC END# *5028A78000B6_5028A4C0019B_var*
begin
//#UC START# *5028A78000B6_5028A4C0019B_impl*
 !!! Needs to be implemented !!!
//#UC END# *5028A78000B6_5028A4C0019B_impl*
end;//TvcmToolbar.BeginUpdate

procedure TvcmToolbar.EndUpdate;
//#UC START# *5028A78B015A_5028A4C0019B_var*
//#UC END# *5028A78B015A_5028A4C0019B_var*
begin
//#UC START# *5028A78B015A_5028A4C0019B_impl*
 !!! Needs to be implemented !!!
//#UC END# *5028A78B015A_5028A4C0019B_impl*
end;//TvcmToolbar.EndUpdate

end.