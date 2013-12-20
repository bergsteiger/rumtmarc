unit k2Interfaces;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/K2/k2Interfaces.pas"
// Начат: 28.02.2001 13:34
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Interfaces::Category>> Shared Delphi::K2::k2Interfaces
//
// Интерфейсы, описывающие работу с теговыми структурами.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\K2\k2Define.inc}

interface

uses
  l3Interfaces,
  l3Types,
  k2Types,
  TypInfo,
  l3IID,
  k2BaseTypes,
  k2PureMixIns,
  k2Prim
  ;

type
 Ik2Base = interface(Il3Base)
  {* Базовый интерфейс библиотеки K-2 }
   ['{100376F4-33DA-4C1D-8F6C-0E9569466122}']
 end;//Ik2Base

 Ik2Op = k2Prim.Ik2Op;

 Tk2TypePrim = k2Prim.Tk2TypePrim;

(*
 Mk2TagPtr = PureMixIn
  {* Указатель на тег }
 end;//Mk2TagPtr
*)
 Ik2Tag = interface;
 { - предварительное описание Ik2Tag. }

 PIk2Tag = ^Ik2Tag;
  {* Указатель на Ik2Tag. }


(*
 Mk2Owned = PureMixIn
   function Get_Owner: Ik2Tag;
   procedure Set_Owner(const aValue: Ik2Tag);
   property Owner: Ik2Tag
     read Get_Owner
     write Set_Owner;
 end;//Mk2Owned
*)

 Tk2EventID = (
  {* Идентификаторы событий. }
   k2_eidNull // пустое событие.
 , k2_eidChildrenInserted // вставлены дочерние теги.
 , k2_eidTypeTableWillBeDestroyed // таблица типов сейчас будет освобождена.
 , k2_eidAttrChanged // аттрибут изменился.
 , k2_eidChildrenAdded // добавлены дочерние теги.
 , k2_eidChildrenDeleted // удалены дочерние теги.
 );//Tk2EventID

 Tk2EventIDs = set of Tk2EventID;

 Tk2Event = record
   ID : Tk2EventID;
   Point : Integer;
   Len : Integer;
   Total : Integer;
 end;//Tk2Event

(*
 Mk2TagHolder = PureMixIn
   function pm_GetAttr(anIndex: Integer): Ik2Tag;
   procedure pm_SetAttr(anIndex: Integer; const aValue: Ik2Tag);
   procedure pm_SetAttrW(anIndex: Integer; const aContext: Ik2Op; const aValue: Ik2Tag);
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
   property Attr[anIndex: Integer]: Ik2Tag
     read pm_GetAttr
     write pm_SetAttr;
     default;
   property AttrW[anIndex: Integer; const aContext: Ik2Op]: Ik2Tag
     write pm_SetAttrW;
 end;//Mk2TagHolder
*)

 Ik2Listner = interface(Ik2Base)
  {* Объекты, умеющие принимать сообщения о смене состояния тегов }
   ['{400B6933-ACA2-4030-80B6-B609ADC3BC49}']
   procedure Fire(const anEvent: Tk2Event;
    const anOp: Ik2Op);
     {* сообщение о том, что что-то произошло. }
 end;//Ik2Listner

