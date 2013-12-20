unit evdBlockNameAdder;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/evdBlockNameAdder.pas"
// Начат: 08.06.2009 16:10
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::Generators::TevdBlockNameAdder
//
// Фильтр, добавляющий имена блоков
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  l3Interfaces,
  l3ProtoDataContainer,
  evdHeaderHyperlinkAdder,
  l3Memory,
  l3Types,
  l3Core,
  l3Except,
  Classes,
  k2Types,
  nevBase
  ;

type
 TevdBlockInfo = record
  {* Информация о блоке }
   rInContents : Boolean; // Попадает ли блок в оглавление
   rBlockType : Integer; // Тип блока
   rBlockID : Integer; // Идентификатор блока
   rName : Il3CString; // Имя блока
   rSaved : Boolean; // Информация о блоке уже была сохранена
 end;//TevdBlockInfo

 _ItemType_ = TevdBlockInfo;
 _l3RecordListPrim_Parent_ = Tl3ProtoDataContainer;
 {$Define l3Items_IsProto}
{$Include w:\common\components\rtl\Garant\L3\l3RecordListPrim.imp.pas}
 TevdBlocks = class(_l3RecordListPrim_)
  {* Накопленные в результате анализа документа блоки }
 end;//TevdBlocks

 TevdBlockNameAdder = class(TevdHeaderHyperlinkAdder)
  {* Фильтр, добавляющий имена блоков }
 private
 // private fields
   f_Blocks : TevdBlocks;
    {* Накопленные блоки}
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   procedure CloseStructure(NeedUndo: Boolean); override;
     {* вызывается на закрывающуюся "скобку". Для перекрытия в потомках. }
   procedure DoStartChild(TypeID: Integer); override;
   procedure DoAddAtomEx(AtomIndex: Integer;
    const Value: Tk2Variant); override;
   procedure OutBlockNames(const aLeaf: InevTag); override;
     {* Выводит имена блоков, в которые вложен данный параграф }
 end;//TevdBlockNameAdder

function TevdBlockInfo_C(const aName: Il3CString): TevdBlockInfo;
function TevdBlockInfo_E: TevdBlockInfo;
  {* Создаёт пустую структуру }
function TevdBlockInfo_T(aType: Integer): TevdBlockInfo;

implementation

uses
  l3Base,
  l3MinMax,
  RTLConsts,
  SysUtils,
  Block_Const,
  k2Tags,
  TextPara_Const,
  evTextStyle_Const,
  l3CustomString,
  ContentsElement_Const,
  Document_Const,
  evdTypes,
  Table_Const,
  PageBreak_Const,
  l3String,
  k2Facade,
  k2Base,
  SegmentsLayer_Const,
  HyperLink_Const,
  Address_Const,
  evdTextStyle_Const
  ;

function TevdBlockInfo_C(const aName: Il3CString): TevdBlockInfo;
//#UC START# *4A2D14530087_4A2D046A01BE_var*
//#UC END# *4A2D14530087_4A2D046A01BE_var*
begin
 System.FillChar(Result, SizeOf(Result), 0);
//#UC START# *4A2D14530087_4A2D046A01BE_impl*
 Result.rName := aName;
//#UC END# *4A2D14530087_4A2D046A01BE_impl*
end;//TevdBlockInfo.C


function TevdBlockInfo_E: TevdBlockInfo;
  {* Создаёт пустую структуру }
//#UC START# *4A2D263C02BE_4A2D046A01BE_var*
//#UC END# *4A2D263C02BE_4A2D046A01BE_var*
begin
 System.FillChar(Result, SizeOf(Result), 0);
//#UC START# *4A2D263C02BE_4A2D046A01BE_impl*
//#UC END# *4A2D263C02BE_4A2D046A01BE_impl*
end;//TevdBlockInfo.E


function TevdBlockInfo_T(aType: Integer): TevdBlockInfo;
//#UC START# *4A2FE6E60214_4A2D046A01BE_var*
//#UC END# *4A2FE6E60214_4A2D046A01BE_var*
begin
 System.FillChar(Result, SizeOf(Result), 0);
//#UC START# *4A2FE6E60214_4A2D046A01BE_impl*
 Result.rBlockType := aType;
//#UC END# *4A2FE6E60214_4A2D046A01BE_impl*
end;//TevdBlockInfo.T

// start class TevdBlocks

procedure AssignItem(const aTo: _ItemType_;
  const aFrom: _ItemType_); forward;

function CompareExistingItems(const CI: CompareItemsRec): Integer; forward;

{$If not defined(l3Items_IsAtomic)}
function IsSame(const A: _ItemType_;
  const B: _ItemType_): Boolean;
