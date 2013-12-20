unit k2NullTagImplPrim;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/K2/k2NullTagImplPrim.pas"
// Начат: 12.04.1998 11:28
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::K2::k2PrimObjects::Tk2NullTagImplPrim
//
// Реализация пустого тега
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
  l3ProtoObject,
  k2PureMixIns,
  k2Prim,
  k2BaseTypes,
  l3Types,
  l3Interfaces
  ;

type
 _k2Int64Holder_Parent_ = Tl3ProtoObject;
 {$Include ..\K2\k2Int64Holder.imp.pas}
 Tk2NullTagImplPrim = class(_k2Int64Holder_, Ik2Tag)
  {* Реализация пустого тега }
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
 public
 // public methods
   class function Make: Ik2Tag; reintroduce;
     {* Фабрика }
 end;//Tk2NullTagImplPrim

implementation

uses
  k2Base,
  l3Const,
  l3String,
  k2Strings,
  k2Tags,
  l3Base
  ;

type _Instance_R_ = Tk2NullTagImplPrim;

{$Include ..\K2\k2Int64Holder.imp.pas}

// start class Tk2NullTagImplPrim

class function Tk2NullTagImplPrim.Make: Ik2Tag;
var
 l_Inst : Tk2NullTagImplPrim;
begin
 l_Inst := Create;
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

function Tk2NullTagImplPrim.Box: Ik2Tag;
//#UC START# *47612ACF0081_49A69B87036C_var*
//#UC END# *47612ACF0081_49A69B87036C_var*
begin
//#UC START# *47612ACF0081_49A69B87036C_impl*
 Result := Self;
//#UC END# *47612ACF0081_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.Box

function Tk2NullTagImplPrim.IsSame(const aTag: Ik2Tag): Boolean;
//#UC START# *47612C730330_49A69B87036C_var*
//#UC END# *47612C730330_49A69B87036C_var*
begin
//#UC START# *47612C730330_49A69B87036C_impl*
 Result := (aTag = nil) OR aTag.IsNull;
//#UC END# *47612C730330_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.IsSame

procedure Tk2NullTagImplPrim.CheckSort(aProp: Tk2ArrayPropertyPrim);
//#UC START# *47612CD10380_49A69B87036C_var*
//#UC END# *47612CD10380_49A69B87036C_var*
begin
//#UC START# *47612CD10380_49A69B87036C_impl*
 Assert(false);
//#UC END# *47612CD10380_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.CheckSort

function Tk2NullTagImplPrim.AssignTag(const Source: Ik2Tag;
  AssignMode: Tk2AssignModes = k2_amAll;
  const Context: Ik2Op = nil): Boolean;
//#UC START# *47612DD0012B_49A69B87036C_var*
//#UC END# *47612DD0012B_49A69B87036C_var*
begin
//#UC START# *47612DD0012B_49A69B87036C_impl*
 Result := false;
 Assert(false);
//#UC END# *47612DD0012B_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.AssignTag

function Tk2NullTagImplPrim.CloneTag: Ik2Tag;
//#UC START# *47612DF00301_49A69B87036C_var*
//#UC END# *47612DF00301_49A69B87036C_var*
begin
//#UC START# *47612DF00301_49A69B87036C_impl*
 Result := Self;
//#UC END# *47612DF00301_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.CloneTag

procedure Tk2NullTagImplPrim.AssignCloneParams(const aSource: Ik2Tag;
  AssignMode: Tk2AssignModes = k2_amAll;
  const Context: Ik2Op = nil);
//#UC START# *47612E530082_49A69B87036C_var*
//#UC END# *47612E530082_49A69B87036C_var*
begin
//#UC START# *47612E530082_49A69B87036C_impl*
 Assert(false);
//#UC END# *47612E530082_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.AssignCloneParams

procedure Tk2NullTagImplPrim.Write(const G: Ik2TagGenerator;
  Flags: Tk2StorePropertyFlags = l3_spfAll;
  Exclude: TByteSet = []);
//#UC START# *4761324203B8_49A69B87036C_var*
//#UC END# *4761324203B8_49A69B87036C_var*
begin
//#UC START# *4761324203B8_49A69B87036C_impl*
 Assert(false);