(*
 Mk2Compare = PureMixIn
   function CompareWithInt(aValue: Integer;
    anIndex: Integer): Integer;
     {* Сравнивает тег с целым. }
   function CompareWithTag(const aTag: Ik2Tag;
    aSortIndex: Tl3SortIndex): Integer;
 end;//Mk2Compare
*)

  Ik2InterfaceFactory_IterateCursors_Action = function (anItem: Pointer;
  anIndex: Integer): Boolean;
   {* Тип подитеративной функции для Ik2InterfaceFactory.IterateCursors }

 Ik2InterfaceFactory = interface(Ik2Base)
   ['{A3AD1EAA-AC82-4AA7-86D5-95250C94D6DB}']
   {iterator} procedure IterateCursors(anAction: Ik2InterfaceFactory_IterateCursors_Action);
   {iterator} procedure IterateCursorsF(anAction: Ik2InterfaceFactory_IterateCursors_Action);
 end;//Ik2InterfaceFactory

  Ik2Tag_IterateChildrenF_Action = function (const anItem: Ik2Tag;
  anIndex: Integer): Boolean;
   {* Тип подитеративной функции для Ik2Tag.IterateChildrenF }

  Ik2Tag_IterateChildrenBack_Action = function (const anItem: Ik2Tag;
  anIndex: Integer): Boolean;
   {* Тип подитеративной функции для Ik2Tag.IterateChildrenBack }

  Ik2Tag_IterateProperties_Action = function (const anItem: Ik2Tag;
  anIndex: Tk2CustomPropertyPrim): Boolean;
   {* Тип подитеративной функции для Ik2Tag.IterateProperties }

 Ik2Tag = interface(Ik2Base)
  {* Объект содержащий подъобекты и атомарные атрибуты }
   ['{2345D08B-36E3-4B6A-ABA8-82C74B3431DF}']
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
  // Mk2Value
   function pm_GetAsString: AnsiString;
   function pm_GetAsPCharLen: Tl3PCharLen;
   function AsBool: Boolean;
     {* преобразовать к Boolean. }
   function AsLong: Integer;
   function AsObject: TObject;
   property AsString: AnsiString
     read pm_GetAsString;
     {* свойство для преобразования к строкам Delphi }
   property AsPCharLen: Tl3PCharLen
     read pm_GetAsPCharLen;
     {* свойство для преобразования к типу Tl3PCharLen }
  // Mk2TypeInfo
   function IsOrd: Boolean;
   function InheritsFrom(anID: Integer): Boolean; overload; 
     {* проверить наследование. }
   function InheritsFrom(const anIDs: array of Integer): Boolean; overload; 
     {* проверить наследование. }
   function InheritsFrom(anAtomTypeID: Integer;
    const Exclude: array of Integer): Boolean; overload; 
     {* проверить наследование. }
  // Mk2Children
   function pm_GetChildrenCount: Integer;
   function pm_GetChild(anIndex: Integer): Ik2Tag;
   procedure Set_ChildrenCapacity(aValue: Integer);
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
   function DeleteChild(anIndex: Integer;
    const anOp: Ik2Op;
    out theChild: Ik2Tag): Boolean; overload; 
     {* удалить ребенка. }
   function DeleteChild(const aChild: Ik2Tag;
    const Context: Ik2Op = nil): Boolean; overload; 
     {* удалить ребенка. }
   function DeleteChild(anIndex: Integer;
    const anOp: Ik2Op = nil): Boolean; overload; 
   property ChildrenCount: Integer
     read pm_GetChildrenCount;
     {* Количество дочерних тегов. }
   property Child[anIndex: Integer]: Ik2Tag
     read pm_GetChild;
   property ChildrenCapacity: Integer
     write Set_ChildrenCapacity;
     {* Потенциально возможное число детей }
  // Mk2RefCount
   function IntRef: Integer;
   procedure SetIntRef(out aRef: Integer);
  // Mk2Storable
   procedure DoLoad;
   procedure ForceStore;
   function MarkModified: Boolean;
  // Mk2Owned
   function Get_Owner: Ik2Tag;
   procedure Set_Owner(const aValue: Ik2Tag);
   property Owner: Ik2Tag
     read Get_Owner
     write Set_Owner;
  // Mk2IntegerHolder
   function pm_GetIntA(anIndex: Integer): Integer;
   procedure pm_SetIntA(anIndex: Integer; aValue: Integer);
   procedure pm_SetIntW(anIndex: Integer; const aContext: Ik2Op; aValue: Integer);
   function RLong(anIndex: Integer;
    aDefault: Integer): Integer;
   property IntA[anIndex: Integer]: Integer
     read pm_GetIntA
     write pm_SetIntA;
   property IntW[anIndex: Integer; const aContext: Ik2Op]: Integer
     write pm_SetIntW;
  // Mk2PCharLenHolder
   function pm_GetPCharLenA(anIndex: Integer): Tl3PCharLen;
   procedure pm_SetPCharLenA(anIndex: Integer; const aValue: Tl3PCharLen);
   procedure pm_SetPCharLenW(anIndex: Integer; const aContext: Ik2Op; const aValue: Tl3WString);
   property PCharLenA[anIndex: Integer]: Tl3PCharLen
     read pm_GetPCharLenA
     write pm_SetPCharLenA;
   property PCharLenW[anIndex: Integer; const aContext: Ik2Op]: Tl3WString
     write pm_SetPCharLenW;
  // Mk2BooleanHolder
   function pm_GetBoolA(anIndex: Integer): Boolean;
   procedure pm_SetBoolA(anIndex: Integer; aValue: Boolean);
   procedure pm_SetBoolW(anIndex: Integer; const aContext: Ik2Op; aValue: Boolean);
   function RBool(anIndex: Integer;
    aDefault: Boolean): Boolean;
   property BoolA[anIndex: Integer]: Boolean
     read pm_GetBoolA
     write pm_SetBoolA;
   property BoolW[anIndex: Integer; const aContext: Ik2Op]: Boolean
     write pm_SetBoolW;
  // Mk2StringHolder
   function pm_GetStrA(anIndex: Integer): AnsiString;
   procedure pm_SetStrA(anIndex: Integer; const aValue: AnsiString);
   procedure pm_SetStrW(anIndex: Integer; const aContext: Ik2Op; const aValue: AnsiString);
   property StrA[anIndex: Integer]: AnsiString
     read pm_GetStrA
     write pm_SetStrA;
   property StrW[anIndex: Integer; const aContext: Ik2Op]: AnsiString
     write pm_SetStrW;
  // Mk2ObjectHolder
   procedure pm_SetObjW(anIndex: Integer; const aContext: Ik2Op; aValue: TObject);
   property ObjW[anIndex: Integer; const aContext: Ik2Op]: TObject
     write pm_SetObjW;
  // Mk2TypeHolder
   function pm_GetTagType: Tk2TypePrim;
   property TagType: Tk2TypePrim
     read pm_GetTagType;
  // Mk2TagHolder
   function pm_GetAttr(anIndex: Integer): Ik2Tag;
   procedure pm_SetAttr(anIndex: Integer; const aValue: Ik2Tag);
   procedure pm_SetAttrW(anIndex: Integer; const aContext: Ik2Op; const aValue: Ik2Tag);
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
   property Attr[anIndex: Integer]: Ik2Tag
     read pm_GetAttr
     write pm_SetAttr;
     default;
   property AttrW[anIndex: Integer; const aContext: Ik2Op]: Ik2Tag
     write pm_SetAttrW;
  // Mk2Compare
   function CompareWithInt(aValue: Integer;
    anIndex: Integer): Integer;
     {* Сравнивает тег с целым. }
   function CompareWithTag(const aTag: Ik2Tag;
    aSortIndex: Tl3SortIndex): Integer;
  // Mk2AtomHolder
   function HasSubAtom(anIndex: Integer): Boolean;
  // Mk2TagInfo
   function IsNull: Boolean;
     {* пустой тег? }
   function IsValid: Boolean;
     {* тег имеет значение? }
   function IsTransparent: Boolean;
     {* тег "прозрачный"? }
   function IsStream(out theStream: IStream): Boolean;
     {* Проверяет может ли тег приводиться к потоку. И приводит к потоку - если указатель на поток - не нулевой. }
  // Mk2TagToolProvider
   function QT(const IID: TGUID;
    out Obj;
    const aProcessor: Ik2Processor = nil): Boolean;
     {* возвращает инструмент для работы с тегом, к которому привязан исходный инструмент. }
  // Mk2InterfaceProvider
   function GetOwnInterface(const IID: TGUID;
    out Obj): Boolean;
     {* возвращает интерфейс НЕПОСРЕДСТВЕННО поддерживаемый реализацией инструмента. }
   function GetLinkedInterface(const IID: TGUID;
    out Obj): Boolean;
  // Mk2Int64Holder
   function Get_Int64A(aTagID: Integer): Int64;
   procedure Set_Int64A(aTagID: Integer; aValue: Int64);
   procedure Set_Int64W(aTagID: Integer; const aContext: Ik2Op; aValue: Int64);
   property Int64A[aTagID: Integer]: Int64
     read Get_Int64A
     write Set_Int64A;
   property Int64W[aTagID: Integer; const aContext: Ik2Op]: Int64
     write Set_Int64W;
 end;//Ik2Tag


 Ik2TagListner = interface(Ik2Tag)
  {* Объекты, умеющие принимать сообщения о смене состояния тегов }
   ['{E75F297A-5A79-4C00-9FD6-6911D3275239}']
   procedure Fire(const anEvent: Tk2Event;
    const anOp: Ik2Op);
     {* сообщение о том, что c тегом что-то произошло. }
   function ExcludeEvents: Tk2EventIDs;
     {* События, которые не надо слушать. }
  // Mk2TagPtr
 end;//Ik2TagListner

 Ik2GeneratorTarget = interface(Ik2Base)
  {* Интерфейс цели генерации. Используется для управления ее временем жизни. }
   ['{D7833AAF-1A4D-4CD0-A8AD-17461B2A8B6E}']
 end;//Ik2GeneratorTarget

 Tk2Integer = record
   rIsSet : Boolean;
   rValue : Integer;
 end;//Tk2Integer

 Tk2Str = record
   rIsSet : Boolean;
   rValue : Tl3PCharLen;
 end;//Tk2Str

 Tk2ValueType = (
   vtInt
 , vtBool
 , vtStr
 , vtObj
 , vtTag
 );//Tk2ValueType

 Ik2TagTool = interface(Ik2TagListner)
  {* Инструмент для манипулирования тегом }
   ['{72568393-5622-4C47-BC3A-D17C56F87BDE}']
   function pm_GetParentTool: Ik2TagTool;
   procedure pm_SetParentTool(const aValue: Ik2TagTool);
   property ParentTool: Ik2TagTool
     read pm_GetParentTool
     write pm_SetParentTool;
     {* инструмент родительского тега. }
 end;//Ik2TagTool

 Ik2RawData = interface(Ik2Base)
   ['{1BF80DA7-BEBC-48DC-808A-355329C193E6}']
   function pm_GetIsModified: Boolean;
   property IsModified: Boolean
     read pm_GetIsModified;
 end;//Ik2RawData

 Ik2TagReader = interface(Il3Reader)
   ['{7A106425-E165-42E9-ACF2-C7D54425CC64}']
   function pm_GetContext: Ik2Op;
   procedure pm_SetContext(const aValue: Ik2Op);
   procedure Rollback(CheckBrackets: Boolean = false);
   procedure Link(const G: Ik2TagGenerator);
   procedure UnLink(const G: Ik2TagGenerator);
   property Context: Ik2Op
     read pm_GetContext
     write pm_SetContext;
     {* Контекст генерации. }
 end;//Ik2TagReader

 Ik2Processor = k2Prim.Ik2Processor;

 Ik2TagToolFactory = interface(Ik2Base)
  {* Фабрика инструментов для работы с тегами }
   ['{90937CF1-3F0C-4788-B96F-1EBF5498EADA}']
   function QueryTool(const aTag: Ik2Tag;
    const IID: TGUID;
    out Tool;
    const aProcessor: Ik2Processor = nil): Boolean;
 end;//Ik2TagToolFactory

 Tk2CustomPropertyPrim = k2Prim.Tk2CustomPropertyPrim;

 Tk2ArrayPropertyPrim = k2Prim.Tk2ArrayPropertyPrim;

 Ik2TagGenerator = k2Prim.Ik2TagGenerator;

 Ik2TagBoxContainer = interface(Ik2Base)
   ['{2916A1A6-C56E-4B5B-8C46-A3C59800E1F4}']
   procedure SetTag(const aTag: Ik2Tag);
 end;//Ik2TagBoxContainer


