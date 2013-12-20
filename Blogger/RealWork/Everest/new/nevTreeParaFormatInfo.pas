unit nevTreeParaFormatInfo;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/new/nevTreeParaFormatInfo.pas"
// Начат: 14.09.2011 14:39
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::Rendering::TnevTreeParaFormatInfo
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\common\components\gui\Garant\Everest\evDefine.inc}

interface

uses
  nevLeafRenderInfo,
  nevBase
  ;

type
 TnevTreeParaFormatInfo = class(TnevLeafRenderInfo)
 protected
 // overridden protected methods
   procedure DoRecalc(const aView: InevViewMetrics); override;
 end;//TnevTreeParaFormatInfo

implementation

uses
  evTreePara,
  k2Tags
  ;

// start class TnevTreeParaFormatInfo

procedure TnevTreeParaFormatInfo.DoRecalc(const aView: InevViewMetrics);
//#UC START# *4E7094780214_4E708440023A_var*
var
 l_LimitWidth : Integer;
//#UC END# *4E7094780214_4E708440023A_var*
begin
//#UC START# *4E7094780214_4E708440023A_impl*
 l_LimitWidth := rLimitWidth;
 Dec(l_LimitWidth, Obj.IntA[k2_tiLeftIndent]);
 Obj.IntA[k2_tiHeight] := (Obj.AsObject As TevTreePara).DoFormat(aView.InfoCanvas, aView.InfoCanvas, l_LimitWidth);
//#UC END# *4E7094780214_4E708440023A_impl*
end;//TnevTreeParaFormatInfo.DoRecalc

end.