//#UC START# *47B07CF403D0_4A2D03DC0068_var*
//#UC END# *47B07CF403D0_4A2D03DC0068_var*
begin
//#UC START# *47B07CF403D0_4A2D03DC0068_impl*
 Result := false;
//#UC END# *47B07CF403D0_4A2D03DC0068_impl*
end;//IsSame
{$IfEnd} //not l3Items_IsAtomic

procedure AssignItem(const aTo: _ItemType_;
  const aFrom: _ItemType_);
//#UC START# *47B2C42A0163_4A2D03DC0068_var*
//#UC END# *47B2C42A0163_4A2D03DC0068_var*
begin
//#UC START# *47B2C42A0163_4A2D03DC0068_impl*
 Assert(false);
//#UC END# *47B2C42A0163_4A2D03DC0068_impl*
end;//AssignItem

function CompareExistingItems(const CI: CompareItemsRec): Integer;
//#UC START# *47B99D4503A2_4A2D03DC0068_var*
//#UC END# *47B99D4503A2_4A2D03DC0068_var*
begin
//#UC START# *47B99D4503A2_4A2D03DC0068_impl*
 Result := -1;
 Assert(false);
//#UC END# *47B99D4503A2_4A2D03DC0068_impl*
end;//CompareExistingItems

type _Instance_R_ = TevdBlocks;

{$Include w:\common\components\rtl\Garant\L3\l3RecordListPrim.imp.pas}

// start class TevdBlockNameAdder

procedure TevdBlockNameAdder.Cleanup;
//#UC START# *479731C50290_4A2CFFA30282_var*
//#UC END# *479731C50290_4A2CFFA30282_var*
begin
//#UC START# *479731C50290_4A2CFFA30282_impl*
 FreeAndNil(f_Blocks);
 inherited;
//#UC END# *479731C50290_4A2CFFA30282_impl*
end;//TevdBlockNameAdder.Cleanup

procedure TevdBlockNameAdder.CloseStructure(NeedUndo: Boolean);
//#UC START# *4836D4C20059_4A2CFFA30282_var*
//#UC END# *4836D4C20059_4A2CFFA30282_var*
begin
//#UC START# *4836D4C20059_4A2CFFA30282_impl*
 if CurrentType.InheritsFrom(k2_idContentsElement) then
  f_Blocks.Count := f_Blocks.Count - 1; 
 inherited;
//#UC END# *4836D4C20059_4A2CFFA30282_impl*
end;//TevdBlockNameAdder.CloseStructure

procedure TevdBlockNameAdder.DoStartChild(TypeID: Integer);
//#UC START# *4A2D1217037A_4A2CFFA30282_var*
//#UC END# *4A2D1217037A_4A2CFFA30282_var*
begin
//#UC START# *4A2D1217037A_4A2CFFA30282_impl*
 if k2.TypeTable[TypeID].InheritsFrom(k2_idTable) then
  OutBlockNames(nil);
 inherited;
 if CurrentType.InheritsFrom(k2_idContentsElement) then
 begin
  if (f_Blocks = nil) then
   f_Blocks := TevdBlocks.Create;
  f_Blocks.Add(TevdBlockInfo_T(TypeID));
 end;//CurrentType.InheritsFrom(k2_idContentsElement)
//#UC END# *4A2D1217037A_4A2CFFA30282_impl*
end;//TevdBlockNameAdder.DoStartChild

procedure TevdBlockNameAdder.DoAddAtomEx(AtomIndex: Integer;
  const Value: Tk2Variant);
//#UC START# *4A2D1634025B_4A2CFFA30282_var*

 procedure SaveName;
 var
  l_String : Tl3CustomString;
  l_Item   : TevdBlockInfo;
 begin
  l_String := VariantAsString(Value);
  try
   l_Item := f_Blocks.Last;
   if (l_String = nil) then
    l_Item.rName := nil
   else
   if not l3IOk(l_String.QueryInterface(Il3CString, l_Item.rName)) then
    Assert(false);
   f_Blocks.Last := l_Item;
  finally
   FreeAndNil(l_String);
  end;//try..finally
 end;

 procedure SaveBlockID;
 var
  l_Item : TevdBlockInfo;
 begin
  l_Item := f_Blocks.Last;
  l_Item.rBlockID := VariantAsInteger(AtomIndex, Value) ;
  f_Blocks.Last := l_Item;
 end;

 procedure SaveInContentsPrim(aValue : Boolean);
 var
  l_Item : TevdBlockInfo;
 begin
  l_Item := f_Blocks.Last;
  l_Item.rInContents := aValue;
  f_Blocks.Last := l_Item;
 end;

 procedure SaveInContents;
 begin
  SaveInContentsPrim(VariantAsInteger(AtomIndex, Value) <> 0);
 end;

 procedure SaveDocInContents;
 begin
  SaveInContentsPrim(true);
 end;

