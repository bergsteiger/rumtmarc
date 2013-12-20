unit k2Prim;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/K2/k2Prim.pas"
// Начат: 03.07.2009 14:59
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi::K2::k2Core::k2Prim
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
  l3CustomString,
  Classes,
  l3PrimString,
  l3BitArr,
  k2Tags,
  l3ProtoObject
  ;

(*
 Mk2TypeInfo = PureMixIn
  {* Информация о типе }
   function IsOrd: Boolean;
   function InheritsFrom(anID: Integer): Boolean; overload; 
     {* проверить наследование. }
   function InheritsFrom(const anIDs: array of Integer): Boolean; overload; 
     {* проверить наследование. }
   function InheritsFrom(anAtomTypeID: Integer;
    const Exclude: array of Integer): Boolean; overload; 
     {* проверить наследование. }
 end;//Mk2TypeInfo
*)

type

 Il3OpPack = interface;
 { - предварительное описание Il3OpPack. }

 Ik2Op = Il3OpPack;
  {* Пачка операций. }
 Ik2TagGenerator = interface(IUnknown)
  {* Генератор тегов }
   ['{694DAEA5-80F3-4E12-9CCF-2B9950479734}']
   procedure pm_SetCharsInLine(aValue: Integer);
   function pm_GetCurrentStartLevel: Integer;
   function pm_GetNextGenerator: Ik2TagGenerator;
   procedure pm_SetNextGenerator(const aValue: Ik2TagGenerator);
   function pm_GetContext: Ik2Op;
   function Get_CurrentVersion: Integer;
   procedure Set_CurrentVersion(aValue: Integer);
   procedure AddStringAtom(TagID: Integer;
    const Value: AnsiString;
    aCodePage: Integer = CP_ANSI); overload; 
     {* добавить строковый атом. }
   procedure AddPCharLenAtom(TagID: Integer;
    const Value: Tl3WString);
     {* добавить строковый атом. }
   procedure AddObjectAtom(TagID: Integer;
    Value: TObject;
    Shared: Boolean = true);
   procedure AddStreamAtom(TagID: Integer;
    aStream: TStream);
     {* добавить атом из потока. }
   procedure AddTransparentAtom(TagID: Integer);
     {* добавить "прозрачный" атом. }
   procedure AddIntegerAtom(TagID: Integer;
    Value: Integer);
     {* добавить целочисленный атом. }
   procedure AddBoolAtom(TagID: Integer;
    Value: Boolean);
   procedure AddAtom(AtomIndex: Integer;
    TK: Tk2TypeKind;
    const Value);
     {* добавить атом. }
   procedure AddStringAtom(TagID: Integer;
    Value: Tl3PrimString); overload; 
   procedure AddAtomEx(AtomIndex: Integer;
    const Value: Tk2Variant);
   procedure Start;
     {* начать генерацию. }
   procedure StartChild(TypeID: Integer);
     {* начать дочерний объект тега. }
   procedure StartDefaultChild;
     {* начать дочерний объект тега с типом по-умолчанию. }
   procedure StartTag(TagID: Integer);
     {* начать вложеный тег. }
   procedure Finish(NeedUndo: Boolean = false);
     {* закрыть скобку этапа генерации. }
   procedure Rollback(CheckBrackets: Boolean = false);
     {* откатить все открытые "скобки". }
   function Pixel2Char(Pixel: Integer): Integer;
   function Char2Pixel(Ch: Integer): Integer;
   procedure AddStringAtomClone(TagID: Integer;
    Value: Tl3CustomString);
   procedure AddInt64Atom(aTagID: Integer;
    aValue: Int64);
     {* Добавляет 64-битный атом }
   property CharsInLine: Integer
     write pm_SetCharsInLine;
   property CurrentStartLevel: Integer
     read pm_GetCurrentStartLevel;
   property NextGenerator: Ik2TagGenerator
     read pm_GetNextGenerator
     write pm_SetNextGenerator;
     {* следующий генератор в цепочке. }
   property Context: Ik2Op
     read pm_GetContext;
     {* Контекст генерации }
   property CurrentVersion: Integer
     read Get_CurrentVersion
     write Set_CurrentVersion;
     {* Текущая версия формата }
 end;//Ik2TagGenerator

 Ik2Processor = interface;
 { - предварительное описание Ik2Processor. }

 Ik2UndoBuffer = interface(IUnknown)
  {* Undo-буфер }
   ['{957F4AF4-F09C-40BA-B4C1-030462DC0F2C}']
   function pm_GetCanUndo: Boolean;
   function pm_GetCanRedo: Boolean;
   function Get_Last: TObject;
   function Get_Empty: Boolean;
   function Get_Disabled: Boolean;
   procedure Set_Disabled(aValue: Boolean);
   function GetActiveObject(aSucc: Boolean): TObject;
   procedure ExecutedOperation(aContainer: TObject);
     {* нотификация буферу о новой пачке операций. }
   function Undo(const aProcessor: Ik2Processor): Boolean;
     {* отменить предыдущую операцию. }
   function Redo(const aProcessor: Ik2Processor): Boolean;
     {* вернуть отмененную операцию. }
   procedure Clear;
     {* Очистить буфер операций. }
   property CanUndo: Boolean
     read pm_GetCanUndo;
     {* можно ли отменить операцию? }
   property CanRedo: Boolean
     read pm_GetCanRedo;
     {* можно ли вернуть операцию? }
   property Last: TObject
     read Get_Last;
   property Empty: Boolean
     read Get_Empty;
     {* объект "пустой"? }
   property Disabled: Boolean
     read Get_Disabled
     write Set_Disabled;
 end;//Ik2UndoBuffer


 Tk2CustomPropertyPrim = class;

 Ik2Processor = interface(Il3ChangeNotifier)
  {* Процессор операций. }
   ['{D7993D78-8C13-45D0-8000-F65721D67FC7}']
   function pm_GetDefaultStyle: Tl3StyleId;
   procedure pm_SetDefaultStyle(aValue: Tl3StyleId);
   function pm_GetCanUndo: Boolean;
   function pm_GetCanRedo: Boolean;
   function Get_UndoBuffer: Ik2UndoBuffer;
   function StartOp(OpCode: Integer = 0;
    DoLock: Boolean = true): Il3OpPack;
     {* начать операцию. }
   function FinishOp(anOp: TObject): Boolean;
     {* закончить операцию. }
   function LastOp: Il3OpPack;
     {* предыдущая операция. }
   function InOp: Boolean;
     {* Пачка операций открыта. }
   procedure Lock;
     {* закрыть. }
   procedure Unlock;
     {* открыть. }
   function Undo: Boolean;
     {* отменить предыдущую операцию. }
   function Redo: Boolean;
     {* вернуть отмененную операцию. }
   procedure CheckInsert(const aParent: IUnknown;
    var aChild: IUnknown;
    var anIndex: Integer);
     {* проверить операцию с параграфом. }
   procedure CheckDelete(const aParent: IUnknown;
    const aChild: IUnknown;
    anIndex: Integer);
     {* проверить операцию с параграфом. }
   procedure NotifyCompleted(const aList: IUnknown;
    const aChild: IUnknown);
   procedure NotifyInsert(const aList: IUnknown;
    aProp: TObject;
    const aChild: IUnknown;
    anIndex: Integer;
    const anOpPack: Il3OpPack);
   procedure NotifyDelete(const aList: IUnknown;
    aProp: TObject;
    const aChild: IUnknown;
    anIndex: Integer;
    const anOpPack: Il3OpPack);
   function NeedReplaceQuotes: Boolean;
     {* Опрелеляет - нужно ли заменять кавычки при вводе. }
   procedure NotifyPropChanged(aProp: Tk2CustomPropertyPrim;
    const aValues;
    const anOp: Ik2Op);
     {* Сообщает об изменении свойства объекта }
   property DefaultStyle: Tl3StyleId
     read pm_GetDefaultStyle
     write pm_SetDefaultStyle;
     {* Стиль по-умолчанию. }
   property CanUndo: Boolean
     read pm_GetCanUndo;
     {* возможно ли Undo. }
   property CanRedo: Boolean
     read pm_GetCanRedo;
     {* возможно ли Redo. }
   property UndoBuffer: Ik2UndoBuffer
     read Get_UndoBuffer;
 end;//Ik2Processor

 Il3OpPackMode = interface(IUnknown)
  {* Пачка операций. }
   ['{5A1F0786-3718-4890-BB08-5CC705FF8CEE}']
   function Get_InUndo: Boolean;
   function Get_SaveUndo: Boolean;
   procedure Set_SaveUndo(aValue: Boolean);
   function pm_GetDeleteMapped: Boolean;
   procedure pm_SetDeleteMapped(aValue: Boolean);
   function pm_GetOptimize: Boolean;
   procedure pm_SetOptimize(aValue: Boolean);
   function pm_GetInIOProcess: Boolean;
   procedure pm_SetInIOProcess(aValue: Boolean);
   procedure pm_SetReadOnly(aValue: Boolean);
   function pm_GetProcessor: Ik2Processor;
   procedure MarkModified(const aTarget: IUnknown);
   procedure InvertModified;
   function GetModified: Boolean;
   procedure CheckReadOnly;
   procedure DisableReadonly;
     {* Выключает режим проверки ReadOnly }
   procedure EnableReadOnly;
     {* Включает режим проверки ReadOnly }
   procedure CheckOn;
   procedure CheckOff;
   function IsCheckOff: Boolean;
   property InUndo: Boolean
     read Get_InUndo;
   property SaveUndo: Boolean
     read Get_SaveUndo
     write Set_SaveUndo;
   property DeleteMapped: Boolean
     read pm_GetDeleteMapped
     write pm_SetDeleteMapped;
   property Optimize: Boolean
     read pm_GetOptimize
     write pm_SetOptimize;
   property InIOProcess: Boolean
     read pm_GetInIOProcess
     write pm_SetInIOProcess;
   property ReadOnly: Boolean
     write pm_SetReadOnly;
   property Processor: Ik2Processor
     read pm_GetProcessor;
     {* процессор операций в контексте которого выполняется данная пачка. }
 end;//Il3OpPackMode

 Il3OpPack = interface(Il3OpPackMode)
  {* Пачка операций. }
   ['{EA3D40DD-EE9F-4E2E-ABE1-B414C09E87FD}']
   function Get_Code: Integer;
   function Undo(const aProcessor: Ik2Processor): Integer;
     {* откатывает все операции и возвращает их количество. }
   function Redo(const aProcessor: Ik2Processor): Integer;
     {* возвращает все операции и возвращает их количество. }
   procedure Lock;
     {* закрыть. }
   procedure Unlock;
     {* открыть. }
   property Code: Integer
     read Get_Code;
     {* Код операции }
 end;//Il3OpPack

