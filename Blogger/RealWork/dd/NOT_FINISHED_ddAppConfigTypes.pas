unit NOT_FINISHED_ddAppConfigTypes;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "dd$AppConfig"
// Модуль: "w:/common/components/rtl/Garant/dd/NOT_FINISHED_ddAppConfigTypes.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi::dd$AppConfig::AppConfig::ddAppConfigTypes
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

interface

uses
  ddAppConfigTypesModelPart,
  Controls,
  Classes,
  Forms,
  ddConfigStorages
  ;

type
 TddFontConfigItem = class(TddVisualConfigItem)
 protected
 // realized methods
   function ConstructControl(var aLeft: Integer;
     var aMaxLeft: Integer;
     var aTop: Integer;
     aParent: TWinControl): TControl; override;
   function ControlHeight(aParent: TWinControl): Integer; override;
   procedure GetValueFromControl; override;
     {* Сигнатура метода GetValueFromControl }
   procedure SetValueToControl(aDefault: Boolean); override;
 end;//TddFontConfigItem

 TddMapValueConfigItem = class(TddVisualConfigItem)
 protected
 // realized methods
   function ConstructControl(var aLeft: Integer;
     var aMaxLeft: Integer;
     var aTop: Integer;
     aParent: TWinControl): TControl; override;
   function ControlHeight(aParent: TWinControl): Integer; override;
   procedure GetValueFromControl; override;
     {* Сигнатура метода GetValueFromControl }
   procedure SetValueToControl(aDefault: Boolean); override;
 end;//TddMapValueConfigItem

 TddComboBoxConfigItem = class(TddMapValueConfigItem)
 end;//TddComboBoxConfigItem

 TddAppConfigNode = class(TddCustomConfigNode)
 protected
 // realized methods
   function pm_GetChanged: Boolean;
   procedure DoClearControls; override;
   function DoCreateFrame(aOwner: TComponent;
     aTag: Integer): TCustomFrame; override;
   procedure DoGetControlValues; override;
   function DoIsItem(aItem: TObject): Boolean; override;
   procedure DoLoad(const aStorage: IddConfigStorage); override;
   procedure DoSave(const aStorage: IddConfigStorage); override;
   procedure DoSetControlValues(aDefault: Boolean); override;
 end;//TddAppConfigNode

 TddButtonPlace = (
   dd_bpAsDefine
 , dd_bpBottomRight
 );//TddButtonPlace

 TddRadioConfigItem = class
 end;//TddRadioConfigItem

implementation

uses
  ddAppConfigTypesRes
  ;

// start class TddFontConfigItem

function TddFontConfigItem.ConstructControl(var aLeft: Integer;
  var aMaxLeft: Integer;
  var aTop: Integer;
  aParent: TWinControl): TControl;
//#UC START# *521761BB03DE_4B9E682C038E_var*
//#UC END# *521761BB03DE_4B9E682C038E_var*
begin
//#UC START# *521761BB03DE_4B9E682C038E_impl*
 !!! Needs to be implemented !!!
//#UC END# *521761BB03DE_4B9E682C038E_impl*
end;//TddFontConfigItem.ConstructControl

function TddFontConfigItem.ControlHeight(aParent: TWinControl): Integer;
//#UC START# *521B053F03C3_4B9E682C038E_var*
//#UC END# *521B053F03C3_4B9E682C038E_var*
begin
//#UC START# *521B053F03C3_4B9E682C038E_impl*
 !!! Needs to be implemented !!!
//#UC END# *521B053F03C3_4B9E682C038E_impl*
end;//TddFontConfigItem.ControlHeight

procedure TddFontConfigItem.GetValueFromControl;
//#UC START# *521B058801FD_4B9E682C038E_var*
//#UC END# *521B058801FD_4B9E682C038E_var*
begin
//#UC START# *521B058801FD_4B9E682C038E_impl*
 !!! Needs to be implemented !!!
//#UC END# *521B058801FD_4B9E682C038E_impl*
end;//TddFontConfigItem.GetValueFromControl

procedure TddFontConfigItem.SetValueToControl(aDefault: Boolean);
//#UC START# *521B07030052_4B9E682C038E_var*
//#UC END# *521B07030052_4B9E682C038E_var*
begin
//#UC START# *521B07030052_4B9E682C038E_impl*
 !!! Needs to be implemented !!!
//#UC END# *521B07030052_4B9E682C038E_impl*
end;//TddFontConfigItem.SetValueToControl
// start class TddMapValueConfigItem

function TddMapValueConfigItem.ConstructControl(var aLeft: Integer;
  var aMaxLeft: Integer;
  var aTop: Integer;
  aParent: TWinControl): TControl;
//#UC START# *521761BB03DE_4E302F130143_var*
//#UC END# *521761BB03DE_4E302F130143_var*
begin
//#UC START# *521761BB03DE_4E302F130143_impl*
 !!! Needs to be implemented !!!
