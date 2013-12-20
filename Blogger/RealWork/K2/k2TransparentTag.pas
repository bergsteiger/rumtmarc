unit k2TransparentTag;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/K2/k2TransparentTag.pas"
// Начат: 24.03.2009 19:15
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::K2::k2PrimObjects::Tk2TransparentTag
//
// Прозрачное значение тега
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\K2\k2Define.inc}

interface

uses
  k2Interfaces,
  k2Base,
  l3ProtoObjectWithCOMQI,
  k2PureMixIns,
  k2Prim,
  l3IID,
  k2BaseTypes,
  l3Types,
  l3Interfaces
  ;

type
 _k2Int64Holder_Parent_ = Tl3ProtoObjectWithCOMQI;
 {$Include ..\K2\k2Int64Holder.imp.pas}
 Tk2TransparentTag = class(_k2Int64Holder_, Ik2Tag)
  {* Прозрачное значение тега }
 private
 // private fields
   f_Type : Tk2Type;
 protected
 // realized methods
   {iterator} function IterateChildrenF(anAction: Ik2Tag_IterateChildrenF_Action;
    aLo: Tl3Index = l3MinIndex;
    aHi: Tl3Index = l3MaxIndex;
    aLoadedOnly: Boolean = false): Integer;
   {iterator} function IterateChildrenBack(anAction: Ik2Tag_IterateChildrenBack_Action;
    aHi: Tl3Index = l3MaxIndex;
    aLo: Tl3Index = l3MinIndex;
    aLoadedOnly: Boolean = false): Integer;
   {iterator} function IterateChildrenBackF(anAction: Ik2Tag_IterateChildrenBack_Action;
    aHi: Tl3Index = l3MaxIndex;
    aLo: Tl3Index = l3MinIndex;
    aLoadedOnly: Boolean = false): Integer;
   {iterator} procedure IterateProperties(anAction: Ik2Tag_IterateProperties_Action;
    anAll: Boolean
    {* Перебирать все возможные свойства или только РЕАЛЬНО заданные});
     {* перебирает все существующие свойства }
   {iterator} procedure IteratePropertiesF(anAction: Ik2Tag_IterateProperties_Action;
    anAll: Boolean
    {* Перебирать все возможные свойства или только РЕАЛЬНО заданные});
     {* перебирает все существующие свойства }
   function Box: Ik2Tag;
     {* ссылка на тег - для сохранения. }
   function IsSame(const aTag: Ik2Tag): Boolean;
     {* указывает, что инструменты работают с одним и тем же тегом. }
   procedure CheckSort(aProp: Tk2ArrayPropertyPrim);
   function AssignTag(const Source: Ik2Tag;
    AssignMode: Tk2AssignModes = k2_amAll;
    const Context: Ik2Op = nil): Boolean;
   function CloneTag: Ik2Tag;
   procedure AssignCloneParams(const aSource: Ik2Tag;
    AssignMode: Tk2AssignModes = k2_amAll;
    const Context: Ik2Op = nil);
   procedure Write(const G: Ik2TagGenerator;
    Flags: Tk2StorePropertyFlags = l3_spfAll;
    Exclude: TByteSet = []);
     {* записать тег в генератор. }
   function pm_GetAttr(anIndex: Integer): Ik2Tag;
   procedure pm_SetAttr(anIndex: Integer; const aValue: Ik2Tag);
   procedure pm_SetAttrW(anIndex: Integer; const aContext: Ik2Op; const aValue: Ik2Tag);
   function pm_GetBoolA(anIndex: Integer): Boolean;
   procedure pm_SetBoolA(anIndex: Integer; aValue: Boolean);
   function pm_GetIntA(anIndex: Integer): Integer;
   procedure pm_SetIntA(anIndex: Integer; aValue: Integer);
   function pm_GetStrA(anIndex: Integer): AnsiString;
   procedure pm_SetStrA(anIndex: Integer; const aValue: AnsiString);
   function pm_GetChild(anIndex: Integer): Ik2Tag;
   procedure pm_SetBoolW(anIndex: Integer; const aContext: Ik2Op; aValue: Boolean);
   procedure pm_SetIntW(anIndex: Integer; const aContext: Ik2Op; aValue: Integer);
   procedure pm_SetStrW(anIndex: Integer; const aContext: Ik2Op; const aValue: AnsiString);
   function pm_GetPCharLenA(anIndex: Integer): Tl3PCharLen;
   procedure pm_SetPCharLenA(anIndex: Integer; const aValue: Tl3PCharLen);
   procedure pm_SetPCharLenW(anIndex: Integer; const aContext: Ik2Op; const aValue: Tl3WString);
   procedure pm_SetObjW(anIndex: Integer; const aContext: Ik2Op; aValue: TObject);
   function pm_GetAsString: AnsiString;
   function pm_GetAsPCharLen: Tl3PCharLen;
   function pm_GetChildrenCount: Integer;
   procedure Set_ChildrenCapacity(aValue: Integer);
   function Get_Owner: Ik2Tag;
   procedure Set_Owner(const aValue: Ik2Tag);
   function pm_GetTagType: Tk2TypePrim;
 public
 // realized methods
   function AsBool: Boolean;
     {* преобразовать к Boolean. }
   function AsLong: Integer;
   function AsObject: TObject;
   function IsOrd: Boolean;
   function InheritsFrom(anID: Integer): Boolean; overload; 
     {* проверить наследование. }
   function InheritsFrom(const anIDs: array of Integer): Boolean; overload; 
     {* проверить наследование. }
   function InheritsFrom(anAtomTypeID: Integer;
    const Exclude: array of Integer): Boolean; overload; 
     {* проверить наследование. }
   function AddChild(var aChild: Ik2Tag;
    const aContext: Ik2Op = nil): Integer;
     {* добавить ребенка. }
   procedure InsertChild(anIndex: Integer;
    var aChild: Ik2Tag;
    const aContext: Ik2Op = nil);
     {* вставить ребенка. }
   function IndexOfChild(const aChild: Ik2Tag): Integer;
   function FindChild(anAtom: Integer;
    aValue: Integer;
    const aContext: Ik2Op = nil;
    aNeedCreate: Boolean = false;
    theIndex: PLong = nil): Ik2Tag;
   procedure DeleteChildren(const Context: Ik2Op = nil);
     {* удалить всех детей. }
   function IntRef: Integer;
   procedure SetIntRef(out aRef: Integer);
   function DeleteChild(anIndex: Integer;
    const anOp: Ik2Op;
    out theChild: Ik2Tag): Boolean; overload; 
     {* удалить ребенка. }
   function DeleteChild(const aChild: Ik2Tag;
    const Context: Ik2Op = nil): Boolean; overload; 
     {* удалить ребенка. }
   function DeleteChild(anIndex: Integer;
    const anOp: Ik2Op = nil): Boolean; overload; 
   procedure DoLoad;
   procedure ForceStore;
   function MarkModified: Boolean;
   function RBool(anIndex: Integer;
    aDefault: Boolean): Boolean;
   function RLong(anIndex: Integer;
    aDefault: Integer): Integer;
   function CompareWithInt(aValue: Integer;
    anIndex: Integer): Integer;
     {* Сравнивает тег с целым. }
   function CompareWithTag(const aTag: Ik2Tag;
    aSortIndex: Tl3SortIndex): Integer;
   function RAtomEx(const Path: array of Integer;
    theIndex: PLong = nil): Ik2Tag;
     {* вернуть подтег. }
   function ROwnAtom(anIndex: Integer): Ik2Tag;
   function CAtom(anIndex: Integer;
    const aContext: Ik2Op = nil;
    anAtomType: Tk2TypePrim = nil): Ik2Tag;
     {* проверить существование подтега и создать его при необходимости. }
   function CAtomEx(const aPath: array of Integer;
    const aContext: Ik2Op;
    theIndex: PLong = nil): Ik2Tag;
     {* проверить существование подтега и создать его при необходимости. }
   function HasSubAtom(anIndex: Integer): Boolean;
   function IsNull: Boolean;
     {* пустой тег? }
   function IsValid: Boolean;
     {* тег имеет значение? }
   function IsTransparent: Boolean;
     {* тег "прозрачный"? }
   function IsStream(out theStream: IStream): Boolean;
     {* Проверяет может ли тег приводиться к потоку. И приводит к потоку - если указатель на поток - не нулевой. }
   function QT(const IID: TGUID;
    out Obj;
    const aProcessor: Ik2Processor = nil): Boolean;
     {* возвращает инструмент для работы с тегом, к которому привязан исходный инструмент. }
   function GetOwnInterface(const IID: TGUID;
    out Obj): Boolean;
     {* возвращает интерфейс НЕПОСРЕДСТВЕННО поддерживаемый реализацией инструмента. }
   function GetLinkedInterface(const IID: TGUID;
    out Obj): Boolean;
 protected
 // overridden protected methods
   {$If not defined(DesignTimeLibrary)}
   class function IsCacheable: Boolean; override;
     {* функция класса, определяющая могут ли объекты данного класса попадать в кэш повторного использования. }
   {$IfEnd} //not DesignTimeLibrary
   function COMQueryInterface(const IID: Tl3GUID;
    out Obj): Tl3HResult; override;
     {* Реализация запроса интерфейса }
 public
 // public methods
   constructor Create(aType: Tk2Type); reintroduce;
   class function Make(aType: Tk2Type): Ik2Tag; reintroduce;
 end;//Tk2TransparentTag