(*
 Mk2Value = PureMixIn
  {* Атомарное значение }
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
 end;//Mk2Value
*)

(*
 Mk2RefCount = PureMixIn
  {* Подсчёт ссылок }
   function IntRef: Integer;
   procedure SetIntRef(out aRef: Integer);
 end;//Mk2RefCount
*)

(*
 Mk2Storable = PureMixIn
  {* Методы тега отвечающие за сохранение/восстановление }
   procedure DoLoad;
   procedure ForceStore;
   function MarkModified: Boolean;
 end;//Mk2Storable
*)


 Tk2TypePrim = class;

 Tk2Base = {abstract} class(Tl3PrimString)
 protected
 // property methods
   function pm_GetTagType: Tk2TypePrim; virtual; abstract;
   function pm_GetAsProp: Tk2CustomPropertyPrim; virtual;
 protected
 // protected fields
   f_tmpName : AnsiString;
 protected
 // protected methods
   function GetIsProp: Boolean; virtual;
 public
 // public methods
   function IsProp: Boolean;
   function IsNull: Boolean;
 public
 // public properties
   property TagType: Tk2TypePrim
     read pm_GetTagType;
   property AsProp: Tk2CustomPropertyPrim
     read pm_GetAsProp;
 end;//Tk2Base

 Tk2TypeTablePrim = {abstract} class(Tl3ProtoObject)
 protected
 // property methods
   function pm_GetTypeByHandlePrim(anID: Integer): Tk2TypePrim; virtual; abstract;
 public
 // public properties
   property TypeByHandlePrim[anID: Integer]: Tk2TypePrim
     read pm_GetTypeByHandlePrim;
     {* Тип с идентификатором anID }
 end;//Tk2TypeTablePrim

