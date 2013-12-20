unit evAlignWithGroupRowSupport;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Модуль: "w:/common/components/gui/Garant/Everest/evAlignWithGroupRowSupport.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::CellUtils::TevAlignWithGroupRowSupport
//
// Примесь поддержки анализа групп строк.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  evEditorInterfaces,
  l3ProtoDataContainer,
  evCellsOffsetsPair,
  edCellTypesList,
  evRowAndTableTypeSupport,
  l3Memory,
  l3Interfaces,
  l3Types,
  l3Core,
  l3Except,
  Classes
  ;

type
 TevGroupRow = record
   rStartRow : Integer;
   rFinishRow : Integer;
 end;//TevGroupRow

 _ItemType_ = TevGroupRow;
 _l3RecordListPrim_Parent_ = Tl3ProtoDataContainer;
 {$Define l3Items_IsProto}
{$Include w:\common\components\rtl\Garant\L3\l3RecordListPrim.imp.pas}
 TevGroupRowList = class(_l3RecordListPrim_)
 end;//TevGroupRowList

 TevAlignWithGroupRowSupport = class(TevRowAndTableTypeSupport)
  {* Примесь поддержки анализа групп строк. }
 private
 // private fields
   f_Group : TevGroupRow;
    {* Текущая группа.}
   f_GroupRowList : TevGroupRowList;
   f_CurrentCellsTypeList : TedCellTypesList;
    {* Кешированный массив типов ячеек, т.к. объект пар смещений и ширин создается позже.}
   f_CalculattedGroupHeight : Integer;
 private
 // private methods
   procedure CheckStartGroup(anIndex: Integer;
     const aCellIterator: IedCellsIterator);
   procedure AnalyseCellsType(const aCellIterator: IedCellsIterator);
   procedure CalcGroupHeight(const aCellIterator: IedCellsIterator);
   function IsAlignGroupStated: Boolean;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   procedure InitFields; override;
 protected
 // protected methods
   procedure InitGroup;
     {* Инициализация группы. }
   procedure SafeAddGroupRow;
   procedure SaveCellsTypeList(const aCellIterator: IedCellsIterator;
     anIndex: Integer;
     const aCellOffsetPair: TevCellsOffsetsPair);
   function FindInGroups(const aCellIterator: IedCellsIterator;
     anIndex: Integer): TevCellsOffsetsPair;
     {* Поискать подходящий массив в группах. }
   function GetCellsOffsetPairByIndex(anIndex: Integer): TevCellsOffsetsPair; virtual; abstract;
   function GetNumericData: TevCellsOffsetsPair; virtual; abstract;
 public
 // public methods
   function CopyWithGrop(const aFrom: TevCellsOffsetsPair;
     const aTo: TevCellsOffsetsPair;
     const anInterator: IedCellsIterator): Boolean;
 end;//TevAlignWithGroupRowSupport

implementation

uses
  l3Base,
  l3MinMax,
  RTLConsts,
  SysUtils
  ;

// start class TevAlignWithGroupRowSupport

procedure TevAlignWithGroupRowSupport.CheckStartGroup(anIndex: Integer;
  const aCellIterator: IedCellsIterator);
//#UC START# *5112223D010F_511230F403A5_var*

  procedure lp_CheckRowList;
  begin
   if (f_Group.rStartRow > -1) and ((anIndex - f_Group.rStartRow) > f_CalculattedGroupHeight) then // Уже была начата группа.
   begin
    f_Group.rFinishRow := anIndex - 1;
    SafeAddGroupRow;
    InitGroup
   end; // if f_Group.rStartRow > -1 then
  end;

  function lp_CanStartGroup: Boolean;
  var
   l_CellType: TedCellType;
  begin
   l_CellType := f_CurrentCellsTypeList[0];
   Result := False{(l_CellType = ed_HeadNumber)};
   if not Result then
    Result := {(l_CellType = ed_HeadEmpty) and }(GetPrevRowType = ed_NumericCels);
  end;

