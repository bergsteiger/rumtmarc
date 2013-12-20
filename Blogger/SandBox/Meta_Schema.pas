unit Meta_Schema;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "SandBox"
// Модуль: "Meta_Schema.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: TagTable::Class Shared Delphi Sand Box::SandBox::Meta::Meta
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Include ..\SandBox\sbDefine.inc}

interface

uses
  Class_Const,
  Inner_Const,
  Element_Const,
  dependency_Const,
  operation_Const,
  attribute_Const,
  k2Base {a},
  l3Interfaces {a},
  k2Interfaces {a}
  ;

type
  Visibility = (
    public
  , private
  , protected
  );//Visibility
  Abstract = (
    regular
  , abstract
  , final
  );//Abstract
 InnerTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//InnerTag

 ElementTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//ElementTag

 Element_Visisbility_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//Element_Visisbility_Tag

 Element_Abstract_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//Element_Abstract_Tag

 dependencyTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//dependencyTag

 ClassTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//ClassTag

 Class_Extends_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//Class_Extends_Tag

 Class_Children_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//Class_Children_Tag

 operationTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//operationTag

 attributeTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//attributeTag

 TMetaSchema = class(Tk2TypeTable)
 public
 // типы, определённые в данной схеме:
   t_Inner : InnerTag;
   t_Element : ElementTag;
   t_Element_Visisbility : Element_Visisbility_Tag;
   t_Element_Abstract : Element_Abstract_Tag;
   t_dependency : dependencyTag;
   t_Class : ClassTag;
   t_Class_Extends : Class_Extends_Tag;
   t_Class_Children : Class_Children_Tag;
   t_operation : operationTag;
   t_attribute : attributeTag;
 protected
 // определяем стандартные методы схемы
   function  pm_GetTypeByHandle(H: Integer): Tk2Type; override;
   procedure Cleanup; override;
 public
   constructor Create; override;
 end;//TMetaSchema

implementation

uses
  SysUtils {a},
  TypInfo {a},
  k2Const {a},
  k2Tags {a},
  k2BaseStruct {a},
  l3Types {a},
  l3String {a}
  ;


// start class InnerTag

function InnerTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Inner'));
end;

function InnerTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Assert(false,'Невозможно создать абстрактный тег Inner');
end;

function Element_Visisbility_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Element_Visisbility'));
end;

function Element_Visisbility_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TMetaSchema(TypeTable).t_Enum.InheritsFrom(anAtomType);
end;

function Element_Abstract_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Element_Abstract'));
end;

function Element_Abstract_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TMetaSchema(TypeTable).t_Enum.InheritsFrom(anAtomType);
end;

function ElementTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Element'));
end;

function ElementTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TMetaSchema(TypeTable).t_Inner.InheritsFrom(anAtomType);
end;

function ElementTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Assert(false,'Невозможно создать абстрактный тег Element');
end;

function dependencyTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('dependency'));
end;

function dependencyTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TMetaSchema(TypeTable).t_Inner.InheritsFrom(anAtomType);
end;

function dependencyTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(.Create(aType)));
end;

function Class_Extends_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Class_Extends'));
end;

function Class_Extends_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TMetaSchema(TypeTable).t_OList.InheritsFrom(anAtomType);
end;

function Class_Children_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Class_Children'));
end;

function Class_Children_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TMetaSchema(TypeTable).t_OList.InheritsFrom(anAtomType);
end;

function ClassTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Class'));
end;

function ClassTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TMetaSchema(TypeTable).t_Element.InheritsFrom(anAtomType);
end;

function ClassTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(.Create(aType)));
end;

function operationTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('operation'));
end;

function operationTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TMetaSchema(TypeTable).t_Element.InheritsFrom(anAtomType);
end;

function operationTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(.Create(aType)));
end;

function attributeTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('attribute'));
end;

function attributeTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TMetaSchema(TypeTable).t_Element.InheritsFrom(anAtomType);
end;

function attributeTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(.Create(aType)));
end;

