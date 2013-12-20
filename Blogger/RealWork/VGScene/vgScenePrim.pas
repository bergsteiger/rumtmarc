unit vgScenePrim;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "VGScene"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/external/VGScene/vgScenePrim.pas"
// Начат: 18.02.2011 15:14
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::VGScene::Impl::TvgScenePrim
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\VGScene\vg_define.inc}

interface

{$If not defined(NoVGScene)}
uses
  vgCustomControl,
  OvcController,
  Messages
  ;
{$IfEnd} //not NoVGScene

{$If not defined(NoVGScene)}
type
 _afwShortcutsHandler_Parent_ = TvgCustomControl;
 {$Include w:\common\components\gui\Garant\AFW\implementation\afwShortcutsHandler.imp.pas}
 TvgScenePrim = class(_afwShortcutsHandler_)
 end;//TvgScenePrim
{$IfEnd} //not NoVGScene

implementation

{$If not defined(NoVGScene)}
uses
  OvcConst,
  Controls,
  Windows,
  Forms
  ;
{$IfEnd} //not NoVGScene

{$If not defined(NoVGScene)}

{$Include w:\common\components\gui\Garant\AFW\implementation\afwShortcutsHandler.imp.pas}


{$IfEnd} //not NoVGScene
end.