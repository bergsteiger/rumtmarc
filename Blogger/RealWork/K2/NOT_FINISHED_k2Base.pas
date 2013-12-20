unit NOT_FINISHED_k2Base;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/K2/NOT_FINISHED_k2Base.pas"
// Начат: 12.04.1998 11:28
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi::K2::k2PrimObjects::k2Base
//
// Базовые классы библиотеки K-2.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

{$Include ..\K2\k2Define.inc}

interface

uses
  k2Interfaces,
  l3Types,
  l3IID,
  l3CBase,
  k2Prim,
  l3DataContainerWithoutIUnknown,
  k2TypeModelPart,
  k2AtomWrapPrim
  ;

type
 Tk2CustomProperty = {abstract} class(Tk2CustomPropertyPrim)
  {* Базовый класс для описания свойства тега. }
 protected
 // realized methods
   function pm_GetTagType: Tk2TypePrim; override;
   function pm_GetEmptyMapping: Integer; override;
   function pm_GetReadOnly: Boolean; override;
   function pm_GetMappingTarget: Integer; override;
   function pm_GetDefaultValue: Integer; override;
 end;//Tk2CustomProperty

 Tk2Property = class(Tk2CustomProperty)
  {* Описание свойства тега. }
 private
 // private fields
   f_EmptyMapping : Integer;
   f_DefaultValue : Integer;
   f_MappingTarget : Integer;
   f_ReadOnly : Boolean;
 end;//Tk2Property

 Ik2OldToolFactory = interface(IUnknown)
   ['{8E3C950A-776A-4225-A2D8-9A9A7952DA39}']
 end;//Ik2OldToolFactory

 Tk2Type = class(Tk2TypeModelPart, Ik2OldToolFactory)
 end;//Tk2Type

 Tk2ChildrenProperty = class(Tk2CustomProperty)
 private
 // private fields
   f_ChildType : Tk2Type;
   f_DefaultChildType : Tk2Type;
   f_StoredChild : Integer;
   f_SortIndex : Integer;
   f_Duplicates : Tl3Duplicates;
 end;//Tk2ChildrenProperty

 Tk2ToolPrim = class(Tl3CBase, Ik2TagBoxContainer)
 protected
 // realized methods
   procedure SetTag(const aTag: Ik2Tag);
 protected
 // protected methods
   procedure DoSetTag(const aTag: Ik2Tag); virtual;
   class function StoreToOldCache: Boolean; virtual;
 public
 // public methods
   procedure SetTagQT(const aTag: Ik2Tag); virtual; abstract;
 end;//Tk2ToolPrim

 Wk2Atom = class(Tl3DataContainerWithoutIUnknownTk2AtomWrapPrim, Ik2Listner)
  {* Инструмент для реализации операций с тегами. }
 protected
 // realized methods
   procedure Fire(const anEvent: Tk2Event;
    const anOp: Ik2Op);
     {* сообщение о том, что что-то произошло. }
 protected
 // protected methods
   function AsString(const A: Ik2Tag): AnsiString; virtual;
   function StrToTag(const aValue: AnsiString): Ik2Tag; virtual;
   function New(aType: Tk2Type): Ik2Tag; virtual;
     {* создает атом данного типа. }
   function ObjToTag(aValue: TObject): Ik2Tag; virtual;
   function BoolToTag(Value: Boolean): Ik2Tag; virtual;
   function AsLong(const A: Ik2Tag): Integer; virtual;
   function IntToTag(aValue: Integer): Ik2Tag; virtual;
   procedure DoFire(const anEvent: Tk2Event;
    const anOp: Ik2Op); virtual;
   function GetAtomData(const AE: Ik2Tag;
    aProp: Tk2CustomProperty;
    out Data: Integer): Boolean; virtual;
   function PreGetAtomData(const AE: Ik2Tag;
    aProp: Tk2CustomProperty;
    out Data: Integer): Boolean; virtual;
   function AsBool(const A: Ik2Tag): Boolean; virtual;
 public
 // public methods
   procedure ForceStore(const aTag: Ik2Tag); virtual;
   function MarkModified(const aTag: Ik2Tag): Boolean; virtual;
 end;//Wk2Atom

 Tk2StringTag = class
 end;//Tk2StringTag

 Tk2TagBase = class
  {* Базовая реализация тега }
 end;//Tk2TagBase

 Tk2CustomPropertyPrim = k2Prim.Tk2CustomPropertyPrim;

 Tk2TypePrim = k2Prim.Tk2TypePrim;

 Tk2Base = k2Prim.Tk2Base;

 Tk2TypeTable = class(Tk2TypeTablePrim)
 protected
 // realized methods
   function pm_GetTypeByHandlePrim(anID: Integer): Tk2TypePrim; override;
 end;//Tk2TypeTable

 Tk2Prop = Tk2CustomProperty;

 Tk2ArrayProperty = Tk2ChildrenProperty;

 Tk2InterfaceFactory = class(Tl3CBase)
 protected
 // protected methods
   function QueryTool(const aTag: Ik2Tag;
     const ID: Tl3IID;
     out I: Tk2ToolPrim): Boolean; virtual;
 end;//Tk2InterfaceFactory