//#UC END# *4761324203B8_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.Write

function Tk2NullTagImplPrim.pm_GetAttr(anIndex: Integer): Ik2Tag;
//#UC START# *476133660285_49A69B87036Cget_var*
//#UC END# *476133660285_49A69B87036Cget_var*
begin
//#UC START# *476133660285_49A69B87036Cget_impl*
 Result := Self;
//#UC END# *476133660285_49A69B87036Cget_impl*
end;//Tk2NullTagImplPrim.pm_GetAttr

procedure Tk2NullTagImplPrim.pm_SetAttr(anIndex: Integer; const aValue: Ik2Tag);
//#UC START# *476133660285_49A69B87036Cset_var*
//#UC END# *476133660285_49A69B87036Cset_var*
begin
//#UC START# *476133660285_49A69B87036Cset_impl*
 Assert(false);
//#UC END# *476133660285_49A69B87036Cset_impl*
end;//Tk2NullTagImplPrim.pm_SetAttr

procedure Tk2NullTagImplPrim.pm_SetAttrW(anIndex: Integer; const aContext: Ik2Op; const aValue: Ik2Tag);
//#UC START# *4761347C0392_49A69B87036Cset_var*
//#UC END# *4761347C0392_49A69B87036Cset_var*
begin
//#UC START# *4761347C0392_49A69B87036Cset_impl*
 Assert(false);
//#UC END# *4761347C0392_49A69B87036Cset_impl*
end;//Tk2NullTagImplPrim.pm_SetAttrW

function Tk2NullTagImplPrim.pm_GetBoolA(anIndex: Integer): Boolean;
//#UC START# *4761365402FF_49A69B87036Cget_var*
//#UC END# *4761365402FF_49A69B87036Cget_var*
begin
//#UC START# *4761365402FF_49A69B87036Cget_impl*
 Result := false;
//#UC END# *4761365402FF_49A69B87036Cget_impl*
end;//Tk2NullTagImplPrim.pm_GetBoolA

procedure Tk2NullTagImplPrim.pm_SetBoolA(anIndex: Integer; aValue: Boolean);
//#UC START# *4761365402FF_49A69B87036Cset_var*
//#UC END# *4761365402FF_49A69B87036Cset_var*
begin
//#UC START# *4761365402FF_49A69B87036Cset_impl*
 Assert(false);
//#UC END# *4761365402FF_49A69B87036Cset_impl*
end;//Tk2NullTagImplPrim.pm_SetBoolA

function Tk2NullTagImplPrim.pm_GetIntA(anIndex: Integer): Integer;
//#UC START# *4761368701AB_49A69B87036Cget_var*
//#UC END# *4761368701AB_49A69B87036Cget_var*
begin
//#UC START# *4761368701AB_49A69B87036Cget_impl*
 Result := 0;
//#UC END# *4761368701AB_49A69B87036Cget_impl*
end;//Tk2NullTagImplPrim.pm_GetIntA

procedure Tk2NullTagImplPrim.pm_SetIntA(anIndex: Integer; aValue: Integer);
//#UC START# *4761368701AB_49A69B87036Cset_var*
//#UC END# *4761368701AB_49A69B87036Cset_var*
begin
//#UC START# *4761368701AB_49A69B87036Cset_impl*
 Assert(false);
//#UC END# *4761368701AB_49A69B87036Cset_impl*
end;//Tk2NullTagImplPrim.pm_SetIntA

function Tk2NullTagImplPrim.pm_GetStrA(anIndex: Integer): AnsiString;
//#UC START# *4761370F0048_49A69B87036Cget_var*
//#UC END# *4761370F0048_49A69B87036Cget_var*
begin
//#UC START# *4761370F0048_49A69B87036Cget_impl*
 Result := '';
//#UC END# *4761370F0048_49A69B87036Cget_impl*
end;//Tk2NullTagImplPrim.pm_GetStrA

procedure Tk2NullTagImplPrim.pm_SetStrA(anIndex: Integer; const aValue: AnsiString);
//#UC START# *4761370F0048_49A69B87036Cset_var*
//#UC END# *4761370F0048_49A69B87036Cset_var*
begin
//#UC START# *4761370F0048_49A69B87036Cset_impl*
 Assert(false);
