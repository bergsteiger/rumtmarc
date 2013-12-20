unit k2Native_Schema;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/K2/k2Native_Schema.pas"
// Начат: 17.07.1998 16:29
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<TagTable::Class>> Shared Delphi::K2::Standard::k2Native
//
// Стандартная таблица тегов.
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
  k2Object_Const,
  k2l3Base_Const,
  k2Tag_Const,
  k2Long_Const,
  k2Enum_Const,
  k2String_Const,
  k2SomeDataContainer_Const,
  k2IUnknown_Const,
  k2Handle_Const,
  k2Inch_Const,
  k2Bool_Const,
  k2Color_Const,
  k2OList_Const,
  k2RawData_Const,
  k2Int64_Const,
  k2Base {a},
  k2Interfaces {a}
  ;

type
 ObjectAtom = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//ObjectAtom

 l3BaseAtom = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//l3BaseAtom

 SomeDataContainerAtom = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//SomeDataContainerAtom

 IUnknownAtom = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//IUnknownAtom

 LongAtom = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//LongAtom

 EnumAtom = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//EnumAtom

 HandleAtom = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//HandleAtom

 InchAtom = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//InchAtom

 BoolAtom = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//BoolAtom

 ColorAtom = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//ColorAtom

 StringTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//StringTag

 OListTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//OListTag

 RawDataAtom = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//RawDataAtom

 TagAtom = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//TagAtom

 Int64Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//Int64Tag

 Tk2NativeSchema = class(Tk2TypeTable)
 public
 // типы, определённые в данной схеме:
   t_Object : ObjectAtom;
   t_l3Base : l3BaseAtom;
   t_SomeDataContainer : SomeDataContainerAtom;
   t_IUnknown : IUnknownAtom;
   t_Long : LongAtom;
   t_Enum : EnumAtom;
   t_Handle : HandleAtom;
   t_Inch : InchAtom;
   t_Bool : BoolAtom;
   t_Color : ColorAtom;
   t_String : StringTag;
   t_OList : OListTag;
   t_RawData : RawDataAtom;
   t_Tag : TagAtom;
   t_Int64 : Int64Tag;
 protected
 // определяем стандартные методы схемы
   function  pm_GetTypeByHandle(H: Integer): Tk2Type; override;
   procedure Cleanup; override;
 public
   constructor Create; override;
 end;//Tk2NativeSchema

implementation

uses
  Classes,
  l3DataContainerWithoutIUnknown,
  k2SmallTagObject,
  SysUtils {a},
  TypInfo {a},
  k2Const {a},
  k2Tags {a},
  k2BaseStruct {a},
  l3Types {a},
  l3String {a},
  Object_Wrap,
  Long_Wrap,
  Enumeration_Wrap,
  Bool_Wrap,
  Color_Wrap,
  l3String_Wrap,
  l3List_Wrap,
  Persistent_Wrap,
  k2Tag_Wrap,
  l3CBase,
  l3CustomString,
  k2List,
  l3Memory
  ;


// start class ObjectAtom

function ObjectAtom.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Object'));
end;

function ObjectAtom.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Assert(false,'Невозможно создать абстрактный тег Object');
end;

function l3BaseAtom.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('l3Base'));
end;

function l3BaseAtom.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           Tk2NativeSchema(TypeTable).t_Object.InheritsFrom(anAtomType);
end;

function l3BaseAtom.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Assert(false,'Невозможно создать абстрактный тег l3Base');
end;

function SomeDataContainerAtom.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('SomeDataContainer'));
end;

function SomeDataContainerAtom.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           Tk2NativeSchema(TypeTable).t_Object.InheritsFrom(anAtomType);
end;

function SomeDataContainerAtom.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Assert(false,'Невозможно создать абстрактный тег SomeDataContainer');
end;

function IUnknownAtom.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('IUnknown'));
end;

function IUnknownAtom.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Assert(false,'Невозможно создать абстрактный тег IUnknown');
end;

function LongAtom.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Long'));
end;

function LongAtom.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := Wrapper.New(aType);
end;

function EnumAtom.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Enum'));
end;

function EnumAtom.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           Tk2NativeSchema(TypeTable).t_Long.InheritsFrom(anAtomType);
end;

function EnumAtom.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Assert(false,'Невозможно создать абстрактный тег Enum');
end;

function HandleAtom.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Handle'));
end;

function HandleAtom.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           Tk2NativeSchema(TypeTable).t_Long.InheritsFrom(anAtomType);
end;

function HandleAtom.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := Tk2NativeSchema(TypeTable).t_Long.DoMakeTag(aType);
end;

function InchAtom.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Inch'));
end;

function InchAtom.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           Tk2NativeSchema(TypeTable).t_Long.InheritsFrom(anAtomType);
end;

function InchAtom.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := Tk2NativeSchema(TypeTable).t_Long.DoMakeTag(aType);
end;

function BoolAtom.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Bool'));
end;