implementation

uses
  l3String,
  k2Strings,
  k2Const,
  l3Const,
  k2Tags,
  l3Base
  ;

type _Instance_R_ = Tk2TransparentTag;

{$Include ..\K2\k2Int64Holder.imp.pas}

// start class Tk2TransparentTag

constructor Tk2TransparentTag.Create(aType: Tk2Type);
//#UC START# *49C907900344_49C906E203A1_var*
//#UC END# *49C907900344_49C906E203A1_var*
begin
//#UC START# *49C907900344_49C906E203A1_impl*
 inherited Create;
 f_Type := aType;
//#UC END# *49C907900344_49C906E203A1_impl*
end;//Tk2TransparentTag.Create

class function Tk2TransparentTag.Make(aType: Tk2Type): Ik2Tag;
var
 l_Inst : Tk2TransparentTag;
begin
 l_Inst := Create(aType);
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

function Tk2TransparentTag.Box: Ik2Tag;
//#UC START# *47612ACF0081_49C906E203A1_var*
//#UC END# *47612ACF0081_49C906E203A1_var*
begin
//#UC START# *47612ACF0081_49C906E203A1_impl*
 Result := Self;
//#UC END# *47612ACF0081_49C906E203A1_impl*
end;//Tk2TransparentTag.Box

function Tk2TransparentTag.IsSame(const aTag: Ik2Tag): Boolean;
//#UC START# *47612C730330_49C906E203A1_var*
//#UC END# *47612C730330_49C906E203A1_var*
begin
//#UC START# *47612C730330_49C906E203A1_impl*
 Result := (aTag <> nil) AND
           aTag.IsTransparent AND f_Type.IsSame(aTag.TagType);
//#UC END# *47612C730330_49C906E203A1_impl*
end;//Tk2TransparentTag.IsSame

procedure Tk2TransparentTag.CheckSort(aProp: Tk2ArrayPropertyPrim);
//#UC START# *47612CD10380_49C906E203A1_var*
//#UC END# *47612CD10380_49C906E203A1_var*
begin
//#UC START# *47612CD10380_49C906E203A1_impl*
 Assert(false);