(*
 Mk2TypeInfoEx = PureMixIn(Mk2TypeInfo)
   function IsSame(aType: Tk2TypePrim): Boolean;
 end;//Mk2TypeInfoEx
*)

 Tk2TypeIDs = set of Tk2TypeID;

 Tk2TypePrimPrim = {abstract} class(Tk2Base)
 private
 // private fields
   f_IsParents : Tk2TypeIDs;
   f_IsNotParents : Tk2TypeIDs;
   f_ID : Integer;
    {* Поле для свойства ID}
   f_AtomType : PTypeInfo;
    {* Поле для свойства AtomType}
   f_MakeType : PTypeInfo;
    {* Поле для свойства MakeType}
   f_DisabledChildTypeIDs : Tk2TypeIDs;
    {* Поле для свойства DisabledChildTypeIDs}
   f_FormatInfoFactory : TClass;
    {* Поле для свойства FormatInfoFactory}
   f_TypeTable : Tk2TypeTablePrim;
    {* Поле для свойства TypeTable}
 protected
 // property methods
   procedure pm_SetAtomType(aValue: PTypeInfo);
 protected
 // realized methods
   function pm_GetTagType: Tk2TypePrim; override;
 public
 // realized methods
   function IsOrd: Boolean;
   function InheritsFrom(anID: Integer): Boolean; overload; 
     {* проверить наследование. }
   function InheritsFrom(const anIDs: array of Integer): Boolean; overload; 
     {* проверить наследование. }
   function InheritsFrom(anAtomTypeID: Integer;
    const Exclude: array of Integer): Boolean; overload; 
     {* проверить наследование. }
   function IsSame(aType: Tk2TypePrim): Boolean;
 protected
 // protected fields
   f_IsOrd : Tl3Bool;
 public
 // public methods
   function IsDisabledChildTypeID(anID: Integer): Boolean;
     {* Проверяет, что тип ребёнка является запрещённым }
   function DefaultChildTypeID: Integer;
   procedure AddDisabledChildTypeID(anID: Integer);
     {* Добавляет тип запрещённого ребёнка }
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; overload;  virtual;
 protected
 // protected properties
   property DisabledChildTypeIDs: Tk2TypeIDs
     read f_DisabledChildTypeIDs
     write f_DisabledChildTypeIDs;
     {* Типы запрещённых детей }
 public
 // public properties
   property ID: Integer
     read f_ID;
   property AtomType: PTypeInfo
     read f_AtomType
     write pm_SetAtomType;
   property MakeType: PTypeInfo
     read f_MakeType
     write f_MakeType;
   property FormatInfoFactory: TClass
     read f_FormatInfoFactory
     write f_FormatInfoFactory;
     {* Фабрика для изотовления информации о форматировании }
   property TypeTable: Tk2TypeTablePrim
     read f_TypeTable
     write f_TypeTable;
 end;//Tk2TypePrimPrim

 Tk2CustomPropertyPrim = {abstract} class(Tk2Base)
  {* Базовое описание свойств }
 private
 // private fields
   f_TagIndex : Integer;
    {* Поле для свойства TagIndex}
   f_AtomType : Tk2TypePrimPrim;
    {* Поле для свойства AtomType}
   f_NeedMarkModified : Boolean;
    {* Поле для свойства NeedMarkModified}
   f_Shared : Boolean;
    {* Поле для свойства Shared}
   f_AtomIndex : Integer;
    {* Поле для свойства AtomIndex}
   f_ParentType : Tk2TypePrimPrim;
    {* Поле для свойства ParentType}
 protected
 // property methods
   procedure pm_SetAtomType(aValue: Tk2TypePrimPrim);
   function pm_GetEmptyMapping: Integer; virtual; abstract;
   function pm_GetReadOnly: Boolean; virtual; abstract;
   function pm_GetMappingTarget: Integer; virtual; abstract;
   function pm_GetDefaultValue: Integer; virtual; abstract;
 protected
 // overridden property methods
   function pm_GetStringID: Integer; override;
   procedure pm_SetStringID(aValue: Integer); override;
   function pm_GetAsProp: Tk2CustomPropertyPrim; override;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   function GetAsPCharLen: Tl3WString; override;
   function GetOwner: TPersistent; override;
   function GetIsProp: Boolean; override;
   procedure DoSetOwner(Value: TObject); override;
     {* метод для установки "владельца" объекта. Для перекрытия в потомках. }
 public
 // public methods
   constructor Create(anOwner: Tk2TypePrim); reintroduce;
 public
 // public properties
   property TagIndex: Integer
     read f_TagIndex;
   property AtomType: Tk2TypePrimPrim
     read f_AtomType
     write pm_SetAtomType;
   property EmptyMapping: Integer
     read pm_GetEmptyMapping;
   property ReadOnly: Boolean
     read pm_GetReadOnly;
   property MappingTarget: Integer
     read pm_GetMappingTarget;
   property NeedMarkModified: Boolean
     read f_NeedMarkModified
     write f_NeedMarkModified;
   property DefaultValue: Integer
     read pm_GetDefaultValue;
   property Shared: Boolean
     read f_Shared
     write f_Shared;
   property AtomIndex: Integer
     read f_AtomIndex
     write f_AtomIndex;
   property ParentType: Tk2TypePrimPrim
     read f_ParentType;
 end;//Tk2CustomPropertyPrim

 Tk2PropertyArray = l3BitArr.Tl3PtrArray;

 Tk2LastProperty = record
   rProp : Tk2CustomPropertyPrim;
   rID : Integer;
 end;//Tk2LastProperty

 Tk2TypePrim = {abstract} class(Tk2TypePrimPrim)
  {* Базовое описание типа }
 protected
 // property methods
   function pm_GetProp(TagIndex: Integer): Tk2CustomPropertyPrim;
 protected
 // overridden property methods
   function pm_GetStringID: Integer; override;
   procedure pm_SetStringID(aValue: Integer); override;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   procedure InitFields; override;
   function GetAsPCharLen: Tl3WString; override;
 protected
 // protected fields
   f_LastProperty : Tk2LastProperty;
   f_Tags : Tk2PropertyArray;
 public
 // public properties
   property Prop[TagIndex: Integer]: Tk2CustomPropertyPrim
     read pm_GetProp;
     {* Свойства тега }
 end;//Tk2TypePrim

 Tk2ArrayPropertyPrim = Tk2CustomPropertyPrim;

