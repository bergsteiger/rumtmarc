unit evArchi_Schema;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Модуль: "w:/common/components/gui/Garant/Everest/evArchi_Schema.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<TagTable::Class>> Shared Delphi::Everest::Standard::evArchi
//
// Схема документа для Архивариуса
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2Tag_Const,
  k2IUnknown_Const,
  TextPara_Const,
  Everest_Schema,
  arList_Const,
  k2Base {a},
  l3Interfaces {a},
  k2Interfaces {a}
  ;

type
 ListTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//ListTag

 TevArchiSchema = class(TEverestSchema)
 public
 // типы, определённые в данной схеме:
   t_List : ListTag;
 protected
 // определяем стандартные методы схемы
   function  pm_GetTypeByHandle(H: Integer): Tk2Type; override;
   procedure Cleanup; override;
 public
   constructor Create; override;
 end;//TevArchiSchema

implementation

uses
  Classes,
  k2SmallTagObject,
  l3DataContainerWithoutIUnknown,
  SysUtils {a},
  TypInfo {a},
  k2Const {a},
  k2Tags {a},
  k2BaseStruct {a},
  l3Types {a},
  l3String {a},
  evList_InterfaceFactory
  ;


// start class ListTag

function ListTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('List'));
end;

function ListTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevArchiSchema(TypeTable).t_Tag.InheritsFrom(anAtomType);
end;

function ListTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(Tk2SmallTagObject.Create(aType)));
end;

constructor TevArchiSchema.Create;
begin
 inherited;
 // List
 t_List := DefineType(16 {List}, [t_Tag], '', ListTag) As ListTag;
 with t_List do
 begin
  InterfaceFactoryType := TevListInterfaceFactory;
  with DefineProperty(k2_tiObject, t_IUnknown, '') do
  begin
  end;//Object
 end;//List
 // TextStyle
 with t_TextStyle do
 begin
 end;//TextStyle
 // TextPara
 with t_TextPara do
 begin
  with Tk2CustomProperty(Prop[k2_tiPrintFontSize]) do
  begin
   DefaultValue := 12;
  end;//PrintFontSize
 end;//TextPara
 t_List.Recalc;
 t_TextStyle.Recalc;
 t_TextPara.Recalc;
end;

// определяем стандартные методы схемы


function TevArchiSchema.pm_GetTypeByHandle(H: Integer): Tk2Type;
begin
 Case H of
  16 {List}:
   Result := t_List;
  else
  begin
   Result := inherited pm_GetTypeByHandle(H);
  end;//else
 end;//Case H
end;

procedure TevArchiSchema.Cleanup;
begin
 t_List.InterfaceFactory := nil;
 t_List.ToolFactory := nil;
 FreeAndNil(t_List);
 inherited;
end;


initialization
 TevArchiSchema.SetAsDefault;

end.