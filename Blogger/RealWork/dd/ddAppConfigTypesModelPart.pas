unit ddAppConfigTypesModelPart;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "dd$AppConfig"
// Модуль: "w:/common/components/rtl/Garant/dd/ddAppConfigTypesModelPart.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi::dd$AppConfig::AppConfig::ddAppConfigTypesModelPart
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ddDefine.inc}

interface

uses
  l3Interfaces,
  l3Base,
  l3ObjectList,
  SysUtils,
  l3_Base,
  Classes,
  l3ObjectRefList,
  Graphics,
  Controls,
  Forms,
  StdCtrls,
  ComCtrls,
  vtLabel,
  ddAppConfigConst,
  ddConfigStorages
  ;

type
 IddMasterItem = interface(IUnknown)
   ['{7186411A-F177-458A-802C-2A40BE15A74A}']
   function pm_GetBooleanValue: Boolean;
   property BooleanValue: Boolean
     read pm_GetBooleanValue;
 end;//IddMasterItem

 IddConfigNode = interface(IUnknown)
   ['{66FB62AB-6EBC-45C3-88BD-2EE1037AAE9C}']
   procedure ClearControls;
     {* Сигнатура метода ClearControls }
   function CreateFrame(aOwner: TComponent;
     aTag: Integer): TCustomFrame;
   procedure FrameSize(aParent: TWinControl;
     out aHeight: Integer;
     out aWidth: Integer);
   procedure GetControlValues;
     {* Сигнатура метода GetControlValues }
   function IsItem(aItem: TObject): Boolean;
   procedure LoadData(const aStorage: IddConfigStorage);
   procedure LoadTree(aStream: TStream);
   procedure ResetToDefault;
     {* Сигнатура метода ResetToDefault }
   procedure SaveData(const aStorage: IddConfigStorage);
   procedure SaveTree(aStream: TStream);
   procedure SetControlValues(aDefault: Boolean);
   function pm_GetChanged: Boolean;
   property Changed: Boolean
     read pm_GetChanged;
 end;//IddConfigNode

 EddConfigError = class(Exception)
 end;//EddConfigError


 TddBaseConfigItem = class;

 TddValueChangedEvent = procedure (aItem: TddBaseConfigItem;
  const aValue: TddConfigValue) of object;

 TddConfigItemLabelType = (
   dd_cilMain
 , dd_cilAdditional
 , dd_cilRequired
 );//TddConfigItemLabelType

 TddBaseConfigItem = class(Tl3_Base)
 private
 // private fields
   f_Locked : Integer;
   f_Slaves : Tl3ObjectList;
   f_NotifyList : Tl3ObjectList;
   f_AbsoluteIndex : Integer;
    {* Поле для свойства AbsoluteIndex}
   f_Alias : AnsiString;
    {* Поле для свойства Alias}
   f_Caption : AnsiString;
    {* Поле для свойства Caption}
   f_Changed : Boolean;
    {* Поле для свойства Changed}
   f_DefaultValue : TddConfigValue;
    {* Поле для свойства DefaultValue}
   f_Enabled : Boolean;
    {* Поле для свойства Enabled}
   f_HelpContext : Integer;
    {* Поле для свойства HelpContext}
   f_MasterItem : TddBaseConfigItem;
    {* Поле для свойства MasterItem}
   f_Required : Boolean;
    {* Поле для свойства Required}
   f_OnChange : TNotifyEvent;
    {* Поле для свойства OnChange}
   f_OnNotify : TddValueChangedEvent;
    {* Поле для свойства OnNotify}
 private
 // private methods
   procedure AddSlave(aSlave: TddBaseConfigItem);
   procedure RemoveSlave(aSlave: TddBaseConfigItem);
 protected
 // property methods
   procedure pm_SetAlias(const aValue: AnsiString); virtual;
   function pm_GetBooleanValue: Boolean; virtual;
   procedure pm_SetBooleanValue(aValue: Boolean); virtual;
   function pm_GetChanged: Boolean; virtual;
   procedure pm_SetChanged(aValue: Boolean); virtual;
   function pm_GetDateTimeValue: TDateTime; virtual;
   procedure pm_SetDateTimeValue(aValue: TDateTime); virtual;
   function pm_GetDefaultBooleanValue: Boolean;
   procedure pm_SetDefaultBooleanValue(aValue: Boolean);
   function pm_GetDefaultDateTimeValue: TDateTime;
   procedure pm_SetDefaultDateTimeValue(aValue: TDateTime);
   function pm_GetDefaultIntegerValue: Integer;
   procedure pm_SetDefaultIntegerValue(aValue: Integer);
   function pm_GetDefaultObjectValue: TObject;
   procedure pm_SetDefaultObjectValue(aValue: TObject);
   function pm_GetDefaultStringValue: AnsiString;
   procedure pm_SetDefaultStringValue(const aValue: AnsiString);
   procedure pm_SetDefaultValue(const aValue: TddConfigValue);
   function pm_GetEnabled: Boolean; virtual;
   procedure pm_SetEnabled(aValue: Boolean); virtual;
   function pm_GetIntegerValue: Integer;
   procedure pm_SetIntegerValue(aValue: Integer);
   function pm_GetIsRequired: Boolean;
   procedure pm_SetMasterItem(aValue: TddBaseConfigItem); virtual;
   function pm_GetObjectValue: TObject;
   procedure pm_SetObjectValue(aValue: TObject);
   function pm_GetRequired: Boolean; virtual;
   procedure pm_SetRequired(aValue: Boolean); virtual;
   function pm_GetStringValue: AnsiString; virtual;
   procedure pm_SetStringValue(const aValue: AnsiString); virtual;
   function pm_GetValue: TddConfigValue; virtual;
   procedure pm_SetValue(const aValue: TddConfigValue); virtual;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   procedure ClearFields; override;
 public
 // overridden public methods
   function Clone(anOwner: TObject = nil): Pointer; override;
     {* функция для получения копии объекта. }
   procedure Assign(Source: TPersistent); override;
 protected
 // protected fields
   f_Value : TddConfigValue;
 protected
 // protected methods
   procedure Changing;
     {* Сигнатура метода Changing }
   procedure DoEnabled; virtual;
     {* Сигнатура метода DoEnabled }
   function MayBeRequired: Boolean; virtual;
   procedure ProcessNotify(const aValue: TddConfigValue);
 public
 // public methods
   procedure Reset; virtual;
     {* Сигнатура метода Reset }
   constructor Create(const aAlias: AnsiString;
     const aCaption: AnsiString;
     const aDefaultValue: TddConfigValue;
     aMasterItem: TddBaseConfigItem = nil); reintroduce; virtual;
   procedure AddNotify(aItem: TddBaseConfigItem);
   procedure AssignValue(const aValue: TddConfigValue;
     aOnChange: Boolean = False); virtual;
     {* функция сравнения объекта с другим объектом.  Для перекрытия в потомках. }
   function HasValue(const anAlias: AnsiString;
     out theItem: TddBaseConfigItem): Boolean; overload;  virtual;
   function HasValue(const anAlias: AnsiString): Boolean; overload;  virtual;
   function IsLocked: Boolean;
   procedure Load(const aStorage: IddConfigStorage);
   procedure LoadValue(const aStorage: IddConfigStorage); virtual;
   procedure Lock;
     {* Сигнатура метода Lock }
   procedure Unlock;
     {* Сигнатура метода Unlock }
   procedure RemoveNotify(aItem: TddBaseConfigItem);
   procedure ResetToDefault;
     {* Сигнатура метода ResetToDefault }
   procedure Save(const aStorage: IddConfigStorage);
   procedure SaveValue(const aStorage: IddConfigStorage); virtual;
 public
 // public properties
   property AbsoluteIndex: Integer
     read f_AbsoluteIndex
     write f_AbsoluteIndex;
   property Alias: AnsiString
     read f_Alias
     write pm_SetAlias;
   property BooleanValue: Boolean
     read pm_GetBooleanValue
     write pm_SetBooleanValue;
   property Caption: AnsiString
     read f_Caption
     write f_Caption;
   property Changed: Boolean
     read pm_GetChanged
     write pm_SetChanged;
   property DateTimeValue: TDateTime
     read pm_GetDateTimeValue
     write pm_SetDateTimeValue;
   property DefaultBooleanValue: Boolean
     read pm_GetDefaultBooleanValue
     write pm_SetDefaultBooleanValue;
   property DefaultDateTimeValue: TDateTime
     read pm_GetDefaultDateTimeValue
     write pm_SetDefaultDateTimeValue;
   property DefaultIntegerValue: Integer
     read pm_GetDefaultIntegerValue
     write pm_SetDefaultIntegerValue;
   property DefaultObjectValue: TObject
     read pm_GetDefaultObjectValue
     write pm_SetDefaultObjectValue;
   property DefaultStringValue: AnsiString
     read pm_GetDefaultStringValue
     write pm_SetDefaultStringValue;
   property DefaultValue: TddConfigValue
     read f_DefaultValue
     write pm_SetDefaultValue;
   property Enabled: Boolean
     read pm_GetEnabled
     write pm_SetEnabled;
   property HelpContext: Integer
     read f_HelpContext
     write f_HelpContext;
   property IntegerValue: Integer
     read pm_GetIntegerValue
     write pm_SetIntegerValue;
   property IsRequired: Boolean
     read pm_GetIsRequired;
   property MasterItem: TddBaseConfigItem
     read f_MasterItem
     write pm_SetMasterItem;
   property ObjectValue: TObject
     read pm_GetObjectValue
     write pm_SetObjectValue;
   property Required: Boolean
     read pm_GetRequired
     write pm_SetRequired;
   property StringValue: AnsiString
     read pm_GetStringValue
     write pm_SetStringValue;
   property Value: TddConfigValue
     read pm_GetValue
     write pm_SetValue;
   property OnChange: TNotifyEvent
     read f_OnChange
     write f_OnChange;
   property OnNotify: TddValueChangedEvent
     read f_OnNotify
     write f_OnNotify;
 end;//TddBaseConfigItem

 TMapValue = class(Tl3Base)
 private
 // private fields
   f_Value : TddConfigValue;
    {* Поле для свойства Value}
   f_Caption : AnsiString;
    {* Поле для свойства Caption}
 protected
 // property methods
   procedure pm_SetValue(const aValue: TddConfigValue);
   procedure pm_SetCaption(const aValue: AnsiString);
 protected
 // overridden protected methods
   procedure ClearFields; override;
 public
 // overridden public methods
   procedure Assign(Source: TPersistent); override;
   constructor Create(anOwner: TObject = nil); override;
     {* конструктор объекта. Возвращает объект, со счетчиком ссылок равным 1. }
 public
 // public properties
   property Value: TddConfigValue
     read f_Value
     write pm_SetValue;
   property Caption: AnsiString
     read f_Caption
     write pm_SetCaption;
 end;//TMapValue

 TddButtonPlace = (
   dd_bpAsDefine
 , dd_bpBottomRight
 );//TddButtonPlace

 TddVisualConfigItem = class(TddBaseConfigItem)
 private
 // private fields
   f_Label : TvtLabel;
   f_RequiredLabel : TvtLabel;
   f_Control : TControl;
    {* Поле для свойства Control}
   f_FirstLabel : TvtLabel;
    {* Поле для свойства FirstLabel}
   f_Hint : AnsiString;
    {* Поле для свойства Hint}
   f_Labeled : Boolean;
    {* Поле для свойства Labeled}
   f_Visible : Boolean;
    {* Поле для свойства Visible}
 protected
 // property methods
   function pm_GetLabeled: Boolean; virtual;
   function pm_GetLabelTop: Boolean; virtual;
   procedure pm_SetLabelTop(aValue: Boolean); virtual;
   function pm_GetFullControlHeight(aParent: TWinControl): Integer; virtual;
 protected
 // overridden property methods
   function pm_GetChanged: Boolean; override;
   procedure pm_SetChanged(aValue: Boolean); override;
   function pm_GetValue: TddConfigValue; override;
   procedure pm_SetValue(const aValue: TddConfigValue); override;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   procedure DoEnabled; override;
     {* Сигнатура метода DoEnabled }
 public
 // overridden public methods
   procedure Assign(Source: TPersistent); override;
   constructor Create(const aAlias: AnsiString;
     const aCaption: AnsiString;
     const aDefaultValue: TddConfigValue;
     aMasterItem: TddBaseConfigItem = nil); override;
 protected
 // protected fields
   f_LabelTop : Boolean;
 protected
 // protected methods
   procedure AdjustLabel(theControl: TControl;
     theLabel: TvtLabel);
   procedure AfterConstruct(var aLeft: Integer;
     var aMaxLeft: Integer;
     var aTop: Integer;
     theControl: TControl;
     theLabel: TvtLabel); virtual;
   procedure BeforeConstruct(var aLeft: Integer;
     var aMaxLeft: Integer;
     var aTop: Integer;
     aParent: TWinControl); virtual;
   procedure ChangeSlaveStatus(aEnabled: Boolean);
   function ConstructControl(var aLeft: Integer;
     var aMaxLeft: Integer;
     var aTop: Integer;
     aParent: TWinControl): TControl; virtual; abstract;
   function CreateLabel(aParent: TWinControl;
     const aCaption: AnsiString;
     var aLeft: Integer;
     var aTop: Integer;
     aLabelType: TddConfigItemLabelType = dd_cilMain): TvtLabel;
   function GetCanvas(aParent: TWinControl): TCanvas;
   function GetForm(aParent: TWinControl): TCustomForm;
   procedure SplitCaption(const aCaption: AnsiString;
     out aPrefix: AnsiString;
     out aSuffix: AnsiString);
 public
 // public methods
   function IsSame(anItem: TObject): Boolean; virtual;
   procedure ClearControl; virtual;
     {* Сигнатура метода ClearControl }
   function ControlHeight(aParent: TWinControl): Integer; virtual; abstract;
   function CreateControl(aLeft: Integer;
     aMaxLeft: Integer;
     aTop: Integer;
     aParent: TWinControl): TControl;
   procedure GetValueFromControl; virtual; abstract;
     {* Сигнатура метода GetValueFromControl }
   function LabelHeight(aParent: TWinControl): Integer;
   function LabelWidth(aParent: TWinControl): Integer; virtual;
   function MinWidth(aParent: TWinControl): Integer; virtual;
   procedure SetValueToControl(aDefault: Boolean); virtual; abstract;
 protected
 // protected properties
   property FirstLabel: TvtLabel
     read f_FirstLabel
     write f_FirstLabel;
 public
 // public properties
   property Control: TControl
     read f_Control
     write f_Control;
   property Hint: AnsiString
     read f_Hint
     write f_Hint;
   property Labeled: Boolean
     read pm_GetLabeled
     write f_Labeled;
   property LabelTop: Boolean
     read pm_GetLabelTop
     write pm_SetLabelTop;
   property Visible: Boolean
     read f_Visible
     write f_Visible;
   property FullControlHeight[aParent: TWinControl]: Integer
     read pm_GetFullControlHeight;
 end;//TddVisualConfigItem

 TMapValues = class(Tl3Base)
 private
 // private fields
   f_List : Tl3ObjectRefList;
   f_MapKind : TddValueKind;
    {* Поле для свойства MapKind}
 private
 // private methods
   procedure CheckValueType(aKind: TddValueKind);
 protected
 // property methods
   function pm_GetCount: Integer; virtual;
   function pm_GetItems(aIndex: Integer): TMapValue;
   procedure pm_SetItems(aIndex: Integer; aValue: TMapValue);
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
 public
 // overridden public methods
   procedure Assign(Source: TPersistent); override;
 public
 // public methods
   function IndexOfCaption(const aCaption: Il3CString): Integer;
   function IndexOfValue(const aValue: TddConfigValue): Integer;
   procedure Clear; virtual;
     {* Сигнатура метода Clear }
   procedure AddMapValue(const aCaption: AnsiString;
     const aValue: TddConfigValue);
   constructor Create(aKind: TddValueKind;
     anOwner: TObject = nil); reintroduce;
 public
 // public properties
   property MapKind: TddValueKind
     read f_MapKind;
   property Count: Integer
     read pm_GetCount;
   property Items[aIndex: Integer]: TMapValue
     read pm_GetItems
     write pm_SetItems;
     default;
 end;//TMapValues

 RddBaseConfigNode = class of TddCustomConfigNode;

 TddCustomConfigNode = class(TddBaseConfigItem, IddConfigNode)
 private
 // private fields
   f_Alias : AnsiString;
    {* Поле для свойства Alias}
   f_Caption : AnsiString;
    {* Поле для свойства Caption}
   f_OnChange : TNotifyEvent;
    {* Поле для свойства OnChange}
   f_HelpContext : Integer;
    {* Поле для свойства HelpContext}
   f_Parent : TddCustomConfigNode;
    {* Поле для свойства Parent}
   f_ParentAlias : AnsiString;
    {* Поле для свойства ParentAlias}
   f_ScrollBars : TScrollStyle;
    {* Поле для свойства ScrollBars}
 protected
 // property methods
   function pm_GetChildrenCount: Integer;
   function pm_GetChildren(anIndex: Integer): TddCustomConfigNode; virtual;
   function pm_GetIsHorizontalScrollBar: Boolean;
   function pm_GetIsVerticalScrollBar: Boolean;
   procedure pm_SetParent(aValue: TddCustomConfigNode);
 protected
 // realized methods
   procedure ClearControls;
     {* Сигнатура метода ClearControls }
   function CreateFrame(aOwner: TComponent;
     aTag: Integer): TCustomFrame;
   procedure FrameSize(aParent: TWinControl;
     out aHeight: Integer;
     out aWidth: Integer);
   procedure GetControlValues;
     {* Сигнатура метода GetControlValues }
   function IsItem(aItem: TObject): Boolean;
   procedure LoadData(const aStorage: IddConfigStorage);
   procedure LoadTree(aStream: TStream);
   procedure ResetToDefault;
     {* Сигнатура метода ResetToDefault }
   procedure SaveData(const aStorage: IddConfigStorage);
   procedure SaveTree(aStream: TStream);
   procedure SetControlValues(aDefault: Boolean);
 protected
 // overridden property methods
   function pm_GetChanged: Boolean; override;
   procedure pm_SetChanged(aValue: Boolean); override;
   function pm_GetValue: TddConfigValue; override;
   procedure pm_SetValue(const aValue: TddConfigValue); override;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
 public
 // overridden public methods
   function Clone(anOwner: TObject = nil): Pointer; override;
     {* функция для получения копии объекта. }
   procedure Assign(Source: TPersistent); override;
 protected
 // protected fields
   f_Children : Tl3ObjectRefList;
 protected
 // protected methods
   procedure ItemChanged(Sender: TObject);
   procedure DoClearControls; virtual; abstract;
   function DoCreateFrame(aOwner: TComponent;
     aTag: Integer): TCustomFrame; virtual; abstract;
   procedure DoFrameSize(aParent: TWinControl;
     out aHeight: Integer;
     out aWidth: Integer); virtual;
   procedure DoGetControlValues; virtual; abstract;
   function DoIsItem(aItem: TObject): Boolean; virtual; abstract;
   procedure DoLoad(const aStorage: IddConfigStorage); virtual; abstract;
   procedure DoLoadTree(aStream: TStream); virtual;
   procedure DoResetToDefault; virtual;
   procedure DoSave(const aStorage: IddConfigStorage); virtual; abstract;
   procedure DoSaveTree(aStream: TStream); virtual;
   procedure DoSetControlValues(aDefault: Boolean); virtual; abstract;
 public
 // public methods
   constructor Create(const aAlias: AnsiString;
     const aCaption: AnsiString); reintroduce;
   function AddNode(const aAlias: AnsiString): TddCustomConfigNode; overload; 
   function AddNode(const aAlias: AnsiString;
     const aCaption: AnsiString): TddCustomConfigNode; overload; 
   function AddNode(aNode: TddCustomConfigNode): TddCustomConfigNode; overload; 
   function IsRequired(out aMessage: AnsiString): Boolean; virtual;
   procedure PostEdit; virtual;
     {* Сигнатура метода PostEdit }
 public
 // public properties
   property Alias: AnsiString
     read f_Alias
     write f_Alias;
   property Caption: AnsiString
     read f_Caption
     write f_Caption;
   property ChildrenCount: Integer
     read pm_GetChildrenCount;
   property Children[anIndex: Integer]: TddCustomConfigNode
     read pm_GetChildren;
   property IsHorizontalScrollBar: Boolean
     read pm_GetIsHorizontalScrollBar;
   property IsVerticalScrollBar: Boolean
     read pm_GetIsVerticalScrollBar;
   property OnChange: TNotifyEvent
     read f_OnChange
     write f_OnChange;
   property HelpContext: Integer
     read f_HelpContext
     write f_HelpContext;
   property Parent: TddCustomConfigNode
     read f_Parent
     write pm_SetParent;
   property ParentAlias: AnsiString
     read f_ParentAlias;
   property ScrollBars: TScrollStyle
     read f_ScrollBars
     write f_ScrollBars;
 end;//TddCustomConfigNode

 EddInvalidValue = class(EddConfigError)
 private
 // private fields
   f_Item : TddVisualConfigItem;
    {* Поле для свойства Item}
 public
 // public methods
   constructor CreateFmt(const aMsg: AnsiString;
     const Args: array of const;
     aItem: TddVisualConfigItem);
 public
 // public properties
   property Item: TddVisualConfigItem
     read f_Item;
 end;//EddInvalidValue

 TddConfigChangedEvent = procedure (Sender: TddCustomConfigNode) of object;

 RddBaseConfigItem = class of TddBaseConfigItem;

 TddIntegerConfigItem = class(TddVisualConfigItem)
 private
 // private fields
   f_UpDown : TUpDown;
   f_MaxValue : Integer;
    {* Поле для свойства MaxValue}
   f_MinValue : Integer;
    {* Поле для свойства MinValue}
 protected
 // property methods
   procedure pm_SetMaxValue(aValue: Integer);
   procedure pm_SetMinValue(aValue: Integer); 
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
 protected
 // overridden property methods
   function pm_GetLabelTop: Boolean; override;
   procedure pm_SetLabelTop(aValue: Boolean); override;
 public
 // overridden public methods
   procedure Assign(Source: TPersistent); override;
   constructor Create(const aAlias: AnsiString;
     const aCaption: AnsiString;
     const aDefaultValue: TddConfigValue;
     aMasterItem: TddBaseConfigItem = nil); overload; override; 
   procedure LoadValue(const aStorage: IddConfigStorage); override;
   procedure SaveValue(const aStorage: IddConfigStorage); override;
   procedure ClearControl; override;
     {* Сигнатура метода ClearControl }
   function MinWidth(aParent: TWinControl): Integer; override;
 protected
 // protected methods
   procedure Validate;
     {* Сигнатура метода Validate }
   procedure DoOnChange(Sender: TObject); virtual;
     {* TNotifyEvent is used for events that do not require parameters. }
 public
 // public methods
   constructor Create(const aAlias: AnsiString;
     const aCaption: AnsiString;
     aDefaultValue: Integer;
     aMasterItem: TddBaseConfigItem = nil); overload;
 public
 // public properties
   property MaxValue: Integer
     read f_MaxValue
     write pm_SetMaxValue;
   property MinValue: Integer
     read f_MinValue
     write pm_SetMinValue;
 end;//TddIntegerConfigItem