procedure K2NullTag;
   {* Сигнатура метода k2NullTag }
procedure K2L2TIA;
   {* Сигнатура метода k2L2TIA }

implementation

uses
  k2PropSorter,
  k2NullTagImpl,
  k2SortTagsList
  ;

// start class Tk2CustomProperty

function Tk2CustomProperty.pm_GetTagType: Tk2TypePrim;
//#UC START# *4A4DE5340236_47AC6F6A00FAget_var*
//#UC END# *4A4DE5340236_47AC6F6A00FAget_var*
begin
//#UC START# *4A4DE5340236_47AC6F6A00FAget_impl*
 !!! Needs to be implemented !!!
//#UC END# *4A4DE5340236_47AC6F6A00FAget_impl*
end;//Tk2CustomProperty.pm_GetTagType

function Tk2CustomProperty.pm_GetEmptyMapping: Integer;
//#UC START# *4A4DF48F02F1_47AC6F6A00FAget_var*
//#UC END# *4A4DF48F02F1_47AC6F6A00FAget_var*
begin
//#UC START# *4A4DF48F02F1_47AC6F6A00FAget_impl*
 !!! Needs to be implemented !!!
//#UC END# *4A4DF48F02F1_47AC6F6A00FAget_impl*
end;//Tk2CustomProperty.pm_GetEmptyMapping

function Tk2CustomProperty.pm_GetReadOnly: Boolean;
//#UC START# *4A4DF4D90012_47AC6F6A00FAget_var*
//#UC END# *4A4DF4D90012_47AC6F6A00FAget_var*
begin
//#UC START# *4A4DF4D90012_47AC6F6A00FAget_impl*
 !!! Needs to be implemented !!!
//#UC END# *4A4DF4D90012_47AC6F6A00FAget_impl*
end;//Tk2CustomProperty.pm_GetReadOnly

function Tk2CustomProperty.pm_GetMappingTarget: Integer;
//#UC START# *4A4DF71B035B_47AC6F6A00FAget_var*
//#UC END# *4A4DF71B035B_47AC6F6A00FAget_var*
begin
//#UC START# *4A4DF71B035B_47AC6F6A00FAget_impl*
 !!! Needs to be implemented !!!
//#UC END# *4A4DF71B035B_47AC6F6A00FAget_impl*
end;//Tk2CustomProperty.pm_GetMappingTarget

function Tk2CustomProperty.pm_GetDefaultValue: Integer;
//#UC START# *4A4DF88301A2_47AC6F6A00FAget_var*
//#UC END# *4A4DF88301A2_47AC6F6A00FAget_var*
begin
//#UC START# *4A4DF88301A2_47AC6F6A00FAget_impl*
 !!! Needs to be implemented !!!
//#UC END# *4A4DF88301A2_47AC6F6A00FAget_impl*
end;//Tk2CustomProperty.pm_GetDefaultValue
// start class Tk2ToolPrim

procedure Tk2ToolPrim.DoSetTag(const aTag: Ik2Tag);
//#UC START# *4E3A4511000A_47F5DAEB0007_var*
//#UC END# *4E3A4511000A_47F5DAEB0007_var*
begin
//#UC START# *4E3A4511000A_47F5DAEB0007_impl*
 !!! Needs to be implemented !!!
//#UC END# *4E3A4511000A_47F5DAEB0007_impl*
end;//Tk2ToolPrim.DoSetTag

class function Tk2ToolPrim.StoreToOldCache: Boolean;
//#UC START# *49DF4E12001A_47F5DAEB0007_var*
//#UC END# *49DF4E12001A_47F5DAEB0007_var*
begin
//#UC START# *49DF4E12001A_47F5DAEB0007_impl*
 !!! Needs to be implemented !!!
//#UC END# *49DF4E12001A_47F5DAEB0007_impl*
end;//Tk2ToolPrim.StoreToOldCache