//#UC END# *4761370F0048_49A69B87036Cset_impl*
end;//Tk2NullTagImplPrim.pm_SetStrA

function Tk2NullTagImplPrim.pm_GetChild(anIndex: Integer): Ik2Tag;
//#UC START# *47613B8303CC_49A69B87036Cget_var*
//#UC END# *47613B8303CC_49A69B87036Cget_var*
begin
//#UC START# *47613B8303CC_49A69B87036Cget_impl*
 Result := Self;
//#UC END# *47613B8303CC_49A69B87036Cget_impl*
end;//Tk2NullTagImplPrim.pm_GetChild

procedure Tk2NullTagImplPrim.pm_SetBoolW(anIndex: Integer; const aContext: Ik2Op; aValue: Boolean);
//#UC START# *47613C0F02F4_49A69B87036Cset_var*
//#UC END# *47613C0F02F4_49A69B87036Cset_var*
begin
//#UC START# *47613C0F02F4_49A69B87036Cset_impl*
 Assert(false);
//#UC END# *47613C0F02F4_49A69B87036Cset_impl*
end;//Tk2NullTagImplPrim.pm_SetBoolW

procedure Tk2NullTagImplPrim.pm_SetIntW(anIndex: Integer; const aContext: Ik2Op; aValue: Integer);
//#UC START# *47613C6A001F_49A69B87036Cset_var*
//#UC END# *47613C6A001F_49A69B87036Cset_var*
begin
//#UC START# *47613C6A001F_49A69B87036Cset_impl*
 Assert(false);
//#UC END# *47613C6A001F_49A69B87036Cset_impl*
end;//Tk2NullTagImplPrim.pm_SetIntW

procedure Tk2NullTagImplPrim.pm_SetStrW(anIndex: Integer; const aContext: Ik2Op; const aValue: AnsiString);
//#UC START# *47613D4E02B3_49A69B87036Cset_var*
//#UC END# *47613D4E02B3_49A69B87036Cset_var*
begin
//#UC START# *47613D4E02B3_49A69B87036Cset_impl*
 Assert(false);
//#UC END# *47613D4E02B3_49A69B87036Cset_impl*
end;//Tk2NullTagImplPrim.pm_SetStrW

function Tk2NullTagImplPrim.pm_GetPCharLenA(anIndex: Integer): Tl3PCharLen;
//#UC START# *47613DB001A3_49A69B87036Cget_var*
//#UC END# *47613DB001A3_49A69B87036Cget_var*
begin
//#UC START# *47613DB001A3_49A69B87036Cget_impl*
 l3AssignNil(Result);
//#UC END# *47613DB001A3_49A69B87036Cget_impl*
end;//Tk2NullTagImplPrim.pm_GetPCharLenA

procedure Tk2NullTagImplPrim.pm_SetPCharLenA(anIndex: Integer; const aValue: Tl3PCharLen);
//#UC START# *47613DB001A3_49A69B87036Cset_var*
//#UC END# *47613DB001A3_49A69B87036Cset_var*
begin
//#UC START# *47613DB001A3_49A69B87036Cset_impl*
 Assert(false);
//#UC END# *47613DB001A3_49A69B87036Cset_impl*
end;//Tk2NullTagImplPrim.pm_SetPCharLenA

procedure Tk2NullTagImplPrim.pm_SetPCharLenW(anIndex: Integer; const aContext: Ik2Op; const aValue: Tl3WString);
//#UC START# *47613E120125_49A69B87036Cset_var*
//#UC END# *47613E120125_49A69B87036Cset_var*
begin
//#UC START# *47613E120125_49A69B87036Cset_impl*
 Assert(false);
//#UC END# *47613E120125_49A69B87036Cset_impl*
end;//Tk2NullTagImplPrim.pm_SetPCharLenW

procedure Tk2NullTagImplPrim.pm_SetObjW(anIndex: Integer; const aContext: Ik2Op; aValue: TObject);
//#UC START# *47613EA10105_49A69B87036Cset_var*
//#UC END# *47613EA10105_49A69B87036Cset_var*
begin
//#UC START# *47613EA10105_49A69B87036Cset_impl*
 Assert(false);