(*
 Mk2Children = PureMixIn
  {* Хранилище детей }
   function pm_GetChildrenCount: Integer;
   function pm_GetChild(anIndex: Integer): _ChildType_;
   procedure Set_ChildrenCapacity(aValue: Integer);
   function AddChild(var aChild: _ChildType_;
    const aContext: Ik2Op = nil): Integer;
     {* добавить ребенка. }
   procedure InsertChild(anIndex: Integer;
    var aChild: _ChildType_;
    const aContext: Ik2Op = nil);
     {* вставить ребенка. }
   function IndexOfChild(const aChild: _ChildType_): Integer;
   function FindChild(anAtom: Integer;
    aValue: Integer;
    const aContext: Ik2Op = nil;
    aNeedCreate: Boolean = false;
    theIndex: PLong = nil): _ChildType_;
   procedure DeleteChildren(const Context: Ik2Op = nil);
     {* удалить всех детей. }
   function DeleteChild(anIndex: Integer;
    const anOp: Ik2Op;
    out theChild: _ChildType_): Boolean; overload; 
     {* удалить ребенка. }
   function DeleteChild(const aChild: _ChildType_;
    const Context: Ik2Op = nil): Boolean; overload; 
     {* удалить ребенка. }
   function DeleteChild(anIndex: Integer;
    const anOp: Ik2Op = nil): Boolean; overload; 
   property ChildrenCount: Integer
     read pm_GetChildrenCount;
     {* Количество дочерних тегов. }
   property Child[anIndex: Integer]: _ChildType_
     read pm_GetChild;
   property ChildrenCapacity: Integer
     write Set_ChildrenCapacity;
     {* Потенциально возможное число детей }
 end;//Mk2Children
*)