//#UC END# *521761BB03DE_4E302F130143_impl*
end;//TddMapValueConfigItem.ConstructControl

function TddMapValueConfigItem.ControlHeight(aParent: TWinControl): Integer;
//#UC START# *521B053F03C3_4E302F130143_var*
//#UC END# *521B053F03C3_4E302F130143_var*
begin
//#UC START# *521B053F03C3_4E302F130143_impl*
 !!! Needs to be implemented !!!
//#UC END# *521B053F03C3_4E302F130143_impl*
end;//TddMapValueConfigItem.ControlHeight

procedure TddMapValueConfigItem.GetValueFromControl;
//#UC START# *521B058801FD_4E302F130143_var*
//#UC END# *521B058801FD_4E302F130143_var*
begin
//#UC START# *521B058801FD_4E302F130143_impl*
 !!! Needs to be implemented !!!
//#UC END# *521B058801FD_4E302F130143_impl*
end;//TddMapValueConfigItem.GetValueFromControl

procedure TddMapValueConfigItem.SetValueToControl(aDefault: Boolean);
//#UC START# *521B07030052_4E302F130143_var*
//#UC END# *521B07030052_4E302F130143_var*
begin
//#UC START# *521B07030052_4E302F130143_impl*
 !!! Needs to be implemented !!!
//#UC END# *521B07030052_4E302F130143_impl*
end;//TddMapValueConfigItem.SetValueToControl
// start class TddAppConfigNode

function TddAppConfigNode.pm_GetChanged: Boolean;
//#UC START# *5216208C03CD_51D547F700ABget_var*
//#UC END# *5216208C03CD_51D547F700ABget_var*
begin
//#UC START# *5216208C03CD_51D547F700ABget_impl*
 !!! Needs to be implemented !!!
//#UC END# *5216208C03CD_51D547F700ABget_impl*
end;//TddAppConfigNode.pm_GetChanged

procedure TddAppConfigNode.DoClearControls;
//#UC START# *521B285C035B_51D547F700AB_var*
//#UC END# *521B285C035B_51D547F700AB_var*
begin
//#UC START# *521B285C035B_51D547F700AB_impl*
 !!! Needs to be implemented !!!
//#UC END# *521B285C035B_51D547F700AB_impl*
end;//TddAppConfigNode.DoClearControls

function TddAppConfigNode.DoCreateFrame(aOwner: TComponent;
  aTag: Integer): TCustomFrame;
//#UC START# *521B28760177_51D547F700AB_var*
//#UC END# *521B28760177_51D547F700AB_var*
begin
//#UC START# *521B28760177_51D547F700AB_impl*
 !!! Needs to be implemented !!!
//#UC END# *521B28760177_51D547F700AB_impl*
end;//TddAppConfigNode.DoCreateFrame

procedure TddAppConfigNode.DoGetControlValues;
//#UC START# *521B28BE015D_51D547F700AB_var*
//#UC END# *521B28BE015D_51D547F700AB_var*
begin
//#UC START# *521B28BE015D_51D547F700AB_impl*
 !!! Needs to be implemented !!!
//#UC END# *521B28BE015D_51D547F700AB_impl*
end;//TddAppConfigNode.DoGetControlValues

function TddAppConfigNode.DoIsItem(aItem: TObject): Boolean;
//#UC START# *521B28D60001_51D547F700AB_var*
//#UC END# *521B28D60001_51D547F700AB_var*
begin
//#UC START# *521B28D60001_51D547F700AB_impl*
 !!! Needs to be implemented !!!
//#UC END# *521B28D60001_51D547F700AB_impl*
end;//TddAppConfigNode.DoIsItem

procedure TddAppConfigNode.DoLoad(const aStorage: IddConfigStorage);
//#UC START# *521B28F40355_51D547F700AB_var*
//#UC END# *521B28F40355_51D547F700AB_var*
begin
//#UC START# *521B28F40355_51D547F700AB_impl*
 !!! Needs to be implemented !!!
//#UC END# *521B28F40355_51D547F700AB_impl*
end;//TddAppConfigNode.DoLoad

procedure TddAppConfigNode.DoSave(const aStorage: IddConfigStorage);
//#UC START# *521B295A024F_51D547F700AB_var*
//#UC END# *521B295A024F_51D547F700AB_var*
begin
//#UC START# *521B295A024F_51D547F700AB_impl*
 !!! Needs to be implemented !!!
//#UC END# *521B295A024F_51D547F700AB_impl*
end;//TddAppConfigNode.DoSave

procedure TddAppConfigNode.DoSetControlValues(aDefault: Boolean);
//#UC START# *521B298800F7_51D547F700AB_var*
//#UC END# *521B298800F7_51D547F700AB_var*
begin
//#UC START# *521B298800F7_51D547F700AB_impl*
 !!! Needs to be implemented !!!
//#UC END# *521B298800F7_51D547F700AB_impl*
end;//TddAppConfigNode.DoSetControlValues
end.