//#UC END# *47613EA10105_49A69B87036Cset_impl*
end;//Tk2NullTagImplPrim.pm_SetObjW

function Tk2NullTagImplPrim.pm_GetAsString: AnsiString;
//#UC START# *4A42149A01FE_49A69B87036Cget_var*
//#UC END# *4A42149A01FE_49A69B87036Cget_var*
begin
//#UC START# *4A42149A01FE_49A69B87036Cget_impl*
 Result := '';
//#UC END# *4A42149A01FE_49A69B87036Cget_impl*
end;//Tk2NullTagImplPrim.pm_GetAsString

function Tk2NullTagImplPrim.pm_GetAsPCharLen: Tl3PCharLen;
//#UC START# *4A4216790331_49A69B87036Cget_var*
//#UC END# *4A4216790331_49A69B87036Cget_var*
begin
//#UC START# *4A4216790331_49A69B87036Cget_impl*
 l3AssignNil(Result);
//#UC END# *4A4216790331_49A69B87036Cget_impl*
end;//Tk2NullTagImplPrim.pm_GetAsPCharLen

function Tk2NullTagImplPrim.AsBool: Boolean;
//#UC START# *4A42195A0244_49A69B87036C_var*
//#UC END# *4A42195A0244_49A69B87036C_var*
begin
//#UC START# *4A42195A0244_49A69B87036C_impl*
 ConvertError(l3NULLStr, 'Bool');
 Result := false;
//#UC END# *4A42195A0244_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.AsBool

function Tk2NullTagImplPrim.AsLong: Integer;
//#UC START# *4A42196201B8_49A69B87036C_var*
//#UC END# *4A42196201B8_49A69B87036C_var*
begin
//#UC START# *4A42196201B8_49A69B87036C_impl*
 ConvertError(l3NULLStr, 'Long');
 Result := 0;
//#UC END# *4A42196201B8_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.AsLong

function Tk2NullTagImplPrim.AsObject: TObject;
//#UC START# *4A42196C01CE_49A69B87036C_var*
//#UC END# *4A42196C01CE_49A69B87036C_var*
begin
//#UC START# *4A42196C01CE_49A69B87036C_impl*
 Result := nil 
//#UC END# *4A42196C01CE_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.AsObject

function Tk2NullTagImplPrim.IsOrd: Boolean;
//#UC START# *4A421BE201A9_49A69B87036C_var*
//#UC END# *4A421BE201A9_49A69B87036C_var*
begin
//#UC START# *4A421BE201A9_49A69B87036C_impl*
 Result := true;
//#UC END# *4A421BE201A9_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.IsOrd

function Tk2NullTagImplPrim.InheritsFrom(anID: Integer): Boolean;
//#UC START# *4A421BED00FF_49A69B87036C_var*
//#UC END# *4A421BED00FF_49A69B87036C_var*
begin
//#UC START# *4A421BED00FF_49A69B87036C_impl*
 Result := false;
//#UC END# *4A421BED00FF_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.InheritsFrom

function Tk2NullTagImplPrim.InheritsFrom(const anIDs: array of Integer): Boolean;
//#UC START# *4A421BF200BF_49A69B87036C_var*
//#UC END# *4A421BF200BF_49A69B87036C_var*
begin
//#UC START# *4A421BF200BF_49A69B87036C_impl*
 Result := false;
//#UC END# *4A421BF200BF_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.InheritsFrom

function Tk2NullTagImplPrim.InheritsFrom(anAtomTypeID: Integer;
  const Exclude: array of Integer): Boolean;
//#UC START# *4A421C12034A_49A69B87036C_var*
//#UC END# *4A421C12034A_49A69B87036C_var*
begin
//#UC START# *4A421C12034A_49A69B87036C_impl*
 Result := false;
//#UC END# *4A421C12034A_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.InheritsFrom

function Tk2NullTagImplPrim.AddChild(var aChild: Ik2Tag;
  const aContext: Ik2Op = nil): Integer;
//#UC START# *4A422C1D00FE_49A69B87036C_var*
//#UC END# *4A422C1D00FE_49A69B87036C_var*
begin
//#UC START# *4A422C1D00FE_49A69B87036C_impl*
 Result := -1;
//#UC END# *4A422C1D00FE_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.AddChild