//#UC END# *47612CD10380_49C906E203A1_impl*
end;//Tk2TransparentTag.CheckSort

function Tk2TransparentTag.AssignTag(const Source: Ik2Tag;
  AssignMode: Tk2AssignModes = k2_amAll;
  const Context: Ik2Op = nil): Boolean;
//#UC START# *47612DD0012B_49C906E203A1_var*
//#UC END# *47612DD0012B_49C906E203A1_var*
begin
//#UC START# *47612DD0012B_49C906E203A1_impl*
 Result := false;
 Assert(false);
//#UC END# *47612DD0012B_49C906E203A1_impl*
end;//Tk2TransparentTag.AssignTag

function Tk2TransparentTag.CloneTag: Ik2Tag;
//#UC START# *47612DF00301_49C906E203A1_var*
//#UC END# *47612DF00301_49C906E203A1_var*
begin
//#UC START# *47612DF00301_49C906E203A1_impl*
 Result := Self;
//#UC END# *47612DF00301_49C906E203A1_impl*
end;//Tk2TransparentTag.CloneTag

procedure Tk2TransparentTag.AssignCloneParams(const aSource: Ik2Tag;
  AssignMode: Tk2AssignModes = k2_amAll;
  const Context: Ik2Op = nil);
//#UC START# *47612E530082_49C906E203A1_var*
//#UC END# *47612E530082_49C906E203A1_var*
begin
//#UC START# *47612E530082_49C906E203A1_impl*
 Assert(false);
//#UC END# *47612E530082_49C906E203A1_impl*
end;//Tk2TransparentTag.AssignCloneParams

procedure Tk2TransparentTag.Write(const G: Ik2TagGenerator;
  Flags: Tk2StorePropertyFlags = l3_spfAll;
  Exclude: TByteSet = []);
//#UC START# *4761324203B8_49C906E203A1_var*
//#UC END# *4761324203B8_49C906E203A1_var*
begin
//#UC START# *4761324203B8_49C906E203A1_impl*
 Assert(false);
//#UC END# *4761324203B8_49C906E203A1_impl*
end;//Tk2TransparentTag.Write

function Tk2TransparentTag.pm_GetAttr(anIndex: Integer): Ik2Tag;
//#UC START# *476133660285_49C906E203A1get_var*
//#UC END# *476133660285_49C906E203A1get_var*
begin
//#UC START# *476133660285_49C906E203A1get_impl*
 Result := k2NullTag;
//#UC END# *476133660285_49C906E203A1get_impl*
end;//Tk2TransparentTag.pm_GetAttr

procedure Tk2TransparentTag.pm_SetAttr(anIndex: Integer; const aValue: Ik2Tag);
//#UC START# *476133660285_49C906E203A1set_var*
//#UC END# *476133660285_49C906E203A1set_var*
begin
//#UC START# *476133660285_49C906E203A1set_impl*
 Assert(false);
//#UC END# *476133660285_49C906E203A1set_impl*
end;//Tk2TransparentTag.pm_SetAttr

procedure Tk2TransparentTag.pm_SetAttrW(anIndex: Integer; const aContext: Ik2Op; const aValue: Ik2Tag);
//#UC START# *4761347C0392_49C906E203A1set_var*
//#UC END# *4761347C0392_49C906E203A1set_var*
begin
//#UC START# *4761347C0392_49C906E203A1set_impl*
 Assert(false);
//#UC END# *4761347C0392_49C906E203A1set_impl*
end;//Tk2TransparentTag.pm_SetAttrW

function Tk2TransparentTag.pm_GetBoolA(anIndex: Integer): Boolean;
//#UC START# *4761365402FF_49C906E203A1get_var*
//#UC END# *4761365402FF_49C906E203A1get_var*
begin
//#UC START# *4761365402FF_49C906E203A1get_impl*
 Result := false;
//#UC END# *4761365402FF_49C906E203A1get_impl*
end;//Tk2TransparentTag.pm_GetBoolA

procedure Tk2TransparentTag.pm_SetBoolA(anIndex: Integer; aValue: Boolean);
//#UC START# *4761365402FF_49C906E203A1set_var*
//#UC END# *4761365402FF_49C906E203A1set_var*
begin
//#UC START# *4761365402FF_49C906E203A1set_impl*
 Assert(false);
//#UC END# *4761365402FF_49C906E203A1set_impl*
end;//Tk2TransparentTag.pm_SetBoolA

function Tk2TransparentTag.pm_GetIntA(anIndex: Integer): Integer;
//#UC START# *4761368701AB_49C906E203A1get_var*
//#UC END# *4761368701AB_49C906E203A1get_var*
begin
//#UC START# *4761368701AB_49C906E203A1get_impl*
 Result := 0;
//#UC END# *4761368701AB_49C906E203A1get_impl*
end;//Tk2TransparentTag.pm_GetIntA

procedure Tk2TransparentTag.pm_SetIntA(anIndex: Integer; aValue: Integer);
//#UC START# *4761368701AB_49C906E203A1set_var*
//#UC END# *4761368701AB_49C906E203A1set_var*
begin
//#UC START# *4761368701AB_49C906E203A1set_impl*
 Assert(false);
//#UC END# *4761368701AB_49C906E203A1set_impl*
end;//Tk2TransparentTag.pm_SetIntA

function Tk2TransparentTag.pm_GetStrA(anIndex: Integer): AnsiString;
//#UC START# *4761370F0048_49C906E203A1get_var*
//#UC END# *4761370F0048_49C906E203A1get_var*
begin
//#UC START# *4761370F0048_49C906E203A1get_impl*
 Result := '';