//#UC END# *5112223D010F_511230F403A5_var*
begin
//#UC START# *5112223D010F_511230F403A5_impl*
 if (TableStyle = ed_tsWithHeader) then
 begin
  (*if (CurrentRowType = ed_HasHeadCells) then
  begin
   if lp_CanStartGroup then
   begin
    lp_CheckRowList;
    f_Group.rStartRow := anIndex;
    CalcGroupHeight(aCellIterator);
   end // if (aCellOffsetPair.GetCellType(0) = ed_Number) then
   else
    lp_CheckRowList;
  end // if (CurrentRowType = ed_HasHeadCells) then
  else*)
   lp_CheckRowList;
 end; // if (TableStyle = ed_tsWithHeader) then
//#UC END# *5112223D010F_511230F403A5_impl*
end;//TevAlignWithGroupRowSupport.CheckStartGroup

procedure TevAlignWithGroupRowSupport.AnalyseCellsType(const aCellIterator: IedCellsIterator);
//#UC START# *5112166502E5_511230F403A5_var*
var
 l_Cell: IedCell;
//#UC END# *5112166502E5_511230F403A5_var*
begin
//#UC START# *5112166502E5_511230F403A5_impl*
 l_Cell := aCellIterator.First(False);
 f_CurrentCellsTypeList := TedCellTypesList.Create;
 while l_Cell <> nil do
 begin
  f_CurrentCellsTypeList.Add(l_Cell.GetCellType);
  l_Cell := aCellIterator.Next;
 end; // while l_Cell <> nil do
 aCellIterator.First(False); // Не надо "портить" итератор.
//#UC END# *5112166502E5_511230F403A5_impl*
end;//TevAlignWithGroupRowSupport.AnalyseCellsType

procedure TevAlignWithGroupRowSupport.CalcGroupHeight(const aCellIterator: IedCellsIterator);
//#UC START# *5118C3210070_511230F403A5_var*
var
 l_Cell: IedCell;
//#UC END# *5118C3210070_511230F403A5_var*
begin
//#UC START# *5118C3210070_511230F403A5_impl*
 l_Cell := aCellIterator.First(False);
 f_CalculattedGroupHeight := 0;
 while l_Cell <> nil do
 begin
  f_CalculattedGroupHeight := Max(f_CalculattedGroupHeight, l_Cell.CalcHeadCellHeghtInRow);
  l_Cell := aCellIterator.Next;
 end; // while l_Cell <> nil do
 aCellIterator.First(False); // Не надо "портить" итератор.  
//#UC END# *5118C3210070_511230F403A5_impl*
end;//TevAlignWithGroupRowSupport.CalcGroupHeight

function TevAlignWithGroupRowSupport.IsAlignGroupStated: Boolean;
//#UC START# *511B5EA301AC_511230F403A5_var*
//#UC END# *511B5EA301AC_511230F403A5_var*
begin
//#UC START# *511B5EA301AC_511230F403A5_impl*
 Result := (f_GroupRowList <> nil) and (f_GroupRowList.Count > 0) and (f_Group.rStartRow > 0);
//#UC END# *511B5EA301AC_511230F403A5_impl*
end;//TevAlignWithGroupRowSupport.IsAlignGroupStated

procedure TevAlignWithGroupRowSupport.InitGroup;
//#UC START# *5112323C0239_511230F403A5_var*
//#UC END# *5112323C0239_511230F403A5_var*
begin
//#UC START# *5112323C0239_511230F403A5_impl*
 f_Group.rStartRow := -1;
 f_Group.rFinishRow := -1;
//#UC END# *5112323C0239_511230F403A5_impl*
end;//TevAlignWithGroupRowSupport.InitGroup

procedure TevAlignWithGroupRowSupport.SafeAddGroupRow;
//#UC START# *51123572007E_511230F403A5_var*
//#UC END# *51123572007E_511230F403A5_var*
begin
//#UC START# *51123572007E_511230F403A5_impl*
 if f_GroupRowList = nil then
  f_GroupRowList := TevGroupRowList.Create;
 f_GroupRowList.Add(f_Group);
//#UC END# *51123572007E_511230F403A5_impl*
end;//TevAlignWithGroupRowSupport.SafeAddGroupRow

procedure TevAlignWithGroupRowSupport.SaveCellsTypeList(const aCellIterator: IedCellsIterator;
  anIndex: Integer;
  const aCellOffsetPair: TevCellsOffsetsPair);
