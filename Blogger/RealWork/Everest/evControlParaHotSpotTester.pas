unit evControlParaHotSpotTester;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/evControlParaHotSpotTester.pas"
// Начат: 12.11.2004 15:46
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::HotSpots::TevControlParaHotSpotTester
//
// Парень, который определяет зону контрола (некий аналог WM_NCHITTEST)
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  evTextParaHotSpotTester,
  nevTools,
  nevGUIInterfaces
  ;

type
 TevControlParaHotSpotTester = class(TevTextParaHotSpotTester)
  {* Парень, который определяет зону контрола (некий аналог WM_NCHITTEST) }
 protected
 // overridden protected methods
   function GetSegmentClass: RevSegmentClass; override;
   function DoGetAdvancedHotSpot(const aView: InevControlView;
    const aState: TevCursorState;
    const aPt: InevBasePoint;
    const aMap: InevMap;
    out theSpot: IevHotSpot): Boolean; override;
 end;//TevControlParaHotSpotTester

implementation

uses
  evControlParaHotSpot,
  evControlSegmentHotSpot
  ;

// start class TevControlParaHotSpotTester

function TevControlParaHotSpotTester.GetSegmentClass: RevSegmentClass;
//#UC START# *4A26B035006A_4A27A8C70359_var*
//#UC END# *4A26B035006A_4A27A8C70359_var*
begin
//#UC START# *4A26B035006A_4A27A8C70359_impl*
 Result := TevControlSegmentHotSpot;
//#UC END# *4A26B035006A_4A27A8C70359_impl*
end;//TevControlParaHotSpotTester.GetSegmentClass

function TevControlParaHotSpotTester.DoGetAdvancedHotSpot(const aView: InevControlView;
  const aState: TevCursorState;
  const aPt: InevBasePoint;
  const aMap: InevMap;
  out theSpot: IevHotSpot): Boolean;
//#UC START# *4A26B4EB02EB_4A27A8C70359_var*
//#UC END# *4A26B4EB02EB_4A27A8C70359_var*
begin
//#UC START# *4A26B4EB02EB_4A27A8C70359_impl*
 Result := inherited DoGetAdvancedHotSpot(aView, aState, aPt, aMap, theSpot);
 if not Result then
 begin
  // - Предок ничего не вернул, и параграф существует - можно попробовать
  //   вернуть свое виденье данного вопроса.
  Result := true;
  theSpot := TevControlParaHotSpot.Make(aMap, GetRedirect^);
 end;//not Result
//#UC END# *4A26B4EB02EB_4A27A8C70359_impl*
end;//TevControlParaHotSpotTester.DoGetAdvancedHotSpot

end.