//#UC END# *4761370F0048_49C906E203A1get_impl*
end;//Tk2TransparentTag.pm_GetStrA

procedure Tk2TransparentTag.pm_SetStrA(anIndex: Integer; const aValue: AnsiString);
//#UC START# *4761370F0048_49C906E203A1set_var*
//#UC END# *4761370F0048_49C906E203A1set_var*
begin
//#UC START# *4761370F0048_49C906E203A1set_impl*
 Assert(false);
//#UC END# *4761370F0048_49C906E203A1set_impl*
end;//Tk2TransparentTag.pm_SetStrA

function Tk2TransparentTag.pm_GetChild(anIndex: Integer): Ik2Tag;
//#UC START# *47613B8303CC_49C906E203A1get_var*
//#UC END# *47613B8303CC_49C906E203A1get_var*
begin
//#UC START# *47613B8303CC_49C906E203A1get_impl*
 Result := k2NullTag;
//#UC END# *47613B8303CC_49C906E203A1get_impl*
end;//Tk2TransparentTag.pm_GetChild

procedure Tk2TransparentTag.pm_SetBoolW(anIndex: Integer; const aContext: Ik2Op; aValue: Boolean);
//#UC START# *47613C0F02F4_49C906E203A1set_var*
//#UC END# *47613C0F02F4_49C906E203A1set_var*
begin
//#UC START# *47613C0F02F4_49C906E203A1set_impl*
 Assert(false);
//#UC END# *47613C0F02F4_49C906E203A1set_impl*
end;//Tk2TransparentTag.pm_SetBoolW

procedure Tk2TransparentTag.pm_SetIntW(anIndex: Integer; const aContext: Ik2Op; aValue: Integer);
//#UC START# *47613C6A001F_49C906E203A1set_var*
//#UC END# *47613C6A001F_49C906E203A1set_var*
begin
//#UC START# *47613C6A001F_49C906E203A1set_impl*
 Assert(false);
//#UC END# *47613C6A001F_49C906E203A1set_impl*
end;//Tk2TransparentTag.pm_SetIntW

procedure Tk2TransparentTag.pm_SetStrW(anIndex: Integer; const aContext: Ik2Op; const aValue: AnsiString);
//#UC START# *47613D4E02B3_49C906E203A1set_var*
//#UC END# *47613D4E02B3_49C906E203A1set_var*
begin
//#UC START# *47613D4E02B3_49C906E203A1set_impl*
 Assert(false);
//#UC END# *47613D4E02B3_49C906E203A1set_impl*
end;//Tk2TransparentTag.pm_SetStrW

function Tk2TransparentTag.pm_GetPCharLenA(anIndex: Integer): Tl3PCharLen;
//#UC START# *47613DB001A3_49C906E203A1get_var*
//#UC END# *47613DB001A3_49C906E203A1get_var*
begin
//#UC START# *47613DB001A3_49C906E203A1get_impl*
 l3AssignNil(Result);
//#UC END# *47613DB001A3_49C906E203A1get_impl*
end;//Tk2TransparentTag.pm_GetPCharLenA

procedure Tk2TransparentTag.pm_SetPCharLenA(anIndex: Integer; const aValue: Tl3PCharLen);
//#UC START# *47613DB001A3_49C906E203A1set_var*
//#UC END# *47613DB001A3_49C906E203A1set_var*
begin
//#UC START# *47613DB001A3_49C906E203A1set_impl*
 Assert(false);
//#UC END# *47613DB001A3_49C906E203A1set_impl*
end;//Tk2TransparentTag.pm_SetPCharLenA

procedure Tk2TransparentTag.pm_SetPCharLenW(anIndex: Integer; const aContext: Ik2Op; const aValue: Tl3WString);
//#UC START# *47613E120125_49C906E203A1set_var*
//#UC END# *47613E120125_49C906E203A1set_var*
begin
//#UC START# *47613E120125_49C906E203A1set_impl*
 Assert(false);
//#UC END# *47613E120125_49C906E203A1set_impl*
end;//Tk2TransparentTag.pm_SetPCharLenW

procedure Tk2TransparentTag.pm_SetObjW(anIndex: Integer; const aContext: Ik2Op; aValue: TObject);
//#UC START# *47613EA10105_49C906E203A1set_var*
//#UC END# *47613EA10105_49C906E203A1set_var*
begin
//#UC START# *47613EA10105_49C906E203A1set_impl*
 Assert(false);
//#UC END# *47613EA10105_49C906E203A1set_impl*
end;//Tk2TransparentTag.pm_SetObjW

function Tk2TransparentTag.pm_GetAsString: AnsiString;
//#UC START# *4A42149A01FE_49C906E203A1get_var*
//#UC END# *4A42149A01FE_49C906E203A1get_var*
begin
//#UC START# *4A42149A01FE_49C906E203A1get_impl*
 Result := '';
//#UC END# *4A42149A01FE_49C906E203A1get_impl*
end;//Tk2TransparentTag.pm_GetAsString

function Tk2TransparentTag.pm_GetAsPCharLen: Tl3PCharLen;
//#UC START# *4A4216790331_49C906E203A1get_var*
//#UC END# *4A4216790331_49C906E203A1get_var*
begin
//#UC START# *4A4216790331_49C906E203A1get_impl*
 l3AssignNil(Result);
//#UC END# *4A4216790331_49C906E203A1get_impl*
end;//Tk2TransparentTag.pm_GetAsPCharLen

function Tk2TransparentTag.AsBool: Boolean;
//#UC START# *4A42195A0244_49C906E203A1_var*
//#UC END# *4A42195A0244_49C906E203A1_var*
begin
//#UC START# *4A42195A0244_49C906E203A1_impl*
 Result := true;