//#UC START# *51133B0003CF_511230F403A5_var*
//#UC END# *51133B0003CF_511230F403A5_var*
begin
//#UC START# *51133B0003CF_511230F403A5_impl*
 if f_CurrentCellsTypeList = nil then
 begin
  AnalyseCellsType(aCellIterator);
  CheckStartGroup(anIndex, aCellIterator);
 end; // if f_CurrentCellsTypeList = nil then
 aCellOffsetPair.CellsType := f_CurrentCellsTypeList;
 f_CurrentCellsTypeList := nil;
//#UC END# *51133B0003CF_511230F403A5_impl*
end;//TevAlignWithGroupRowSupport.SaveCellsTypeList

function TevAlignWithGroupRowSupport.FindInGroups(const aCellIterator: IedCellsIterator;
  anIndex: Integer): TevCellsOffsetsPair;
//#UC START# *5113420600CD_511230F403A5_var*
var
 i              : Integer;
 l_Count        : Integer;
 l_RowData      : TevCellsOffsetsPair;
 l_CheckIndex   : Integer;
 l_NearestData  : TevCellsOffsetsPair;
 l_GroupHeight  : Integer;
 l_IndexInGroup : Integer;
//#UC END# *5113420600CD_511230F403A5_var*
begin
//#UC START# *5113420600CD_511230F403A5_impl*
 Result := nil;
 AnalyseCellsType(aCellIterator);
 CheckStartGroup(anIndex, aCellIterator);
 if IsAlignGroupStated then
 begin
  l_Count := f_GroupRowList.Count - 1;
  l_IndexInGroup := anIndex - f_Group.rStartRow;
  l_NearestData := nil;
  for i := l_Count downto 0 do
  begin
   l_GroupHeight := f_GroupRowList[i].rFinishRow - f_GroupRowList[i].rStartRow;
   if (l_GroupHeight = f_CalculattedGroupHeight) and (l_GroupHeight >= l_IndexInGroup) then
   begin
    l_RowData := GetCellsOffsetPairByIndex(f_GroupRowList[i].rStartRow + l_IndexInGroup);
    if l_RowData.EqualCells(aCellIterator, f_CurrentCellsTypeList) then
    begin
     Result := l_RowData;
     Break;
    end // if l_RowData.EqualCells(aCellIterator, f_CurrentCellsTypeList) then
    else
     if l_NearestData = nil then
      l_NearestData := l_RowData;
   end // if (f_GroupRowList[i].rFinishRow - f_GroupRowList[i].rStartRow) >= l_IndexInGroup then
   else
    if (l_GroupHeight > f_CalculattedGroupHeight) and (l_IndexInGroup > 0) then
    begin
     l_CheckIndex := f_GroupRowList[i].rStartRow + l_IndexInGroup;
     l_RowData := GetCellsOffsetPairByIndex(l_CheckIndex);
     if l_RowData.EqualCells(aCellIterator, f_CurrentCellsTypeList) then
     begin
      Result := l_RowData;
      Break;
     end; // if l_RowData.EqualCells(aCellIterator, f_CurrentCellsTypeList) then
     Dec(l_CheckIndex);
     l_RowData := GetCellsOffsetPairByIndex(l_CheckIndex);
     if l_RowData.EqualCells(aCellIterator, f_CurrentCellsTypeList) then
     begin
      Result := l_RowData;
      Break;
     end; // if l_RowData.EqualCells(aCellIterator, f_CurrentCellsTypeList) then
     Inc(l_CheckIndex, 2);
     l_RowData := GetCellsOffsetPairByIndex(l_CheckIndex);
     if l_RowData.EqualCells(aCellIterator, f_CurrentCellsTypeList) then
     begin
      Result := l_RowData;
      Break;
     end; // if l_RowData.EqualCells(aCellIterator, f_CurrentCellsTypeList) then
    end;
  end; // for i := l_Count downto 0 do
  if (Result = nil) then
   if (l_IndexInGroup = 0) then
   begin
    if l_NearestData <> nil then
     Result := l_NearestData
   end // if (l_IndexInGroup = 0) then
   else
   begin
    for i := anIndex - 1 downto f_Group.rStartRow do
    begin
     l_RowData := GetCellsOffsetPairByIndex(i);
     if l_RowData.EqualCells(aCellIterator, f_CurrentCellsTypeList) then
     begin
      Result := l_RowData;
      Break;
     end; // if l_RowData.EqualCells(aCellIterator, f_CurrentCellsTypeList) then
    end; // for i := anIndex - 1 downto f_Group.rStartRow do
    if (Result = nil) then
    begin
     l_RowData := GetCellsOffsetPairByIndex(f_Group.rStartRow);
     if l_RowData.CellsType.Count = GetNumericData.CellsType.Count then
      Result := l_RowData
     else
      Result := GetNumericData;
    end; // if (Result = nil) then
   end // if (Result = nil) and (l_IndexInGroup > 0) then
 end; // if l_RowData.EqualCells(aCellIterator, f_CurrentCellsTypeList) then
