unit evDocumentCursor;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/evDocumentCursor.pas"
// Начат: 16.12.2002 16:33
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::ParaList Cursors::TevDocumentCursor
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  nevTools,
  evParaListCursor,
  nevBase,
  l3IID
  ;

type
 TevDocumentCursor = class(TevParaListCursor, InevLinkedPoint)
 private
 // private fields
   f_Listner : Pointer;
   f_ListnerDisabled : Integer;
 protected
 // realized methods
   procedure LinkListner(const aListner: InevPointListner);
   procedure UnlinkListner(const aListner: InevPointListner);
 protected
 // overridden property methods
   function pm_GetLinkedPoint: InevLinkedPoint; override;
   function pm_GetListner: InevPointListner; override;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   function DoMovePrim(const aView: InevView;
    aCode: Integer;
    const anOp: InevOp;
    aCount: Integer): TnevMoveResult; override;
   {$If defined(evNeedMarkers)}
   procedure DoGetMarkers(const aView: InevView;
    const aList: IevMarkersList); override;
   {$IfEnd} //evNeedMarkers
   procedure DoDisableListner; override;
   procedure DoEnableListner; override;
   function COMQueryInterface(const IID: Tl3GUID;
    out Obj): Tl3HResult; override;
     {* Реализация запроса интерфейса }
   function CheckFirst(aChildPID: Integer): Boolean; override;
 protected
 // protected methods
   function CanInsertParaOnMove: Boolean; virtual;
 end;//TevDocumentCursor

implementation

uses
  evMarker,
  evDocumentMarkers,
  nevInterfaces,
  k2Tags,
  TextPara_Const,
  TreePara_Const,
  evCursorTools,
  evOp,
  k2Base,
  evInternalInterfaces,
  Block_Const
  ;

// start class TevDocumentCursor

function TevDocumentCursor.CanInsertParaOnMove: Boolean;
//#UC START# *4BFFD9C80181_4A4C8EC4019F_var*
//#UC END# *4BFFD9C80181_4A4C8EC4019F_var*
begin
//#UC START# *4BFFD9C80181_4A4C8EC4019F_impl*
 Result := true;
//#UC END# *4BFFD9C80181_4A4C8EC4019F_impl*
end;//TevDocumentCursor.CanInsertParaOnMove

procedure TevDocumentCursor.LinkListner(const aListner: InevPointListner);
//#UC START# *47FCCB6E018E_4A4C8EC4019F_var*
//#UC END# *47FCCB6E018E_4A4C8EC4019F_var*
begin
//#UC START# *47FCCB6E018E_4A4C8EC4019F_impl*
 Assert((f_Listner = nil) OR (f_Listner = Pointer(aListner)));
 f_Listner := Pointer(aListner);
//#UC END# *47FCCB6E018E_4A4C8EC4019F_impl*
end;//TevDocumentCursor.LinkListner

procedure TevDocumentCursor.UnlinkListner(const aListner: InevPointListner);
//#UC START# *47FCCB7902AA_4A4C8EC4019F_var*
//#UC END# *47FCCB7902AA_4A4C8EC4019F_var*
begin
//#UC START# *47FCCB7902AA_4A4C8EC4019F_impl*
 Assert((f_Listner = nil) OR (f_Listner = Pointer(aListner)));
 f_Listner := nil;
//#UC END# *47FCCB7902AA_4A4C8EC4019F_impl*
end;//TevDocumentCursor.UnlinkListner

procedure TevDocumentCursor.Cleanup;
//#UC START# *479731C50290_4A4C8EC4019F_var*
//#UC END# *479731C50290_4A4C8EC4019F_var*
begin
//#UC START# *479731C50290_4A4C8EC4019F_impl*
 f_Listner := nil;
 inherited;
//#UC END# *479731C50290_4A4C8EC4019F_impl*
end;//TevDocumentCursor.Cleanup

function TevDocumentCursor.pm_GetLinkedPoint: InevLinkedPoint;
//#UC START# *49E2F6CE0055_4A4C8EC4019Fget_var*
//#UC END# *49E2F6CE0055_4A4C8EC4019Fget_var*
begin
//#UC START# *49E2F6CE0055_4A4C8EC4019Fget_impl*
 Result := Self;
//#UC END# *49E2F6CE0055_4A4C8EC4019Fget_impl*
end;//TevDocumentCursor.pm_GetLinkedPoint

function TevDocumentCursor.pm_GetListner: InevPointListner;
//#UC START# *49E3136001F0_4A4C8EC4019Fget_var*
//#UC END# *49E3136001F0_4A4C8EC4019Fget_var*
begin
//#UC START# *49E3136001F0_4A4C8EC4019Fget_impl*
 if (f_Listner = nil) then
  Result := inherited pm_GetListner
 else
 if (f_ListnerDisabled > 0) then
  Result := nil
 else 
  Result := InevPointListner(f_Listner);
//#UC END# *49E3136001F0_4A4C8EC4019Fget_impl*
end;//TevDocumentCursor.pm_GetListner

function TevDocumentCursor.DoMovePrim(const aView: InevView;
  aCode: Integer;
  const anOp: InevOp;
  aCount: Integer): TnevMoveResult;