//#UC END# *4A42195A0244_49C906E203A1_impl*
end;//Tk2TransparentTag.AsBool

function Tk2TransparentTag.AsLong: Integer;
//#UC START# *4A42196201B8_49C906E203A1_var*
//#UC END# *4A42196201B8_49C906E203A1_var*
begin
//#UC START# *4A42196201B8_49C906E203A1_impl*
 Result := k2_TransparentValue;
//#UC END# *4A42196201B8_49C906E203A1_impl*
end;//Tk2TransparentTag.AsLong

function Tk2TransparentTag.AsObject: TObject;
//#UC START# *4A42196C01CE_49C906E203A1_var*
//#UC END# *4A42196C01CE_49C906E203A1_var*
begin
//#UC START# *4A42196C01CE_49C906E203A1_impl*
 Result := nil 
//#UC END# *4A42196C01CE_49C906E203A1_impl*
end;//Tk2TransparentTag.AsObject

function Tk2TransparentTag.IsOrd: Boolean;
//#UC START# *4A421BE201A9_49C906E203A1_var*
//#UC END# *4A421BE201A9_49C906E203A1_var*
begin
//#UC START# *4A421BE201A9_49C906E203A1_impl*
 Result := true;
//#UC END# *4A421BE201A9_49C906E203A1_impl*
end;//Tk2TransparentTag.IsOrd

function Tk2TransparentTag.InheritsFrom(anID: Integer): Boolean;
//#UC START# *4A421BED00FF_49C906E203A1_var*
//#UC END# *4A421BED00FF_49C906E203A1_var*
begin
//#UC START# *4A421BED00FF_49C906E203A1_impl*
 Result := f_Type.InheritsFrom(anID);
//#UC END# *4A421BED00FF_49C906E203A1_impl*
end;//Tk2TransparentTag.InheritsFrom

function Tk2TransparentTag.InheritsFrom(const anIDs: array of Integer): Boolean;
//#UC START# *4A421BF200BF_49C906E203A1_var*
//#UC END# *4A421BF200BF_49C906E203A1_var*
begin
//#UC START# *4A421BF200BF_49C906E203A1_impl*
 Result := f_Type.InheritsFrom(anIDs);
//#UC END# *4A421BF200BF_49C906E203A1_impl*
end;//Tk2TransparentTag.InheritsFrom

function Tk2TransparentTag.InheritsFrom(anAtomTypeID: Integer;
  const Exclude: array of Integer): Boolean;
//#UC START# *4A421C12034A_49C906E203A1_var*
//#UC END# *4A421C12034A_49C906E203A1_var*
begin
//#UC START# *4A421C12034A_49C906E203A1_impl*
 Result := f_Type.InheritsFrom(anAtomTypeID, Exclude);
//#UC END# *4A421C12034A_49C906E203A1_impl*
end;//Tk2TransparentTag.InheritsFrom

function Tk2TransparentTag.AddChild(var aChild: Ik2Tag;
  const aContext: Ik2Op = nil): Integer;
//#UC START# *4A422C1D00FE_49C906E203A1_var*
//#UC END# *4A422C1D00FE_49C906E203A1_var*
begin
//#UC START# *4A422C1D00FE_49C906E203A1_impl*
 Result := -1;
//#UC END# *4A422C1D00FE_49C906E203A1_impl*
end;//Tk2TransparentTag.AddChild

function Tk2TransparentTag.pm_GetChildrenCount: Integer;
//#UC START# *4A42356B0022_49C906E203A1get_var*
//#UC END# *4A42356B0022_49C906E203A1get_var*
begin
//#UC START# *4A42356B0022_49C906E203A1get_impl*
 Result := 0;
//#UC END# *4A42356B0022_49C906E203A1get_impl*
end;//Tk2TransparentTag.pm_GetChildrenCount

procedure Tk2TransparentTag.InsertChild(anIndex: Integer;
  var aChild: Ik2Tag;
  const aContext: Ik2Op = nil);
//#UC START# *4A42358A00C2_49C906E203A1_var*
//#UC END# *4A42358A00C2_49C906E203A1_var*
begin
//#UC START# *4A42358A00C2_49C906E203A1_impl*
 Assert(false);
//#UC END# *4A42358A00C2_49C906E203A1_impl*
end;//Tk2TransparentTag.InsertChild

function Tk2TransparentTag.IndexOfChild(const aChild: Ik2Tag): Integer;
//#UC START# *4A4235B70288_49C906E203A1_var*
//#UC END# *4A4235B70288_49C906E203A1_var*
begin
//#UC START# *4A4235B70288_49C906E203A1_impl*
 Result := -1;
//#UC END# *4A4235B70288_49C906E203A1_impl*
end;//Tk2TransparentTag.IndexOfChild

function Tk2TransparentTag.FindChild(anAtom: Integer;
  aValue: Integer;
  const aContext: Ik2Op = nil;
  aNeedCreate: Boolean = false;
  theIndex: PLong = nil): Ik2Tag;
//#UC START# *4A42374B0371_49C906E203A1_var*
//#UC END# *4A42374B0371_49C906E203A1_var*
begin
//#UC START# *4A42374B0371_49C906E203A1_impl*
 Result := k2NullTag;
 if (theIndex <> nil) then
  theIndex^ := -1;
//#UC END# *4A42374B0371_49C906E203A1_impl*
end;//Tk2TransparentTag.FindChild

procedure Tk2TransparentTag.DeleteChildren(const Context: Ik2Op = nil);
//#UC START# *4A42378D0030_49C906E203A1_var*
//#UC END# *4A42378D0030_49C906E203A1_var*
begin
//#UC START# *4A42378D0030_49C906E203A1_impl*
 Assert(false);
//#UC END# *4A42378D0030_49C906E203A1_impl*
end;//Tk2TransparentTag.DeleteChildren