{$If defined(Never)}
  A_Iterate_Action = function (const anItem: _C_;
  anIndex: Integer): Boolean;
   {* Тип подитеративной функции для A.Iterate }
{$IfEnd} //Never

(*
 A = PureMixIn
   {$If defined(Never)}
   {iterator} function Iterate(anAction: A_Iterate_Action): Integer;
   {$IfEnd} //Never
   {$If defined(Never)}
   {iterator} function IterateF(anAction: A_Iterate_Action): Integer;
   {$IfEnd} //Never
 end;//A
*)

{$If defined(Never)}
 B = interface(Ik2Base)
   ['{785974AF-15AA-4477-99A7-E09FD7B2944D}']
  // A
   {iterator} function Iterate(anAction: A_Iterate_Action): Integer;
   {iterator} function IterateF(anAction: A_Iterate_Action): Integer;
 end;//B
{$IfEnd} //Never

 Ik2OldCursorCache = interface(Ik2Base)
   ['{C4FAC458-9D0A-440E-9D80-8CBF388AE7C5}']
   procedure Iterate(const Tag: Ik2Tag;
    Action: Tl3IteratorAction);
 end;//Ik2OldCursorCache

function L2Ik2InterfaceFactoryIterateCursorsAction(anAction: pointer): Ik2InterfaceFactory_IterateCursors_Action;
   {* Функция формирования заглушки для ЛОКАЛЬНОЙ подитеративной функции для Ik2InterfaceFactory.IterateCursors }