constructor TMetaSchema.Create;
begin
 inherited;
 // Inner
 t_Inner := DefineType(g_InnerTypeID, [], '', InnerTag) As InnerTag; Inc(g_InnerTypeID);
 with t_Inner do
 begin
  with DefineProperty(k2_tiStereotype, AnsiString, '') do
  begin
   Shared := true;
  end;//Stereotype
 end;//Inner
 // Element
 t_Element := DefineType(g_InnerTypeID, [t_Inner], '', ElementTag) As ElementTag; Inc(g_InnerTypeID);
 with t_Element do
 begin
  with DefineProperty(k2_tiName, AnsiString, '') do
  begin
   Shared := true;
  end;//Name
  t_Element_Visisbility := Element_Visisbility_Tag.Create(Self, 'Element Visisbility');
  try
   t_Element_Visisbility.InheriteFrom(t_Enum);
   t_Element_Visisbility.StringID := g_InnerTypeID;
   k2_idElement_Visisbility := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_Element_Visisbility.AtomType := TypeInfo(Visibility);
   DefineProperty(k2_tiVisisbility, t_Element_Visisbility, '');
   t_Element_Visisbility.Recalc;
  except
   FreeAndNil(t_Element_Visisbility);
  end;//try..except
  with Tk2CustomProperty(Prop[k2_tiVisisbility]) do
  begin
  end;//Visisbility
  t_Element_Abstract := Element_Abstract_Tag.Create(Self, 'Element Abstract');
  try
   t_Element_Abstract.InheriteFrom(t_Enum);
   t_Element_Abstract.StringID := g_InnerTypeID;
   k2_idElement_Abstract := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_Element_Abstract.AtomType := TypeInfo(Abstract);
   DefineProperty(k2_tiAbstract, t_Element_Abstract, '');
   t_Element_Abstract.Recalc;
  except
   FreeAndNil(t_Element_Abstract);
  end;//try..except
  with Tk2CustomProperty(Prop[k2_tiAbstract]) do
  begin
  end;//Abstract
 end;//Element
 // dependency
 t_dependency := DefineType(g_InnerTypeID, [t_Inner], '', dependencyTag) As dependencyTag; Inc(g_InnerTypeID);
 with t_dependency do
 begin
 end;//dependency
 // Class
 t_Class := DefineType(g_InnerTypeID, [t_Element], '', ClassTag) As ClassTag; Inc(g_InnerTypeID);
 with t_Class do
 begin
  t_Class_Extends := Class_Extends_Tag.Create(Self, 'Class Extends');
  try
   t_Class_Extends.InheriteFrom(t_OList);
   t_Class_Extends.StringID := g_InnerTypeID;
   k2_idClass_Extends := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_Class_Extends.DefineChildrenPrim(t_Class);
   DefineProperty(k2_tiExtends, t_Class_Extends, '');
   t_Class_Extends.Recalc;
  except
   FreeAndNil(t_Class_Extends);
  end;//try..except
  with t_Class_Extends.ArrayProp[k2_tiChildren] do
  begin
  end;//Extends
  with DefineProperty(k2_tiImplements, t_Class, '') do
  begin
  end;//Implements
  t_Class_Children := Class_Children_Tag.Create(Self, 'Class ');
  try
   t_Class_Children.InheriteFrom(t_OList);
   t_Class_Children.StringID := g_InnerTypeID;
   k2_idClass_Children := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_Class_Children.DefineChildrenPrim(t_Inner);
   DefineChildrenPrim(t_Inner, t_Class_Children);
   t_Class_Children.Recalc;
  except
   FreeAndNil(t_Class_Children);
  end;//try..except
  with ArrayProp[k2_tiChildren] do
  begin
  end;//
 end;//Class
 // operation
 t_operation := DefineType(g_InnerTypeID, [t_Element], '', operationTag) As operationTag; Inc(g_InnerTypeID);
 with t_operation do
 begin
 end;//operation
 // attribute
 t_attribute := DefineType(g_InnerTypeID, [t_Element], '', attributeTag) As attributeTag; Inc(g_InnerTypeID);
 with t_attribute do
 begin
 end;//attribute
 t_Inner.Recalc;
 t_Element.Recalc;
 t_dependency.Recalc;
 t_Class.Recalc;
 t_operation.Recalc;
 t_attribute.Recalc;
end;

// определяем стандартные методы схемы


function TMetaSchema.pm_GetTypeByHandle(H: Integer): Tk2Type;
begin
 Case H of
  
  else
  begin
   if (t_Element_Visisbility <> nil) AND (t_Element_Visisbility.StringID = H) then
    Result := t_Element_Visisbility
   else
   if (t_Element_Abstract <> nil) AND (t_Element_Abstract.StringID = H) then
    Result := t_Element_Abstract
   else
   if (t_Class_Extends <> nil) AND (t_Class_Extends.StringID = H) then
    Result := t_Class_Extends
   else
   if (t_Class_Children <> nil) AND (t_Class_Children.StringID = H) then
    Result := t_Class_Children
   else
    Result := inherited pm_GetTypeByHandle(H);
  end;//else
 end;//Case H
end;

procedure TMetaSchema.Cleanup;
begin
 t_Inner.InterfaceFactory := nil;
 t_Inner.ToolFactory := nil;
 t_Element.InterfaceFactory := nil;
 t_Element.ToolFactory := nil;
 t_Element_Visisbility.InterfaceFactory := nil;
 t_Element_Abstract.InterfaceFactory := nil;
 t_dependency.InterfaceFactory := nil;
 t_dependency.ToolFactory := nil;
 t_Class.InterfaceFactory := nil;
 t_Class.ToolFactory := nil;
 t_Class_Extends.InterfaceFactory := nil;
 t_Class_Children.InterfaceFactory := nil;
 t_operation.InterfaceFactory := nil;
 t_operation.ToolFactory := nil;
 t_attribute.InterfaceFactory := nil;
 t_attribute.ToolFactory := nil;
 FreeAndNil(t_Inner);
 FreeAndNil(t_Element);
 FreeAndNil(t_Element_Visisbility);
 FreeAndNil(t_Element_Abstract);
 FreeAndNil(t_dependency);
 FreeAndNil(t_Class);
 FreeAndNil(t_Class_Extends);
 FreeAndNil(t_Class_Children);
 FreeAndNil(t_operation);
 FreeAndNil(t_attribute);
 inherited;
end;


initialization
 TMetaSchema.SetAsDefault;

end.