function Tk2TransparentTag.IntRef: Integer;
//#UC START# *4A423C5B0038_49C906E203A1_var*
//#UC END# *4A423C5B0038_49C906E203A1_var*
begin
//#UC START# *4A423C5B0038_49C906E203A1_impl*
 Result := k2_TransparentValue;
//#UC END# *4A423C5B0038_49C906E203A1_impl*
end;//Tk2TransparentTag.IntRef

procedure Tk2TransparentTag.SetIntRef(out aRef: Integer);
//#UC START# *4A423C670156_49C906E203A1_var*
//#UC END# *4A423C670156_49C906E203A1_var*
begin
//#UC START# *4A423C670156_49C906E203A1_impl*
 aRef := k2_TransparentValue;
//#UC END# *4A423C670156_49C906E203A1_impl*
end;//Tk2TransparentTag.SetIntRef

function Tk2TransparentTag.DeleteChild(anIndex: Integer;
  const anOp: Ik2Op;
  out theChild: Ik2Tag): Boolean;
//#UC START# *4A423EC900C2_49C906E203A1_var*
//#UC END# *4A423EC900C2_49C906E203A1_var*
begin
//#UC START# *4A423EC900C2_49C906E203A1_impl*
 Result := false;
 Assert(false);
//#UC END# *4A423EC900C2_49C906E203A1_impl*
end;//Tk2TransparentTag.DeleteChild

function Tk2TransparentTag.DeleteChild(const aChild: Ik2Tag;
  const Context: Ik2Op = nil): Boolean;
//#UC START# *4A423ECE03A6_49C906E203A1_var*
//#UC END# *4A423ECE03A6_49C906E203A1_var*
begin
//#UC START# *4A423ECE03A6_49C906E203A1_impl*
 Result := false;
 Assert(false);
//#UC END# *4A423ECE03A6_49C906E203A1_impl*
end;//Tk2TransparentTag.DeleteChild

function Tk2TransparentTag.DeleteChild(anIndex: Integer;
  const anOp: Ik2Op = nil): Boolean;
//#UC START# *4A423F0002E2_49C906E203A1_var*
//#UC END# *4A423F0002E2_49C906E203A1_var*
begin
//#UC START# *4A423F0002E2_49C906E203A1_impl*
 Result := false;
 Assert(false);
//#UC END# *4A423F0002E2_49C906E203A1_impl*
end;//Tk2TransparentTag.DeleteChild

procedure Tk2TransparentTag.DoLoad;
//#UC START# *4A42489800D0_49C906E203A1_var*
//#UC END# *4A42489800D0_49C906E203A1_var*
begin
//#UC START# *4A42489800D0_49C906E203A1_impl*
//#UC END# *4A42489800D0_49C906E203A1_impl*
end;//Tk2TransparentTag.DoLoad

procedure Tk2TransparentTag.ForceStore;
//#UC START# *4A4248A501C8_49C906E203A1_var*
//#UC END# *4A4248A501C8_49C906E203A1_var*
begin
//#UC START# *4A4248A501C8_49C906E203A1_impl*
//#UC END# *4A4248A501C8_49C906E203A1_impl*
end;//Tk2TransparentTag.ForceStore

function Tk2TransparentTag.MarkModified: Boolean;
//#UC START# *4A4248C902F1_49C906E203A1_var*
//#UC END# *4A4248C902F1_49C906E203A1_var*
begin
//#UC START# *4A4248C902F1_49C906E203A1_impl*
 Result := false;
//#UC END# *4A4248C902F1_49C906E203A1_impl*
end;//Tk2TransparentTag.MarkModified

procedure Tk2TransparentTag.Set_ChildrenCapacity(aValue: Integer);
//#UC START# *4A6039AA0172_49C906E203A1set_var*
//#UC END# *4A6039AA0172_49C906E203A1set_var*
begin
//#UC START# *4A6039AA0172_49C906E203A1set_impl*
 Assert(false);
//#UC END# *4A6039AA0172_49C906E203A1set_impl*
end;//Tk2TransparentTag.Set_ChildrenCapacity

function Tk2TransparentTag.Get_Owner: Ik2Tag;
//#UC START# *4A6475C4026D_49C906E203A1get_var*
//#UC END# *4A6475C4026D_49C906E203A1get_var*
begin
//#UC START# *4A6475C4026D_49C906E203A1get_impl*
 Result := k2NullTag;
//#UC END# *4A6475C4026D_49C906E203A1get_impl*
end;//Tk2TransparentTag.Get_Owner

procedure Tk2TransparentTag.Set_Owner(const aValue: Ik2Tag);
//#UC START# *4A6475C4026D_49C906E203A1set_var*
//#UC END# *4A6475C4026D_49C906E203A1set_var*
begin
//#UC START# *4A6475C4026D_49C906E203A1set_impl*
//#UC END# *4A6475C4026D_49C906E203A1set_impl*
end;//Tk2TransparentTag.Set_Owner

function Tk2TransparentTag.RBool(anIndex: Integer;
  aDefault: Boolean): Boolean;
//#UC START# *4BC71AF503DC_49C906E203A1_var*
//#UC END# *4BC71AF503DC_49C906E203A1_var*
begin
//#UC START# *4BC71AF503DC_49C906E203A1_impl*
 Result := aDefault;
//#UC END# *4BC71AF503DC_49C906E203A1_impl*
end;//Tk2TransparentTag.RBool

function Tk2TransparentTag.RLong(anIndex: Integer;
  aDefault: Integer): Integer;
//#UC START# *4BC71B0A028C_49C906E203A1_var*
//#UC END# *4BC71B0A028C_49C906E203A1_var*
begin
//#UC START# *4BC71B0A028C_49C906E203A1_impl*
 Result := aDefault;