function L2Ik2TagIterateChildrenFAction(anAction: pointer): Ik2Tag_IterateChildrenF_Action;
   {* Функция формирования заглушки для ЛОКАЛЬНОЙ подитеративной функции для Ik2Tag.IterateChildrenF }
function L2Ik2TagIterateChildrenBackAction(anAction: pointer): Ik2Tag_IterateChildrenBack_Action;
   {* Функция формирования заглушки для ЛОКАЛЬНОЙ подитеративной функции для Ik2Tag.IterateChildrenBack }
function L2Ik2TagIteratePropertiesAction(anAction: pointer): Ik2Tag_IterateProperties_Action;
   {* Функция формирования заглушки для ЛОКАЛЬНОЙ подитеративной функции для Ik2Tag.IterateProperties }
 {$If defined(Never)}
function L2AIterateAction(anAction: pointer): A_Iterate_Action;
   {* Функция формирования заглушки для ЛОКАЛЬНОЙ подитеративной функции для A.Iterate }
 {$IfEnd} //Never

implementation

uses
  l3Base
  ;

// start class Ik2InterfaceFactory

function L2Ik2InterfaceFactoryIterateCursorsAction(anAction: pointer): Ik2InterfaceFactory_IterateCursors_Action;
 {-}
asm
 jmp l3LocalStub
end;//L2Ik2InterfaceFactoryIterateCursorsAction

function L2Ik2TagIterateChildrenFAction(anAction: pointer): Ik2Tag_IterateChildrenF_Action;
 {-}
asm
 jmp l3LocalStub
end;//L2Ik2TagIterateChildrenFAction

function L2Ik2TagIterateChildrenBackAction(anAction: pointer): Ik2Tag_IterateChildrenBack_Action;
 {-}
asm
 jmp l3LocalStub
end;//L2Ik2TagIterateChildrenBackAction

function L2Ik2TagIteratePropertiesAction(anAction: pointer): Ik2Tag_IterateProperties_Action;
 {-}
asm
 jmp l3LocalStub
end;//L2Ik2TagIteratePropertiesAction

{$If defined(Never)}
function L2AIterateAction(anAction: pointer): A_Iterate_Action;
 {-}
asm
 jmp l3LocalStub
end;//L2AIterateAction
{$IfEnd} //Never

end.