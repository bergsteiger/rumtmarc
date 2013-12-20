unit evTabIndentMarker;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Инишев Д.А.
// Модуль: "w:/common/components/gui/Garant/Everest/evTabIndentMarker.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::Cursors::TevTabIndentMarker
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
  nevBase,
  nevTools,
  evMarker,
  k2Interfaces
  ;

type
 _RoundMarkerValue_Parent_ = TevMarker;
 {$Include ..\Everest\RoundMarkerValue.imp.pas}
 TevTabIndentMarker = class(_RoundMarkerValue_)
 private
 // private fields
   f_FirstTabStop : InevTag;
 private
 // private methods
   function CheckDecimapSeparatorType: Boolean;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   procedure SetClientValue(aValue: Integer;
     const aContext: InevOp); override;
   procedure TagChanged(const anOld: Ik2Tag;
    const aNew: Ik2Tag); override;
   procedure DoSetTag(const aTag: Ik2Tag); override;
   function DoGetClientValue: Integer; override;
 public
 // public methods
   constructor Create(const aView: InevView;
     const aPara: InevTag;
     const aTabStopsHolder: InevTag;
     const aHint: Il3CString); reintroduce;
 end;//TevTabIndentMarker

implementation

uses
  k2Base,
  evAlignBySeparatorUtils,
  k2Tags,
  evTableCellUtils
  ;

{$Include ..\Everest\RoundMarkerValue.imp.pas}

// start class TevTabIndentMarker

function TevTabIndentMarker.CheckDecimapSeparatorType: Boolean;
//#UC START# *4E3A3E3802A5_4A390E9702B9_var*
//#UC END# *4E3A3E3802A5_4A390E9702B9_var*
begin
//#UC START# *4E3A3E3802A5_4A390E9702B9_impl*
 Result := Tl3TabStopStyle(f_FirstTabStop.IntA[k2_tiType]) = l3_tssDecimal
//#UC END# *4E3A3E3802A5_4A390E9702B9_impl*
end;//TevTabIndentMarker.CheckDecimapSeparatorType

constructor TevTabIndentMarker.Create(const aView: InevView;
  const aPara: InevTag;
  const aTabStopsHolder: InevTag;
  const aHint: Il3CString);
//#UC START# *4E3A3E650335_4A390E9702B9_var*
//#UC END# *4E3A3E650335_4A390E9702B9_var*
begin
//#UC START# *4E3A3E650335_4A390E9702B9_impl*
 f_FirstTabStop := aTabStopsHolder.Child[0];
 inherited Create(aView, aPara, k2_tiStart, ev_pmsTabIndent, aHint);
 HitType := Tk2Prop(f_FirstTabStop.TagType.Prop[k2_tiStart]);
//#UC END# *4E3A3E650335_4A390E9702B9_impl*
end;//TevTabIndentMarker.Create

procedure TevTabIndentMarker.Cleanup;
//#UC START# *479731C50290_4A390E9702B9_var*
//#UC END# *479731C50290_4A390E9702B9_var*
begin
//#UC START# *479731C50290_4A390E9702B9_impl*
 f_FirstTabStop := nil;
 inherited;
//#UC END# *479731C50290_4A390E9702B9_impl*
end;//TevTabIndentMarker.Cleanup

procedure TevTabIndentMarker.SetClientValue(aValue: Integer;
  const aContext: InevOp);
//#UC START# *4E3A3F0D0388_4A390E9702B9_var*
var
 l_Delta : Integer;
 l_Width : Integer;
 l_Offset: Integer;
//#UC END# *4E3A3F0D0388_4A390E9702B9_var*
begin
//#UC START# *4E3A3F0D0388_4A390E9702B9_impl*
 if CheckDecimapSeparatorType then
 begin
  //CheckProcessor(aContext);
  l_Width := ParaInst.OwnerTag.IntA[k2_tiWidth];
  if (aValue > 0) and (aValue < l_Width) then
  begin
   l_Offset := ClientValue;
   l_Delta := CalcDelta(aValue, ClientValue);
   Inc(l_Offset, l_Delta);
   f_FirstTabStop.IntW[k2_tiStart, aContext] := l_Offset;
   aContext.MarkModified(f_FirstTabStop);
   ParaInst.Invalidate([nev_spExtent]);
  end;//if (aValue > 0) and (aValue < l_Width) then
 end;//if CheckDecimapSeparatorType then
//#UC END# *4E3A3F0D0388_4A390E9702B9_impl*
end;//TevTabIndentMarker.SetClientValue

procedure TevTabIndentMarker.TagChanged(const anOld: Ik2Tag;
  const aNew: Ik2Tag);
//#UC START# *4E3A40FC010F_4A390E9702B9_var*
var
 l_TabStop : Ik2Tag;
//#UC END# *4E3A40FC010F_4A390E9702B9_var*
begin
//#UC START# *4E3A40FC010F_4A390E9702B9_impl*
 inherited;
 if (aNew <> nil) then
 begin
  if (HitType <> nil) then
   HitType := Tk2Prop(f_FirstTabStop.TagType.Prop[k2_tiStart]);
  if evGetDecimalTabIndentTag(aNew, l_TabStop) then
   f_FirstTabStop := l_TabStop;
 end;//aNew <> nil
//#UC END# *4E3A40FC010F_4A390E9702B9_impl*
end;//TevTabIndentMarker.TagChanged

procedure TevTabIndentMarker.DoSetTag(const aTag: Ik2Tag);
//#UC START# *4E3A4511000A_4A390E9702B9_var*
var
 l_TabStops: Ik2Tag;
//#UC END# *4E3A4511000A_4A390E9702B9_var*
begin
//#UC START# *4E3A4511000A_4A390E9702B9_impl*
 inherited DoSetTag(aTag);
 l_TabStops := aTag.Attr[k2_tiTabStops];
 f_FirstTabStop := l_TabStops.Child[0];
 HitType := Tk2Prop(f_FirstTabStop.TagType.Prop[k2_tiStart]);
//#UC END# *4E3A4511000A_4A390E9702B9_impl*
end;//TevTabIndentMarker.DoSetTag

function TevTabIndentMarker.DoGetClientValue: Integer;
//#UC START# *4E3A4C4B03A0_4A390E9702B9_var*
//#UC END# *4E3A4C4B03A0_4A390E9702B9_var*
begin
//#UC START# *4E3A4C4B03A0_4A390E9702B9_impl*
 Result := f_FirstTabStop.IntA[k2_tiStart]
//#UC END# *4E3A4C4B03A0_4A390E9702B9_impl*
end;//TevTabIndentMarker.DoGetClientValue

end.