function RequiredSignWidth(aParent: TWinControl): Integer;

implementation

uses
  l3String,
  vtSpinEdit,
  ddAppConfigTypesRes,
  DateUtils,
  StrUtils,
  Math,
  ddStreamUtils,
  ddAppConfigTypes
  ;

// start class TddBaseConfigItem

procedure TddBaseConfigItem.AddSlave(aSlave: TddBaseConfigItem);
//#UC START# *52171C590103_4E302F4201D5_var*
//#UC END# *52171C590103_4E302F4201D5_var*
begin
//#UC START# *52171C590103_4E302F4201D5_impl*
 f_Slaves.Add(aSlave);
//#UC END# *52171C590103_4E302F4201D5_impl*
end;//TddBaseConfigItem.AddSlave

procedure TddBaseConfigItem.RemoveSlave(aSlave: TddBaseConfigItem);
//#UC START# *52171C8500C0_4E302F4201D5_var*
//#UC END# *52171C8500C0_4E302F4201D5_var*
begin
//#UC START# *52171C8500C0_4E302F4201D5_impl*
 f_Slaves.Remove(aSlave);
//#UC END# *52171C8500C0_4E302F4201D5_impl*
end;//TddBaseConfigItem.RemoveSlave

procedure TddBaseConfigItem.Changing;
//#UC START# *52171CBA0170_4E302F4201D5_var*
var
 i: Integer;
//#UC END# *52171CBA0170_4E302F4201D5_var*
begin
//#UC START# *52171CBA0170_4E302F4201D5_impl*
 Changed:= True;
 if not IsLocked then
  for i:= 0 to f_NotifyList.Hi do
   TddBaseConfigItem(f_NotifyList.Items[i]).ProcessNotify(Self.Value);
//#UC END# *52171CBA0170_4E302F4201D5_impl*
end;//TddBaseConfigItem.Changing

procedure TddBaseConfigItem.DoEnabled;
//#UC START# *52171D0D031D_4E302F4201D5_var*
//#UC END# *52171D0D031D_4E302F4201D5_var*
begin
//#UC START# *52171D0D031D_4E302F4201D5_impl*
 //virtual
//#UC END# *52171D0D031D_4E302F4201D5_impl*
end;//TddBaseConfigItem.DoEnabled

function TddBaseConfigItem.MayBeRequired: Boolean;
//#UC START# *521725C301A5_4E302F4201D5_var*
//#UC END# *521725C301A5_4E302F4201D5_var*
begin
//#UC START# *521725C301A5_4E302F4201D5_impl*
 Result := True;
//#UC END# *521725C301A5_4E302F4201D5_impl*
end;//TddBaseConfigItem.MayBeRequired

procedure TddBaseConfigItem.ProcessNotify(const aValue: TddConfigValue);
//#UC START# *521725E40234_4E302F4201D5_var*
//#UC END# *521725E40234_4E302F4201D5_var*
begin
//#UC START# *521725E40234_4E302F4201D5_impl*
 if Assigned(f_OnNotify) then
  f_OnNotify(Self, aValue);
//#UC END# *521725E40234_4E302F4201D5_impl*
end;//TddBaseConfigItem.ProcessNotify

procedure TddBaseConfigItem.Reset;
//#UC START# *521726060214_4E302F4201D5_var*
//#UC END# *521726060214_4E302F4201D5_var*
begin
//#UC START# *521726060214_4E302F4201D5_impl*
 Value:= DefaultValue;
//#UC END# *521726060214_4E302F4201D5_impl*
end;//TddBaseConfigItem.Reset

constructor TddBaseConfigItem.Create(const aAlias: AnsiString;
  const aCaption: AnsiString;
  const aDefaultValue: TddConfigValue;
  aMasterItem: TddBaseConfigItem = nil);
//#UC START# *5217273F000F_4E302F4201D5_var*
//#UC END# *5217273F000F_4E302F4201D5_var*
begin
//#UC START# *5217273F000F_4E302F4201D5_impl*
 inherited Create(nil);
 f_Slaves:= Tl3ObjectList.Make;
 f_NotifyList:= Tl3ObjectList.Make;
 f_Alias:= aAlias;
 f_Caption:= aCaption;
 f_Enabled:= True;
 f_AbsoluteIndex:= -1;
 DefaultValue:= aDefaultValue;
//#UC END# *5217273F000F_4E302F4201D5_impl*
end;//TddBaseConfigItem.Create

procedure TddBaseConfigItem.AddNotify(aItem: TddBaseConfigItem);
//#UC START# *521727EA03C9_4E302F4201D5_var*
//#UC END# *521727EA03C9_4E302F4201D5_var*
begin
//#UC START# *521727EA03C9_4E302F4201D5_impl*
 f_NotifyList.Add(aItem)
//#UC END# *521727EA03C9_4E302F4201D5_impl*
end;//TddBaseConfigItem.AddNotify