var
 l_CT       : Tk2Type;
 l_NewValue : Tk2Variant;
//#UC END# *4A2D1634025B_4A2CFFA30282_var*
begin
//#UC START# *4A2D1634025B_4A2CFFA30282_impl*
 l_CT := CurrentType;
 if (AtomIndex = k2_tiInContents) AND
    l_CT.InheritsFrom(k2_idContentsElement) then
  SaveInContents
 else 
 if (AtomIndex = k2_tiHandle) AND
    l_CT.InheritsFrom(k2_idContentsElement) then
  SaveBlockID
 else 
 if l_CT.InheritsFrom(k2_idDocument) {AND (TopType[1] = nil) }then
 begin
  if (AtomIndex = k2_tiName) then
  begin
   SaveDocInContents;
   SaveName;
  end;//AtomIndex = k2_tiName
  if (AtomIndex = k2_tiStyle) and (VariantAsInteger(AtomIndex, Value) = ev_saLinkToPublication) then
  // ^ - http://mdp.garant.ru/pages/viewpage.action?pageId=400195823
  begin
   l_NewValue.Kind := k2_vkInteger;
   l_NewValue.AsInteger := evd_saTxtNormalANSI;
   inherited DoAddAtomEx(AtomIndex, l_NewValue);
   Exit;
  end; // if (AtomIndex = k2_tiStyle) and (VariantAsInteger(AtomIndex, Value) = ev_saLinkToPublication) then
 end//l_CT.InheritsFrom(k2_idDocument)
 else
 if l_CT.InheritsFrom(k2_idContentsElement) then
  if (AtomIndex = k2_tiShortName) then
   SaveName;
 inherited;
//#UC END# *4A2D1634025B_4A2CFFA30282_impl*
end;//TevdBlockNameAdder.DoAddAtomEx

procedure TevdBlockNameAdder.OutBlockNames(const aLeaf: InevTag);
//#UC START# *4CF513300102_4A2CFFA30282_var*
var
 l_Item : TevdBlockInfo;
 l_Index : Integer;
//#UC END# *4CF513300102_4A2CFFA30282_var*
begin
//#UC START# *4CF513300102_4A2CFFA30282_impl*
 for l_Index := 0 to f_Blocks.Hi do
 begin
  l_Item := f_Blocks[l_Index];
  with l_Item do
   if not rSaved then
   begin
    l_Item.rSaved := true;
    f_Blocks[l_Index] := l_Item;
    if not l3IsNil(rName) then
     if rInContents then
      if (rBlockType = k2_idContentsElement) OR
         k2.TypeTable[rBlockType].InheritsFrom(k2_idDocument) then
       begin
        if (l_Index = f_Blocks.Hi) then
         // - обрабатываем самый вложенный блок
         if (aLeaf <> nil) AND
            l3Starts(l3PCharLen(rName), aLeaf.PCharLenA[k2_tiText]) then
          // - типа такой текст уже есть в самом параграфе
          continue;
        Generator.StartChild(k2_idTextPara);
        try
         Generator.AddIntegerAtom(k2_tiStyle, ev_saTxtHeader1);
         //Generator.AddIntegerAtom(k2_tiJustification, Ord(ev_itLeft));
         Generator.AddPCharLenAtom(k2_tiText, l3PCharLen(rName));
         if (f_DocID <> 0) then
         begin
          f_WasSomeLink := true;
          Generator.StartTag(k2_tiSegments);
          try
           Generator.StartChild(k2_idSegmentsLayer);
           try
            Generator.AddIntegerAtom(k2_tiHandle, ev_slHyperlinks);
            Generator.StartChild(k2_idHyperlink);
            try
             Generator.AddIntegerAtom(k2_tiStart, 1);
             Generator.AddIntegerAtom(k2_tiFinish, l3Len(rName));
             Generator.StartChild(k2_idAddress);
             try
              Generator.AddIntegerAtom(k2_tiType, CI_REF);
              Generator.AddIntegerAtom(k2_tiDocID, f_DocID);
              if (rBlockID <> 0) then
               Generator.AddIntegerAtom(k2_tiSubID, rBlockID);
             finally
              Generator.Finish;
             end;//try..finally
            finally
             Generator.Finish;
            end;//try..finally
           finally
            Generator.Finish;
           end;//try..finally
          finally
           Generator.Finish;
          end;//try..finally
         end;//f_DocID <> 0
        finally
         Generator.Finish;
        end;//try..finally
       end;//not l3IsNil(rName)
    end;//not rSaved
 end;//for l_Index
 inherited;
//#UC END# *4CF513300102_4A2CFFA30282_impl*
end;//TevdBlockNameAdder.OutBlockNames

end.