function Tk2NullTagImplPrim.pm_GetChildrenCount: Integer;
//#UC START# *4A42356B0022_49A69B87036Cget_var*
//#UC END# *4A42356B0022_49A69B87036Cget_var*
begin
//#UC START# *4A42356B0022_49A69B87036Cget_impl*
 Result := 0;
//#UC END# *4A42356B0022_49A69B87036Cget_impl*
end;//Tk2NullTagImplPrim.pm_GetChildrenCount

procedure Tk2NullTagImplPrim.InsertChild(anIndex: Integer;
  var aChild: Ik2Tag;
  const aContext: Ik2Op = nil);
//#UC START# *4A42358A00C2_49A69B87036C_var*
//#UC END# *4A42358A00C2_49A69B87036C_var*
begin
//#UC START# *4A42358A00C2_49A69B87036C_impl*
 Assert(false);
//#UC END# *4A42358A00C2_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.InsertChild

function Tk2NullTagImplPrim.IndexOfChild(const aChild: Ik2Tag): Integer;
//#UC START# *4A4235B70288_49A69B87036C_var*
//#UC END# *4A4235B70288_49A69B87036C_var*
begin
//#UC START# *4A4235B70288_49A69B87036C_impl*
 Result := -1;
//#UC END# *4A4235B70288_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.IndexOfChild

function Tk2NullTagImplPrim.FindChild(anAtom: Integer;
  aValue: Integer;
  const aContext: Ik2Op = nil;
  aNeedCreate: Boolean = false;
  theIndex: PLong = nil): Ik2Tag;
//#UC START# *4A42374B0371_49A69B87036C_var*
//#UC END# *4A42374B0371_49A69B87036C_var*
begin
//#UC START# *4A42374B0371_49A69B87036C_impl*
 Result := Self;
 if (theIndex <> nil) then
  theIndex^ := -1;
//#UC END# *4A42374B0371_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.FindChild

procedure Tk2NullTagImplPrim.DeleteChildren(const Context: Ik2Op = nil);
//#UC START# *4A42378D0030_49A69B87036C_var*
//#UC END# *4A42378D0030_49A69B87036C_var*
begin
//#UC START# *4A42378D0030_49A69B87036C_impl*
 Assert(false);
//#UC END# *4A42378D0030_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.DeleteChildren

function Tk2NullTagImplPrim.IntRef: Integer;
//#UC START# *4A423C5B0038_49A69B87036C_var*
//#UC END# *4A423C5B0038_49A69B87036C_var*
begin
//#UC START# *4A423C5B0038_49A69B87036C_impl*
 Result := 0;
//#UC END# *4A423C5B0038_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.IntRef

procedure Tk2NullTagImplPrim.SetIntRef(out aRef: Integer);
//#UC START# *4A423C670156_49A69B87036C_var*
//#UC END# *4A423C670156_49A69B87036C_var*
begin
//#UC START# *4A423C670156_49A69B87036C_impl*
 aRef := 0;
//#UC END# *4A423C670156_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.SetIntRef

function Tk2NullTagImplPrim.DeleteChild(anIndex: Integer;
  const anOp: Ik2Op;
  out theChild: Ik2Tag): Boolean;
//#UC START# *4A423EC900C2_49A69B87036C_var*
//#UC END# *4A423EC900C2_49A69B87036C_var*
begin
//#UC START# *4A423EC900C2_49A69B87036C_impl*
 Result := false;
 Assert(false);
//#UC END# *4A423EC900C2_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.DeleteChild

function Tk2NullTagImplPrim.DeleteChild(const aChild: Ik2Tag;
  const Context: Ik2Op = nil): Boolean;
//#UC START# *4A423ECE03A6_49A69B87036C_var*
//#UC END# *4A423ECE03A6_49A69B87036C_var*
begin
//#UC START# *4A423ECE03A6_49A69B87036C_impl*
 Result := false;
 Assert(false);
//#UC END# *4A423ECE03A6_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.DeleteChild

function Tk2NullTagImplPrim.DeleteChild(anIndex: Integer;
  const anOp: Ik2Op = nil): Boolean;