implementation

uses
  k2Const,
  k2BaseHack,
  SysUtils,
  l3String
  ;

// start class Tk2Base

function Tk2Base.IsProp: Boolean;
//#UC START# *4A4DE21A0276_4A4DE0BF039E_var*
//#UC END# *4A4DE21A0276_4A4DE0BF039E_var*
begin
//#UC START# *4A4DE21A0276_4A4DE0BF039E_impl*
 Result := (Self <> nil) AND GetIsProp;
//#UC END# *4A4DE21A0276_4A4DE0BF039E_impl*
end;//Tk2Base.IsProp

function Tk2Base.IsNull: Boolean;
//#UC START# *4A4DE23F0106_4A4DE0BF039E_var*
//#UC END# *4A4DE23F0106_4A4DE0BF039E_var*
begin
//#UC START# *4A4DE23F0106_4A4DE0BF039E_impl*
 Result := (Self = nil);
//#UC END# *4A4DE23F0106_4A4DE0BF039E_impl*
end;//Tk2Base.IsNull

function Tk2Base.pm_GetAsProp: Tk2CustomPropertyPrim;
//#UC START# *4A4DE5AF036A_4A4DE0BF039Eget_var*
//#UC END# *4A4DE5AF036A_4A4DE0BF039Eget_var*
begin
//#UC START# *4A4DE5AF036A_4A4DE0BF039Eget_impl*
 Result := nil;
//#UC END# *4A4DE5AF036A_4A4DE0BF039Eget_impl*
end;//Tk2Base.pm_GetAsProp

function Tk2Base.GetIsProp: Boolean;
//#UC START# *4A4DE1FE035C_4A4DE0BF039E_var*
//#UC END# *4A4DE1FE035C_4A4DE0BF039E_var*
begin
//#UC START# *4A4DE1FE035C_4A4DE0BF039E_impl*
 Result := false;
//#UC END# *4A4DE1FE035C_4A4DE0BF039E_impl*
end;//Tk2Base.GetIsProp
// start class Tk2TypePrimPrim

function Tk2TypePrimPrim.IsDisabledChildTypeID(anID: Integer): Boolean;
//#UC START# *4C177E9D0375_4FFEF43201C7_var*
//#UC END# *4C177E9D0375_4FFEF43201C7_var*
begin
//#UC START# *4C177E9D0375_4FFEF43201C7_impl*
 Assert(anID >= Ord(Low(Tk2TypeID)) + 1);
 Assert(anID <= Ord(High(Tk2TypeID)));
 Result := (Tk2TypeID(anID) in f_DisabledChildTypeIDs);
//#UC END# *4C177E9D0375_4FFEF43201C7_impl*
end;//Tk2TypePrimPrim.IsDisabledChildTypeID

function Tk2TypePrimPrim.DefaultChildTypeID: Integer;
//#UC START# *4A534133014D_4FFEF43201C7_var*
var
 l_Prop : Tk2ChildrenProperty;
//#UC END# *4A534133014D_4FFEF43201C7_var*
begin
//#UC START# *4A534133014D_4FFEF43201C7_impl*
 l_Prop := Tk2ChildrenProperty(Tk2TypePrim(Self).Prop[k2_tiChildren]);
 if (l_Prop = nil) then
  Result := k2_idEmpty
 else
  Result := l_Prop.DefaultChildType.ID; 
//#UC END# *4A534133014D_4FFEF43201C7_impl*
end;//Tk2TypePrimPrim.DefaultChildTypeID

procedure Tk2TypePrimPrim.AddDisabledChildTypeID(anID: Integer);
//#UC START# *4C177E4700AB_4FFEF43201C7_var*
//#UC END# *4C177E4700AB_4FFEF43201C7_var*
begin
//#UC START# *4C177E4700AB_4FFEF43201C7_impl*
 Assert(anID >= Ord(Low(Tk2TypeID)) + 1);
 Assert(anID <= Ord(High(Tk2TypeID)));
 f_DisabledChildTypeIDs := f_DisabledChildTypeIDs + [Tk2TypeID(anID)];
//#UC END# *4C177E4700AB_4FFEF43201C7_impl*
end;//Tk2TypePrimPrim.AddDisabledChildTypeID

procedure Tk2TypePrimPrim.pm_SetAtomType(aValue: PTypeInfo);
//#UC START# *4A533DF0031C_4FFEF43201C7set_var*
//#UC END# *4A533DF0031C_4FFEF43201C7set_var*
begin
//#UC START# *4A533DF0031C_4FFEF43201C7set_impl*
 if (f_AtomType <> nil) AND (aValue <> nil) then
 begin
  if (f_AtomType.Kind <> aValue.Kind) then
  begin
   if not (f_AtomType.Kind in [tkInteger, tkChar, tkEnumeration]) OR
      not (aValue.Kind in [tkInteger, tkChar, tkEnumeration]) then
    raise Exception.Create('При наследовании типов тегов нельзя смешивать атомарные и структурированные типы');  
  end;//f_AtomType.Kind <> aValue.Kind
 end;//f_AtomType <> nil
 f_AtomType := aValue;
 MakeType := aValue;