//#UC END# *4BC71B0A028C_49C906E203A1_impl*
end;//Tk2TransparentTag.RLong

function Tk2TransparentTag.pm_GetTagType: Tk2TypePrim;
//#UC START# *4BC71F3B02A3_49C906E203A1get_var*
//#UC END# *4BC71F3B02A3_49C906E203A1get_var*
begin
//#UC START# *4BC71F3B02A3_49C906E203A1get_impl*
 Result := f_Type;
//#UC END# *4BC71F3B02A3_49C906E203A1get_impl*
end;//Tk2TransparentTag.pm_GetTagType

function Tk2TransparentTag.CompareWithInt(aValue: Integer;
  anIndex: Integer): Integer;
//#UC START# *4BC8415802B6_49C906E203A1_var*
//#UC END# *4BC8415802B6_49C906E203A1_var*
begin
//#UC START# *4BC8415802B6_49C906E203A1_impl*
 Assert(false);
 Result := -1;
//#UC END# *4BC8415802B6_49C906E203A1_impl*
end;//Tk2TransparentTag.CompareWithInt

function Tk2TransparentTag.CompareWithTag(const aTag: Ik2Tag;
  aSortIndex: Tl3SortIndex): Integer;
//#UC START# *4BC8415E021A_49C906E203A1_var*
//#UC END# *4BC8415E021A_49C906E203A1_var*
begin
//#UC START# *4BC8415E021A_49C906E203A1_impl*
 Assert(false);
 Result := -1;
//#UC END# *4BC8415E021A_49C906E203A1_impl*
end;//Tk2TransparentTag.CompareWithTag

function Tk2TransparentTag.RAtomEx(const Path: array of Integer;
  theIndex: PLong = nil): Ik2Tag;
//#UC START# *4BC843A5011F_49C906E203A1_var*
//#UC END# *4BC843A5011F_49C906E203A1_var*
begin
//#UC START# *4BC843A5011F_49C906E203A1_impl*
 Result := k2NullTag;
//#UC END# *4BC843A5011F_49C906E203A1_impl*
end;//Tk2TransparentTag.RAtomEx

function Tk2TransparentTag.ROwnAtom(anIndex: Integer): Ik2Tag;
//#UC START# *4BC843C40240_49C906E203A1_var*
//#UC END# *4BC843C40240_49C906E203A1_var*
begin
//#UC START# *4BC843C40240_49C906E203A1_impl*
 Result := k2NullTag;
//#UC END# *4BC843C40240_49C906E203A1_impl*
end;//Tk2TransparentTag.ROwnAtom

function Tk2TransparentTag.CAtom(anIndex: Integer;
  const aContext: Ik2Op = nil;
  anAtomType: Tk2TypePrim = nil): Ik2Tag;
//#UC START# *4BC843C80301_49C906E203A1_var*
//#UC END# *4BC843C80301_49C906E203A1_var*
begin
//#UC START# *4BC843C80301_49C906E203A1_impl*
 Result := k2NullTag;
//#UC END# *4BC843C80301_49C906E203A1_impl*
end;//Tk2TransparentTag.CAtom

function Tk2TransparentTag.CAtomEx(const aPath: array of Integer;
  const aContext: Ik2Op;
  theIndex: PLong = nil): Ik2Tag;
//#UC START# *4BC843CE00EF_49C906E203A1_var*
//#UC END# *4BC843CE00EF_49C906E203A1_var*
begin
//#UC START# *4BC843CE00EF_49C906E203A1_impl*
 Result := k2NullTag;
//#UC END# *4BC843CE00EF_49C906E203A1_impl*
end;//Tk2TransparentTag.CAtomEx

function Tk2TransparentTag.HasSubAtom(anIndex: Integer): Boolean;
//#UC START# *4BC8441500B7_49C906E203A1_var*
//#UC END# *4BC8441500B7_49C906E203A1_var*
begin
//#UC START# *4BC8441500B7_49C906E203A1_impl*
 Result := false;
//#UC END# *4BC8441500B7_49C906E203A1_impl*
end;//Tk2TransparentTag.HasSubAtom

function Tk2TransparentTag.IsNull: Boolean;
//#UC START# *4BC8446D010E_49C906E203A1_var*
//#UC END# *4BC8446D010E_49C906E203A1_var*
begin
//#UC START# *4BC8446D010E_49C906E203A1_impl*
 Result := false;
//#UC END# *4BC8446D010E_49C906E203A1_impl*
end;//Tk2TransparentTag.IsNull

function Tk2TransparentTag.IsValid: Boolean;
//#UC START# *4BC8447200B0_49C906E203A1_var*
//#UC END# *4BC8447200B0_49C906E203A1_var*
begin
//#UC START# *4BC8447200B0_49C906E203A1_impl*
 Result := false;
//#UC END# *4BC8447200B0_49C906E203A1_impl*
end;//Tk2TransparentTag.IsValid

function Tk2TransparentTag.IsTransparent: Boolean;
//#UC START# *4BC8447501CB_49C906E203A1_var*
//#UC END# *4BC8447501CB_49C906E203A1_var*
begin
//#UC START# *4BC8447501CB_49C906E203A1_impl*
 Result := true;
//#UC END# *4BC8447501CB_49C906E203A1_impl*
end;//Tk2TransparentTag.IsTransparent

function Tk2TransparentTag.IsStream(out theStream: IStream): Boolean;
//#UC START# *4BC8447A0046_49C906E203A1_var*
//#UC END# *4BC8447A0046_49C906E203A1_var*
begin
//#UC START# *4BC8447A0046_49C906E203A1_impl*
 Result := false;
//#UC END# *4BC8447A0046_49C906E203A1_impl*
end;//Tk2TransparentTag.IsStream