//#UC START# *4A423F0002E2_49A69B87036C_var*
//#UC END# *4A423F0002E2_49A69B87036C_var*
begin
//#UC START# *4A423F0002E2_49A69B87036C_impl*
 Result := false;
 Assert(false);
//#UC END# *4A423F0002E2_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.DeleteChild

procedure Tk2NullTagImplPrim.DoLoad;
//#UC START# *4A42489800D0_49A69B87036C_var*
//#UC END# *4A42489800D0_49A69B87036C_var*
begin
//#UC START# *4A42489800D0_49A69B87036C_impl*
//#UC END# *4A42489800D0_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.DoLoad

procedure Tk2NullTagImplPrim.ForceStore;
//#UC START# *4A4248A501C8_49A69B87036C_var*
//#UC END# *4A4248A501C8_49A69B87036C_var*
begin
//#UC START# *4A4248A501C8_49A69B87036C_impl*
//#UC END# *4A4248A501C8_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.ForceStore

function Tk2NullTagImplPrim.MarkModified: Boolean;
//#UC START# *4A4248C902F1_49A69B87036C_var*
//#UC END# *4A4248C902F1_49A69B87036C_var*
begin
//#UC START# *4A4248C902F1_49A69B87036C_impl*
 Result := false;
//#UC END# *4A4248C902F1_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.MarkModified

procedure Tk2NullTagImplPrim.Set_ChildrenCapacity(aValue: Integer);
//#UC START# *4A6039AA0172_49A69B87036Cset_var*
//#UC END# *4A6039AA0172_49A69B87036Cset_var*
begin
//#UC START# *4A6039AA0172_49A69B87036Cset_impl*
 //Assert(false);
//#UC END# *4A6039AA0172_49A69B87036Cset_impl*
end;//Tk2NullTagImplPrim.Set_ChildrenCapacity

function Tk2NullTagImplPrim.Get_Owner: Ik2Tag;
//#UC START# *4A6475C4026D_49A69B87036Cget_var*
//#UC END# *4A6475C4026D_49A69B87036Cget_var*
begin
//#UC START# *4A6475C4026D_49A69B87036Cget_impl*
 Result := Self;
//#UC END# *4A6475C4026D_49A69B87036Cget_impl*
end;//Tk2NullTagImplPrim.Get_Owner

procedure Tk2NullTagImplPrim.Set_Owner(const aValue: Ik2Tag);
//#UC START# *4A6475C4026D_49A69B87036Cset_var*
//#UC END# *4A6475C4026D_49A69B87036Cset_var*
begin
//#UC START# *4A6475C4026D_49A69B87036Cset_impl*
 Assert(false);
//#UC END# *4A6475C4026D_49A69B87036Cset_impl*
end;//Tk2NullTagImplPrim.Set_Owner

function Tk2NullTagImplPrim.RBool(anIndex: Integer;
  aDefault: Boolean): Boolean;
//#UC START# *4BC71AF503DC_49A69B87036C_var*
//#UC END# *4BC71AF503DC_49A69B87036C_var*
begin
//#UC START# *4BC71AF503DC_49A69B87036C_impl*
 Result := aDefault;
//#UC END# *4BC71AF503DC_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.RBool

function Tk2NullTagImplPrim.RLong(anIndex: Integer;
  aDefault: Integer): Integer;
//#UC START# *4BC71B0A028C_49A69B87036C_var*
//#UC END# *4BC71B0A028C_49A69B87036C_var*
begin
//#UC START# *4BC71B0A028C_49A69B87036C_impl*
 Result := aDefault;
//#UC END# *4BC71B0A028C_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.RLong

function Tk2NullTagImplPrim.pm_GetTagType: Tk2TypePrim;
//#UC START# *4BC71F3B02A3_49A69B87036Cget_var*
//#UC END# *4BC71F3B02A3_49A69B87036Cget_var*
begin
//#UC START# *4BC71F3B02A3_49A69B87036Cget_impl*
 Result := nil;
//#UC END# *4BC71F3B02A3_49A69B87036Cget_impl*
end;//Tk2NullTagImplPrim.pm_GetTagType

function Tk2NullTagImplPrim.CompareWithInt(aValue: Integer;
  anIndex: Integer): Integer;