//#UC END# *4A533DF0031C_4FFEF43201C7set_impl*
end;//Tk2TypePrimPrim.pm_SetAtomType

function Tk2TypePrimPrim.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
//#UC START# *4A4E01DA0396_4FFEF43201C7_var*
//#UC END# *4A4E01DA0396_4FFEF43201C7_var*
begin
//#UC START# *4A4E01DA0396_4FFEF43201C7_impl*
 Result := (Self = anAtomType);
//#UC END# *4A4E01DA0396_4FFEF43201C7_impl*
end;//Tk2TypePrimPrim.InheritsFrom

function Tk2TypePrimPrim.IsOrd: Boolean;
//#UC START# *4A421BE201A9_4FFEF43201C7_var*
//#UC END# *4A421BE201A9_4FFEF43201C7_var*
begin
//#UC START# *4A421BE201A9_4FFEF43201C7_impl*
 assert(Self <> nil);
 Case f_IsOrd of
  l3_bUnknown:
  begin
   if (AtomType = nil) then
    Result := true
   else
    Result := AtomType.Kind in [tkInteger, tkChar, tkEnumeration];
   if Result then
    f_IsOrd := l3_bTrue
   else
    f_IsOrd := l3_bFalse;
  end;//l3_bUnknown
  l3_bFalse:
   Result := false;
  l3_bTrue:
   Result := true;
  else
  begin
   Result := false;
   Assert(false);
  end;//else
 end;//Case f_IsOrd
//#UC END# *4A421BE201A9_4FFEF43201C7_impl*
end;//Tk2TypePrimPrim.IsOrd

function Tk2TypePrimPrim.InheritsFrom(anID: Integer): Boolean;
//#UC START# *4A421BED00FF_4FFEF43201C7_var*
//#UC END# *4A421BED00FF_4FFEF43201C7_var*
begin
//#UC START# *4A421BED00FF_4FFEF43201C7_impl*
 if (Self = nil) then
  Result := false
 else 
 if (ID = anID) then
  Result := true
 else
 begin
  if ((anID >= Ord(Low(Tk2TypeID))) AND
      (anID <= Ord(High(Tk2TypeID)))) then
  begin
   if (Tk2TypeID(anID) in f_IsParents) then
    Result := true
   else
   if (Tk2TypeID(anID) in f_IsNotParents) then
    Result := false
   else
   begin
    Result := InheritsFrom(TypeTable.TypeByHandlePrim[anID]);
    if Result then
     Include(f_IsParents, Tk2TypeID(anID))
    else
     Include(f_IsNotParents, Tk2TypeID(anID))
   end;//Tk2TypeID(anID) in f_IsNotParent
  end//(anID >= Ord(Low(Tk2TypeID))..
  else
   Result := InheritsFrom(TypeTable.TypeByHandlePrim[anID]);
 end;//ID = anID
//#UC END# *4A421BED00FF_4FFEF43201C7_impl*
end;//Tk2TypePrimPrim.InheritsFrom

function Tk2TypePrimPrim.InheritsFrom(const anIDs: array of Integer): Boolean;
//#UC START# *4A421BF200BF_4FFEF43201C7_var*
var
 l_Index : Integer;
//#UC END# *4A421BF200BF_4FFEF43201C7_var*
begin
//#UC START# *4A421BF200BF_4FFEF43201C7_impl*
 Result := false;
 for l_Index := Low(anIDs) to High(anIDs) do
  if InheritsFrom(anIDs[l_Index]) then
  begin
   Result := true;
   break;
  end;//InheritsFrom(ID[l_Index])
//#UC END# *4A421BF200BF_4FFEF43201C7_impl*
end;//Tk2TypePrimPrim.InheritsFrom

function Tk2TypePrimPrim.InheritsFrom(anAtomTypeID: Integer;
  const Exclude: array of Integer): Boolean;
//#UC START# *4A421C12034A_4FFEF43201C7_var*
var
 l_Index : Integer;
//#UC END# *4A421C12034A_4FFEF43201C7_var*
begin
//#UC START# *4A421C12034A_4FFEF43201C7_impl*
 Result := InheritsFrom(anAtomTypeID);
 if Result then
  for l_Index := Low(Exclude) to High(Exclude) do
   if InheritsFrom(Exclude[l_Index]) then
   begin
    Result := false;
    break;
   end;//InheritsFrom(ID[l_Index])
//#UC END# *4A421C12034A_4FFEF43201C7_impl*
end;//Tk2TypePrimPrim.InheritsFrom

function Tk2TypePrimPrim.pm_GetTagType: Tk2TypePrim;
//#UC START# *4A4DE5340236_4FFEF43201C7get_var*
//#UC END# *4A4DE5340236_4FFEF43201C7get_var*
begin
//#UC START# *4A4DE5340236_4FFEF43201C7get_impl*
 Result := Tk2TypePrim(Self);