//#UC END# *5113420600CD_511230F403A5_impl*
end;//TevAlignWithGroupRowSupport.FindInGroups

function TevAlignWithGroupRowSupport.CopyWithGrop(const aFrom: TevCellsOffsetsPair;
  const aTo: TevCellsOffsetsPair;
  const anInterator: IedCellsIterator): Boolean;
//#UC START# *511B5D130057_511230F403A5_var*
//#UC END# *511B5D130057_511230F403A5_var*
begin
//#UC START# *511B5D130057_511230F403A5_impl*
 Result := IsAlignGroupStated;
 if Result then
  aTo.CopyData(aFrom, nil, anInterator);
//#UC END# *511B5D130057_511230F403A5_impl*
end;//TevAlignWithGroupRowSupport.CopyWithGrop
// start class TevGroupRowList

procedure AssignItem(const aTo: _ItemType_;
  const aFrom: _ItemType_); forward;

function CompareExistingItems(const CI: CompareItemsRec): Integer; forward;

{$If not defined(l3Items_IsAtomic)}
function IsSame(const A: _ItemType_;
  const B: _ItemType_): Boolean;
//#UC START# *47B07CF403D0_511234CB03A6_var*
//#UC END# *47B07CF403D0_511234CB03A6_var*
begin
//#UC START# *47B07CF403D0_511234CB03A6_impl*
 Result := CompareMem(@A, @B, SizeOf(A));
//#UC END# *47B07CF403D0_511234CB03A6_impl*
end;//IsSame
{$IfEnd} //not l3Items_IsAtomic

procedure AssignItem(const aTo: _ItemType_;
  const aFrom: _ItemType_);
//#UC START# *47B2C42A0163_511234CB03A6_var*
//#UC END# *47B2C42A0163_511234CB03A6_var*
begin
//#UC START# *47B2C42A0163_511234CB03A6_impl*
 Assert(false);
//#UC END# *47B2C42A0163_511234CB03A6_impl*
end;//AssignItem

function CompareExistingItems(const CI: CompareItemsRec): Integer;
//#UC START# *47B99D4503A2_511234CB03A6_var*
//#UC END# *47B99D4503A2_511234CB03A6_var*
begin
//#UC START# *47B99D4503A2_511234CB03A6_impl*
 Result := -1;
 Assert(false);
//#UC END# *47B99D4503A2_511234CB03A6_impl*
end;//CompareExistingItems

type _Instance_R_ = TevGroupRowList;

{$Include w:\common\components\rtl\Garant\L3\l3RecordListPrim.imp.pas}

// start class TevAlignWithGroupRowSupport

procedure TevAlignWithGroupRowSupport.Cleanup;
//#UC START# *479731C50290_511230F403A5_var*
//#UC END# *479731C50290_511230F403A5_var*
begin
//#UC START# *479731C50290_511230F403A5_impl*
 InitGroup;
 f_CalculattedGroupHeight := -1;
 if f_GroupRowList <> nil then
  f_GroupRowList.Clear;
 l3Free(f_GroupRowList);
 f_CurrentCellsTypeList := nil;
 inherited;
//#UC END# *479731C50290_511230F403A5_impl*
end;//TevAlignWithGroupRowSupport.Cleanup

procedure TevAlignWithGroupRowSupport.InitFields;
//#UC START# *47A042E100E2_511230F403A5_var*
//#UC END# *47A042E100E2_511230F403A5_var*
begin
//#UC START# *47A042E100E2_511230F403A5_impl*
 f_CalculattedGroupHeight := -1;
 InitGroup;
 inherited;
//#UC END# *47A042E100E2_511230F403A5_impl*
end;//TevAlignWithGroupRowSupport.InitFields

end.