procedure Tk2ToolPrim.SetTag(const aTag: Ik2Tag);
//#UC START# *469F9FD9025D_47F5DAEB0007_var*
//#UC END# *469F9FD9025D_47F5DAEB0007_var*
begin
//#UC START# *469F9FD9025D_47F5DAEB0007_impl*
 !!! Needs to be implemented !!!
//#UC END# *469F9FD9025D_47F5DAEB0007_impl*
end;//Tk2ToolPrim.SetTag
// start class Wk2Atom

procedure Wk2Atom.ForceStore(const aTag: Ik2Tag);
//#UC START# *4CED2E7E010A_484CCCFF00D7_var*
//#UC END# *4CED2E7E010A_484CCCFF00D7_var*
begin
//#UC START# *4CED2E7E010A_484CCCFF00D7_impl*
 !!! Needs to be implemented !!!
//#UC END# *4CED2E7E010A_484CCCFF00D7_impl*
end;//Wk2Atom.ForceStore

function Wk2Atom.MarkModified(const aTag: Ik2Tag): Boolean;
//#UC START# *4CEE5D3002FC_484CCCFF00D7_var*
//#UC END# *4CEE5D3002FC_484CCCFF00D7_var*
begin
//#UC START# *4CEE5D3002FC_484CCCFF00D7_impl*
 !!! Needs to be implemented !!!
//#UC END# *4CEE5D3002FC_484CCCFF00D7_impl*
end;//Wk2Atom.MarkModified

function Wk2Atom.AsString(const A: Ik2Tag): AnsiString;
//#UC START# *484CCE970073_484CCCFF00D7_var*
//#UC END# *484CCE970073_484CCCFF00D7_var*
begin
//#UC START# *484CCE970073_484CCCFF00D7_impl*
 !!! Needs to be implemented !!!
//#UC END# *484CCE970073_484CCCFF00D7_impl*
end;//Wk2Atom.AsString

function Wk2Atom.StrToTag(const aValue: AnsiString): Ik2Tag;
//#UC START# *484CCEBC00DC_484CCCFF00D7_var*
//#UC END# *484CCEBC00DC_484CCCFF00D7_var*
begin
//#UC START# *484CCEBC00DC_484CCCFF00D7_impl*
 !!! Needs to be implemented !!!
//#UC END# *484CCEBC00DC_484CCCFF00D7_impl*
end;//Wk2Atom.StrToTag

function Wk2Atom.New(aType: Tk2Type): Ik2Tag;
//#UC START# *484CEAAF03C5_484CCCFF00D7_var*
//#UC END# *484CEAAF03C5_484CCCFF00D7_var*
begin
//#UC START# *484CEAAF03C5_484CCCFF00D7_impl*
 !!! Needs to be implemented !!!
//#UC END# *484CEAAF03C5_484CCCFF00D7_impl*
end;//Wk2Atom.New

function Wk2Atom.ObjToTag(aValue: TObject): Ik2Tag;
//#UC START# *484CEAD301AE_484CCCFF00D7_var*
//#UC END# *484CEAD301AE_484CCCFF00D7_var*
begin
//#UC START# *484CEAD301AE_484CCCFF00D7_impl*
 !!! Needs to be implemented !!!
//#UC END# *484CEAD301AE_484CCCFF00D7_impl*
end;//Wk2Atom.ObjToTag

function Wk2Atom.BoolToTag(Value: Boolean): Ik2Tag;
//#UC START# *484D279B0058_484CCCFF00D7_var*
//#UC END# *484D279B0058_484CCCFF00D7_var*
begin
//#UC START# *484D279B0058_484CCCFF00D7_impl*
 !!! Needs to be implemented !!!
//#UC END# *484D279B0058_484CCCFF00D7_impl*
end;//Wk2Atom.BoolToTag

function Wk2Atom.AsLong(const A: Ik2Tag): Integer;
//#UC START# *484D314401B6_484CCCFF00D7_var*
//#UC END# *484D314401B6_484CCCFF00D7_var*
begin
//#UC START# *484D314401B6_484CCCFF00D7_impl*
 !!! Needs to be implemented !!!
//#UC END# *484D314401B6_484CCCFF00D7_impl*
end;//Wk2Atom.AsLong

function Wk2Atom.IntToTag(aValue: Integer): Ik2Tag;
//#UC START# *484D31710018_484CCCFF00D7_var*
//#UC END# *484D31710018_484CCCFF00D7_var*
begin
//#UC START# *484D31710018_484CCCFF00D7_impl*
 !!! Needs to be implemented !!!
