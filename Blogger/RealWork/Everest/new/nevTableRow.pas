unit nevTableRow;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/new/nevTableRow.pas"
// Начат: 14.07.2006 15:25
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::ParagraphsImplementation::TnevTableRow
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\common\components\gui\Garant\Everest\evDefine.inc}

interface

uses
  nevBase,
  nevTools,
  nevParaList
  ;

type
 TnevTableRow = class(TnevParaList, InevTableRow)
 protected
 // realized methods
   function FindCell(aStart: Integer;
     aWidth: Integer;
     aRight: Boolean = False): TnevParaIndex;
     {* Пытается найти ячейку по смещению и по ширине. }
 protected
 // overridden protected methods
   procedure CheckPrev(const anOp: InevOp;
    const aPara: InevTag;
    aPID: Integer); override;
 public
 // public methods
   class function MakeRow(const aTag: InevTag): InevTableRow; reintroduce;
 end;//TnevTableRow

implementation

uses
  k2Tags,
  k2Base,
  nevFacade,
  evdTypes,
  evConst,
  l3UnitsTools,
  evTableCellUtils
  ;

// start class TnevTableRow

class function TnevTableRow.MakeRow(const aTag: InevTag): InevTableRow;
var
 l_Inst : TnevTableRow;
begin
 l_Inst := Create(aTag);
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

function TnevTableRow.FindCell(aStart: Integer;
  aWidth: Integer;
  aRight: Boolean = False): TnevParaIndex;
//#UC START# *47C7F168011D_48CE2103031C_var*
var
 l_OffsetX : Integer;
 l_UpRight : Integer;

 function SumWidth(const aTag: InevTag; anIndex: Integer): Boolean;
 var
  l_Found      : Boolean;
  l_RightBound : Integer;
 begin
  l_RightBound := l_OffsetX + aTag.IntA[k2_tiWidth];
  if aWidth = 0 then
  begin
   Result := l_RightBound < aStart;
   if Result and aRight then
    Result := (l_RightBound - aStart) < -evEpsilon;
   if (evEqualOffset(l_RightBound, aStart) or not Result) and (anIndex > 0) then
    FindCell := anIndex;
  end // if aWidth = 0 then
  else
  begin
   Result := True;
   //l_Found := ((l_OffsetX - aStart) >= 0) and ((l_UpRight - l_RightBound) >= 0);
   if aRight then
    l_Found := (evMoreOrEqualOffset(aStart, l_OffsetX) and evMoreOrEqualOffset(l_RightBound, l_UpRight)) or (evMoreOrEqualOffset(aStart, l_OffsetX) and evMoreOrEqualOffset(l_UpRight, l_RightBound))
   else
    l_Found := evMoreOrEqualOffset(l_OffsetX, aStart) and evMoreOrEqualOffset(l_UpRight, l_RightBound);
   if l_Found then
    FindCell := anIndex;
  end;
  l_OffsetX := l_RightBound;
 end;

//#UC END# *47C7F168011D_48CE2103031C_var*
begin
//#UC START# *47C7F168011D_48CE2103031C_impl*
 l_UpRight := aStart + aWidth;
 l_OffsetX := 0;
 Result := 0;
 IterateChildrenF(k2L2TIA(@SumWidth));
//#UC END# *47C7F168011D_48CE2103031C_impl*
end;//TnevTableRow.FindCell

procedure TnevTableRow.CheckPrev(const anOp: InevOp;
  const aPara: InevTag;
  aPID: Integer);
//#UC START# *4C8DE3B00073_48CE2103031C_var*
var
 l_Neighbour : InevTag;
 l_NewCell   : InevTag;
 l_Cell      : InevTableCell;
//#UC END# *4C8DE3B00073_48CE2103031C_var*
begin
//#UC START# *4C8DE3B00073_48CE2103031C_impl*
 l_Neighbour := TagInst.Child[aPID];
 if TevMergeStatus(l_Neighbour.IntA[k2_tiMergeStatus]) = ev_msHead then
 begin
  l_Neighbour.QT(InevTableCell, l_Cell);
  l_Cell := l_Cell.GetContinueCell(True, fc_Down);
  while l_Cell <> nil do
  begin
   l_NewCell := evCloneCell(anOp, aPara);
   l_Cell.Owner.InsertChild(l_Cell.PID, l_NewCell, anOp);
   l_Cell := l_Cell.GetContinueCell(True, fc_Down);
  end; // while l_Cell <> nil do
 end; // if TevMergeStatus(l_Neighbour.IntA[k2_tiMergeStatus]) = ev_msHead then
//#UC END# *4C8DE3B00073_48CE2103031C_impl*
end;//TnevTableRow.CheckPrev

end.