procedure TddBaseConfigItem.AssignValue(const aValue: TddConfigValue;
  aOnChange: Boolean = False);
//#UC START# *5217286C0304_4E302F4201D5_var*
//#UC END# *5217286C0304_4E302F4201D5_var*
begin
//#UC START# *5217286C0304_4E302F4201D5_impl*
 if aOnChange then
 case aValue.Kind of
  dd_vkBoolean: BooleanValue := aValue.AsBoolean;
  dd_vkDateTime: DateTimeValue := aValue.AsDateTime;
  dd_vkInteger: IntegerValue := aValue.AsInteger;
  dd_vkObject: ObjectValue := aValue.AsObject;
  dd_vkString: StringValue := aValue.AsString;
 end
 else
  f_Value := aValue;
//#UC END# *5217286C0304_4E302F4201D5_impl*
end;//TddBaseConfigItem.AssignValue

function TddBaseConfigItem.HasValue(const anAlias: AnsiString;
  out theItem: TddBaseConfigItem): Boolean;
//#UC START# *52172A7700CB_4E302F4201D5_var*
//#UC END# *52172A7700CB_4E302F4201D5_var*
begin
//#UC START# *52172A7700CB_4E302F4201D5_impl*
 Result:= AnsiCompareText(anAlias, Alias) = 0;
 if Result then
  theItem:= Self
 else
  theItem:= nil;
//#UC END# *52172A7700CB_4E302F4201D5_impl*
end;//TddBaseConfigItem.HasValue

function TddBaseConfigItem.HasValue(const anAlias: AnsiString): Boolean;
//#UC START# *52172AE002EA_4E302F4201D5_var*
var
 l_Obj: TddBaseConfigItem;
//#UC END# *52172AE002EA_4E302F4201D5_var*
begin
//#UC START# *52172AE002EA_4E302F4201D5_impl*
 Result:= HasValue(anAlias, l_Obj);
//#UC END# *52172AE002EA_4E302F4201D5_impl*
end;//TddBaseConfigItem.HasValue

function TddBaseConfigItem.IsLocked: Boolean;
//#UC START# *52172B0A003B_4E302F4201D5_var*
//#UC END# *52172B0A003B_4E302F4201D5_var*
begin
//#UC START# *52172B0A003B_4E302F4201D5_impl*
 Result := f_Locked > 0;
//#UC END# *52172B0A003B_4E302F4201D5_impl*
end;//TddBaseConfigItem.IsLocked

procedure TddBaseConfigItem.Load(const aStorage: IddConfigStorage);
//#UC START# *52172B340290_4E302F4201D5_var*
//#UC END# *52172B340290_4E302F4201D5_var*
begin
//#UC START# *52172B340290_4E302F4201D5_impl*
 Lock;
 try
  LoadValue(aStorage);
 except
  on E: Exception do
   l3System.Msg2Log('Ошибка "%s" загрузки значения элемента "%s"', [E.Message, Alias]);
 end;
 Unlock;
 Changed := False;
//#UC END# *52172B340290_4E302F4201D5_impl*
end;//TddBaseConfigItem.Load

procedure TddBaseConfigItem.LoadValue(const aStorage: IddConfigStorage);
//#UC START# *52172B72014C_4E302F4201D5_var*
//#UC END# *52172B72014C_4E302F4201D5_var*
begin
//#UC START# *52172B72014C_4E302F4201D5_impl*
 case f_Value.Kind of
  dd_vkBoolean: f_Value.AsBoolean := aStorage.ReadBool(f_Alias, f_DefaultValue.AsBoolean);
  dd_vkDateTime: f_Value.AsDateTime := aStorage.ReadDateTime(f_Alias, f_DefaultValue.AsDateTime);
  dd_vkInteger: f_Value.AsInteger := aStorage.ReadInteger(f_Alias, f_DefaultValue.AsInteger);
  dd_vkString: f_Value.AsString := l3Str(aStorage.ReadString(f_Alias, f_DefaultValue.AsString));
 end;
//#UC END# *52172B72014C_4E302F4201D5_impl*
end;//TddBaseConfigItem.LoadValue

procedure TddBaseConfigItem.Lock;
//#UC START# *52172BB502E3_4E302F4201D5_var*
//#UC END# *52172BB502E3_4E302F4201D5_var*
begin
//#UC START# *52172BB502E3_4E302F4201D5_impl*
 Inc(f_Locked);
//#UC END# *52172BB502E3_4E302F4201D5_impl*
end;//TddBaseConfigItem.Lock

procedure TddBaseConfigItem.Unlock;
//#UC START# *52172BC5003D_4E302F4201D5_var*
//#UC END# *52172BC5003D_4E302F4201D5_var*
begin
//#UC START# *52172BC5003D_4E302F4201D5_impl*
 Assert(f_Locked > 0);
 Dec(f_Locked);
//#UC END# *52172BC5003D_4E302F4201D5_impl*
end;//TddBaseConfigItem.Unlock

procedure TddBaseConfigItem.RemoveNotify(aItem: TddBaseConfigItem);
//#UC START# *52172C2E00D0_4E302F4201D5_var*
//#UC END# *52172C2E00D0_4E302F4201D5_var*
begin
//#UC START# *52172C2E00D0_4E302F4201D5_impl*
 f_NotifyList.Remove(aItem);
//#UC END# *52172C2E00D0_4E302F4201D5_impl*
end;//TddBaseConfigItem.RemoveNotify

procedure TddBaseConfigItem.ResetToDefault;
//#UC START# *52172C50023A_4E302F4201D5_var*
//#UC END# *52172C50023A_4E302F4201D5_var*
begin
//#UC START# *52172C50023A_4E302F4201D5_impl*
 { TODO -oДмитрий Дудко -cРазвитие : Сброс всех значений в значение по умолчанию }
//#UC END# *52172C50023A_4E302F4201D5_impl*
end;//TddBaseConfigItem.ResetToDefault

procedure TddBaseConfigItem.Save(const aStorage: IddConfigStorage);
//#UC START# *52172C68039D_4E302F4201D5_var*
//#UC END# *52172C68039D_4E302F4201D5_var*
begin
//#UC START# *52172C68039D_4E302F4201D5_impl*
 if Changed then
  SaveValue(aStorage);
//#UC END# *52172C68039D_4E302F4201D5_impl*
end;//TddBaseConfigItem.Save

procedure TddBaseConfigItem.SaveValue(const aStorage: IddConfigStorage);
//#UC START# *52172CA801E3_4E302F4201D5_var*
//#UC END# *52172CA801E3_4E302F4201D5_var*
begin
//#UC START# *52172CA801E3_4E302F4201D5_impl*
 if f_Changed then
  case f_Value.Kind of
   dd_vkBoolean: aStorage.WriteBool(f_Alias, f_Value.AsBoolean);
   dd_vkDateTime: aStorage.WriteDateTime(f_Alias, f_Value.AsDateTime);
   dd_vkInteger: aStorage.WriteInteger(f_Alias, f_Value.AsInteger);
   dd_vkString: aStorage.WriteString(f_Alias, f_Value.AsString);
  end;
//#UC END# *52172CA801E3_4E302F4201D5_impl*
end;//TddBaseConfigItem.SaveValue

procedure TddBaseConfigItem.pm_SetAlias(const aValue: AnsiString);
//#UC START# *52171FCA00C1_4E302F4201D5set_var*
//#UC END# *52171FCA00C1_4E302F4201D5set_var*
begin
//#UC START# *52171FCA00C1_4E302F4201D5set_impl*
 f_Alias := aValue;
//#UC END# *52171FCA00C1_4E302F4201D5set_impl*
end;//TddBaseConfigItem.pm_SetAlias

function TddBaseConfigItem.pm_GetBooleanValue: Boolean;
//#UC START# *52171FDF0382_4E302F4201D5get_var*
//#UC END# *52171FDF0382_4E302F4201D5get_var*
begin
//#UC START# *52171FDF0382_4E302F4201D5get_impl*
 Result:= Value.AsBoolean;
//#UC END# *52171FDF0382_4E302F4201D5get_impl*
end;//TddBaseConfigItem.pm_GetBooleanValue

procedure TddBaseConfigItem.pm_SetBooleanValue(aValue: Boolean);
//#UC START# *52171FDF0382_4E302F4201D5set_var*
//#UC END# *52171FDF0382_4E302F4201D5set_var*
begin
//#UC START# *52171FDF0382_4E302F4201D5set_impl*
 if f_Value.AsBoolean <> aValue then
 begin
  f_Value.AsBoolean:= aValue;
  Changing;
 end;
//#UC END# *52171FDF0382_4E302F4201D5set_impl*
end;//TddBaseConfigItem.pm_SetBooleanValue

function TddBaseConfigItem.pm_GetChanged: Boolean;
//#UC START# *5217205002F2_4E302F4201D5get_var*
//#UC END# *5217205002F2_4E302F4201D5get_var*
begin
//#UC START# *5217205002F2_4E302F4201D5get_impl*
 Result := f_Changed;
//#UC END# *5217205002F2_4E302F4201D5get_impl*
end;//TddBaseConfigItem.pm_GetChanged

procedure TddBaseConfigItem.pm_SetChanged(aValue: Boolean);
//#UC START# *5217205002F2_4E302F4201D5set_var*
//#UC END# *5217205002F2_4E302F4201D5set_var*
begin
//#UC START# *5217205002F2_4E302F4201D5set_impl*
 f_Changed := aValue;
//#UC END# *5217205002F2_4E302F4201D5set_impl*
end;//TddBaseConfigItem.pm_SetChanged

function TddBaseConfigItem.pm_GetDateTimeValue: TDateTime;
//#UC START# *5217207F003D_4E302F4201D5get_var*
//#UC END# *5217207F003D_4E302F4201D5get_var*
begin
//#UC START# *5217207F003D_4E302F4201D5get_impl*
 if Value.AsDateTime = ddEmptyDateValue.AsDateTime then
  Result:= Now
 else
  Result:= Value.AsDateTime;
//#UC END# *5217207F003D_4E302F4201D5get_impl*
end;//TddBaseConfigItem.pm_GetDateTimeValue

procedure TddBaseConfigItem.pm_SetDateTimeValue(aValue: TDateTime);
//#UC START# *5217207F003D_4E302F4201D5set_var*
//#UC END# *5217207F003D_4E302F4201D5set_var*
begin
//#UC START# *5217207F003D_4E302F4201D5set_impl*
 if not SameDateTime(Value.AsDateTime, aValue) then
 begin
  f_Value.AsDateTime:= aValue;
  Changing;
 end;
//#UC END# *5217207F003D_4E302F4201D5set_impl*
end;//TddBaseConfigItem.pm_SetDateTimeValue

function TddBaseConfigItem.pm_GetDefaultBooleanValue: Boolean;
//#UC START# *521720A10002_4E302F4201D5get_var*
//#UC END# *521720A10002_4E302F4201D5get_var*
begin
//#UC START# *521720A10002_4E302F4201D5get_impl*
 Result := f_DefaultValue.AsBoolean;
//#UC END# *521720A10002_4E302F4201D5get_impl*
end;//TddBaseConfigItem.pm_GetDefaultBooleanValue

procedure TddBaseConfigItem.pm_SetDefaultBooleanValue(aValue: Boolean);
//#UC START# *521720A10002_4E302F4201D5set_var*
//#UC END# *521720A10002_4E302F4201D5set_var*
begin
//#UC START# *521720A10002_4E302F4201D5set_impl*
 with f_DefaultValue do
 begin
  Kind := dd_vkBoolean;
  AsBoolean := aValue;
 end;
//#UC END# *521720A10002_4E302F4201D5set_impl*
end;//TddBaseConfigItem.pm_SetDefaultBooleanValue

function TddBaseConfigItem.pm_GetDefaultDateTimeValue: TDateTime;
//#UC START# *52172110032B_4E302F4201D5get_var*
//#UC END# *52172110032B_4E302F4201D5get_var*
begin
//#UC START# *52172110032B_4E302F4201D5get_impl*
 Result := f_DefaultValue.AsDateTime;
//#UC END# *52172110032B_4E302F4201D5get_impl*
end;//TddBaseConfigItem.pm_GetDefaultDateTimeValue

procedure TddBaseConfigItem.pm_SetDefaultDateTimeValue(aValue: TDateTime);
//#UC START# *52172110032B_4E302F4201D5set_var*
//#UC END# *52172110032B_4E302F4201D5set_var*
begin
//#UC START# *52172110032B_4E302F4201D5set_impl*
  with f_DefaultValue do
  begin
   Kind := dd_vkDateTime;
   AsDateTime := aValue;
  end;
//#UC END# *52172110032B_4E302F4201D5set_impl*
end;//TddBaseConfigItem.pm_SetDefaultDateTimeValue

function TddBaseConfigItem.pm_GetDefaultIntegerValue: Integer;
//#UC START# *521721320074_4E302F4201D5get_var*
//#UC END# *521721320074_4E302F4201D5get_var*
begin
//#UC START# *521721320074_4E302F4201D5get_impl*
 Result := f_DefaultValue.AsInteger;
//#UC END# *521721320074_4E302F4201D5get_impl*
end;//TddBaseConfigItem.pm_GetDefaultIntegerValue

procedure TddBaseConfigItem.pm_SetDefaultIntegerValue(aValue: Integer);
//#UC START# *521721320074_4E302F4201D5set_var*
//#UC END# *521721320074_4E302F4201D5set_var*
begin
//#UC START# *521721320074_4E302F4201D5set_impl*
 with f_DefaultValue do
 begin
  AsInteger := aValue;
  Kind := dd_vkInteger;
 end;
//#UC END# *521721320074_4E302F4201D5set_impl*
end;//TddBaseConfigItem.pm_SetDefaultIntegerValue

function TddBaseConfigItem.pm_GetDefaultObjectValue: TObject;
//#UC START# *5217217B014F_4E302F4201D5get_var*
//#UC END# *5217217B014F_4E302F4201D5get_var*
begin
//#UC START# *5217217B014F_4E302F4201D5get_impl*
 Result := f_DefaultValue.AsObject;                             
//#UC END# *5217217B014F_4E302F4201D5get_impl*
end;//TddBaseConfigItem.pm_GetDefaultObjectValue

