unit evParaCollapser;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/evParaCollapser.pas"
// Начат: 13.07.2011 14:46
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::HotSpots::TevParaCollapser
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
  evDecorHotSpot
  ;

type
 TevParaCollapser = class(TevDecorHotSpot)
 protected
 // overridden protected methods
   function DoLButtonUp(const aView: InevControlView;
     const Keys: TevMouseState): Boolean; override;
   function DoLButtonDoubleClick(const aView: InevControlView;
     const Keys: TevMouseState;
     var Effect: TevMouseEffect): Boolean; override;
   function DoLButtonDown(const aView: InevControlView;
     const Keys: TevMouseState;
     var Effect: TevMouseEffect): Boolean; override;
 protected
 // protected methods
   function DoCollapse(const aView: InevControlView): Boolean;
 end;//TevParaCollapser

implementation

uses
  evParaTools,
  k2Tags,
  nevBase
  ;

// start class TevParaCollapser

function TevParaCollapser.DoCollapse(const aView: InevControlView): Boolean;
//#UC START# *4E1D87640086_4E1D776103C6_var*
var
 l_C  : Boolean;
 l_Op : InevOp;
 l_S  : Integer;
 l_P  : InevPara;
//#UC END# *4E1D87640086_4E1D776103C6_var*
begin
//#UC START# *4E1D87640086_4E1D776103C6_impl*
 Result := true;
 l_S := f_Para.IntA[k2_tiStyle];
 l_C := not aView.IsObjectCollapsed[f_Para];
 l_P := f_Para;
 l_Op := aView.Processor.StartOp;
 try
  while (l_P <> nil) AND l_P.IsValid AND
        (l_P.IntA[k2_tiStyle] = l_S) do
  begin
   aView.IsObjectCollapsed[l_P] := l_C;
   l_P := evNextOverallPara(l_P);
  end;//while (l_P <> nil)..
 finally
  l_Op := nil;
 end;//try..finally
 f_Para.Invalidate([nev_spExtent]);
//#UC END# *4E1D87640086_4E1D776103C6_impl*
end;//TevParaCollapser.DoCollapse

function TevParaCollapser.DoLButtonUp(const aView: InevControlView;
  const Keys: TevMouseState): Boolean;
//#UC START# *4E1D7BDF01C4_4E1D776103C6_var*
//#UC END# *4E1D7BDF01C4_4E1D776103C6_var*
begin
//#UC START# *4E1D7BDF01C4_4E1D776103C6_impl*
 Result := DoCollapse(aView);
 if not Result then
  Result := inherited DoLButtonUp(aView, Keys);
//#UC END# *4E1D7BDF01C4_4E1D776103C6_impl*
end;//TevParaCollapser.DoLButtonUp

function TevParaCollapser.DoLButtonDoubleClick(const aView: InevControlView;
  const Keys: TevMouseState;
  var Effect: TevMouseEffect): Boolean;
//#UC START# *4E1D7C16028B_4E1D776103C6_var*
//#UC END# *4E1D7C16028B_4E1D776103C6_var*
begin
//#UC START# *4E1D7C16028B_4E1D776103C6_impl*
 Result := true;
 Effect.rNeedAsyncLoop := false;
(* Result := DoCollapse(aView);
 if not Result then
  Result := inherited DoLButtonDoubleClick(aView, Keys, Effect);*)
//#UC END# *4E1D7C16028B_4E1D776103C6_impl*
end;//TevParaCollapser.DoLButtonDoubleClick

function TevParaCollapser.DoLButtonDown(const aView: InevControlView;
  const Keys: TevMouseState;
  var Effect: TevMouseEffect): Boolean;
//#UC START# *4E1DC2FF02BB_4E1D776103C6_var*
//#UC END# *4E1DC2FF02BB_4E1D776103C6_var*
begin
//#UC START# *4E1DC2FF02BB_4E1D776103C6_impl*
 Result := true;
 Effect.rNeedAsyncLoop := false;
//#UC END# *4E1DC2FF02BB_4E1D776103C6_impl*
end;//TevParaCollapser.DoLButtonDown

end.