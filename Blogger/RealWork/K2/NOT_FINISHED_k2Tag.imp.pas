{$IfNDef k2Tag_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/K2/NOT_FINISHED_k2Tag.imp.pas"
// Начат: 20.04.2005 19:29
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi::K2::k2CoreObjects::k2Tag
//
// Реализация тега.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define k2Tag_imp}
 _k2OwnedObject_Parent_ = _k2Tag_Parent_;
 {$Include ..\K2\k2OwnedObject.imp.pas}
 _k2DoQT_Parent_ = _k2OwnedObject_;
 {$Include ..\K2\k2DoQT.imp.pas}
 _k2Tag_ = {mixin} class(_k2DoQT_, Ik2Tag)
  {* Реализация тега. }
 protected
 // property methods
   function pm_GetChildrenCount: Integer; virtual;
   function pm_GetChild(anIndex: LongInt): Ik2Tag; virtual;
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
   function DoQT(const IID: TGUID;
    out Obj;
    const aProcessor: Ik2Processor = nil): Boolean; override;
     {* созвращает инструмент для работы с тегом, к которому привязан исходный инструмент }
   function pm_GetAsString: AnsiString;
   function pm_GetAsPCharLen: Tl3PCharLen;
   function pm_GetChildrenCount: Integer;
   procedure Set_ChildrenCapacity(aValue: Integer);
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
 // protected methods
    {$If not defined(_Box_)}
   function HackChildren: TObject;
    {$IfEnd} //not _Box_
   procedure CheckChildInsert(var anIndex: Integer;
     var aChild: Ik2Tag;
     const anOp: Ik2Op); virtual;
   function CanAssignParam(const aProp: _PropIn_): Boolean; virtual;
   procedure DoLoad; virtual;
   function IterateChildrenBack(Action: Ik2Tag_IterateChildrenBack_Action;
     aHi: Tl3Index = l3MaxIndex;
     aLo: Tl3Index = l3MinIndex;
     aLoadedOnly: Boolean = False): Integer; virtual;
   function IterateInnerChildrenOnWrite: Boolean; virtual;
   function DoIterateChildrenF(Action: Ik2Tag_IterateChildrenF_Action;
    aLo: Tl3Index;
    aHi: Tl3Index;
    aLoadedOnly: Boolean): Integer; virtual;
   {$If not defined(_Box_) AND not defined(k2TagIsAtomic)}
   function GetHasSubAtom(aProp: Tk2Prop): Boolean; virtual;
   {$IfEnd} //not _Box_ AND not k2TagIsAtomic
   {$If not defined(_Box_)}
   function GetSubAtom(aProp: Tk2Prop;
    out Data: Integer): Boolean; virtual;
   {$IfEnd} //not _Box_
   {$If not defined(_Box_) AND not defined(k2TagIsAtomic)}
   function SetAtomPrim(const aProp: _PropIn_;
    var V: Tk2Values): Boolean; virtual; abstract;
   {$IfEnd} //not _Box_ AND not k2TagIsAtomic
   procedure IterateProperties(Action: Ik2Tag_IterateProperties_Action;
    All: Boolean); virtual;
   procedure ClearAtoms; virtual;
   procedure ForceStore; virtual;
   {$If defined(_Box_)}
   function GetRedirect: PIk2Tag;
   {$IfEnd} //_Box_
   function CompareWithInt(aValue: Integer;
    anIndex: Integer): Integer; virtual;
   function CompareWithTag(const aTag: Ik2Tag;
    aSortIndex: Tl3SortIndex): Integer; virtual;
   function DeleteChildPrim(anIndex: Integer;
    const aChild: Ik2Tag;
    const aContext: Ik2Op): Boolean; virtual;
   function AddChild(var aChild: Ik2Tag;
    const aContext: Ik2Op = nil): Integer; virtual;
   procedure InsertChild(anIndex: Integer;
    var aChild: Ik2Tag;
    const aContext: Ik2Op = nil); virtual;
   procedure SetSubAtom(var aProp: _PropIn_;
    const aSubAtom); virtual;
   function MarkModified: Boolean; virtual;
 protected
 // protected properties
   property ChildrenCount: Integer
     read pm_GetChildrenCount;
   property Child[anIndex: LongInt]: Ik2Tag
     read pm_GetChild;
 end;//_k2Tag_

{$Else k2Tag_imp}


{$Include ..\K2\k2OwnedObject.imp.pas}

{$Include ..\K2\k2DoQT.imp.pas}

// start class _k2Tag_

{$If not defined(_Box_)}
function _k2Tag_.HackChildren: TObject;
//#UC START# *4A5368DC0050_47AC5591007B_var*
//#UC END# *4A5368DC0050_47AC5591007B_var*
begin
//#UC START# *4A5368DC0050_47AC5591007B_impl*
 !!! Needs to be implemented !!!
//#UC END# *4A5368DC0050_47AC5591007B_impl*
end;//_k2Tag_.HackChildren
{$IfEnd} //not _Box_

procedure _k2Tag_.CheckChildInsert(var anIndex: Integer;
  var aChild: Ik2Tag;
  const anOp: Ik2Op);
//#UC START# *4CED66B8005F_47AC5591007B_var*
//#UC END# *4CED66B8005F_47AC5591007B_var*
begin
//#UC START# *4CED66B8005F_47AC5591007B_impl*
 !!! Needs to be implemented !!!
//#UC END# *4CED66B8005F_47AC5591007B_impl*
end;//_k2Tag_.CheckChildInsert

function _k2Tag_.CanAssignParam(const aProp: _PropIn_): Boolean;
//#UC START# *4CED6716019D_47AC5591007B_var*
//#UC END# *4CED6716019D_47AC5591007B_var*
begin
//#UC START# *4CED6716019D_47AC5591007B_impl*
 !!! Needs to be implemented !!!
//#UC END# *4CED6716019D_47AC5591007B_impl*
end;//_k2Tag_.CanAssignParam

procedure _k2Tag_.DoLoad;
//#UC START# *4CEFA0BA0233_47AC5591007B_var*
//#UC END# *4CEFA0BA0233_47AC5591007B_var*
begin
//#UC START# *4CEFA0BA0233_47AC5591007B_impl*
 !!! Needs to be implemented !!!
//#UC END# *4CEFA0BA0233_47AC5591007B_impl*
end;//_k2Tag_.DoLoad

function _k2Tag_.IterateChildrenBack(Action: Ik2Tag_IterateChildrenBack_Action;
  aHi: Tl3Index = l3MaxIndex;
  aLo: Tl3Index = l3MinIndex;
  aLoadedOnly: Boolean = False): Integer;
//#UC START# *5081632303E6_47AC5591007B_var*
//#UC END# *5081632303E6_47AC5591007B_var*
begin
//#UC START# *5081632303E6_47AC5591007B_impl*
 !!! Needs to be implemented !!!
//#UC END# *5081632303E6_47AC5591007B_impl*
end;//_k2Tag_.IterateChildrenBack

function _k2Tag_.IterateInnerChildrenOnWrite: Boolean;
//#UC START# *5081947501ED_47AC5591007B_var*
//#UC END# *5081947501ED_47AC5591007B_var*
begin
//#UC START# *5081947501ED_47AC5591007B_impl*
 !!! Needs to be implemented !!!
//#UC END# *5081947501ED_47AC5591007B_impl*
end;//_k2Tag_.IterateInnerChildrenOnWrite

function _k2Tag_.pm_GetChildrenCount: Integer;
//#UC START# *4CED5D5D01B0_47AC5591007Bget_var*
//#UC END# *4CED5D5D01B0_47AC5591007Bget_var*
begin
//#UC START# *4CED5D5D01B0_47AC5591007Bget_impl*
 !!! Needs to be implemented !!!
//#UC END# *4CED5D5D01B0_47AC5591007Bget_impl*
end;//_k2Tag_.pm_GetChildrenCount

function _k2Tag_.pm_GetChild(anIndex: LongInt): Ik2Tag;
//#UC START# *508179D102D1_47AC5591007Bget_var*
//#UC END# *508179D102D1_47AC5591007Bget_var*
begin
//#UC START# *508179D102D1_47AC5591007Bget_impl*
 !!! Needs to be implemented !!!
//#UC END# *508179D102D1_47AC5591007Bget_impl*
end;//_k2Tag_.pm_GetChild

function _k2Tag_.DoIterateChildrenF(Action: Ik2Tag_IterateChildrenF_Action;
  aLo: Tl3Index;
  aHi: Tl3Index;
  aLoadedOnly: Boolean): Integer;
//#UC START# *48CF96D80241_47AC5591007B_var*
//#UC END# *48CF96D80241_47AC5591007B_var*
begin
//#UC START# *48CF96D80241_47AC5591007B_impl*
 !!! Needs to be implemented !!!
//#UC END# *48CF96D80241_47AC5591007B_impl*
end;//_k2Tag_.DoIterateChildrenF

{$If not defined(_Box_) AND not defined(k2TagIsAtomic)}
function _k2Tag_.GetHasSubAtom(aProp: Tk2Prop): Boolean;
//#UC START# *49A544E802B2_47AC5591007B_var*
//#UC END# *49A544E802B2_47AC5591007B_var*
begin
//#UC START# *49A544E802B2_47AC5591007B_impl*
 !!! Needs to be implemented !!!
//#UC END# *49A544E802B2_47AC5591007B_impl*
end;//_k2Tag_.GetHasSubAtom
{$IfEnd} //not _Box_ AND not k2TagIsAtomic

{$If not defined(_Box_)}
function _k2Tag_.GetSubAtom(aProp: Tk2Prop;
  out Data: Integer): Boolean;
//#UC START# *49A54517029C_47AC5591007B_var*
//#UC END# *49A54517029C_47AC5591007B_var*
begin
//#UC START# *49A54517029C_47AC5591007B_impl*
 !!! Needs to be implemented !!!
//#UC END# *49A54517029C_47AC5591007B_impl*
end;//_k2Tag_.GetSubAtom
{$IfEnd} //not _Box_

procedure _k2Tag_.IterateProperties(Action: Ik2Tag_IterateProperties_Action;
  All: Boolean);
//#UC START# *49A545D501F6_47AC5591007B_var*
//#UC END# *49A545D501F6_47AC5591007B_var*
begin
//#UC START# *49A545D501F6_47AC5591007B_impl*
 !!! Needs to be implemented !!!
//#UC END# *49A545D501F6_47AC5591007B_impl*
end;//_k2Tag_.IterateProperties

procedure _k2Tag_.ClearAtoms;
//#UC START# *49A54FAA028F_47AC5591007B_var*
//#UC END# *49A54FAA028F_47AC5591007B_var*
begin
//#UC START# *49A54FAA028F_47AC5591007B_impl*
 !!! Needs to be implemented !!!
//#UC END# *49A54FAA028F_47AC5591007B_impl*
end;//_k2Tag_.ClearAtoms

procedure _k2Tag_.ForceStore;
//#UC START# *49DF6967030D_47AC5591007B_var*
//#UC END# *49DF6967030D_47AC5591007B_var*
begin
//#UC START# *49DF6967030D_47AC5591007B_impl*
 !!! Needs to be implemented !!!
//#UC END# *49DF6967030D_47AC5591007B_impl*
end;//_k2Tag_.ForceStore

{$If defined(_Box_)}
function _k2Tag_.GetRedirect: PIk2Tag;
//#UC START# *49E76299018E_47AC5591007B_var*
//#UC END# *49E76299018E_47AC5591007B_var*
begin
//#UC START# *49E76299018E_47AC5591007B_impl*
 !!! Needs to be implemented !!!
//#UC END# *49E76299018E_47AC5591007B_impl*
end;//_k2Tag_.GetRedirect
{$IfEnd} //_Box_

function _k2Tag_.CompareWithInt(aValue: Integer;
  anIndex: Integer): Integer;
//#UC START# *4A6445E402A5_47AC5591007B_var*
//#UC END# *4A6445E402A5_47AC5591007B_var*
begin
//#UC START# *4A6445E402A5_47AC5591007B_impl*
 !!! Needs to be implemented !!!
//#UC END# *4A6445E402A5_47AC5591007B_impl*
end;//_k2Tag_.CompareWithInt

function _k2Tag_.CompareWithTag(const aTag: Ik2Tag;
  aSortIndex: Tl3SortIndex): Integer;
//#UC START# *4A64463F014E_47AC5591007B_var*
//#UC END# *4A64463F014E_47AC5591007B_var*
begin
//#UC START# *4A64463F014E_47AC5591007B_impl*
 !!! Needs to be implemented !!!
//#UC END# *4A64463F014E_47AC5591007B_impl*
end;//_k2Tag_.CompareWithTag

function _k2Tag_.DeleteChildPrim(anIndex: Integer;
  const aChild: Ik2Tag;
  const aContext: Ik2Op): Boolean;
//#UC START# *4C6CE735026E_47AC5591007B_var*
//#UC END# *4C6CE735026E_47AC5591007B_var*
begin
//#UC START# *4C6CE735026E_47AC5591007B_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C6CE735026E_47AC5591007B_impl*
end;//_k2Tag_.DeleteChildPrim

function _k2Tag_.AddChild(var aChild: Ik2Tag;
  const aContext: Ik2Op = nil): Integer;
//#UC START# *4C6CE8F703AD_47AC5591007B_var*
//#UC END# *4C6CE8F703AD_47AC5591007B_var*
begin
//#UC START# *4C6CE8F703AD_47AC5591007B_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C6CE8F703AD_47AC5591007B_impl*
end;//_k2Tag_.AddChild

procedure _k2Tag_.InsertChild(anIndex: Integer;
  var aChild: Ik2Tag;
  const aContext: Ik2Op = nil);
//#UC START# *4C6CE91903A5_47AC5591007B_var*
//#UC END# *4C6CE91903A5_47AC5591007B_var*
begin
//#UC START# *4C6CE91903A5_47AC5591007B_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C6CE91903A5_47AC5591007B_impl*
end;//_k2Tag_.InsertChild

procedure _k2Tag_.SetSubAtom(var aProp: _PropIn_;
  const aSubAtom);
//#UC START# *4C6D1C070249_47AC5591007B_var*
//#UC END# *4C6D1C070249_47AC5591007B_var*
begin
//#UC START# *4C6D1C070249_47AC5591007B_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C6D1C070249_47AC5591007B_impl*
end;//_k2Tag_.SetSubAtom

function _k2Tag_.MarkModified: Boolean;
//#UC START# *4C6D1C29031F_47AC5591007B_var*
//#UC END# *4C6D1C29031F_47AC5591007B_var*
begin
//#UC START# *4C6D1C29031F_47AC5591007B_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C6D1C29031F_47AC5591007B_impl*
end;//_k2Tag_.MarkModified

function _k2Tag_.Box: Ik2Tag;
//#UC START# *47612ACF0081_47AC5591007B_var*
//#UC END# *47612ACF0081_47AC5591007B_var*
begin
//#UC START# *47612ACF0081_47AC5591007B_impl*
 assert(false, '_k2Tag_.Box not implemented');
//#UC END# *47612ACF0081_47AC5591007B_impl*
end;//_k2Tag_.Box

function _k2Tag_.IsSame(const aTag: Ik2Tag): Boolean;
//#UC START# *47612C730330_47AC5591007B_var*
//#UC END# *47612C730330_47AC5591007B_var*
begin
//#UC START# *47612C730330_47AC5591007B_impl*
 assert(false, '_k2Tag_.IsSame not implemented');
//#UC END# *47612C730330_47AC5591007B_impl*
end;//_k2Tag_.IsSame

procedure _k2Tag_.CheckSort(aProp: Tk2ArrayPropertyPrim);
//#UC START# *47612CD10380_47AC5591007B_var*
//#UC END# *47612CD10380_47AC5591007B_var*
begin
//#UC START# *47612CD10380_47AC5591007B_impl*
 assert(false, '_k2Tag_.CheckSort not implemented');
//#UC END# *47612CD10380_47AC5591007B_impl*
end;//_k2Tag_.CheckSort

function _k2Tag_.AssignTag(const Source: Ik2Tag;
  AssignMode: Tk2AssignModes = k2_amAll;
  const Context: Ik2Op = nil): Boolean;
//#UC START# *47612DD0012B_47AC5591007B_var*
//#UC END# *47612DD0012B_47AC5591007B_var*
begin
//#UC START# *47612DD0012B_47AC5591007B_impl*
 assert(false, '_k2Tag_.AssignTag not implemented');
//#UC END# *47612DD0012B_47AC5591007B_impl*
end;//_k2Tag_.AssignTag

function _k2Tag_.CloneTag: Ik2Tag;
//#UC START# *47612DF00301_47AC5591007B_var*
//#UC END# *47612DF00301_47AC5591007B_var*
begin
//#UC START# *47612DF00301_47AC5591007B_impl*
 assert(false, '_k2Tag_.CloneTag not implemented');
//#UC END# *47612DF00301_47AC5591007B_impl*
end;//_k2Tag_.CloneTag

procedure _k2Tag_.AssignCloneParams(const aSource: Ik2Tag;
  AssignMode: Tk2AssignModes = k2_amAll;
  const Context: Ik2Op = nil);
//#UC START# *47612E530082_47AC5591007B_var*
//#UC END# *47612E530082_47AC5591007B_var*
begin
//#UC START# *47612E530082_47AC5591007B_impl*
 assert(false, '_k2Tag_.AssignCloneParams not implemented');
//#UC END# *47612E530082_47AC5591007B_impl*
end;//_k2Tag_.AssignCloneParams

procedure _k2Tag_.Write(const G: Ik2TagGenerator;
  Flags: Tk2StorePropertyFlags = l3_spfAll;
  Exclude: TByteSet = []);
//#UC START# *4761324203B8_47AC5591007B_var*
//#UC END# *4761324203B8_47AC5591007B_var*
begin
//#UC START# *4761324203B8_47AC5591007B_impl*
 assert(false, '_k2Tag_.Write not implemented');
//#UC END# *4761324203B8_47AC5591007B_impl*
end;//_k2Tag_.Write

function _k2Tag_.pm_GetAttr(anIndex: Integer): Ik2Tag;
//#UC START# *476133660285_47AC5591007Bget_var*
//#UC END# *476133660285_47AC5591007Bget_var*
begin
//#UC START# *476133660285_47AC5591007Bget_impl*
 assert(false, '_k2Tag_.pm_GetAttr not implemented');
//#UC END# *476133660285_47AC5591007Bget_impl*
end;//_k2Tag_.pm_GetAttr

procedure _k2Tag_.pm_SetAttr(anIndex: Integer; const aValue: Ik2Tag);
//#UC START# *476133660285_47AC5591007Bset_var*
//#UC END# *476133660285_47AC5591007Bset_var*
begin
//#UC START# *476133660285_47AC5591007Bset_impl*
 assert(false, '_k2Tag_.pm_SetAttr not implemented');
//#UC END# *476133660285_47AC5591007Bset_impl*
end;//_k2Tag_.pm_SetAttr

procedure _k2Tag_.pm_SetAttrW(anIndex: Integer; const aContext: Ik2Op; const aValue: Ik2Tag);
//#UC START# *4761347C0392_47AC5591007Bset_var*
//#UC END# *4761347C0392_47AC5591007Bset_var*
begin
//#UC START# *4761347C0392_47AC5591007Bset_impl*
 assert(false, '_k2Tag_.pm_SetAttrW not implemented');
//#UC END# *4761347C0392_47AC5591007Bset_impl*
end;//_k2Tag_.pm_SetAttrW

function _k2Tag_.pm_GetBoolA(anIndex: Integer): Boolean;
//#UC START# *4761365402FF_47AC5591007Bget_var*
//#UC END# *4761365402FF_47AC5591007Bget_var*
begin
//#UC START# *4761365402FF_47AC5591007Bget_impl*
 assert(false, '_k2Tag_.pm_GetBoolA not implemented');
//#UC END# *4761365402FF_47AC5591007Bget_impl*
end;//_k2Tag_.pm_GetBoolA

procedure _k2Tag_.pm_SetBoolA(anIndex: Integer; aValue: Boolean);
//#UC START# *4761365402FF_47AC5591007Bset_var*
//#UC END# *4761365402FF_47AC5591007Bset_var*
begin
//#UC START# *4761365402FF_47AC5591007Bset_impl*
 assert(false, '_k2Tag_.pm_SetBoolA not implemented');
//#UC END# *4761365402FF_47AC5591007Bset_impl*
end;//_k2Tag_.pm_SetBoolA

function _k2Tag_.pm_GetIntA(anIndex: Integer): Integer;
//#UC START# *4761368701AB_47AC5591007Bget_var*
//#UC END# *4761368701AB_47AC5591007Bget_var*
begin
//#UC START# *4761368701AB_47AC5591007Bget_impl*
 assert(false, '_k2Tag_.pm_GetIntA not implemented');
//#UC END# *4761368701AB_47AC5591007Bget_impl*
end;//_k2Tag_.pm_GetIntA

procedure _k2Tag_.pm_SetIntA(anIndex: Integer; aValue: Integer);
//#UC START# *4761368701AB_47AC5591007Bset_var*
//#UC END# *4761368701AB_47AC5591007Bset_var*
begin
//#UC START# *4761368701AB_47AC5591007Bset_impl*
 assert(false, '_k2Tag_.pm_SetIntA not implemented');
//#UC END# *4761368701AB_47AC5591007Bset_impl*
end;//_k2Tag_.pm_SetIntA

function _k2Tag_.pm_GetStrA(anIndex: Integer): AnsiString;
//#UC START# *4761370F0048_47AC5591007Bget_var*
//#UC END# *4761370F0048_47AC5591007Bget_var*
begin
//#UC START# *4761370F0048_47AC5591007Bget_impl*
 assert(false, '_k2Tag_.pm_GetStrA not implemented');
//#UC END# *4761370F0048_47AC5591007Bget_impl*
end;//_k2Tag_.pm_GetStrA

procedure _k2Tag_.pm_SetStrA(anIndex: Integer; const aValue: AnsiString);
//#UC START# *4761370F0048_47AC5591007Bset_var*
//#UC END# *4761370F0048_47AC5591007Bset_var*
begin
//#UC START# *4761370F0048_47AC5591007Bset_impl*
 assert(false, '_k2Tag_.pm_SetStrA not implemented');
//#UC END# *4761370F0048_47AC5591007Bset_impl*
end;//_k2Tag_.pm_SetStrA

function _k2Tag_.pm_GetChild(anIndex: Integer): Ik2Tag;
//#UC START# *47613B8303CC_47AC5591007Bget_var*
//#UC END# *47613B8303CC_47AC5591007Bget_var*
begin
//#UC START# *47613B8303CC_47AC5591007Bget_impl*
 assert(false, '_k2Tag_.pm_GetChild not implemented');
//#UC END# *47613B8303CC_47AC5591007Bget_impl*
end;//_k2Tag_.pm_GetChild

procedure _k2Tag_.pm_SetBoolW(anIndex: Integer; const aContext: Ik2Op; aValue: Boolean);
//#UC START# *47613C0F02F4_47AC5591007Bset_var*
//#UC END# *47613C0F02F4_47AC5591007Bset_var*
begin
//#UC START# *47613C0F02F4_47AC5591007Bset_impl*
 assert(false, '_k2Tag_.pm_SetBoolW not implemented');
//#UC END# *47613C0F02F4_47AC5591007Bset_impl*
end;//_k2Tag_.pm_SetBoolW

procedure _k2Tag_.pm_SetIntW(anIndex: Integer; const aContext: Ik2Op; aValue: Integer);
//#UC START# *47613C6A001F_47AC5591007Bset_var*
//#UC END# *47613C6A001F_47AC5591007Bset_var*
begin
//#UC START# *47613C6A001F_47AC5591007Bset_impl*
 assert(false, '_k2Tag_.pm_SetIntW not implemented');
//#UC END# *47613C6A001F_47AC5591007Bset_impl*
end;//_k2Tag_.pm_SetIntW

procedure _k2Tag_.pm_SetStrW(anIndex: Integer; const aContext: Ik2Op; const aValue: AnsiString);
//#UC START# *47613D4E02B3_47AC5591007Bset_var*
//#UC END# *47613D4E02B3_47AC5591007Bset_var*
begin
//#UC START# *47613D4E02B3_47AC5591007Bset_impl*
 assert(false, '_k2Tag_.pm_SetStrW not implemented');
//#UC END# *47613D4E02B3_47AC5591007Bset_impl*
end;//_k2Tag_.pm_SetStrW

function _k2Tag_.pm_GetPCharLenA(anIndex: Integer): Tl3PCharLen;
//#UC START# *47613DB001A3_47AC5591007Bget_var*
//#UC END# *47613DB001A3_47AC5591007Bget_var*
begin
//#UC START# *47613DB001A3_47AC5591007Bget_impl*
 assert(false, '_k2Tag_.pm_GetPCharLenA not implemented');
//#UC END# *47613DB001A3_47AC5591007Bget_impl*
end;//_k2Tag_.pm_GetPCharLenA

procedure _k2Tag_.pm_SetPCharLenA(anIndex: Integer; const aValue: Tl3PCharLen);
//#UC START# *47613DB001A3_47AC5591007Bset_var*
//#UC END# *47613DB001A3_47AC5591007Bset_var*
begin
//#UC START# *47613DB001A3_47AC5591007Bset_impl*
 assert(false, '_k2Tag_.pm_SetPCharLenA not implemented');
//#UC END# *47613DB001A3_47AC5591007Bset_impl*
end;//_k2Tag_.pm_SetPCharLenA

procedure _k2Tag_.pm_SetPCharLenW(anIndex: Integer; const aContext: Ik2Op; const aValue: Tl3WString);
//#UC START# *47613E120125_47AC5591007Bset_var*
//#UC END# *47613E120125_47AC5591007Bset_var*
begin
//#UC START# *47613E120125_47AC5591007Bset_impl*
 assert(false, '_k2Tag_.pm_SetPCharLenW not implemented');
//#UC END# *47613E120125_47AC5591007Bset_impl*
end;//_k2Tag_.pm_SetPCharLenW

procedure _k2Tag_.pm_SetObjW(anIndex: Integer; const aContext: Ik2Op; aValue: TObject);
//#UC START# *47613EA10105_47AC5591007Bset_var*
//#UC END# *47613EA10105_47AC5591007Bset_var*
begin
//#UC START# *47613EA10105_47AC5591007Bset_impl*
 assert(false, '_k2Tag_.pm_SetObjW not implemented');
//#UC END# *47613EA10105_47AC5591007Bset_impl*
end;//_k2Tag_.pm_SetObjW

function _k2Tag_.DoQT(const IID: TGUID;
  out Obj;
  const aProcessor: Ik2Processor = nil): Boolean;
//#UC START# *49E7624501F4_47AC5591007B_var*
//#UC END# *49E7624501F4_47AC5591007B_var*
begin
//#UC START# *49E7624501F4_47AC5591007B_impl*
 !!! Needs to be implemented !!!
//#UC END# *49E7624501F4_47AC5591007B_impl*
end;//_k2Tag_.DoQT

function _k2Tag_.pm_GetAsString: AnsiString;
//#UC START# *4A42149A01FE_47AC5591007Bget_var*
//#UC END# *4A42149A01FE_47AC5591007Bget_var*
begin
//#UC START# *4A42149A01FE_47AC5591007Bget_impl*
 assert(false, '_k2Tag_.pm_GetAsString not implemented');
//#UC END# *4A42149A01FE_47AC5591007Bget_impl*
end;//_k2Tag_.pm_GetAsString

function _k2Tag_.pm_GetAsPCharLen: Tl3PCharLen;
//#UC START# *4A4216790331_47AC5591007Bget_var*
//#UC END# *4A4216790331_47AC5591007Bget_var*
begin
//#UC START# *4A4216790331_47AC5591007Bget_impl*
 assert(false, '_k2Tag_.Get_AsPCharLen not implemented');
//#UC END# *4A4216790331_47AC5591007Bget_impl*
end;//_k2Tag_.pm_GetAsPCharLen

function _k2Tag_.AsBool: Boolean;
//#UC START# *4A42195A0244_47AC5591007B_var*
//#UC END# *4A42195A0244_47AC5591007B_var*
begin
//#UC START# *4A42195A0244_47AC5591007B_impl*
 assert(false, '_k2Tag_.AsBool not implemented');
//#UC END# *4A42195A0244_47AC5591007B_impl*
end;//_k2Tag_.AsBool

function _k2Tag_.AsLong: Integer;
//#UC START# *4A42196201B8_47AC5591007B_var*
//#UC END# *4A42196201B8_47AC5591007B_var*
begin
//#UC START# *4A42196201B8_47AC5591007B_impl*
 assert(false, '_k2Tag_.AsLong not implemented');
//#UC END# *4A42196201B8_47AC5591007B_impl*
end;//_k2Tag_.AsLong

function _k2Tag_.AsObject: TObject;
//#UC START# *4A42196C01CE_47AC5591007B_var*
//#UC END# *4A42196C01CE_47AC5591007B_var*
begin
//#UC START# *4A42196C01CE_47AC5591007B_impl*
 assert(false, '_k2Tag_.AsObject not implemented');
//#UC END# *4A42196C01CE_47AC5591007B_impl*
end;//_k2Tag_.AsObject

function _k2Tag_.IsOrd: Boolean;
//#UC START# *4A421BE201A9_47AC5591007B_var*
//#UC END# *4A421BE201A9_47AC5591007B_var*
begin
//#UC START# *4A421BE201A9_47AC5591007B_impl*
 !!! Needs to be implemented !!!
//#UC END# *4A421BE201A9_47AC5591007B_impl*
end;//_k2Tag_.IsOrd

function _k2Tag_.InheritsFrom(anID: Integer): Boolean;
//#UC START# *4A421BED00FF_47AC5591007B_var*
//#UC END# *4A421BED00FF_47AC5591007B_var*
begin
//#UC START# *4A421BED00FF_47AC5591007B_impl*
 !!! Needs to be implemented !!!
//#UC END# *4A421BED00FF_47AC5591007B_impl*
end;//_k2Tag_.InheritsFrom

function _k2Tag_.InheritsFrom(const anIDs: array of Integer): Boolean;
//#UC START# *4A421BF200BF_47AC5591007B_var*
//#UC END# *4A421BF200BF_47AC5591007B_var*
begin
//#UC START# *4A421BF200BF_47AC5591007B_impl*
 !!! Needs to be implemented !!!
//#UC END# *4A421BF200BF_47AC5591007B_impl*
end;//_k2Tag_.InheritsFrom

function _k2Tag_.InheritsFrom(anAtomTypeID: Integer;
  const Exclude: array of Integer): Boolean;
//#UC START# *4A421C12034A_47AC5591007B_var*
//#UC END# *4A421C12034A_47AC5591007B_var*
begin
//#UC START# *4A421C12034A_47AC5591007B_impl*
 !!! Needs to be implemented !!!
//#UC END# *4A421C12034A_47AC5591007B_impl*
end;//_k2Tag_.InheritsFrom

function _k2Tag_.AddChild(var aChild: Ik2Tag;
  const aContext: Ik2Op = nil): Integer;
//#UC START# *4A422C1D00FE_47AC5591007B_var*
//#UC END# *4A422C1D00FE_47AC5591007B_var*
begin
//#UC START# *4A422C1D00FE_47AC5591007B_impl*
 assert(false, '_k2Tag_.AddChild not implemented');
//#UC END# *4A422C1D00FE_47AC5591007B_impl*
end;//_k2Tag_.AddChild

function _k2Tag_.pm_GetChildrenCount: Integer;
//#UC START# *4A42356B0022_47AC5591007Bget_var*
//#UC END# *4A42356B0022_47AC5591007Bget_var*
begin
//#UC START# *4A42356B0022_47AC5591007Bget_impl*
 assert(false, '_k2Tag_.Get_ChildrenCount not implemented');
//#UC END# *4A42356B0022_47AC5591007Bget_impl*
end;//_k2Tag_.pm_GetChildrenCount

procedure _k2Tag_.InsertChild(anIndex: Integer;
  var aChild: Ik2Tag;
  const aContext: Ik2Op = nil);
//#UC START# *4A42358A00C2_47AC5591007B_var*
//#UC END# *4A42358A00C2_47AC5591007B_var*
begin
//#UC START# *4A42358A00C2_47AC5591007B_impl*
 assert(false, '_k2Tag_.InsertChild not implemented');
//#UC END# *4A42358A00C2_47AC5591007B_impl*
end;//_k2Tag_.InsertChild

function _k2Tag_.IndexOfChild(const aChild: Ik2Tag): Integer;
//#UC START# *4A4235B70288_47AC5591007B_var*
//#UC END# *4A4235B70288_47AC5591007B_var*
begin
//#UC START# *4A4235B70288_47AC5591007B_impl*
 assert(false, '_k2Tag_.IndexOfChild not implemented');
//#UC END# *4A4235B70288_47AC5591007B_impl*
end;//_k2Tag_.IndexOfChild

function _k2Tag_.FindChild(anAtom: Integer;
  aValue: Integer;
  const aContext: Ik2Op = nil;
  aNeedCreate: Boolean = false;
  theIndex: PLong = nil): Ik2Tag;
//#UC START# *4A42374B0371_47AC5591007B_var*
//#UC END# *4A42374B0371_47AC5591007B_var*
begin
//#UC START# *4A42374B0371_47AC5591007B_impl*
 assert(false, '_k2Tag_.FindChild not implemented');
//#UC END# *4A42374B0371_47AC5591007B_impl*
end;//_k2Tag_.FindChild

procedure _k2Tag_.DeleteChildren(const Context: Ik2Op = nil);
//#UC START# *4A42378D0030_47AC5591007B_var*
//#UC END# *4A42378D0030_47AC5591007B_var*
begin
//#UC START# *4A42378D0030_47AC5591007B_impl*
 assert(false, '_k2Tag_.DeleteChildren not implemented');
//#UC END# *4A42378D0030_47AC5591007B_impl*
end;//_k2Tag_.DeleteChildren

function _k2Tag_.IntRef: Integer;
//#UC START# *4A423C5B0038_47AC5591007B_var*
//#UC END# *4A423C5B0038_47AC5591007B_var*
begin
//#UC START# *4A423C5B0038_47AC5591007B_impl*
 assert(false, '_k2Tag_.IntRef not implemented');
//#UC END# *4A423C5B0038_47AC5591007B_impl*
end;//_k2Tag_.IntRef

procedure _k2Tag_.SetIntRef(out aRef: Integer);
//#UC START# *4A423C670156_47AC5591007B_var*
//#UC END# *4A423C670156_47AC5591007B_var*
begin
//#UC START# *4A423C670156_47AC5591007B_impl*
 assert(false, '_k2Tag_.SetIntRef not implemented');
//#UC END# *4A423C670156_47AC5591007B_impl*
end;//_k2Tag_.SetIntRef

function _k2Tag_.DeleteChild(anIndex: Integer;
  const anOp: Ik2Op;
  out theChild: Ik2Tag): Boolean;
//#UC START# *4A423EC900C2_47AC5591007B_var*
//#UC END# *4A423EC900C2_47AC5591007B_var*
begin
//#UC START# *4A423EC900C2_47AC5591007B_impl*
 assert(false, '_k2Tag_.DeleteChild not implemented');
//#UC END# *4A423EC900C2_47AC5591007B_impl*
end;//_k2Tag_.DeleteChild

function _k2Tag_.DeleteChild(const aChild: Ik2Tag;
  const Context: Ik2Op = nil): Boolean;
//#UC START# *4A423ECE03A6_47AC5591007B_var*
//#UC END# *4A423ECE03A6_47AC5591007B_var*
begin
//#UC START# *4A423ECE03A6_47AC5591007B_impl*
 assert(false, '_k2Tag_.DeleteChild not implemented');
//#UC END# *4A423ECE03A6_47AC5591007B_impl*
end;//_k2Tag_.DeleteChild

function _k2Tag_.DeleteChild(anIndex: Integer;
  const anOp: Ik2Op = nil): Boolean;
//#UC START# *4A423F0002E2_47AC5591007B_var*
//#UC END# *4A423F0002E2_47AC5591007B_var*
begin
//#UC START# *4A423F0002E2_47AC5591007B_impl*
 !!! Needs to be implemented !!!
//#UC END# *4A423F0002E2_47AC5591007B_impl*
end;//_k2Tag_.DeleteChild

procedure _k2Tag_.DoLoad;
//#UC START# *4A42489800D0_47AC5591007B_var*
//#UC END# *4A42489800D0_47AC5591007B_var*
begin
//#UC START# *4A42489800D0_47AC5591007B_impl*
 assert(false, '_k2Tag_.DoLoad not implemented');
//#UC END# *4A42489800D0_47AC5591007B_impl*
end;//_k2Tag_.DoLoad

procedure _k2Tag_.ForceStore;
//#UC START# *4A4248A501C8_47AC5591007B_var*
//#UC END# *4A4248A501C8_47AC5591007B_var*
begin
//#UC START# *4A4248A501C8_47AC5591007B_impl*
 assert(false, '_k2Tag_.ForceStore not implemented');
//#UC END# *4A4248A501C8_47AC5591007B_impl*
end;//_k2Tag_.ForceStore

function _k2Tag_.MarkModified: Boolean;
//#UC START# *4A4248C902F1_47AC5591007B_var*
//#UC END# *4A4248C902F1_47AC5591007B_var*
begin
//#UC START# *4A4248C902F1_47AC5591007B_impl*
 assert(false, '_k2Tag_.MarkModified not implemented');
//#UC END# *4A4248C902F1_47AC5591007B_impl*
end;//_k2Tag_.MarkModified

procedure _k2Tag_.Set_ChildrenCapacity(aValue: Integer);
//#UC START# *4A6039AA0172_47AC5591007Bset_var*
//#UC END# *4A6039AA0172_47AC5591007Bset_var*
begin
//#UC START# *4A6039AA0172_47AC5591007Bset_impl*
 !!! Needs to be implemented !!!
//#UC END# *4A6039AA0172_47AC5591007Bset_impl*
end;//_k2Tag_.Set_ChildrenCapacity

function _k2Tag_.RBool(anIndex: Integer;
  aDefault: Boolean): Boolean;
//#UC START# *4BC71AF503DC_47AC5591007B_var*
//#UC END# *4BC71AF503DC_47AC5591007B_var*
begin
//#UC START# *4BC71AF503DC_47AC5591007B_impl*
 assert(false, '_k2Tag_.RBool not implemented');
//#UC END# *4BC71AF503DC_47AC5591007B_impl*
end;//_k2Tag_.RBool

function _k2Tag_.RLong(anIndex: Integer;
  aDefault: Integer): Integer;
//#UC START# *4BC71B0A028C_47AC5591007B_var*
//#UC END# *4BC71B0A028C_47AC5591007B_var*
begin
//#UC START# *4BC71B0A028C_47AC5591007B_impl*
 assert(false, '_k2Tag_.RLong not implemented');
//#UC END# *4BC71B0A028C_47AC5591007B_impl*
end;//_k2Tag_.RLong

function _k2Tag_.pm_GetTagType: Tk2TypePrim;
//#UC START# *4BC71F3B02A3_47AC5591007Bget_var*
//#UC END# *4BC71F3B02A3_47AC5591007Bget_var*
begin
//#UC START# *4BC71F3B02A3_47AC5591007Bget_impl*
 !!! Needs to be implemented !!!
//#UC END# *4BC71F3B02A3_47AC5591007Bget_impl*
end;//_k2Tag_.pm_GetTagType

function _k2Tag_.CompareWithInt(aValue: Integer;
  anIndex: Integer): Integer;
//#UC START# *4BC8415802B6_47AC5591007B_var*
//#UC END# *4BC8415802B6_47AC5591007B_var*
begin
//#UC START# *4BC8415802B6_47AC5591007B_impl*
 !!! Needs to be implemented !!!
//#UC END# *4BC8415802B6_47AC5591007B_impl*
end;//_k2Tag_.CompareWithInt

function _k2Tag_.CompareWithTag(const aTag: Ik2Tag;
  aSortIndex: Tl3SortIndex): Integer;
//#UC START# *4BC8415E021A_47AC5591007B_var*
//#UC END# *4BC8415E021A_47AC5591007B_var*
begin
//#UC START# *4BC8415E021A_47AC5591007B_impl*
 !!! Needs to be implemented !!!
//#UC END# *4BC8415E021A_47AC5591007B_impl*
end;//_k2Tag_.CompareWithTag

function _k2Tag_.RAtomEx(const Path: array of Integer;
  theIndex: PLong = nil): Ik2Tag;
//#UC START# *4BC843A5011F_47AC5591007B_var*
//#UC END# *4BC843A5011F_47AC5591007B_var*
begin
//#UC START# *4BC843A5011F_47AC5591007B_impl*
 assert(false, '_k2Tag_.RAtomEx not implemented');
//#UC END# *4BC843A5011F_47AC5591007B_impl*
end;//_k2Tag_.RAtomEx

function _k2Tag_.ROwnAtom(anIndex: Integer): Ik2Tag;
//#UC START# *4BC843C40240_47AC5591007B_var*
//#UC END# *4BC843C40240_47AC5591007B_var*
begin
//#UC START# *4BC843C40240_47AC5591007B_impl*
 assert(false, '_k2Tag_.ROwnAtom not implemented');
//#UC END# *4BC843C40240_47AC5591007B_impl*
end;//_k2Tag_.ROwnAtom

function _k2Tag_.CAtom(anIndex: Integer;
  const aContext: Ik2Op = nil;
  anAtomType: Tk2TypePrim = nil): Ik2Tag;
//#UC START# *4BC843C80301_47AC5591007B_var*
//#UC END# *4BC843C80301_47AC5591007B_var*
begin
//#UC START# *4BC843C80301_47AC5591007B_impl*
 assert(false, '_k2Tag_.CAtom not implemented');
//#UC END# *4BC843C80301_47AC5591007B_impl*
end;//_k2Tag_.CAtom

function _k2Tag_.CAtomEx(const aPath: array of Integer;
  const aContext: Ik2Op;
  theIndex: PLong = nil): Ik2Tag;
//#UC START# *4BC843CE00EF_47AC5591007B_var*
//#UC END# *4BC843CE00EF_47AC5591007B_var*
begin
//#UC START# *4BC843CE00EF_47AC5591007B_impl*
 assert(false, '_k2Tag_.CAtomEx not implemented');
//#UC END# *4BC843CE00EF_47AC5591007B_impl*
end;//_k2Tag_.CAtomEx

function _k2Tag_.HasSubAtom(anIndex: Integer): Boolean;
//#UC START# *4BC8441500B7_47AC5591007B_var*
//#UC END# *4BC8441500B7_47AC5591007B_var*
begin
//#UC START# *4BC8441500B7_47AC5591007B_impl*
 assert(false, '_k2Tag_.HasSubAtom not implemented');
//#UC END# *4BC8441500B7_47AC5591007B_impl*
end;//_k2Tag_.HasSubAtom

function _k2Tag_.IsNull: Boolean;
//#UC START# *4BC8446D010E_47AC5591007B_var*
//#UC END# *4BC8446D010E_47AC5591007B_var*
begin
//#UC START# *4BC8446D010E_47AC5591007B_impl*
 assert(false, '_k2Tag_.IsNull not implemented');
//#UC END# *4BC8446D010E_47AC5591007B_impl*
end;//_k2Tag_.IsNull

function _k2Tag_.IsValid: Boolean;
//#UC START# *4BC8447200B0_47AC5591007B_var*
//#UC END# *4BC8447200B0_47AC5591007B_var*
begin
//#UC START# *4BC8447200B0_47AC5591007B_impl*
 assert(false, '_k2Tag_.IsValid not implemented');
//#UC END# *4BC8447200B0_47AC5591007B_impl*
end;//_k2Tag_.IsValid

function _k2Tag_.IsTransparent: Boolean;
//#UC START# *4BC8447501CB_47AC5591007B_var*
//#UC END# *4BC8447501CB_47AC5591007B_var*
begin
//#UC START# *4BC8447501CB_47AC5591007B_impl*
 assert(false, '_k2Tag_.IsTransparent not implemented');
//#UC END# *4BC8447501CB_47AC5591007B_impl*
end;//_k2Tag_.IsTransparent

function _k2Tag_.IsStream(out theStream: IStream): Boolean;
//#UC START# *4BC8447A0046_47AC5591007B_var*
//#UC END# *4BC8447A0046_47AC5591007B_var*
begin
//#UC START# *4BC8447A0046_47AC5591007B_impl*
 assert(false, '_k2Tag_.IsStream not implemented');
//#UC END# *4BC8447A0046_47AC5591007B_impl*
end;//_k2Tag_.IsStream

function _k2Tag_.QT(const IID: TGUID;
  out Obj;
  const aProcessor: Ik2Processor = nil): Boolean;
//#UC START# *4BC84CA1035B_47AC5591007B_var*
//#UC END# *4BC84CA1035B_47AC5591007B_var*
begin
//#UC START# *4BC84CA1035B_47AC5591007B_impl*
 assert(false, '_k2Tag_.QT not implemented');
//#UC END# *4BC84CA1035B_47AC5591007B_impl*
end;//_k2Tag_.QT

function _k2Tag_.GetOwnInterface(const IID: TGUID;
  out Obj): Boolean;
//#UC START# *4BC84CEE0329_47AC5591007B_var*
//#UC END# *4BC84CEE0329_47AC5591007B_var*
begin
//#UC START# *4BC84CEE0329_47AC5591007B_impl*
 assert(false, '_k2Tag_.GetOwnInterface not implemented');
//#UC END# *4BC84CEE0329_47AC5591007B_impl*
end;//_k2Tag_.GetOwnInterface

function _k2Tag_.GetLinkedInterface(const IID: TGUID;
  out Obj): Boolean;
//#UC START# *4BC84CF702F5_47AC5591007B_var*
//#UC END# *4BC84CF702F5_47AC5591007B_var*
begin
//#UC START# *4BC84CF702F5_47AC5591007B_impl*
 !!! Needs to be implemented !!!
//#UC END# *4BC84CF702F5_47AC5591007B_impl*
end;//_k2Tag_.GetLinkedInterface

{iterator} function _k2Tag_.IterateChildrenF(anAction: Ik2Tag_IterateChildrenF_Action;
  aLo: Tl3Index = l3MinIndex;
  aHi: Tl3Index = l3MaxIndex;
  aLoadedOnly: Boolean = false): Integer;
//#UC START# *4BB21F9D022F_47AC5591007B_var*
//#UC END# *4BB21F9D022F_47AC5591007B_var*
begin
//#UC START# *4BB21F9D022F_47AC5591007B_impl*
 !!! Needs to be implemented !!!
//#UC END# *4BB21F9D022F_47AC5591007B_impl*
end;//_k2Tag_.IterateChildrenF

{iterator} function _k2Tag_.IterateChildrenBack(anAction: Ik2Tag_IterateChildrenBack_Action;
  aHi: Tl3Index = l3MaxIndex;
  aLo: Tl3Index = l3MinIndex;
  aLoadedOnly: Boolean = false): Integer;
//#UC START# *4BBF49EB0260_47AC5591007B_var*
//#UC END# *4BBF49EB0260_47AC5591007B_var*
begin
//#UC START# *4BBF49EB0260_47AC5591007B_impl*
 !!! Needs to be implemented !!!
//#UC END# *4BBF49EB0260_47AC5591007B_impl*
end;//_k2Tag_.IterateChildrenBack

{iterator} function _k2Tag_.IterateChildrenBackF(anAction: Ik2Tag_IterateChildrenBack_Action;
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

{iterator} procedure _k2Tag_.IterateProperties(anAction: Ik2Tag_IterateProperties_Action;
  anAll: Boolean
  {* Перебирать все возможные свойства или только РЕАЛЬНО заданные});
//#UC START# *4BC31A730293_47AC5591007B_var*
//#UC END# *4BC31A730293_47AC5591007B_var*
begin
//#UC START# *4BC31A730293_47AC5591007B_impl*
 !!! Needs to be implemented !!!
//#UC END# *4BC31A730293_47AC5591007B_impl*
end;//_k2Tag_.IterateProperties

{iterator} procedure _k2Tag_.IteratePropertiesF(anAction: Ik2Tag_IterateProperties_Action;
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

{$EndIf k2Tag_imp}