procedure TddBaseConfigItem.pm_SetDefaultObjectValue(aValue: TObject);
//#UC START# *5217217B014F_4E302F4201D5set_var*
//#UC END# *5217217B014F_4E302F4201D5set_var*
begin
//#UC START# *5217217B014F_4E302F4201D5set_impl*
 with f_DefaultValue do
 begin
  Kind := dd_vkObject;
  AsObject := aValue;
 end;
//#UC END# *5217217B014F_4E302F4201D5set_impl*
end;//TddBaseConfigItem.pm_SetDefaultObjectValue

function TddBaseConfigItem.pm_GetDefaultStringValue: AnsiString;
//#UC START# *521721A6018E_4E302F4201D5get_var*
//#UC END# *521721A6018E_4E302F4201D5get_var*
begin
//#UC START# *521721A6018E_4E302F4201D5get_impl*
 Result := f_DefaultValue.AsString;
//#UC END# *521721A6018E_4E302F4201D5get_impl*
end;//TddBaseConfigItem.pm_GetDefaultStringValue

procedure TddBaseConfigItem.pm_SetDefaultStringValue(const aValue: AnsiString);
//#UC START# *521721A6018E_4E302F4201D5set_var*
//#UC END# *521721A6018E_4E302F4201D5set_var*
begin
//#UC START# *521721A6018E_4E302F4201D5set_impl*
 with f_DefaultValue do
 begin
  Kind := dd_vkString;
  AsString := aValue;
 end;
//#UC END# *521721A6018E_4E302F4201D5set_impl*
end;//TddBaseConfigItem.pm_SetDefaultStringValue

procedure TddBaseConfigItem.pm_SetDefaultValue(const aValue: TddConfigValue);
//#UC START# *5217221402A6_4E302F4201D5set_var*
//#UC END# *5217221402A6_4E302F4201D5set_var*
begin
//#UC START# *5217221402A6_4E302F4201D5set_impl*
 l3Move(aValue, f_DefaultValue, SizeOf(aValue));
 l3Move(aValue, f_Value, SizeOf(aValue));
//#UC END# *5217221402A6_4E302F4201D5set_impl*
end;//TddBaseConfigItem.pm_SetDefaultValue

function TddBaseConfigItem.pm_GetEnabled: Boolean;
//#UC START# *521722C103B5_4E302F4201D5get_var*
var
 l_MasterItem: IddMasterItem;
//#UC END# *521722C103B5_4E302F4201D5get_var*
begin
//#UC START# *521722C103B5_4E302F4201D5get_impl*
 Result:= f_Enabled;
 if MasterItem <> nil then
  if Supports(MasterItem, IddMasterItem, l_MasterItem) then
   Result := Result and MasterItem.Enabled and l_MasterItem.BooleanValue
  else
   Result := Result and MasterItem.Enabled and MasterItem.BooleanValue
//#UC END# *521722C103B5_4E302F4201D5get_impl*
end;//TddBaseConfigItem.pm_GetEnabled

procedure TddBaseConfigItem.pm_SetEnabled(aValue: Boolean);
//#UC START# *521722C103B5_4E302F4201D5set_var*
//#UC END# *521722C103B5_4E302F4201D5set_var*
begin
//#UC START# *521722C103B5_4E302F4201D5set_impl*
 f_Enabled:= aValue;
 DoEnabled;
//#UC END# *521722C103B5_4E302F4201D5set_impl*
end;//TddBaseConfigItem.pm_SetEnabled

function TddBaseConfigItem.pm_GetIntegerValue: Integer;
//#UC START# *521723D100AE_4E302F4201D5get_var*
//#UC END# *521723D100AE_4E302F4201D5get_var*
begin
//#UC START# *521723D100AE_4E302F4201D5get_impl*
 Result:= Value.AsInteger;
//#UC END# *521723D100AE_4E302F4201D5get_impl*
end;//TddBaseConfigItem.pm_GetIntegerValue

procedure TddBaseConfigItem.pm_SetIntegerValue(aValue: Integer);
//#UC START# *521723D100AE_4E302F4201D5set_var*
//#UC END# *521723D100AE_4E302F4201D5set_var*
begin
//#UC START# *521723D100AE_4E302F4201D5set_impl*
 if Value.AsInteger <> aValue then
 begin
  f_Value.AsInteger:= aValue;
  Changing;
 end;
//#UC END# *521723D100AE_4E302F4201D5set_impl*
end;//TddBaseConfigItem.pm_SetIntegerValue

function TddBaseConfigItem.pm_GetIsRequired: Boolean;
//#UC START# *521723F70062_4E302F4201D5get_var*
//#UC END# *521723F70062_4E302F4201D5get_var*
begin
//#UC START# *521723F70062_4E302F4201D5get_impl*
 Result := Required and IsValueEmpty(f_Value) and Enabled;
//#UC END# *521723F70062_4E302F4201D5get_impl*
end;//TddBaseConfigItem.pm_GetIsRequired

procedure TddBaseConfigItem.pm_SetMasterItem(aValue: TddBaseConfigItem);
//#UC START# *521724460319_4E302F4201D5set_var*
var
 l_MasterItem: IddMasterItem;
//#UC END# *521724460319_4E302F4201D5set_var*
begin
//#UC START# *521724460319_4E302F4201D5set_impl*
 if f_MasterItem <> aValue then
 begin
  if f_MasterItem <> nil then
   f_MasterItem.RemoveSlave(Self);
  f_MasterItem := aValue;
  f_MasterItem.AddSlave(Self);
  if f_MasterItem <> nil then
   if Supports(f_MasterItem, IddMasterItem, l_MasterItem) then
    Enabled := l_MasterItem.BooleanValue
   else
    Enabled:= f_MasterItem.Value.AsBoolean;
 end;
//#UC END# *521724460319_4E302F4201D5set_impl*
end;//TddBaseConfigItem.pm_SetMasterItem

function TddBaseConfigItem.pm_GetObjectValue: TObject;
//#UC START# *5217247901BD_4E302F4201D5get_var*
//#UC END# *5217247901BD_4E302F4201D5get_var*
begin
//#UC START# *5217247901BD_4E302F4201D5get_impl*
 Result:= Value.AsObject;
//#UC END# *5217247901BD_4E302F4201D5get_impl*
end;//TddBaseConfigItem.pm_GetObjectValue

procedure TddBaseConfigItem.pm_SetObjectValue(aValue: TObject);
//#UC START# *5217247901BD_4E302F4201D5set_var*
//#UC END# *5217247901BD_4E302F4201D5set_var*
begin
//#UC START# *5217247901BD_4E302F4201D5set_impl*
 if f_Value.AsObject <> aValue then
 begin
  f_Value.AsObject:= aValue;
  Changing;
 end;
//#UC END# *5217247901BD_4E302F4201D5set_impl*
end;//TddBaseConfigItem.pm_SetObjectValue

function TddBaseConfigItem.pm_GetRequired: Boolean;
//#UC START# *521724C0003E_4E302F4201D5get_var*
//#UC END# *521724C0003E_4E302F4201D5get_var*
begin
//#UC START# *521724C0003E_4E302F4201D5get_impl*
 Result := f_Required;
//#UC END# *521724C0003E_4E302F4201D5get_impl*
end;//TddBaseConfigItem.pm_GetRequired

procedure TddBaseConfigItem.pm_SetRequired(aValue: Boolean);
//#UC START# *521724C0003E_4E302F4201D5set_var*
//#UC END# *521724C0003E_4E302F4201D5set_var*
begin
//#UC START# *521724C0003E_4E302F4201D5set_impl*
 f_Required := aValue;
//#UC END# *521724C0003E_4E302F4201D5set_impl*
end;//TddBaseConfigItem.pm_SetRequired

function TddBaseConfigItem.pm_GetStringValue: AnsiString;
//#UC START# *521724F702D9_4E302F4201D5get_var*
//#UC END# *521724F702D9_4E302F4201D5get_var*
begin
//#UC START# *521724F702D9_4E302F4201D5get_impl*
 Result:= Value.AsString;
//#UC END# *521724F702D9_4E302F4201D5get_impl*
end;//TddBaseConfigItem.pm_GetStringValue

procedure TddBaseConfigItem.pm_SetStringValue(const aValue: AnsiString);
//#UC START# *521724F702D9_4E302F4201D5set_var*
//#UC END# *521724F702D9_4E302F4201D5set_var*
begin
//#UC START# *521724F702D9_4E302F4201D5set_impl*
 if Value.AsString <> aValue then
 begin
  f_Value.AsString:= aValue;
  Changing;
 end;
//#UC END# *521724F702D9_4E302F4201D5set_impl*
end;//TddBaseConfigItem.pm_SetStringValue

function TddBaseConfigItem.pm_GetValue: TddConfigValue;
//#UC START# *521725130281_4E302F4201D5get_var*
//#UC END# *521725130281_4E302F4201D5get_var*
begin
//#UC START# *521725130281_4E302F4201D5get_impl*
 Result := f_Value;
//#UC END# *521725130281_4E302F4201D5get_impl*
end;//TddBaseConfigItem.pm_GetValue

procedure TddBaseConfigItem.pm_SetValue(const aValue: TddConfigValue);
//#UC START# *521725130281_4E302F4201D5set_var*
var
 i: Integer;
//#UC END# *521725130281_4E302F4201D5set_var*
begin
//#UC START# *521725130281_4E302F4201D5set_impl*
 l3Move(aValue, f_Value, SizeOf(aValue));
 Changing;
//#UC END# *521725130281_4E302F4201D5set_impl*
end;//TddBaseConfigItem.pm_SetValue

function TddBaseConfigItem.Clone(anOwner: TObject = nil): Pointer;
//#UC START# *478CEE4C0225_4E302F4201D5_var*
//#UC END# *478CEE4C0225_4E302F4201D5_var*
begin
//#UC START# *478CEE4C0225_4E302F4201D5_impl*
 Result := RddBaseConfigItem(ClassType).Create(Alias, Caption, DefaultValue, MasterItem);
 TddBaseConfigItem(Result).Assign(Self);
//#UC END# *478CEE4C0225_4E302F4201D5_impl*
end;//TddBaseConfigItem.Clone

procedure TddBaseConfigItem.Assign(Source: TPersistent);
//#UC START# *478CF34E02CE_4E302F4201D5_var*
//#UC END# *478CF34E02CE_4E302F4201D5_var*
begin
//#UC START# *478CF34E02CE_4E302F4201D5_impl*
 if Source is TddBaseConfigItem then
 begin
  AbsoluteIndex := TddBaseConfigItem(Source).AbsoluteIndex;
  DefaultValue  := TddBaseConfigItem(Source).DefaultValue;
  Alias        := TddBaseConfigItem(Source).Alias;
  Caption      := TddBaseConfigItem(Source).Caption;
  Changed      := TddBaseConfigItem(Source).Changed;
  Enabled      := TddBaseConfigItem(Source).Enabled;
  Value        := TddBaseConfigItem(Source).Value;
  f_NotifyList.Assign(TddBaseConfigItem(Source).f_NotifyList);
  OnNotify     := TddBaseConfigItem(Source).f_OnNotify;
 end
 else
  inherited;
//#UC END# *478CF34E02CE_4E302F4201D5_impl*
end;//TddBaseConfigItem.Assign

procedure TddBaseConfigItem.Cleanup;
//#UC START# *479731C50290_4E302F4201D5_var*
//#UC END# *479731C50290_4E302F4201D5_var*
begin
//#UC START# *479731C50290_4E302F4201D5_impl*
 FreeAndNil(f_Slaves);
 FreeAndNil(f_NotifyList);
 inherited;
//#UC END# *479731C50290_4E302F4201D5_impl*
end;//TddBaseConfigItem.Cleanup

procedure TddBaseConfigItem.ClearFields;
 {-}
begin
 Finalize(f_DefaultValue);
 inherited;
end;//TddBaseConfigItem.ClearFields
// start class TMapValue

procedure TMapValue.pm_SetValue(const aValue: TddConfigValue);
//#UC START# *521625BD02ED_521624EA0293set_var*
//#UC END# *521625BD02ED_521624EA0293set_var*
begin
//#UC START# *521625BD02ED_521624EA0293set_impl*
 f_Value := aValue;
//#UC END# *521625BD02ED_521624EA0293set_impl*
end;//TMapValue.pm_SetValue

procedure TMapValue.pm_SetCaption(const aValue: AnsiString);
//#UC START# *521625E801C5_521624EA0293set_var*
//#UC END# *521625E801C5_521624EA0293set_var*
begin
//#UC START# *521625E801C5_521624EA0293set_impl*
 f_Caption := aValue;
//#UC END# *521625E801C5_521624EA0293set_impl*
end;//TMapValue.pm_SetCaption

procedure TMapValue.Assign(Source: TPersistent);
//#UC START# *478CF34E02CE_521624EA0293_var*
//#UC END# *478CF34E02CE_521624EA0293_var*
begin
//#UC START# *478CF34E02CE_521624EA0293_impl*
 if Source is TMapValue then
  with TMapValue(Source) do
  begin
   Self.Caption := Caption;
   Self.Value := Value;
  end;
//#UC END# *478CF34E02CE_521624EA0293_impl*
end;//TMapValue.Assign

constructor TMapValue.Create(anOwner: TObject = nil);
//#UC START# *47914F960008_521624EA0293_var*
//#UC END# *47914F960008_521624EA0293_var*
begin
//#UC START# *47914F960008_521624EA0293_impl*
 inherited;
 f_Caption := '';
 f_Value.Kind := dd_vkObject;
 f_Value.AsObject := nil;
//#UC END# *47914F960008_521624EA0293_impl*
end;//TMapValue.Create

procedure TMapValue.ClearFields;
 {-}
begin
 Finalize(f_Value);
 inherited;
end;//TMapValue.ClearFields

function RequiredSignWidth(aParent: TWinControl): Integer;
//#UC START# *5216245D03BA_52161F2B00C4_var*
//#UC END# *5216245D03BA_52161F2B00C4_var*
begin
//#UC START# *5216245D03BA_52161F2B00C4_impl*
 with TvtLabel.Create(aParent) do
 try
  Parent := aParent;
  CCaption := l3CStr(ddRequiredSign);
  Font.Name := ddRequiredFont;
  Result := Width;
 finally
  Free;
 end;