function BoolAtom.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           Tk2NativeSchema(TypeTable).t_Enum.InheritsFrom(anAtomType);
end;

function BoolAtom.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := Tk2NativeSchema(TypeTable).t_Enum.DoMakeTag(aType);
end;

function ColorAtom.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Color'));
end;

function ColorAtom.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           Tk2NativeSchema(TypeTable).t_Long.InheritsFrom(anAtomType);
end;

function ColorAtom.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := Tk2NativeSchema(TypeTable).t_Long.DoMakeTag(aType);
end;

function StringTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('String'));
end;

function StringTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           Tk2NativeSchema(TypeTable).t_SomeDataContainer.InheritsFrom(anAtomType);
end;

function StringTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := Wrapper.New(aType);
end;

function OListTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('OList'));
end;

function OListTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           Tk2NativeSchema(TypeTable).t_SomeDataContainer.InheritsFrom(anAtomType);
end;

function OListTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := Wrapper.New(aType);
end;

function RawDataAtom.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('RawData'));
end;

function RawDataAtom.DoMakeTag(aType: Tk2Type): Ik2Tag;
var
 l_Inst : Tl3SizedMemoryPool;
begin
 l_Inst := Tl3SizedMemoryPool.Create;
 try
  Result := TagFromIntRef(Integer(l_Inst));
 finally
  FreeAndNil(l_Inst);
 end;//try..finally
end;

function TagAtom.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Tag'));
end;

function TagAtom.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           Tk2NativeSchema(TypeTable).t_SomeDataContainer.InheritsFrom(anAtomType);
end;

function TagAtom.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Assert(false,'Невозможно создать абстрактный тег Tag');
end;

function Int64Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Int64'));
end;

function Int64Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           Tk2NativeSchema(TypeTable).t_Tag.InheritsFrom(anAtomType);
end;

function Int64Tag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(Tk2SmallTagObject.Create(aType)));
end;

constructor Tk2NativeSchema.Create;
begin
 inherited;
 // Object
 t_Object := DefineType(6 {Object}, [], 'Базовый класс', ObjectAtom) As ObjectAtom;
 with t_Object do
 begin
  AtomClass := TPersistent;
  WrapperType := WObject;
 end;//Object
 // l3Base
 t_l3Base := DefineType(9 {l3Base}, [t_Object], 'Базовый класс с подсчетом ссылок', l3BaseAtom) As l3BaseAtom;
 with t_l3Base do
 begin
  AtomClass := Tl3CBase;
 end;//l3Base
 // SomeDataContainer
 t_SomeDataContainer := DefineType(g_InnerTypeID, [t_Object], '', SomeDataContainerAtom) As SomeDataContainerAtom; Inc(g_InnerTypeID);
 with t_SomeDataContainer do
 begin
  AtomClass := Tl3DataContainerWithoutIUnknown;
 end;//SomeDataContainer
 // IUnknown
 t_IUnknown := DefineType(98 {IUnknown}, [], 'Интерфейс', IUnknownAtom) As IUnknownAtom;
 with t_IUnknown do
 begin
  AtomType := TypeInfo(IUnknown);
 end;//IUnknown
 // Long
 t_Long := DefineType(1 {Long}, [], 'Целое число', LongAtom) As LongAtom;
 with t_Long do
 begin
  AtomType := TypeInfo(Integer);
  WrapperType := WLong;
 end;//Long
 // Enum
 t_Enum := DefineType(2 {Enum}, [t_Long], 'Перечислимый тип', EnumAtom) As EnumAtom;
 with t_Enum do
 begin
  WrapperType := WEnumeration;
 end;//Enum
 // Handle
 t_Handle := DefineType(28 {Handle}, [t_Long], 'Целочисленный идентификатор объекта', HandleAtom) As HandleAtom;
 with t_Handle do
 begin
 end;//Handle
 // Inch
 t_Inch := DefineType(29 {Inch}, [t_Long], 'Дюйм', InchAtom) As InchAtom;
 with t_Inch do
 begin
 end;//Inch
 // Bool
 t_Bool := DefineType(3 {Bool}, [t_Enum], 'Логическое значение', BoolAtom) As BoolAtom;
 with t_Bool do
 begin
  AtomType := TypeInfo(Boolean);
  WrapperType := WBool;
 end;//Bool
 // Color
 t_Color := DefineType(4 {Color}, [t_Long], 'Цвет', ColorAtom) As ColorAtom;
 with t_Color do
 begin
  AtomType := TypeInfo(Tl3Color);
  WrapperType := WColor;
 end;//Color
 // String
 t_String := DefineType(5 {String}, [t_SomeDataContainer], 'Строка', StringTag) As StringTag;
 with t_String do
 begin
  AtomClass := Tl3CustomString;
  WrapperType := Wl3String;
  with DefineProperty(k2_tiValue, t_String, 'Собственно строка.') do
  begin
  end;//Value
 end;//String
 // OList
 t_OList := DefineType(30 {OList}, [t_SomeDataContainer], 'Список объектов', OListTag) As OListTag;
 with t_OList do
 begin
  AtomClass := Tk2List;
  WrapperType := Wl3List;
  with DefineChildrenPrim(t_l3Base) do
  begin
   ReadOnly := true;
  end;//
 end;//OList
 // RawData
 t_RawData := DefineType(96 {RawData}, [], '"Сырые" данные', RawDataAtom) As RawDataAtom;
 with t_RawData do
 begin
  AtomClass := Tl3SizedMemoryPool;
  WrapperType := WPersistent;
  IsRawData := true;
 end;//RawData
 // Tag
 t_Tag := DefineType(10 {Tag}, [t_SomeDataContainer], 'Класс с переменным набором свойств', TagAtom) As TagAtom;
 with t_Tag do
 begin
  AtomClass := Tk2SmallTagObject;
  WrapperType := Wk2Tag;
 end;//Tag
 // Int64
 t_Int64 := DefineType(g_InnerTypeID, [t_Tag], '', Int64Tag) As Int64Tag; Inc(g_InnerTypeID);
 with t_Int64 do
 begin
  with DefineProperty(k2_tiDocID, t_Long, '') do
  begin
  end;//DocID
  with DefineProperty(k2_tiSubID, t_Long, '') do
  begin
  end;//SubID
 end;//Int64
 t_Object.Recalc;
 t_l3Base.Recalc;
 t_SomeDataContainer.Recalc;
 t_IUnknown.Recalc;
 t_Long.Recalc;
 t_Enum.Recalc;
 t_Handle.Recalc;
 t_Inch.Recalc;
 t_Bool.Recalc;
 t_Color.Recalc;
 t_String.Recalc;
 t_OList.Recalc;
 t_RawData.Recalc;
 t_Tag.Recalc;
 t_Int64.Recalc;