//#UC START# *49E31657038E_4A4C8EC4019F_var*
var
 l_Flags     : TevInsertParaFlags;
{$IfDef Nemesis}
 l_Container : InevDocumentContainer;
 l_Ed        : IevF1LikeEditor;
{$EndIf Nemesis}
//#UC END# *49E31657038E_4A4C8EC4019F_var*
begin
//#UC START# *49E31657038E_4A4C8EC4019F_impl*
 l_Flags := []; 
 Result := inherited DoMovePrim(aView, aCode, anOp, aCount);
 if (Result <> ev_dcDoneOk) AND CanInsertParaOnMove then
 begin
  {$IfDef Nemesis}
  l_Container := ParaX.DocumentContainer;
  if (l_Container <> nil) then
  begin
   if (l_Container.TextSource <> nil) then
    if l_Container.TextSource.CastAnyEditorTo(IevF1LikeEditor, l_Ed) AND
       not l_Ed.CanInsertParaOnMove then
     Exit;
  end;//l_Container <> nil
  {$EndIf Nemesis}
  Case aCode of
   ev_ocParaLeft, ev_ocParaUp,
   ev_ocParaRight, ev_ocParaDown :
   begin
    Case aCode of
     ev_ocParaLeft, ev_ocParaUp: ;
     else
      l_Flags := [ev_ipfAtEnd];
    end;{Case aCode}
    if Self.HasInner AND not Self.GetInner.Obj.InheritsFrom(
       {$IfDef evUseTreePara}
       [
       {$EndIf evUseTreePara}
       k2_idTextPara
       {$IfDef evUseTreePara}
       ,
       k2_idTreePara]
       {$EndIf evUseTreePara}
       ) then begin
     evInsertPara(anOp, Self, Tk2Type(GetRedirect.TagType).ArrayProp[k2_tiChildren].DefaultChildType.MakeTag, l_Flags);
     inherited DoMovePrim(aView, aCode, anOp, aCount);
     Result := ev_dcDoneOk;
    end;//not..k2_idTextPara..
   end;//ev_ocParaLeft, ev_ocParaUp..
  end;//Case aCode
 end;//Result <> ev_dcDoneOk
//#UC END# *49E31657038E_4A4C8EC4019F_impl*
end;//TevDocumentCursor.DoMovePrim

{$If defined(evNeedMarkers)}
procedure TevDocumentCursor.DoGetMarkers(const aView: InevView;
  const aList: IevMarkersList);
//#UC START# *4A38AA5C019F_4A4C8EC4019F_var*
//#UC END# *4A38AA5C019F_4A4C8EC4019F_var*
begin
//#UC START# *4A38AA5C019F_4A4C8EC4019F_impl*
 AddMarker(aView, aList, k2_tiLeftIndent, ev_pmsPageLeftIndent,
  str_nevmhLeftDocMargin.AsCStr);
 AddMarker(aView, aList, k2_tiWidth, ev_pmsPageSize,
  str_nevmhPaperSize.AsCStr);
 AddMarker(aView, aList, k2_tiRightIndent, ev_pmsPageRightIndent,
  str_nevmhRightDocMargin.AsCStr,
  TevDocumentRightMarginMarker);
//#UC END# *4A38AA5C019F_4A4C8EC4019F_impl*
end;//TevDocumentCursor.DoGetMarkers
{$IfEnd} //evNeedMarkers

procedure TevDocumentCursor.DoDisableListner;
//#UC START# *4A4C86B202B2_4A4C8EC4019F_var*
//#UC END# *4A4C86B202B2_4A4C8EC4019F_var*
begin
//#UC START# *4A4C86B202B2_4A4C8EC4019F_impl*
 Inc(f_ListnerDisabled);
//#UC END# *4A4C86B202B2_4A4C8EC4019F_impl*
end;//TevDocumentCursor.DoDisableListner

procedure TevDocumentCursor.DoEnableListner;
//#UC START# *4A4C86C103BF_4A4C8EC4019F_var*
//#UC END# *4A4C86C103BF_4A4C8EC4019F_var*
begin
//#UC START# *4A4C86C103BF_4A4C8EC4019F_impl*
 Dec(f_ListnerDisabled);
//#UC END# *4A4C86C103BF_4A4C8EC4019F_impl*
end;//TevDocumentCursor.DoEnableListner

function TevDocumentCursor.COMQueryInterface(const IID: Tl3GUID;
  out Obj): Tl3HResult;
//#UC START# *4A60B23E00C3_4A4C8EC4019F_var*
var
 l_SubList : InevSubList;
//#UC END# *4A60B23E00C3_4A4C8EC4019F_var*
begin
//#UC START# *4A60B23E00C3_4A4C8EC4019F_impl*
 if IID.EQ(IevSub) then
 begin
  l_SubList := ParaX.MainSubList;
  if (l_SubList <> nil) then
   try
    Result.SetOk;
    IevSub(Obj) := l_SubList.Sub[GetRedirect.rLong(k2_tiHandle, -1)];
    if (IevSub(Obj) = nil) then
     Result.SetNOINTERFACE;
   finally
    l_SubList := nil;
   end//try..finally
  else
   Result.SetNOINTERFACE;
 end//IID.EQ(IevSub)
 else
  Result := inherited COMQueryInterface(IID, Obj);
//#UC END# *4A60B23E00C3_4A4C8EC4019F_impl*
end;//TevDocumentCursor.COMQueryInterface

function TevDocumentCursor.CheckFirst(aChildPID: Integer): Boolean;
//#UC START# *4FFC353A03C4_4A4C8EC4019F_var*
//#UC END# *4FFC353A03C4_4A4C8EC4019F_var*
begin
//#UC START# *4FFC353A03C4_4A4C8EC4019F_impl*
 Result := (aChildPID = 0) and HasInner and GetInner.InheritsFrom(k2_idBlock);
//#UC END# *4FFC353A03C4_4A4C8EC4019F_impl*
end;//TevDocumentCursor.CheckFirst

end.