//#UC END# *5216245D03BA_52161F2B00C4_impl*
end;//RequiredSignWidth
// start class TddVisualConfigItem

procedure TddVisualConfigItem.AdjustLabel(theControl: TControl;
  theLabel: TvtLabel);
//#UC START# *521760A4009E_4E302F24003F_var*
//#UC END# *521760A4009E_4E302F24003F_var*
begin
//#UC START# *521760A4009E_4E302F24003F_impl*
 if (theLabel <> nil) then
 begin
  if theControl is TWinControl then
   theLabel.FocusControl:= theControl as TWinControl;
  if not LabelTop then
   theLabel.Top:= theControl.Top + ConfigItemTop;// (theControl.Height - theLabel.Height) div 2;
 end;
//#UC END# *521760A4009E_4E302F24003F_impl*
end;//TddVisualConfigItem.AdjustLabel

procedure TddVisualConfigItem.AfterConstruct(var aLeft: Integer;
  var aMaxLeft: Integer;
  var aTop: Integer;
  theControl: TControl;
  theLabel: TvtLabel);
//#UC START# *521760C60369_4E302F24003F_var*
//#UC END# *521760C60369_4E302F24003F_var*
begin
//#UC START# *521760C60369_4E302F24003F_impl*
 if theControl <> nil then
 begin
  theControl.Tag:= AbsoluteIndex;
  theControl.Hint:= Hint;
  AdjustLabel(theControl, theLabel);
 end; // theControl <> nil
//#UC END# *521760C60369_4E302F24003F_impl*
end;//TddVisualConfigItem.AfterConstruct

procedure TddVisualConfigItem.BeforeConstruct(var aLeft: Integer;
  var aMaxLeft: Integer;
  var aTop: Integer;
  aParent: TWinControl);
//#UC START# *5217612C01B6_4E302F24003F_var*
//#UC END# *5217612C01B6_4E302F24003F_var*
begin
//#UC START# *5217612C01B6_4E302F24003F_impl*
 //
//#UC END# *5217612C01B6_4E302F24003F_impl*
end;//TddVisualConfigItem.BeforeConstruct

procedure TddVisualConfigItem.ChangeSlaveStatus(aEnabled: Boolean);
//#UC START# *521761980131_4E302F24003F_var*
var
 I: Integer;
//#UC END# *521761980131_4E302F24003F_var*
begin
//#UC START# *521761980131_4E302F24003F_impl*
  for i:= 0 to Pred(f_Slaves.Count) do
   TddVisualConfigItem(f_Slaves.Items[i]).Enabled:= aEnabled;
//#UC END# *521761980131_4E302F24003F_impl*
end;//TddVisualConfigItem.ChangeSlaveStatus

function TddVisualConfigItem.CreateLabel(aParent: TWinControl;
  const aCaption: AnsiString;
  var aLeft: Integer;
  var aTop: Integer;
  aLabelType: TddConfigItemLabelType = dd_cilMain): TvtLabel;
//#UC START# *5217620D0151_4E302F24003F_var*
var
 l_Prefix,
 l_Suffix: AnsiString;
//#UC END# *5217620D0151_4E302F24003F_var*
begin
//#UC START# *5217620D0151_4E302F24003F_impl*
 SplitCaption(aCaption, l_Prefix, l_Suffix);
 if ((l_Prefix <> '') and (aLabelType in [dd_cilMain, dd_cilRequired])) or
    ((aLabelType = dd_cilAdditional) and (l_Suffix <> '')) then
 begin
  Result:= TvtLabel.Create(aParent);
  aParent.InsertControl(Result);
  if aLabelType = dd_cilAdditional then
  begin
   aTop:= f_Label.Top;
   if Control <> nil then
    aLeft:= Control.Width + Control.Left + ConfigItemLeft;
  end
  else
  if aLabelType = dd_cilRequired then
   Result.Font.Name:= ddRequiredFont;
  Result.Left:= aLeft;
  Result.Top:= aTop;
  if (aLabelType = dd_cilAdditional) then
  begin
   Result.CCaption:= l3CStr(l_Suffix);
   if (Result.Width+Result.Left) > aParent.Width then
   begin
    Control.Width:= Control.Width-Result.Width-ConfigItemLeft;
    Result.Left:= Control.Width + Control.Left + ConfigItemLeft;
   end;
   AdjustLabel(Control, Result);
  end
  else
   Result.CCaption:= l3CStr(l_Prefix);
  if aLabelType = dd_cilRequired then
   Result.Top:= Result.Top + ConfigItemTop;
  Result.Tag:= AbsoluteIndex;
  if f_Hint <> '' then
  begin
   Result.Hint := f_Hint;
   Result.ShowHint := True;
  end;
  if LabelTop and (aLabelType = dd_cilMain) then
   Inc(aTop, Result.Height + ConfigItemTop)
  else
  if aLabelType = dd_cilRequired then
   Inc(aLeft, Result.Width)
  else
   Inc(aLeft, Result.Width + ConfigItemLeft);
 end
 else
  Result:= nil;
 case aLabelType of
  dd_cilMain: f_Label := Result;
  dd_cilRequired: f_RequiredLabel := Result;
 end;
//#UC END# *5217620D0151_4E302F24003F_impl*
end;//TddVisualConfigItem.CreateLabel

function TddVisualConfigItem.GetCanvas(aParent: TWinControl): TCanvas;
//#UC START# *5217627A02E8_4E302F24003F_var*
var
 l_Form: TCustomForm;
//#UC END# *5217627A02E8_4E302F24003F_var*
begin
//#UC START# *5217627A02E8_4E302F24003F_impl*
 l_Form:= GetForm(aParent);
 l_Form.Canvas.Font:= l_Form.Font;
 Result := l_Form.Canvas;
//#UC END# *5217627A02E8_4E302F24003F_impl*
end;//TddVisualConfigItem.GetCanvas

function TddVisualConfigItem.GetForm(aParent: TWinControl): TCustomForm;
//#UC START# *521B04400217_4E302F24003F_var*
var
  l_Parent: TControl;
//#UC END# *521B04400217_4E302F24003F_var*
begin
//#UC START# *521B04400217_4E302F24003F_impl*
 if not (aParent is TCustomForm) then
 begin
  l_Parent := aParent.Parent;
  while (l_Parent <> nil) and not (l_Parent is TCustomForm) do
   l_Parent:= l_Parent.Parent;
  Result:= l_Parent as TCustomForm;
 end
 else
  Result:= aParent as TCustomForm;
//#UC END# *521B04400217_4E302F24003F_impl*
end;//TddVisualConfigItem.GetForm

procedure TddVisualConfigItem.SplitCaption(const aCaption: AnsiString;
  out aPrefix: AnsiString;
  out aSuffix: AnsiString);
//#UC START# *521B048C0198_4E302F24003F_var*
var
 l_Pos: Integer;
//#UC END# *521B048C0198_4E302F24003F_var*
begin
//#UC START# *521B048C0198_4E302F24003F_impl*
 l_Pos:= Pos('|', aCaption);
 if l_Pos > 0 then
 begin
  aPrefix:= Copy(aCaption, 1, Pred(l_Pos));
  aSuffix:= Copy(aCaption, Succ(l_Pos), Length(aCaption));
  if LabelTop then
  begin
   aPrefix:= aPrefix + ', ' + aSuffix;
   aSuffix:= '';
  end;
 end
 else
 begin
  aPrefix:= aCaption;
  aSuffix:= '';
 end;
//#UC END# *521B048C0198_4E302F24003F_impl*
end;//TddVisualConfigItem.SplitCaption

function TddVisualConfigItem.IsSame(anItem: TObject): Boolean;
//#UC START# *521B04BC01C6_4E302F24003F_var*
//#UC END# *521B04BC01C6_4E302F24003F_var*
begin
//#UC START# *521B04BC01C6_4E302F24003F_impl*
 Result := Self = anItem;
//#UC END# *521B04BC01C6_4E302F24003F_impl*
end;//TddVisualConfigItem.IsSame

procedure TddVisualConfigItem.ClearControl;
//#UC START# *521B05280392_4E302F24003F_var*
//#UC END# *521B05280392_4E302F24003F_var*
begin
//#UC START# *521B05280392_4E302F24003F_impl*
 f_Control := nil;
 f_Label := nil;
 f_FirstLabel := nil; // NEW!!!
//#UC END# *521B05280392_4E302F24003F_impl*
end;//TddVisualConfigItem.ClearControl

function TddVisualConfigItem.CreateControl(aLeft: Integer;
  aMaxLeft: Integer;
  aTop: Integer;
  aParent: TWinControl): TControl;
//#UC START# *521B0563000D_4E302F24003F_var*
var
 l_Label: TvtLabel;
 l_Caption: AnsiString;
//#UC END# *521B0563000D_4E302F24003F_var*
begin
//#UC START# *521B0563000D_4E302F24003F_impl*
 l_Label := nil;
 BeforeConstruct(aLeft, aMaxLeft, aTop, aParent);
 if Labeled then
 begin
  l_Label := Createlabel(aParent, Caption, aLeft, aTop, dd_cilMain);
  if (l_Label <> nil) and not LabelTop then
  begin
   if (aMaxLeft = 0) then
    aLeft:= l_Label.Width + l_Label.Left + ConfigItemLeft
   else
    aLeft:= aMaxLeft;
  end; // not LabelTop
 end;
 if MayBeRequired then
  if IsRequired then
   CreateLabel(aParent, ddRequiredSign, aLeft, aTop, dd_cilRequired).Font.Color := clRed
  else
   Inc(aLeft, RequiredSignWidth(aParent));
 f_Control := ConstructControl(aLeft, aMaxLeft, aTop, aParent);
 {$IFDEF Nemesis}  
 if Labeled then
  Createlabel(aParent, Caption, aLeft, aTop, dd_cilAdditional);
 {$ENDIF}
 AfterConstruct(aLeft, aMaxLeft, aTop, f_Control, l_Label);
 DoEnabled;
 Result:= Control;
//#UC END# *521B0563000D_4E302F24003F_impl*
end;//TddVisualConfigItem.CreateControl

function TddVisualConfigItem.LabelHeight(aParent: TWinControl): Integer;
//#UC START# *521B05BF02BE_4E302F24003F_var*
var
 l_Label: TvtLabel;
//#UC END# *521B05BF02BE_4E302F24003F_var*
begin
//#UC START# *521B05BF02BE_4E302F24003F_impl*
 if (Caption = '') or not LabelTop then
  Result:= 0
 else
 begin
  l_Label:= TvtLabel.Create(nil);
  try
   l_Label.Parent:= aParent;
   l_Label.CCaption:= l3CStr(Caption);
   Result:= l_Label.Height;
  finally
   FreeAndNil(l_Label);
  end;
 end;
//#UC END# *521B05BF02BE_4E302F24003F_impl*
end;//TddVisualConfigItem.LabelHeight

function TddVisualConfigItem.LabelWidth(aParent: TWinControl): Integer;
//#UC START# *521B05DF00FC_4E302F24003F_var*
var
 l_Label: TvtLabel;
 l_P, l_S: AnsiString;
//#UC END# *521B05DF00FC_4E302F24003F_var*
begin
//#UC START# *521B05DF00FC_4E302F24003F_impl*
 SplitCaption(Caption, l_P, l_S);
 if l_P = '' then
  Result:= 0
 else
 begin
  l_Label:= TvtLabel.Create(nil);
  try
   l_Label.Parent:= aParent;
   l_Label.CCaption:= l3CStr(l_P + IfThen(MayBeRequired,' '{Поле для звездочки}, ''));
   Result:= l_Label.Width + ConfigItemLeft;
  finally
   FreeAndNil(l_Label);
  end;
 end;
//#UC END# *521B05DF00FC_4E302F24003F_impl*
end;//TddVisualConfigItem.LabelWidth

function TddVisualConfigItem.MinWidth(aParent: TWinControl): Integer;
//#UC START# *521B061A0387_4E302F24003F_var*
//#UC END# *521B061A0387_4E302F24003F_var*
begin
//#UC START# *521B061A0387_4E302F24003F_impl*
 Result := 0;
//#UC END# *521B061A0387_4E302F24003F_impl*
end;//TddVisualConfigItem.MinWidth

function TddVisualConfigItem.pm_GetLabeled: Boolean;
//#UC START# *5217600501C4_4E302F24003Fget_var*
//#UC END# *5217600501C4_4E302F24003Fget_var*
begin
//#UC START# *5217600501C4_4E302F24003Fget_impl*
 Result := f_Labeled;
//#UC END# *5217600501C4_4E302F24003Fget_impl*
end;//TddVisualConfigItem.pm_GetLabeled

function TddVisualConfigItem.pm_GetLabelTop: Boolean;
//#UC START# *5217602C020A_4E302F24003Fget_var*
//#UC END# *5217602C020A_4E302F24003Fget_var*
begin
//#UC START# *5217602C020A_4E302F24003Fget_impl*
 Result := f_LabelTop;
//#UC END# *5217602C020A_4E302F24003Fget_impl*
end;//TddVisualConfigItem.pm_GetLabelTop

procedure TddVisualConfigItem.pm_SetLabelTop(aValue: Boolean);
//#UC START# *5217602C020A_4E302F24003Fset_var*
//#UC END# *5217602C020A_4E302F24003Fset_var*
begin
//#UC START# *5217602C020A_4E302F24003Fset_impl*
 if Pos('|', Caption) = 0 then
  f_LabelTop:= aValue
 else
  f_LabelTop:= False;
//#UC END# *5217602C020A_4E302F24003Fset_impl*
end;//TddVisualConfigItem.pm_SetLabelTop

function TddVisualConfigItem.pm_GetFullControlHeight(aParent: TWinControl): Integer;
//#UC START# *521760660110_4E302F24003Fget_var*
//#UC END# *521760660110_4E302F24003Fget_var*
begin
//#UC START# *521760660110_4E302F24003Fget_impl*
 Result := LabelHeight(aParent) + ControlHeight(aParent);
 if LabelTop then
  Inc(Result, ConfigItemTop);