//#UC END# *4A4DE5340236_4FFEF43201C7get_impl*
end;//Tk2TypePrimPrim.pm_GetTagType

function Tk2TypePrimPrim.IsSame(aType: Tk2TypePrim): Boolean;
//#UC START# *4A51E39F033B_4FFEF43201C7_var*
//#UC END# *4A51E39F033B_4FFEF43201C7_var*
begin
//#UC START# *4A51E39F033B_4FFEF43201C7_impl*
 if (aType = nil) then
  Result := false
 else
  Result := (Self = aType) OR (ID = aType.ID);
//#UC END# *4A51E39F033B_4FFEF43201C7_impl*
end;//Tk2TypePrimPrim.IsSame
// start class Tk2CustomPropertyPrim

constructor Tk2CustomPropertyPrim.Create(anOwner: Tk2TypePrim);
//#UC START# *4B85667B0066_4A4DE5850182_var*
//#UC END# *4B85667B0066_4A4DE5850182_var*
begin
//#UC START# *4B85667B0066_4A4DE5850182_impl*
 inherited Create;
 DoSetOwner(anOwner);
//#UC END# *4B85667B0066_4A4DE5850182_impl*
end;//Tk2CustomPropertyPrim.Create

procedure Tk2CustomPropertyPrim.pm_SetAtomType(aValue: Tk2TypePrimPrim);
//#UC START# *4A4DEE580305_4A4DE5850182set_var*
//#UC END# *4A4DEE580305_4A4DE5850182set_var*
begin
//#UC START# *4A4DEE580305_4A4DE5850182set_impl*
 if (f_AtomType <> aValue) then
 begin
  if (f_AtomType <> f_ParentType) then
   FreeAndNil(f_AtomType);
  f_AtomType := aValue;
  if (f_AtomType <> f_ParentType) then
   f_AtomType.Use;
 end;//f_AtomType <> aValue
//#UC END# *4A4DEE580305_4A4DE5850182set_impl*
end;//Tk2CustomPropertyPrim.pm_SetAtomType

procedure Tk2CustomPropertyPrim.Cleanup;
//#UC START# *479731C50290_4A4DE5850182_var*
//#UC END# *479731C50290_4A4DE5850182_var*
begin
//#UC START# *479731C50290_4A4DE5850182_impl*
 pm_SetAtomType(nil);
(* if (f_AtomType <> f_ParentType) then
  FreeAndNil(f_AtomType);*)
 inherited;
//#UC END# *479731C50290_4A4DE5850182_impl*
end;//Tk2CustomPropertyPrim.Cleanup

function Tk2CustomPropertyPrim.GetAsPCharLen: Tl3WString;
//#UC START# *47A869BB02DE_4A4DE5850182_var*
//#UC END# *47A869BB02DE_4A4DE5850182_var*
begin
//#UC START# *47A869BB02DE_4A4DE5850182_impl*
 if (f_tmpName = '') then
 begin
  f_tmpName := GetEnumName(TypeInfo(Tk2TagID), TagIndex);
  f_tmpName := Copy(f_tmpName, 7, Length(f_tmpName)-6);
 end;{f_tmpName = ''}
 Result := l3PCharLen(f_TmpName);
//#UC END# *47A869BB02DE_4A4DE5850182_impl*
end;//Tk2CustomPropertyPrim.GetAsPCharLen

function Tk2CustomPropertyPrim.pm_GetStringID: Integer;
//#UC START# *47BC3BFD017F_4A4DE5850182get_var*
//#UC END# *47BC3BFD017F_4A4DE5850182get_var*
begin
//#UC START# *47BC3BFD017F_4A4DE5850182get_impl*
 Result := f_TagIndex;
//#UC END# *47BC3BFD017F_4A4DE5850182get_impl*
end;//Tk2CustomPropertyPrim.pm_GetStringID

procedure Tk2CustomPropertyPrim.pm_SetStringID(aValue: Integer);
//#UC START# *47BC3BFD017F_4A4DE5850182set_var*
//#UC END# *47BC3BFD017F_4A4DE5850182set_var*
begin
//#UC START# *47BC3BFD017F_4A4DE5850182set_impl*
 f_TagIndex := aValue;
//#UC END# *47BC3BFD017F_4A4DE5850182set_impl*
end;//Tk2CustomPropertyPrim.pm_SetStringID

function Tk2CustomPropertyPrim.GetOwner: TPersistent;
//#UC START# *480DD1890221_4A4DE5850182_var*
//#UC END# *480DD1890221_4A4DE5850182_var*
begin
//#UC START# *480DD1890221_4A4DE5850182_impl*
 Result := f_ParentType;
//#UC END# *480DD1890221_4A4DE5850182_impl*
end;//Tk2CustomPropertyPrim.GetOwner

function Tk2CustomPropertyPrim.GetIsProp: Boolean;
//#UC START# *4A4DE1FE035C_4A4DE5850182_var*
//#UC END# *4A4DE1FE035C_4A4DE5850182_var*
begin
//#UC START# *4A4DE1FE035C_4A4DE5850182_impl*
 Result := true;