//#UC END# *484D31710018_484CCCFF00D7_impl*
end;//Wk2Atom.IntToTag

procedure Wk2Atom.DoFire(const anEvent: Tk2Event;
  const anOp: Ik2Op);
//#UC START# *484D31850186_484CCCFF00D7_var*
//#UC END# *484D31850186_484CCCFF00D7_var*
begin
//#UC START# *484D31850186_484CCCFF00D7_impl*
 !!! Needs to be implemented !!!
//#UC END# *484D31850186_484CCCFF00D7_impl*
end;//Wk2Atom.DoFire

function Wk2Atom.GetAtomData(const AE: Ik2Tag;
  aProp: Tk2CustomProperty;
  out Data: Integer): Boolean;
//#UC START# *4857A995029E_484CCCFF00D7_var*
//#UC END# *4857A995029E_484CCCFF00D7_var*
begin
//#UC START# *4857A995029E_484CCCFF00D7_impl*
 !!! Needs to be implemented !!!
//#UC END# *4857A995029E_484CCCFF00D7_impl*
end;//Wk2Atom.GetAtomData

function Wk2Atom.PreGetAtomData(const AE: Ik2Tag;
  aProp: Tk2CustomProperty;
  out Data: Integer): Boolean;
//#UC START# *48DD0CE60313_484CCCFF00D7_var*
//#UC END# *48DD0CE60313_484CCCFF00D7_var*
begin
//#UC START# *48DD0CE60313_484CCCFF00D7_impl*
 !!! Needs to be implemented !!!
//#UC END# *48DD0CE60313_484CCCFF00D7_impl*
end;//Wk2Atom.PreGetAtomData

function Wk2Atom.AsBool(const A: Ik2Tag): Boolean;
//#UC START# *49C8EA61008F_484CCCFF00D7_var*
//#UC END# *49C8EA61008F_484CCCFF00D7_var*
begin
//#UC START# *49C8EA61008F_484CCCFF00D7_impl*
 !!! Needs to be implemented !!!
//#UC END# *49C8EA61008F_484CCCFF00D7_impl*
end;//Wk2Atom.AsBool

procedure Wk2Atom.Fire(const anEvent: Tk2Event;
  const anOp: Ik2Op);
//#UC START# *476144F90102_484CCCFF00D7_var*
//#UC END# *476144F90102_484CCCFF00D7_var*
begin
//#UC START# *476144F90102_484CCCFF00D7_impl*
 !!! Needs to be implemented !!!
//#UC END# *476144F90102_484CCCFF00D7_impl*
end;//Wk2Atom.Fire
// start class Tk2TypeTable

function Tk2TypeTable.pm_GetTypeByHandlePrim(anID: Integer): Tk2TypePrim;
//#UC START# *4A4E1FC202D9_4A4E24A103BDget_var*
//#UC END# *4A4E1FC202D9_4A4E24A103BDget_var*
begin
//#UC START# *4A4E1FC202D9_4A4E24A103BDget_impl*
 !!! Needs to be implemented !!!
//#UC END# *4A4E1FC202D9_4A4E24A103BDget_impl*
end;//Tk2TypeTable.pm_GetTypeByHandlePrim

procedure K2NullTag;
//#UC START# *4CB46C85024E_47AC6F0B025E_var*
//#UC END# *4CB46C85024E_47AC6F0B025E_var*
begin
//#UC START# *4CB46C85024E_47AC6F0B025E_impl*
 !!! Needs to be implemented !!!
//#UC END# *4CB46C85024E_47AC6F0B025E_impl*
end;//K2NullTag
// start class Tk2InterfaceFactory

function Tk2InterfaceFactory.QueryTool(const aTag: Ik2Tag;
  const ID: Tl3IID;
  out I: Tk2ToolPrim): Boolean;
//#UC START# *4D63D26D033F_4D63C2420229_var*
//#UC END# *4D63D26D033F_4D63C2420229_var*
begin
//#UC START# *4D63D26D033F_4D63C2420229_impl*
 !!! Needs to be implemented !!!
//#UC END# *4D63D26D033F_4D63C2420229_impl*
end;//Tk2InterfaceFactory.QueryTool

procedure K2L2TIA;
//#UC START# *4DFF2CEE00D6_47AC6F0B025E_var*
//#UC END# *4DFF2CEE00D6_47AC6F0B025E_var*
begin
//#UC START# *4DFF2CEE00D6_47AC6F0B025E_impl*
 !!! Needs to be implemented !!!
//#UC END# *4DFF2CEE00D6_47AC6F0B025E_impl*
end;//K2L2TIA

end.