//#UC END# *521760660110_4E302F24003Fget_impl*
end;//TddVisualConfigItem.pm_GetFullControlHeight

procedure TddVisualConfigItem.Assign(Source: TPersistent);
//#UC START# *478CF34E02CE_4E302F24003F_var*
//#UC END# *478CF34E02CE_4E302F24003F_var*
begin
//#UC START# *478CF34E02CE_4E302F24003F_impl*
 if Source is TddVisualConfigItem then
 begin
  inherited;
  Hint := TddVisualConfigItem(Source).Hint;
  Labeled := TddVisualConfigItem(Source).Labeled;
  LabelTop := TddVisualConfigItem(Source).LabelTop;
 end
 else
  inherited;
//#UC END# *478CF34E02CE_4E302F24003F_impl*
end;//TddVisualConfigItem.Assign

procedure TddVisualConfigItem.Cleanup;
//#UC START# *479731C50290_4E302F24003F_var*
//#UC END# *479731C50290_4E302F24003F_var*
begin
//#UC START# *479731C50290_4E302F24003F_impl*
 try
  FreeAndNil(f_Slaves);
  ClearControl;
  inherited;
 finally
  f_Control := nil;
 end;//try..finally
//#UC END# *479731C50290_4E302F24003F_impl*
end;//TddVisualConfigItem.Cleanup

procedure TddVisualConfigItem.DoEnabled;
//#UC START# *52171D0D031D_4E302F24003F_var*
//#UC END# *52171D0D031D_4E302F24003F_var*
begin
//#UC START# *52171D0D031D_4E302F24003F_impl*
 if Control <> nil then
  Control.Enabled:= Enabled;
 if f_Label <> nil then
 begin
  f_Label.Enabled:= Enabled;
  f_Label.Refresh;
 end;
 ChangeSlaveStatus(Enabled);
//#UC END# *52171D0D031D_4E302F24003F_impl*
end;//TddVisualConfigItem.DoEnabled

function TddVisualConfigItem.pm_GetChanged: Boolean;
//#UC START# *5217205002F2_4E302F24003Fget_var*
//#UC END# *5217205002F2_4E302F24003Fget_var*
begin
//#UC START# *5217205002F2_4E302F24003Fget_impl*
 Result := inherited pm_GetChanged;
//#UC END# *5217205002F2_4E302F24003Fget_impl*
end;//TddVisualConfigItem.pm_GetChanged

procedure TddVisualConfigItem.pm_SetChanged(aValue: Boolean);
//#UC START# *5217205002F2_4E302F24003Fset_var*
var
 l_Value: TddConfigValue;
 i: Integer;
//#UC END# *5217205002F2_4E302F24003Fset_var*
begin
//#UC START# *5217205002F2_4E302F24003Fset_impl*
 (* !!!! Починить
 if not IsLocked and aValue and (Control <> nil) then
  begin
   Lock;
   try
    l3Move(f_Value, l_Value, SizeOf(TddConfigValue));
    GetValueFromControl;
    for i:= 0 to f_NotifyList.Hi do
     TddBaseConfigItem(f_NotifyList.Items[i]).ProcessNotify(Value);
    l3Move(l_Value, f_Value, SizeOf(TddConfigValue));
   finally
    UnLock;
   end;
  end; // not IsLocked and aValue and (Control <> nil)
 *)
 inherited;
//#UC END# *5217205002F2_4E302F24003Fset_impl*
end;//TddVisualConfigItem.pm_SetChanged

function TddVisualConfigItem.pm_GetValue: TddConfigValue;
//#UC START# *521725130281_4E302F24003Fget_var*
//#UC END# *521725130281_4E302F24003Fget_var*
begin
//#UC START# *521725130281_4E302F24003Fget_impl*
 Result := inherited pm_GetValue; 
//#UC END# *521725130281_4E302F24003Fget_impl*
end;//TddVisualConfigItem.pm_GetValue

procedure TddVisualConfigItem.pm_SetValue(const aValue: TddConfigValue);
//#UC START# *521725130281_4E302F24003Fset_var*
//#UC END# *521725130281_4E302F24003Fset_var*
begin
//#UC START# *521725130281_4E302F24003Fset_impl*
 if Control <> nil then
  Lock; // Иначе затирается выставленное значение
 try
  inherited;
 finally
  if Control <> nil then
   Unlock;
 end;
 if not IsLocked and (Control <> nil) then
  SetValueToControl(False);
//#UC END# *521725130281_4E302F24003Fset_impl*
end;//TddVisualConfigItem.pm_SetValue

constructor TddVisualConfigItem.Create(const aAlias: AnsiString;
  const aCaption: AnsiString;
  const aDefaultValue: TddConfigValue;
  aMasterItem: TddBaseConfigItem = nil);
//#UC START# *5217273F000F_4E302F24003F_var*
//#UC END# *5217273F000F_4E302F24003F_var*
begin
//#UC START# *5217273F000F_4E302F24003F_impl*
 inherited Create(aAlias, aCaption, aDefaultValue, aMasterItem);
 f_LabelTop:= True;
 MasterItem:= aMasterItem;
 f_Control := nil;
 f_Label := nil;
 f_Locked:= 0;
 Labeled:= True;
 Visible:= True;
//#UC END# *5217273F000F_4E302F24003F_impl*
end;//TddVisualConfigItem.Create
// start class TMapValues

procedure TMapValues.CheckValueType(aKind: TddValueKind);
//#UC START# *521634D401C2_5216255500D5_var*
//#UC END# *521634D401C2_5216255500D5_var*
begin
//#UC START# *521634D401C2_5216255500D5_impl*
 if aKind <> f_MapKind then
  raise EddConfigError.Create('Несовпадение типа map-value');
//#UC END# *521634D401C2_5216255500D5_impl*
end;//TMapValues.CheckValueType

function TMapValues.IndexOfCaption(const aCaption: Il3CString): Integer;
//#UC START# *5216272A0158_5216255500D5_var*
var
  l_Index: Integer;
//#UC END# *5216272A0158_5216255500D5_var*
begin
//#UC START# *5216272A0158_5216255500D5_impl*
 Result := -1;
 for l_Index := 0 to Pred(f_List.Count) do
  if l3Same(aCaption, Items[l_Index].Caption) then
  begin            
   Result := l_Index;
   Break;
  end;//l3Same(aCaption, 
//#UC END# *5216272A0158_5216255500D5_impl*
end;//TMapValues.IndexOfCaption

function TMapValues.IndexOfValue(const aValue: TddConfigValue): Integer;
//#UC START# *521627490388_5216255500D5_var*
 function lp_ItemsIsEqual(aValue1 : TddConfigValue; aValue2 : TddConfigValue): Boolean;
 begin
  case f_MapKind of
   dd_vkString  : Result := aValue1.AsString = aValue2.AsString;
   dd_vkInteger : Result := aValue1.AsInteger = aValue2.AsInteger;
   dd_vkBoolean : Result := aValue1.AsBoolean = aValue2.AsBoolean;
   dd_vkDateTime: Result := aValue1.AsDateTime = aValue2.AsDateTime;
   dd_vkObject  : Result := aValue1.AsObject = aValue2.AsObject;
  else
   Result := False;
   Assert(False);
  end;
 end;
var
 l_Index: Integer;
//#UC END# *521627490388_5216255500D5_var*
begin
//#UC START# *521627490388_5216255500D5_impl*
 CheckValueType(aValue.Kind);
 Result := -1;
 for l_Index := 0 to Pred(f_List.Count) do
  if lp_ItemsIsEqual(Items[l_Index].Value, aValue) then
  begin
   Result := l_Index;
   Break;
  end;
//#UC END# *521627490388_5216255500D5_impl*
end;//TMapValues.IndexOfValue

procedure TMapValues.Clear;
//#UC START# *521627800086_5216255500D5_var*
//#UC END# *521627800086_5216255500D5_var*
begin
//#UC START# *521627800086_5216255500D5_impl*
 f_List.Clear;
//#UC END# *521627800086_5216255500D5_impl*
end;//TMapValues.Clear

procedure TMapValues.AddMapValue(const aCaption: AnsiString;
  const aValue: TddConfigValue);
//#UC START# *5216279203D3_5216255500D5_var*
var
 l_MapValue: TMapValue;
//#UC END# *5216279203D3_5216255500D5_var*
begin
//#UC START# *5216279203D3_5216255500D5_impl*
 CheckValueType(aValue.Kind);
 l_MapValue := TMapValue.Create(nil);
 try
  l_MapValue.Caption := aCaption;
  l_MapValue.Value := aValue;
  f_List.Add(l_MapValue);
 finally
  FreeAndNil(l_MapValue);
 end;
//#UC END# *5216279203D3_5216255500D5_impl*
end;//TMapValues.AddMapValue

constructor TMapValues.Create(aKind: TddValueKind;
  anOwner: TObject = nil);
//#UC START# *521627BB0336_5216255500D5_var*
//#UC END# *521627BB0336_5216255500D5_var*
begin
//#UC START# *521627BB0336_5216255500D5_impl*
 inherited Create(anOwner);
 f_MapKind := aKind;
 f_List := Tl3ObjectRefList.Make;
//#UC END# *521627BB0336_5216255500D5_impl*
end;//TMapValues.Create

function TMapValues.pm_GetCount: Integer;
//#UC START# *52162709029F_5216255500D5get_var*
//#UC END# *52162709029F_5216255500D5get_var*
begin
//#UC START# *52162709029F_5216255500D5get_impl*
 Assert(f_List <> nil);
 Result := f_List.Count;
//#UC END# *52162709029F_5216255500D5get_impl*
end;//TMapValues.pm_GetCount

function TMapValues.pm_GetItems(aIndex: Integer): TMapValue;
//#UC START# *5216295D00DB_5216255500D5get_var*
//#UC END# *5216295D00DB_5216255500D5get_var*
begin
//#UC START# *5216295D00DB_5216255500D5get_impl*
 Result := TMapValue(f_List.Items[aIndex]);
//#UC END# *5216295D00DB_5216255500D5get_impl*
end;//TMapValues.pm_GetItems

procedure TMapValues.pm_SetItems(aIndex: Integer; aValue: TMapValue);
//#UC START# *5216295D00DB_5216255500D5set_var*
//#UC END# *5216295D00DB_5216255500D5set_var*
begin
//#UC START# *5216295D00DB_5216255500D5set_impl*
 TMapValue(f_List.Items[aIndex]).Assign(aValue);
//#UC END# *5216295D00DB_5216255500D5set_impl*
end;//TMapValues.pm_SetItems

procedure TMapValues.Assign(Source: TPersistent);
//#UC START# *478CF34E02CE_5216255500D5_var*
//#UC END# *478CF34E02CE_5216255500D5_var*
begin
//#UC START# *478CF34E02CE_5216255500D5_impl*
 if Source is TMapValues then
  with TMapValues(Source) do
  begin
   Self.f_List.Assign(f_List);
   Self.f_MapKind:= f_MapKind;
  end;
//#UC END# *478CF34E02CE_5216255500D5_impl*
end;//TMapValues.Assign

procedure TMapValues.Cleanup;
//#UC START# *479731C50290_5216255500D5_var*
//#UC END# *479731C50290_5216255500D5_var*
begin
//#UC START# *479731C50290_5216255500D5_impl*
 Clear;
 FreeAndNil(f_List);
 inherited;
//#UC END# *479731C50290_5216255500D5_impl*
end;//TMapValues.Cleanup
// start class TddCustomConfigNode

procedure TddCustomConfigNode.ItemChanged(Sender: TObject);
//#UC START# *521B21AC0008_51D547DD026C_var*
//#UC END# *521B21AC0008_51D547DD026C_var*
begin
//#UC START# *521B21AC0008_51D547DD026C_impl*
 Changed := True;
//#UC END# *521B21AC0008_51D547DD026C_impl*
end;//TddCustomConfigNode.ItemChanged

constructor TddCustomConfigNode.Create(const aAlias: AnsiString;
  const aCaption: AnsiString);
//#UC START# *521B21EE02E6_51D547DD026C_var*
//#UC END# *521B21EE02E6_51D547DD026C_var*
begin
//#UC START# *521B21EE02E6_51D547DD026C_impl*
 inherited Create(aAlias, aCaption, ddEmptyObjectValue);
 f_Children:= Tl3ObjectRefList.Make;
 f_Alias:= aAlias;
 f_Caption:= aCaption;
 f_ScrollBars := ssNone;
//#UC END# *521B21EE02E6_51D547DD026C_impl*
end;//TddCustomConfigNode.Create

function TddCustomConfigNode.AddNode(const aAlias: AnsiString): TddCustomConfigNode;
//#UC START# *521B2293010A_51D547DD026C_var*
//#UC END# *521B2293010A_51D547DD026C_var*
begin
//#UC START# *521B2293010A_51D547DD026C_impl*
 Result:= AddNode(TddAppConfigNode.Create(aAlias, ''));
//#UC END# *521B2293010A_51D547DD026C_impl*
end;//TddCustomConfigNode.AddNode

function TddCustomConfigNode.AddNode(const aAlias: AnsiString;
  const aCaption: AnsiString): TddCustomConfigNode;
//#UC START# *521B22D3023D_51D547DD026C_var*
//#UC END# *521B22D3023D_51D547DD026C_var*
begin
//#UC START# *521B22D3023D_51D547DD026C_impl*
 Result:= AddNode(TddAppConfigNode.Create(aAlias, aCaption));
//#UC END# *521B22D3023D_51D547DD026C_impl*
end;//TddCustomConfigNode.AddNode

function TddCustomConfigNode.AddNode(aNode: TddCustomConfigNode): TddCustomConfigNode;
//#UC START# *521B22E003E5_51D547DD026C_var*
//#UC END# *521B22E003E5_51D547DD026C_var*
begin
//#UC START# *521B22E003E5_51D547DD026C_impl*
 if aNode <> nil then
 begin
  aNode.Parent:= Self;
  f_Children.Add(aNode);
  FreeAndNil(aNode);
  Result:= TddCustomConfigNode(f_Children.Last);
 end
 else
  Result:= nil;
