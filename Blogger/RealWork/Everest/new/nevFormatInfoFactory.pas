unit nevFormatInfoFactory;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/new/nevFormatInfoFactory.pas"
// Начат: 08.07.2011 14:57
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::Rendering::TnevFormatInfoFactory
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
  nevFormatInfo
  ;

type
 TnevFormatInfoFactory = class
 public
 // public methods
   class function CreateFormatInfo(const aChild: InevObjectPrim;
     aParent: TnevFormatInfo;
     const aMetrics: InevViewMetrics): TnevFormatInfo;
 end;//TnevFormatInfoFactory

implementation

uses
  SysUtils,
  k2Tags,
  TextPara_Const,
  CommentPara_Const,
  SBS_Const,
  SBSRow_Const,
  TableRow_Const,
  ReqRow_Const,
  SBSCell_Const,
  TableCell_Const,
  nevFacade,
  nevTableCellFormatInfo,
  evParaTools,
  l3MinMax,
  evSectionPara,
  nevListFormatInfo,
  nevRubberCellsRenderInfo,
  nevTableRowRenderInfo,
  nevTextParaRenderInfo,
  nevZoomedCellsRenderInfo,
  nevZoomedRubberCellsRenderInfo,
  nevLeafRenderInfo,
  Block_Const,
  Document_Const,
  nevDocumentPartFormatInfo,
  nevCommentFormatInfo,
  nevBitmapFormatInfo,
  nevControlFormatInfo,
  nevFormulaFormatInfo,
  Formula_Const,
  ControlPara_Const,
  BitmapPara_Const,
  nevControlsBlockFormatInfo,
  nevCloakFormatInfo,
  ControlsBlock_Const,
  Cloak_Const,
  nevSegmentFormatInfo,
  TextSegment_Const,
  nevObjectSegmentFormatInfo,
  ObjectSegment_Const,
  nevDocumentFormatInfo,
  k2Base,
  nevSBSCellFormatInfo,
  nevSBSRowFormatInfo,
  nevTableRowRenderInfoEx,
  nevReqRowFormatInfo,
  nevTreeParaFormatInfo,
  TreePara_Const,
  nevPageBreakFormatInfo,
  PageBreak_Const,
  nevNodeGroupFormatInfo,
  NodeGroup_Const
  ;

// start class TnevFormatInfoFactory

class function TnevFormatInfoFactory.CreateFormatInfo(const aChild: InevObjectPrim;
  aParent: TnevFormatInfo;
  const aMetrics: InevViewMetrics): TnevFormatInfo;
//#UC START# *4E16E29D02DF_4E16E263024F_var*
var
 l_FormatInfoRef : RnevFormatInfo;
 l_T : Tk2Type;
 l_C : TClass;
//#UC END# *4E16E29D02DF_4E16E263024F_var*
begin
//#UC START# *4E16E29D02DF_4E16E263024F_impl*
 l_FormatInfoRef := nil;
 l_T := Tk2Type(aChild.TagType);
 Assert(l_T <> nil);
 l_C := l_T.FormatInfoFactory;
 if (l_C = nil) then
 begin
  if aChild.IsList then
  begin
   if l_T.InheritsFrom(k2_idDocument) then
    l_FormatInfoRef := TnevDocumentFormatInfo
   else
   if l_T.InheritsFrom(k2_idBlock) then
   begin
    if l_T.InheritsFrom(k2_idCloak) then
     l_FormatInfoRef := TnevCloakFormatInfo
    else
    if l_T.InheritsFrom(k2_idNodeGroup) then
     l_FormatInfoRef := TnevNodeGroupFormatInfo
    else
    if l_T.InheritsFrom(k2_idControlsBlock) then
     l_FormatInfoRef := TnevControlsBlockFormatInfo
    else
    if l_T.InheritsFrom(k2_idCommentPara) then
     l_FormatInfoRef := TnevCommentFormatInfo
    else
     l_FormatInfoRef := TnevDocumentPartFormatInfo;
   end//l_T.InheritsFrom(k2_idBlock)
   else
   if l_T.InheritsFrom(k2_idReqRow) then
    l_FormatInfoRef := TnevReqRowFormatInfo
   else 
   if l_T.InheritsFrom(k2_idSBSRow) then
    l_FormatInfoRef := TnevSBSRowFormatInfo
   else
   if l_T.InheritsFrom(k2_idTableRow) then
    l_FormatInfoRef := TnevTableRowRenderInfoEx
   else
   if l_T.InheritsFrom(k2_idSBSCell) then
    l_FormatInfoRef := TnevSBSCellFormatInfo
   else
   if l_T.InheritsFrom(k2_idTableCell) then
    l_FormatInfoRef := TnevTableCellFormatInfo
   else
    l_FormatInfoRef := TnevListFormatInfo;
  end//aChild.IsList
  else
  begin
   if l_T.InheritsFrom(k2_idTextPara) then
   begin
    if l_T.InheritsFrom(k2_idFormula) then
     l_FormatInfoRef := TnevFormulaFormatInfo
    else
    if l_T.InheritsFrom(k2_idControlPara) then
     l_FormatInfoRef := TnevControlFormatInfo
    else
     l_FormatInfoRef := TnevTextParaRenderInfo;
   end//l_T.InheritsFrom(k2_idTextPara)
   else
   if l_T.InheritsFrom(k2_idObjectSegment) then
    l_FormatInfoRef := TnevObjectSegmentFormatInfo
   else
   if l_T.InheritsFrom(k2_idTextSegment) then
    l_FormatInfoRef := TnevSegmentFormatInfo
   else
   if l_T.InheritsFrom(k2_idBitmapPara) then
    l_FormatInfoRef := TnevBitmapFormatInfo
   else
   if l_T.InheritsFrom(k2_idTreePara) then
    l_FormatInfoRef := TnevTreeParaFormatInfo
   else
   if l_T.InheritsFrom(k2_idPageBreak) then
    l_FormatInfoRef := TnevPageBreakFormatInfo
   else
    l_FormatInfoRef := TnevLeafRenderInfo;
  end;//aChild.IsList
  l_T.FormatInfoFactory := l_FormatInfoRef;
 end//l_C = nil
 else
 begin
  Assert(l_C.InheritsFrom(TnevFormatInfo));
  l_FormatInfoRef := RnevFormatInfo(l_C);
 end;//l_C = nil
 Assert(l_FormatInfoRef <> nil);
 Result := l_FormatInfoRef.CreateInst(aChild, aParent, aMetrics);
//#UC END# *4E16E29D02DF_4E16E263024F_impl*
end;//TnevFormatInfoFactory.CreateFormatInfo

end.