//#UC START# *4BC8415802B6_49A69B87036C_var*
//#UC END# *4BC8415802B6_49A69B87036C_var*
begin
//#UC START# *4BC8415802B6_49A69B87036C_impl*
 Assert(false);
 Result := -1;
//#UC END# *4BC8415802B6_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.CompareWithInt

function Tk2NullTagImplPrim.CompareWithTag(const aTag: Ik2Tag;
  aSortIndex: Tl3SortIndex): Integer;
//#UC START# *4BC8415E021A_49A69B87036C_var*
//#UC END# *4BC8415E021A_49A69B87036C_var*
begin
//#UC START# *4BC8415E021A_49A69B87036C_impl*
 Assert(false);
 Result := -1;
//#UC END# *4BC8415E021A_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.CompareWithTag

function Tk2NullTagImplPrim.RAtomEx(const Path: array of Integer;
  theIndex: PLong = nil): Ik2Tag;
//#UC START# *4BC843A5011F_49A69B87036C_var*
//#UC END# *4BC843A5011F_49A69B87036C_var*
begin
//#UC START# *4BC843A5011F_49A69B87036C_impl*
 Result := Self;
//#UC END# *4BC843A5011F_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.RAtomEx

function Tk2NullTagImplPrim.ROwnAtom(anIndex: Integer): Ik2Tag;
//#UC START# *4BC843C40240_49A69B87036C_var*
//#UC END# *4BC843C40240_49A69B87036C_var*
begin
//#UC START# *4BC843C40240_49A69B87036C_impl*
 Result := Self;
//#UC END# *4BC843C40240_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.ROwnAtom

function Tk2NullTagImplPrim.CAtom(anIndex: Integer;
  const aContext: Ik2Op = nil;
  anAtomType: Tk2TypePrim = nil): Ik2Tag;
//#UC START# *4BC843C80301_49A69B87036C_var*
//#UC END# *4BC843C80301_49A69B87036C_var*
begin
//#UC START# *4BC843C80301_49A69B87036C_impl*
 Result := Self;
//#UC END# *4BC843C80301_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.CAtom

function Tk2NullTagImplPrim.CAtomEx(const aPath: array of Integer;
  const aContext: Ik2Op;
  theIndex: PLong = nil): Ik2Tag;
//#UC START# *4BC843CE00EF_49A69B87036C_var*
//#UC END# *4BC843CE00EF_49A69B87036C_var*
begin
//#UC START# *4BC843CE00EF_49A69B87036C_impl*
 Result := Self;
//#UC END# *4BC843CE00EF_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.CAtomEx

function Tk2NullTagImplPrim.HasSubAtom(anIndex: Integer): Boolean;
//#UC START# *4BC8441500B7_49A69B87036C_var*
//#UC END# *4BC8441500B7_49A69B87036C_var*
begin
//#UC START# *4BC8441500B7_49A69B87036C_impl*
 Result := false;
//#UC END# *4BC8441500B7_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.HasSubAtom

function Tk2NullTagImplPrim.IsNull: Boolean;
//#UC START# *4BC8446D010E_49A69B87036C_var*
//#UC END# *4BC8446D010E_49A69B87036C_var*
begin
//#UC START# *4BC8446D010E_49A69B87036C_impl*
 Result := true;
//#UC END# *4BC8446D010E_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.IsNull

function Tk2NullTagImplPrim.IsValid: Boolean;
//#UC START# *4BC8447200B0_49A69B87036C_var*
//#UC END# *4BC8447200B0_49A69B87036C_var*
begin
//#UC START# *4BC8447200B0_49A69B87036C_impl*
 Result := false;
//#UC END# *4BC8447200B0_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.IsValid

function Tk2NullTagImplPrim.IsTransparent: Boolean;
//#UC START# *4BC8447501CB_49A69B87036C_var*
//#UC END# *4BC8447501CB_49A69B87036C_var*
begin
//#UC START# *4BC8447501CB_49A69B87036C_impl*
 Result := false;
//#UC END# *4BC8447501CB_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.IsTransparent

function Tk2NullTagImplPrim.IsStream(out theStream: IStream): Boolean;
//#UC START# *4BC8447A0046_49A69B87036C_var*
//#UC END# *4BC8447A0046_49A69B87036C_var*
begin
//#UC START# *4BC8447A0046_49A69B87036C_impl*
 Result := false;