//#UC END# *521B22E003E5_51D547DD026C_impl*
end;//TddCustomConfigNode.AddNode

function TddCustomConfigNode.IsRequired(out aMessage: AnsiString): Boolean;
//#UC START# *521B251D0001_51D547DD026C_var*
//#UC END# *521B251D0001_51D547DD026C_var*
begin
//#UC START# *521B251D0001_51D547DD026C_impl*
 Result := False;
 aMessage:= '';
//#UC END# *521B251D0001_51D547DD026C_impl*
end;//TddCustomConfigNode.IsRequired

procedure TddCustomConfigNode.PostEdit;
//#UC START# *521B25470196_51D547DD026C_var*
//#UC END# *521B25470196_51D547DD026C_var*
begin
//#UC START# *521B25470196_51D547DD026C_impl*
 // Вызывается по окончании редактирования для возможных дополнительных действий
//#UC END# *521B25470196_51D547DD026C_impl*
end;//TddCustomConfigNode.PostEdit

procedure TddCustomConfigNode.DoFrameSize(aParent: TWinControl;
  out aHeight: Integer;
  out aWidth: Integer);
//#UC START# *521B28930009_51D547DD026C_var*
//#UC END# *521B28930009_51D547DD026C_var*
begin
//#UC START# *521B28930009_51D547DD026C_impl*
 aHeight:= 0;
 aWidth:= 0;
//#UC END# *521B28930009_51D547DD026C_impl*
end;//TddCustomConfigNode.DoFrameSize

procedure TddCustomConfigNode.DoLoadTree(aStream: TStream);
//#UC START# *521B291D0241_51D547DD026C_var*
//#UC END# *521B291D0241_51D547DD026C_var*
begin
//#UC START# *521B291D0241_51D547DD026C_impl*
 // TODO -cMM: TddBaseConfigNode.LoadTree default body inserted
//#UC END# *521B291D0241_51D547DD026C_impl*
end;//TddCustomConfigNode.DoLoadTree

procedure TddCustomConfigNode.DoResetToDefault;
//#UC START# *521B293B0012_51D547DD026C_var*
//#UC END# *521B293B0012_51D547DD026C_var*
begin
//#UC START# *521B293B0012_51D547DD026C_impl*
 { TODO -oДмитрий Дудко -cРазвитие : Сброс всех значений в значение по умолчанию }
//#UC END# *521B293B0012_51D547DD026C_impl*
end;//TddCustomConfigNode.DoResetToDefault

procedure TddCustomConfigNode.DoSaveTree(aStream: TStream);
//#UC START# *521B2975012C_51D547DD026C_var*
var
 l_CC, l_Index: Integer;
//#UC END# *521B2975012C_51D547DD026C_var*
begin
//#UC START# *521B2975012C_51D547DD026C_impl*
 WriteString(aStream, Alias);
 WriteString(aStream, Caption);
 WriteString(aStream, ParentAlias);
 l_CC:= ChildrenCount;
 //aStream.Write(Value);
 aStream.Write(l_CC, SizeOf(l_CC));
 for l_Index:= 0 to pred(l_CC) do
  Children[l_Index].SaveTree(aStream);
//#UC END# *521B2975012C_51D547DD026C_impl*
end;//TddCustomConfigNode.DoSaveTree

function TddCustomConfigNode.pm_GetChildrenCount: Integer;
//#UC START# *521B26D40382_51D547DD026Cget_var*
//#UC END# *521B26D40382_51D547DD026Cget_var*
begin
//#UC START# *521B26D40382_51D547DD026Cget_impl*
 Result:= f_Children.Count;
//#UC END# *521B26D40382_51D547DD026Cget_impl*
end;//TddCustomConfigNode.pm_GetChildrenCount

function TddCustomConfigNode.pm_GetChildren(anIndex: Integer): TddCustomConfigNode;
//#UC START# *521B26EF0350_51D547DD026Cget_var*
//#UC END# *521B26EF0350_51D547DD026Cget_var*
begin
//#UC START# *521B26EF0350_51D547DD026Cget_impl*
 if InRange(anIndex, 0, Pred(f_Children.Count)) then
  Result:= TddCustomConfigNode(f_Children.Items[anIndex])
 else
  raise EddConfigError.Create('Запрошенного элемента не существует');
//#UC END# *521B26EF0350_51D547DD026Cget_impl*
end;//TddCustomConfigNode.pm_GetChildren

function TddCustomConfigNode.pm_GetIsHorizontalScrollBar: Boolean;
//#UC START# *521B27170183_51D547DD026Cget_var*
//#UC END# *521B27170183_51D547DD026Cget_var*
begin
//#UC START# *521B27170183_51D547DD026Cget_impl*
 Result := f_ScrollBars in [ssHorizontal, ssBoth];
//#UC END# *521B27170183_51D547DD026Cget_impl*
end;//TddCustomConfigNode.pm_GetIsHorizontalScrollBar

function TddCustomConfigNode.pm_GetIsVerticalScrollBar: Boolean;
//#UC START# *521B272D03C7_51D547DD026Cget_var*
//#UC END# *521B272D03C7_51D547DD026Cget_var*
begin
//#UC START# *521B272D03C7_51D547DD026Cget_impl*
 Result := f_ScrollBars in [ssVertical, ssBoth];
//#UC END# *521B272D03C7_51D547DD026Cget_impl*
end;//TddCustomConfigNode.pm_GetIsVerticalScrollBar

procedure TddCustomConfigNode.pm_SetParent(aValue: TddCustomConfigNode);
//#UC START# *521B277C02F3_51D547DD026Cset_var*
//#UC END# *521B277C02F3_51D547DD026Cset_var*
begin
//#UC START# *521B277C02F3_51D547DD026Cset_impl*
 if f_Parent <> aValue then
 begin
  if aValue <> nil then
   f_ParentAlias:= aValue.Alias;
  f_Parent := aValue;
 end;
//#UC END# *521B277C02F3_51D547DD026Cset_impl*
end;//TddCustomConfigNode.pm_SetParent

procedure TddCustomConfigNode.ClearControls;
//#UC START# *52162011011D_51D547DD026C_var*
//#UC END# *52162011011D_51D547DD026C_var*
begin
//#UC START# *52162011011D_51D547DD026C_impl*
 DoClearControls;
//#UC END# *52162011011D_51D547DD026C_impl*
end;//TddCustomConfigNode.ClearControls

function TddCustomConfigNode.CreateFrame(aOwner: TComponent;
  aTag: Integer): TCustomFrame;
//#UC START# *52162023035F_51D547DD026C_var*
//#UC END# *52162023035F_51D547DD026C_var*
begin
//#UC START# *52162023035F_51D547DD026C_impl*
 Result := DoCreateFrame(aOwner, aTag);
//#UC END# *52162023035F_51D547DD026C_impl*
end;//TddCustomConfigNode.CreateFrame

procedure TddCustomConfigNode.FrameSize(aParent: TWinControl;
  out aHeight: Integer;
  out aWidth: Integer);
//#UC START# *5216204C0197_51D547DD026C_var*
//#UC END# *5216204C0197_51D547DD026C_var*
begin
//#UC START# *5216204C0197_51D547DD026C_impl*
 DoFrameSize(aParent, aHeight, aWidth);
//#UC END# *5216204C0197_51D547DD026C_impl*
end;//TddCustomConfigNode.FrameSize

procedure TddCustomConfigNode.GetControlValues;
//#UC START# *521620A90269_51D547DD026C_var*
//#UC END# *521620A90269_51D547DD026C_var*
begin
//#UC START# *521620A90269_51D547DD026C_impl*
 DoGetControlValues;
//#UC END# *521620A90269_51D547DD026C_impl*
end;//TddCustomConfigNode.GetControlValues

function TddCustomConfigNode.IsItem(aItem: TObject): Boolean;
//#UC START# *521620B90082_51D547DD026C_var*
//#UC END# *521620B90082_51D547DD026C_var*
begin
//#UC START# *521620B90082_51D547DD026C_impl*
 Result := DoIsItem(aItem);
//#UC END# *521620B90082_51D547DD026C_impl*
end;//TddCustomConfigNode.IsItem

procedure TddCustomConfigNode.LoadData(const aStorage: IddConfigStorage);
//#UC START# *521620D000F7_51D547DD026C_var*
//#UC END# *521620D000F7_51D547DD026C_var*
begin
//#UC START# *521620D000F7_51D547DD026C_impl*
 DoLoad(aStorage);
//#UC END# *521620D000F7_51D547DD026C_impl*
end;//TddCustomConfigNode.LoadData

procedure TddCustomConfigNode.LoadTree(aStream: TStream);
//#UC START# *521620E9033E_51D547DD026C_var*
//#UC END# *521620E9033E_51D547DD026C_var*
begin
//#UC START# *521620E9033E_51D547DD026C_impl*
 DoLoadTree(aStream);
//#UC END# *521620E9033E_51D547DD026C_impl*
end;//TddCustomConfigNode.LoadTree

procedure TddCustomConfigNode.ResetToDefault;
//#UC START# *5216210503CE_51D547DD026C_var*
//#UC END# *5216210503CE_51D547DD026C_var*
begin
//#UC START# *5216210503CE_51D547DD026C_impl*
 DoResetToDefault;
//#UC END# *5216210503CE_51D547DD026C_impl*
end;//TddCustomConfigNode.ResetToDefault

procedure TddCustomConfigNode.SaveData(const aStorage: IddConfigStorage);
//#UC START# *5216211600A8_51D547DD026C_var*
//#UC END# *5216211600A8_51D547DD026C_var*
begin
//#UC START# *5216211600A8_51D547DD026C_impl*
 DoSave(aStorage);
//#UC END# *5216211600A8_51D547DD026C_impl*
end;//TddCustomConfigNode.SaveData

procedure TddCustomConfigNode.SaveTree(aStream: TStream);
//#UC START# *521621340220_51D547DD026C_var*
//#UC END# *521621340220_51D547DD026C_var*
begin
//#UC START# *521621340220_51D547DD026C_impl*
 DoSaveTree(aStream);
//#UC END# *521621340220_51D547DD026C_impl*
end;//TddCustomConfigNode.SaveTree

procedure TddCustomConfigNode.SetControlValues(aDefault: Boolean);
//#UC START# *521621460326_51D547DD026C_var*
//#UC END# *521621460326_51D547DD026C_var*
begin
//#UC START# *521621460326_51D547DD026C_impl*
 DoSetControlValues(aDefault);
//#UC END# *521621460326_51D547DD026C_impl*
end;//TddCustomConfigNode.SetControlValues

function TddCustomConfigNode.Clone(anOwner: TObject = nil): Pointer;
//#UC START# *478CEE4C0225_51D547DD026C_var*
//#UC END# *478CEE4C0225_51D547DD026C_var*
begin
//#UC START# *478CEE4C0225_51D547DD026C_impl*
 Result := RddBaseConfigNode(ClassType).Create(Alias, Caption);
 TddCustomConfigNode(Result).Assign(Self);
//#UC END# *478CEE4C0225_51D547DD026C_impl*
end;//TddCustomConfigNode.Clone

procedure TddCustomConfigNode.Assign(Source: TPersistent);
//#UC START# *478CF34E02CE_51D547DD026C_var*
var
  l_CN: TddCustomConfigNode absolute Source;
  l_Node, l_N: TddCustomConfigNode;
  i: Integer;
//#UC END# *478CF34E02CE_51D547DD026C_var*
begin
//#UC START# *478CF34E02CE_51D547DD026C_impl*
 if Source is TddCustomConfigNode then
 begin
  l_Node:= Source as TddCustomConfigNode;
  Alias := l_CN.Alias;
  Caption := l_CN.Caption;
  Changed:= l_CN.Changed;
  f_Children.Clear;
  for i:= 0 to Pred(l_Node.ChildrenCount) do
  begin
   l_N := l_CN.Children[i].Clone;
   try
    f_Children.Add(l_N);
   finally
    FreeAndNil(l_N);
   end;
  end;
 end
 else
  inherited;
//#UC END# *478CF34E02CE_51D547DD026C_impl*
end;//TddCustomConfigNode.Assign

procedure TddCustomConfigNode.Cleanup;
//#UC START# *479731C50290_51D547DD026C_var*
//#UC END# *479731C50290_51D547DD026C_var*
begin
//#UC START# *479731C50290_51D547DD026C_impl*
 FreeAndNil(f_Children);
 inherited;
//#UC END# *479731C50290_51D547DD026C_impl*
end;//TddCustomConfigNode.Cleanup

function TddCustomConfigNode.pm_GetChanged: Boolean;
//#UC START# *5217205002F2_51D547DD026Cget_var*
var
 i: Integer;
//#UC END# *5217205002F2_51D547DD026Cget_var*
begin
//#UC START# *5217205002F2_51D547DD026Cget_impl*
 Result:= inherited pm_GetChanged;
 if not Result then
  for i:= 0 to Pred(ChildrenCount) do
   if Children[i].Changed then
   begin
    Result:= True;
    Break;
   end;
//#UC END# *5217205002F2_51D547DD026Cget_impl*
end;//TddCustomConfigNode.pm_GetChanged

procedure TddCustomConfigNode.pm_SetChanged(aValue: Boolean);
//#UC START# *5217205002F2_51D547DD026Cset_var*
var
 i: Integer;
//#UC END# *5217205002F2_51D547DD026Cset_var*
begin
//#UC START# *5217205002F2_51D547DD026Cset_impl*
 if aValue <> f_Changed then
 begin
  f_Changed := aValue;
  for i:= 0 to Pred(ChildrenCount) do
   Children[i].Changed:= aValue;
  if f_Changed and Assigned(f_OnChange) then
   f_OnChange(Self);
 end; // Value <> FChanged
//#UC END# *5217205002F2_51D547DD026Cset_impl*
end;//TddCustomConfigNode.pm_SetChanged

function TddCustomConfigNode.pm_GetValue: TddConfigValue;
//#UC START# *521725130281_51D547DD026Cget_var*
//#UC END# *521725130281_51D547DD026Cget_var*
begin
//#UC START# *521725130281_51D547DD026Cget_impl*
 Result := ddEmptyObjectValue;