end;

// определяем стандартные методы схемы


function Tk2NativeSchema.pm_GetTypeByHandle(H: Integer): Tk2Type;
begin
 Case H of
  6 {Object}:
   Result := t_Object;
  9 {l3Base}:
   Result := t_l3Base;
  98 {IUnknown}:
   Result := t_IUnknown;
  1 {Long}:
   Result := t_Long;
  2 {Enum}:
   Result := t_Enum;
  28 {Handle}:
   Result := t_Handle;
  29 {Inch}:
   Result := t_Inch;
  3 {Bool}:
   Result := t_Bool;
  4 {Color}:
   Result := t_Color;
  5 {String}:
   Result := t_String;
  30 {OList}:
   Result := t_OList;
  96 {RawData}:
   Result := t_RawData;
  10 {Tag}:
   Result := t_Tag;
  else
  begin
   Result := inherited pm_GetTypeByHandle(H);
  end;//else
 end;//Case H
end;

procedure Tk2NativeSchema.Cleanup;
begin
 t_Object.InterfaceFactory := nil;
 t_Object.ToolFactory := nil;
 t_l3Base.InterfaceFactory := nil;
 t_l3Base.ToolFactory := nil;
 t_SomeDataContainer.InterfaceFactory := nil;
 t_SomeDataContainer.ToolFactory := nil;
 t_IUnknown.InterfaceFactory := nil;
 t_IUnknown.ToolFactory := nil;
 t_Long.InterfaceFactory := nil;
 t_Long.ToolFactory := nil;
 t_Enum.InterfaceFactory := nil;
 t_Enum.ToolFactory := nil;
 t_Handle.InterfaceFactory := nil;
 t_Handle.ToolFactory := nil;
 t_Inch.InterfaceFactory := nil;
 t_Inch.ToolFactory := nil;
 t_Bool.InterfaceFactory := nil;
 t_Bool.ToolFactory := nil;
 t_Color.InterfaceFactory := nil;
 t_Color.ToolFactory := nil;
 t_String.InterfaceFactory := nil;
 t_String.ToolFactory := nil;
 t_OList.InterfaceFactory := nil;
 t_OList.ToolFactory := nil;
 t_RawData.InterfaceFactory := nil;
 t_RawData.ToolFactory := nil;
 t_Tag.InterfaceFactory := nil;
 t_Tag.ToolFactory := nil;
 t_Int64.InterfaceFactory := nil;
 t_Int64.ToolFactory := nil;
 FreeAndNil(t_Object);
 FreeAndNil(t_l3Base);
 FreeAndNil(t_SomeDataContainer);
 FreeAndNil(t_IUnknown);
 FreeAndNil(t_Long);
 FreeAndNil(t_Enum);
 FreeAndNil(t_Handle);
 FreeAndNil(t_Inch);
 FreeAndNil(t_Bool);
 FreeAndNil(t_Color);
 FreeAndNil(t_String);
 FreeAndNil(t_OList);
 FreeAndNil(t_RawData);
 FreeAndNil(t_Tag);
 FreeAndNil(t_Int64);
 inherited;
end;


initialization
 Tk2NativeSchema.SetAsDefault;

end.