function Tk2TransparentTag.QT(const IID: TGUID;
  out Obj;
  const aProcessor: Ik2Processor = nil): Boolean;
//#UC START# *4BC84CA1035B_49C906E203A1_var*
//#UC END# *4BC84CA1035B_49C906E203A1_var*
begin
//#UC START# *4BC84CA1035B_49C906E203A1_impl*
 Result := false;
 Pointer(Obj) := nil;
//#UC END# *4BC84CA1035B_49C906E203A1_impl*
end;//Tk2TransparentTag.QT

function Tk2TransparentTag.GetOwnInterface(const IID: TGUID;
  out Obj): Boolean;
//#UC START# *4BC84CEE0329_49C906E203A1_var*
//#UC END# *4BC84CEE0329_49C906E203A1_var*
begin
//#UC START# *4BC84CEE0329_49C906E203A1_impl*
 Result := GetInterface(IID, Obj);
//#UC END# *4BC84CEE0329_49C906E203A1_impl*
end;//Tk2TransparentTag.GetOwnInterface

function Tk2TransparentTag.GetLinkedInterface(const IID: TGUID;
  out Obj): Boolean;
//#UC START# *4BC84CF702F5_49C906E203A1_var*
//#UC END# *4BC84CF702F5_49C906E203A1_var*
begin
//#UC START# *4BC84CF702F5_49C906E203A1_impl*
 Result := GetOwnInterface(IID, Obj);
//#UC END# *4BC84CF702F5_49C906E203A1_impl*
end;//Tk2TransparentTag.GetLinkedInterface

{$If not defined(DesignTimeLibrary)}
class function Tk2TransparentTag.IsCacheable: Boolean;
//#UC START# *47A6FEE600FC_49C906E203A1_var*
//#UC END# *47A6FEE600FC_49C906E203A1_var*
begin
//#UC START# *47A6FEE600FC_49C906E203A1_impl*
 Result := true;
//#UC END# *47A6FEE600FC_49C906E203A1_impl*
end;//Tk2TransparentTag.IsCacheable
{$IfEnd} //not DesignTimeLibrary

function Tk2TransparentTag.COMQueryInterface(const IID: Tl3GUID;
  out Obj): Tl3HResult;
//#UC START# *4A60B23E00C3_49C906E203A1_var*
//#UC END# *4A60B23E00C3_49C906E203A1_var*
begin
//#UC START# *4A60B23E00C3_49C906E203A1_impl*
 Result := inherited COMQueryInterface(IID, Obj);
 if Result.Fail then
  if IID.EQ(Ik2Tag) then
  begin
   Ik2Tag(Obj) := Self;
   Result.SetOk;
  end;//IID.EQ(Ik2Tag)
//#UC END# *4A60B23E00C3_49C906E203A1_impl*
end;//Tk2TransparentTag.COMQueryInterface

{iterator} function Tk2TransparentTag.IterateChildrenF(anAction: Ik2Tag_IterateChildrenF_Action;
  aLo: Tl3Index = l3MinIndex;
  aHi: Tl3Index = l3MaxIndex;
  aLoadedOnly: Boolean = false): Integer;
//#UC START# *4BB21F9D022F_49C906E203A1_var*
//#UC END# *4BB21F9D022F_49C906E203A1_var*
begin
//#UC START# *4BB21F9D022F_49C906E203A1_impl*
 Result := -1;
 k2FreeTIA(anAction);
//#UC END# *4BB21F9D022F_49C906E203A1_impl*
end;//Tk2TransparentTag.IterateChildrenF

{iterator} function Tk2TransparentTag.IterateChildrenBack(anAction: Ik2Tag_IterateChildrenBack_Action;
  aHi: Tl3Index = l3MaxIndex;
  aLo: Tl3Index = l3MinIndex;
  aLoadedOnly: Boolean = false): Integer;
//#UC START# *4BBF49EB0260_49C906E203A1_var*
//#UC END# *4BBF49EB0260_49C906E203A1_var*
begin
//#UC START# *4BBF49EB0260_49C906E203A1_impl*
 Result := -1;
//#UC END# *4BBF49EB0260_49C906E203A1_impl*
end;//Tk2TransparentTag.IterateChildrenBack

{iterator} function Tk2TransparentTag.IterateChildrenBackF(anAction: Ik2Tag_IterateChildrenBack_Action;
  aHi: Tl3Index = l3MaxIndex;
  aLo: Tl3Index = l3MinIndex;
  aLoadedOnly: Boolean = false): Integer;
var
 Hack : Pointer absolute anAction;
begin
 try
  Result := IterateChildrenBack(anAction, aHi, aLo, aLoadedOnly);
 finally
  l3FreeLocalStub(Hack);
 end;//try..finally
end;

{iterator} procedure Tk2TransparentTag.IterateProperties(anAction: Ik2Tag_IterateProperties_Action;
  anAll: Boolean
  {* Перебирать все возможные свойства или только РЕАЛЬНО заданные});
//#UC START# *4BC31A730293_49C906E203A1_var*
//#UC END# *4BC31A730293_49C906E203A1_var*
begin
//#UC START# *4BC31A730293_49C906E203A1_impl*
 Assert(false);
//#UC END# *4BC31A730293_49C906E203A1_impl*
end;//Tk2TransparentTag.IterateProperties

{iterator} procedure Tk2TransparentTag.IteratePropertiesF(anAction: Ik2Tag_IterateProperties_Action;
  anAll: Boolean
  {* Перебирать все возможные свойства или только РЕАЛЬНО заданные});
var
 Hack : Pointer absolute anAction;
begin
 try
  IterateProperties(anAction, anAll);
 finally
  l3FreeLocalStub(Hack);
 end;//try..finally
end;

end.