//#UC END# *521725130281_51D547DD026Cget_impl*
end;//TddCustomConfigNode.pm_GetValue

procedure TddCustomConfigNode.pm_SetValue(const aValue: TddConfigValue);
//#UC START# *521725130281_51D547DD026Cset_var*
//#UC END# *521725130281_51D547DD026Cset_var*
begin
//#UC START# *521725130281_51D547DD026Cset_impl*
 inherited pm_SetValue(aValue);
//#UC END# *521725130281_51D547DD026Cset_impl*
end;//TddCustomConfigNode.pm_SetValue
// start class EddInvalidValue

constructor EddInvalidValue.CreateFmt(const aMsg: AnsiString;
  const Args: array of const;
  aItem: TddVisualConfigItem);
//#UC START# *521622D00234_521621FD0394_var*
//#UC END# *521622D00234_521621FD0394_var*
begin
//#UC START# *521622D00234_521621FD0394_impl*
 inherited CreateFmt(aMsg, Args);
 f_Item := aItem;
//#UC END# *521622D00234_521621FD0394_impl*
end;//EddInvalidValue.CreateFmt
// start class TddIntegerConfigItem

procedure TddIntegerConfigItem.Validate;
//#UC START# *5220C05000A7_5220BFBC0399_var*
//#UC END# *5220C05000A7_5220BFBC0399_var*
begin
//#UC START# *5220C05000A7_5220BFBC0399_impl*
 if (IntegerValue > MaxValue) or (IntegerValue < MinValue) then
  raise EddInvalidValue.CreateFmt(str_ddcmErrorIntegerRange.AsStr,
    [IntegerValue, MinValue, MaxValue], Self);
//#UC END# *5220C05000A7_5220BFBC0399_impl*
end;//TddIntegerConfigItem.Validate

procedure TddIntegerConfigItem.DoOnChange(Sender: TObject);
//#UC START# *5220C06103B2_5220BFBC0399_var*
//#UC END# *5220C06103B2_5220BFBC0399_var*
begin
//#UC START# *5220C06103B2_5220BFBC0399_impl*
 {$IFDEF ddUseVTSpin}
 Assert(Control is TvtSpinEdit, Control.ClassName); 
 Changed := TvtSpinEdit(Control).Text <> IntToStr(IntegerValue);
 {$ELSE}
 Assert(Control is TEdit, Control.ClassName); 
 Changed := TEdit(Control).Text <> IntToStr(IntegerValue);
 {$ENDIF}
//#UC END# *5220C06103B2_5220BFBC0399_impl*
end;//TddIntegerConfigItem.DoOnChange

constructor TddIntegerConfigItem.Create(const aAlias: AnsiString;
  const aCaption: AnsiString;
  aDefaultValue: Integer;
  aMasterItem: TddBaseConfigItem = nil);
//#UC START# *5220C0FF0081_5220BFBC0399_var*
var
 l_Value : TddConfigValue;
//#UC END# *5220C0FF0081_5220BFBC0399_var*
begin
//#UC START# *5220C0FF0081_5220BFBC0399_impl*
 with l_Value do
 begin
  Kind := dd_vkInteger;
  AsInteger := aDefaultValue;
 end;
 Create(aAlias, aCaption, l_Value, aMasterItem);
//#UC END# *5220C0FF0081_5220BFBC0399_impl*
end;//TddIntegerConfigItem.Create

procedure TddIntegerConfigItem.pm_SetMaxValue(aValue: Integer);
//#UC START# *5220C01C00FF_5220BFBC0399set_var*
//#UC END# *5220C01C00FF_5220BFBC0399set_var*
begin
//#UC START# *5220C01C00FF_5220BFBC0399set_impl*
 if f_MaxValue <> aValue then
 begin
  if aValue <= ddMaxInt then
   f_MaxValue := aValue
  else
   raise EddConfigError.CreateFmt(str_ddcmInvalidMaxValue.AsStr, [aValue, ddMaxInt]);
 end;
//#UC END# *5220C01C00FF_5220BFBC0399set_impl*
end;//TddIntegerConfigItem.pm_SetMaxValue

procedure TddIntegerConfigItem.pm_SetMinValue(aValue: Integer);
//#UC START# *5220C02A0383_5220BFBC0399set_var*
//#UC END# *5220C02A0383_5220BFBC0399set_var*
begin
//#UC START# *5220C02A0383_5220BFBC0399set_impl*
 if f_MinValue <> aValue then
 begin
  if aValue >= ddMinInt then
   f_MinValue := aValue
  else
   raise EddConfigError.CreateFmt(str_ddcmInvalidMinValue.AsStr, [aValue, ddMaxInt]);
 end;
//#UC END# *5220C02A0383_5220BFBC0399set_impl*
end;//TddIntegerConfigItem.pm_SetMinValue

function TddIntegerConfigItem.ConstructControl(var aLeft: Integer;
  var aMaxLeft: Integer;
  var aTop: Integer;
  aParent: TWinControl): TControl;
//#UC START# *521761BB03DE_5220BFBC0399_var*
var
 l_MaxValue: Integer;
//#UC END# *521761BB03DE_5220BFBC0399_var*
begin
//#UC START# *521761BB03DE_5220BFBC0399_impl*
{$IFDEF ddUseVTSpin}
 Result := TvtSpinEdit.Create(aParent);
{$ELSE}
 //Result := TSpinEdit.Create(aParent);
 Result := TEdit.Create(aParent);
 f_UpDown := TUpDown.Create(aParent);
 with f_UpDown do
 begin
  Parent := aParent;
  Thousands := False;
 end;
 {$ENDIF}
 Result.Parent := aParent;
 {$IFDEF ddUseVTSpin}
 //TvtSpinEdit(Result).ButtonKind := bkClassic;
 TvtSpinEdit(Result).MaxValue := MaxValue;
 TvtSpinEdit(Result).MinValue := MinValue;
 TvtSpinEdit(Result).AllowAnyValueManualInput := True;
 TvtSpinEdit(Result).OnChange := DoOnChange;
 {$ELSE}
 TEdit(Result).OnChange := DoOnChange;
 TEdit(Result).MaxLength := Length(IntToStr(MaxValue));
 f_UpDown.Min := MinValue;
 f_UpDown.Max := MaxValue;
 {$ENDIF}
 Result.Top := aTop;
 Result.Left := aLeft;
 l_MaxValue := Max(Abs(MaxValue), Abs(MinValue));
 if l_MaxValue = 0 then
  l_MaxValue := Low(l_MaxValue);
 Result.Width := GetCanvas(aParent).TextWidth(IntToStr(l_MaxValue)+' ') + 16 + ConfigItemLeft;
 {$IfNDef ddUseVTSpin}
 f_UpDown.Associate := TWinControl(Result);
 {$EndIf ddUseVTSpin}
//#UC END# *521761BB03DE_5220BFBC0399_impl*
end;//TddIntegerConfigItem.ConstructControl

function TddIntegerConfigItem.ControlHeight(aParent: TWinControl): Integer;
//#UC START# *521B053F03C3_5220BFBC0399_var*
//#UC END# *521B053F03C3_5220BFBC0399_var*
begin
//#UC START# *521B053F03C3_5220BFBC0399_impl*
 {$IFDEF ddUseVTSpin}
 with TvtSpinEdit.Create(aParent) do
 try
  Parent := aParent;
  Result := Height;
 finally
  Free;
 end;
 {$ELSE}
 with TSpinEdit.Create(aParent) do
 try
  Parent := aParent;
  Result := Height;
 finally
  Free;
 end;
 {$ENDIF}
//#UC END# *521B053F03C3_5220BFBC0399_impl*
end;//TddIntegerConfigItem.ControlHeight

procedure TddIntegerConfigItem.GetValueFromControl;
//#UC START# *521B058801FD_5220BFBC0399_var*
 function lpCheckValue : Integer;
 var
  lValue : Integer;
 begin
  Assert(Control is TEdit, Control.ClassName); 
  lValue := StrToIntDef(TEdit(Control).Text, MaxInt);
  // Не является числом
  if lValue = MaxInt then
   raise EddInvalidValue.CreateFmt(str_ddcmInvalidIntegerValue.AsStr,
    [TEdit(Control).Text], Self);
  // Выходит за пределы диапазона
  if  not InRange(lValue, MinValue, MaxValue) then
   raise EddInvalidValue.CreateFmt(str_ddcmErrorIntegerRange.AsStr,
    [lValue, MinValue, MaxValue], Self);
  Result := lValue;
 end;
//#UC END# *521B058801FD_5220BFBC0399_var*
begin
//#UC START# *521B058801FD_5220BFBC0399_impl*
 {$IFDEF ddUseVTSpin}
 IntegerValue := TvtSpinEdit(Control).AsInteger;
 Validate;
 {$ELSE}
 IntegerValue := lpCheckValue;
 {$ENDIF}
//#UC END# *521B058801FD_5220BFBC0399_impl*
end;//TddIntegerConfigItem.GetValueFromControl

procedure TddIntegerConfigItem.SetValueToControl(aDefault: Boolean);
//#UC START# *521B07030052_5220BFBC0399_var*
var
 I: Integer;
//#UC END# *521B07030052_5220BFBC0399_var*
begin
//#UC START# *521B07030052_5220BFBC0399_impl*
 if aDefault then
  I := DefaultValue.AsInteger
 else
  I := IntegerValue;
 {$IFDEF ddUseVTSpin}
 Assert(Control is TvtSpinEdit, Control.ClassName);
 TvtSpinEdit(Control).Value := I;
 {$ELSE}
 Assert(Control is TEdit, Control.ClassName); 
 TEdit(Control).Text := IntToStr(I);
 f_UpDown.Position := I;
 {$ENDIF}
//#UC END# *521B07030052_5220BFBC0399_impl*
end;//TddIntegerConfigItem.SetValueToControl

procedure TddIntegerConfigItem.Assign(Source: TPersistent);
//#UC START# *478CF34E02CE_5220BFBC0399_var*
//#UC END# *478CF34E02CE_5220BFBC0399_var*
begin
//#UC START# *478CF34E02CE_5220BFBC0399_impl*
 if Source is TddIntegerConfigItem then
 begin
  inherited;
  Self.f_MaxValue := TddIntegerConfigItem(Source).MaxValue;
  Self.f_MinValue := TddIntegerConfigItem(Source).MinValue;
 end else
  inherited;
//#UC END# *478CF34E02CE_5220BFBC0399_impl*
end;//TddIntegerConfigItem.Assign

constructor TddIntegerConfigItem.Create(const aAlias: AnsiString;
  const aCaption: AnsiString;
  const aDefaultValue: TddConfigValue;
  aMasterItem: TddBaseConfigItem = nil);
//#UC START# *5217273F000F_5220BFBC0399_var*
//#UC END# *5217273F000F_5220BFBC0399_var*
begin
//#UC START# *5217273F000F_5220BFBC0399_impl*
 inherited Create(aAlias, aCaption, aDefaultValue, aMasterItem);
 MinValue := ddMinInt;
 MaxValue := ddMaxInt;
 LabelTop := False;
 f_Value.Kind := dd_vkInteger;
//#UC END# *5217273F000F_5220BFBC0399_impl*
end;//TddIntegerConfigItem.Create

procedure TddIntegerConfigItem.LoadValue(const aStorage: IddConfigStorage);
//#UC START# *52172B72014C_5220BFBC0399_var*
var
 l_Value: TddConfigValue;
//#UC END# *52172B72014C_5220BFBC0399_var*
begin
//#UC START# *52172B72014C_5220BFBC0399_impl*
 l_Value.Kind := dd_vkInteger;
 l_Value.AsInteger := aStorage.ReadInteger(Alias, DefaultValue.AsInteger);
 if InRange(l_Value.AsInteger, MinValue, MaxValue) then
  Value := l_Value;
//#UC END# *52172B72014C_5220BFBC0399_impl*
end;//TddIntegerConfigItem.LoadValue

procedure TddIntegerConfigItem.SaveValue(const aStorage: IddConfigStorage);
//#UC START# *52172CA801E3_5220BFBC0399_var*
//#UC END# *52172CA801E3_5220BFBC0399_var*
begin
//#UC START# *52172CA801E3_5220BFBC0399_impl*
 aStorage.WriteInteger(Alias, Value.AsInteger);
//#UC END# *52172CA801E3_5220BFBC0399_impl*
end;//TddIntegerConfigItem.SaveValue

function TddIntegerConfigItem.pm_GetLabelTop: Boolean;
//#UC START# *5217602C020A_5220BFBC0399get_var*
//#UC END# *5217602C020A_5220BFBC0399get_var*
begin
//#UC START# *5217602C020A_5220BFBC0399get_impl*
 Result := inherited pm_GetLabelTop;
//#UC END# *5217602C020A_5220BFBC0399get_impl*
end;//TddIntegerConfigItem.pm_GetLabelTop

procedure TddIntegerConfigItem.pm_SetLabelTop(aValue: Boolean);
//#UC START# *5217602C020A_5220BFBC0399set_var*
//#UC END# *5217602C020A_5220BFBC0399set_var*
begin
//#UC START# *5217602C020A_5220BFBC0399set_impl*
 f_LabelTop := False;
//#UC END# *5217602C020A_5220BFBC0399set_impl*
end;//TddIntegerConfigItem.pm_SetLabelTop

procedure TddIntegerConfigItem.ClearControl;
//#UC START# *521B05280392_5220BFBC0399_var*
//#UC END# *521B05280392_5220BFBC0399_var*
begin
//#UC START# *521B05280392_5220BFBC0399_impl*
 inherited;
 FirstLabel := nil;
//#UC END# *521B05280392_5220BFBC0399_impl*
end;//TddIntegerConfigItem.ClearControl

function TddIntegerConfigItem.MinWidth(aParent: TWinControl): Integer;
//#UC START# *521B061A0387_5220BFBC0399_var*
//#UC END# *521B061A0387_5220BFBC0399_var*
begin
//#UC START# *521B061A0387_5220BFBC0399_impl*
 Result := 32;
//#UC END# *521B061A0387_5220BFBC0399_impl*
end;//TddIntegerConfigItem.MinWidth

end.