//#UC END# *4A4DE1FE035C_4A4DE5850182_impl*
end;//Tk2CustomPropertyPrim.GetIsProp

function Tk2CustomPropertyPrim.pm_GetAsProp: Tk2CustomPropertyPrim;
//#UC START# *4A4DE5AF036A_4A4DE5850182get_var*
//#UC END# *4A4DE5AF036A_4A4DE5850182get_var*
begin
//#UC START# *4A4DE5AF036A_4A4DE5850182get_impl*
 Result := Self;
//#UC END# *4A4DE5AF036A_4A4DE5850182get_impl*
end;//Tk2CustomPropertyPrim.pm_GetAsProp

procedure Tk2CustomPropertyPrim.DoSetOwner(Value: TObject);
//#UC START# *4A60A2CF0329_4A4DE5850182_var*
//#UC END# *4A60A2CF0329_4A4DE5850182_var*
begin
//#UC START# *4A60A2CF0329_4A4DE5850182_impl*
 f_ParentType := Value As Tk2TypePrim;
//#UC END# *4A60A2CF0329_4A4DE5850182_impl*
end;//Tk2CustomPropertyPrim.DoSetOwner
type
  Pk2CustomPropertyPrim = ^Tk2CustomPropertyPrim;

// start class Tk2TypePrim

function Tk2TypePrim.pm_GetProp(TagIndex: Integer): Tk2CustomPropertyPrim;
//#UC START# *4A4DEAE0006B_4A4DE5000202get_var*
//#UC END# *4A4DEAE0006B_4A4DE5000202get_var*
begin
//#UC START# *4A4DEAE0006B_4A4DE5000202get_impl*
 if (f_LastProperty.rID = TagIndex) then
 begin
  Result := f_LastProperty.rProp;
 end
 else
 begin
  if (TagIndex > k2_tiLast) then
   Result := nil
  else
  begin
   Result := f_Tags.GetItem(TagIndex);
   if (Result <> nil) then
   begin
    Result := Pk2CustomPropertyPrim(Result)^;
    f_LastProperty.rID := TagIndex;
    f_LastProperty.rProp := Result;
   end;//Result <> nil
  end;//TagIndex > k2_tiLast
 end;//f_LastProperty.rID <> -1
//#UC END# *4A4DEAE0006B_4A4DE5000202get_impl*
end;//Tk2TypePrim.pm_GetProp

procedure Tk2TypePrim.Cleanup;
//#UC START# *479731C50290_4A4DE5000202_var*
//#UC END# *479731C50290_4A4DE5000202_var*
begin
//#UC START# *479731C50290_4A4DE5000202_impl*
 f_IsOrd := l3_bUnknown;
 inherited; 
//#UC END# *479731C50290_4A4DE5000202_impl*
end;//Tk2TypePrim.Cleanup

procedure Tk2TypePrim.InitFields;
//#UC START# *47A042E100E2_4A4DE5000202_var*
//#UC END# *47A042E100E2_4A4DE5000202_var*
begin
//#UC START# *47A042E100E2_4A4DE5000202_impl*
 inherited;
 f_LastProperty.rID := -1;
 f_LastProperty.rProp := nil;
//#UC END# *47A042E100E2_4A4DE5000202_impl*
end;//Tk2TypePrim.InitFields

function Tk2TypePrim.GetAsPCharLen: Tl3WString;
//#UC START# *47A869BB02DE_4A4DE5000202_var*
//#UC END# *47A869BB02DE_4A4DE5000202_var*
begin
//#UC START# *47A869BB02DE_4A4DE5000202_impl*
(* if (f_tmpName = '') then
 begin
  f_tmpName := GetEnumName(TypeInfo(Tk2TypeID), ID);
  f_tmpName := Copy(f_tmpName, 7, Length(f_tmpName)-6);
 end;{f_tmpName = ''}
 Result := l3PCharLen(f_tmpName);
 // - код ниже временно закомментирован. На переходный период. Вообще-то должен работать он.*)
 l3AssignNil(Result);
 Assert(false, 'Метод ' + ClassName + '.GetAsPCharLen должен быть переопределён в потомке');
//#UC END# *47A869BB02DE_4A4DE5000202_impl*
end;//Tk2TypePrim.GetAsPCharLen

function Tk2TypePrim.pm_GetStringID: Integer;
//#UC START# *47BC3BFD017F_4A4DE5000202get_var*
//#UC END# *47BC3BFD017F_4A4DE5000202get_var*
begin
//#UC START# *47BC3BFD017F_4A4DE5000202get_impl*
 Result := f_ID;
//#UC END# *47BC3BFD017F_4A4DE5000202get_impl*
end;//Tk2TypePrim.pm_GetStringID

procedure Tk2TypePrim.pm_SetStringID(aValue: Integer);
//#UC START# *47BC3BFD017F_4A4DE5000202set_var*
//#UC END# *47BC3BFD017F_4A4DE5000202set_var*
begin
//#UC START# *47BC3BFD017F_4A4DE5000202set_impl*
 f_ID := aValue;
//#UC END# *47BC3BFD017F_4A4DE5000202set_impl*
end;//Tk2TypePrim.pm_SetStringID

end.