//#UC END# *4BC8447A0046_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.IsStream

function Tk2NullTagImplPrim.QT(const IID: TGUID;
  out Obj;
  const aProcessor: Ik2Processor = nil): Boolean;
//#UC START# *4BC84CA1035B_49A69B87036C_var*
//#UC END# *4BC84CA1035B_49A69B87036C_var*
begin
//#UC START# *4BC84CA1035B_49A69B87036C_impl*
 Result := false;
 Pointer(Obj) := nil;
//#UC END# *4BC84CA1035B_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.QT

function Tk2NullTagImplPrim.GetOwnInterface(const IID: TGUID;
  out Obj): Boolean;
//#UC START# *4BC84CEE0329_49A69B87036C_var*
//#UC END# *4BC84CEE0329_49A69B87036C_var*
begin
//#UC START# *4BC84CEE0329_49A69B87036C_impl*
 Result := GetInterface(IID, Obj);
//#UC END# *4BC84CEE0329_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.GetOwnInterface

function Tk2NullTagImplPrim.GetLinkedInterface(const IID: TGUID;
  out Obj): Boolean;
//#UC START# *4BC84CF702F5_49A69B87036C_var*
//#UC END# *4BC84CF702F5_49A69B87036C_var*
begin
//#UC START# *4BC84CF702F5_49A69B87036C_impl*
 Result := GetOwnInterface(IID, Obj);
//#UC END# *4BC84CF702F5_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.GetLinkedInterface

{$If not defined(DesignTimeLibrary)}
class function Tk2NullTagImplPrim.IsCacheable: Boolean;
//#UC START# *47A6FEE600FC_49A69B87036C_var*
//#UC END# *47A6FEE600FC_49A69B87036C_var*
begin
//#UC START# *47A6FEE600FC_49A69B87036C_impl*
 Result := true;
//#UC END# *47A6FEE600FC_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.IsCacheable
{$IfEnd} //not DesignTimeLibrary

{iterator} function Tk2NullTagImplPrim.IterateChildrenF(anAction: Ik2Tag_IterateChildrenF_Action;
  aLo: Tl3Index = l3MinIndex;
  aHi: Tl3Index = l3MaxIndex;
  aLoadedOnly: Boolean = false): Integer;
//#UC START# *4BB21F9D022F_49A69B87036C_var*
//#UC END# *4BB21F9D022F_49A69B87036C_var*
begin
//#UC START# *4BB21F9D022F_49A69B87036C_impl*
 Result := -1;
 k2FreeTIA(anAction);
//#UC END# *4BB21F9D022F_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.IterateChildrenF

{iterator} function Tk2NullTagImplPrim.IterateChildrenBack(anAction: Ik2Tag_IterateChildrenBack_Action;
  aHi: Tl3Index = l3MaxIndex;
  aLo: Tl3Index = l3MinIndex;
  aLoadedOnly: Boolean = false): Integer;
//#UC START# *4BBF49EB0260_49A69B87036C_var*
//#UC END# *4BBF49EB0260_49A69B87036C_var*
begin
//#UC START# *4BBF49EB0260_49A69B87036C_impl*
 Result := -1;
//#UC END# *4BBF49EB0260_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.IterateChildrenBack

{iterator} function Tk2NullTagImplPrim.IterateChildrenBackF(anAction: Ik2Tag_IterateChildrenBack_Action;
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

{iterator} procedure Tk2NullTagImplPrim.IterateProperties(anAction: Ik2Tag_IterateProperties_Action;
  anAll: Boolean
  {* Перебирать все возможные свойства или только РЕАЛЬНО заданные});
//#UC START# *4BC31A730293_49A69B87036C_var*
//#UC END# *4BC31A730293_49A69B87036C_var*
begin
//#UC START# *4BC31A730293_49A69B87036C_impl*
 Assert(false);
//#UC END# *4BC31A730293_49A69B87036C_impl*
end;//Tk2NullTagImplPrim.IterateProperties

{iterator} procedure Tk2NullTagImplPrim.IteratePropertiesF(anAction: Ik2Tag_IterateProperties_Action;
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