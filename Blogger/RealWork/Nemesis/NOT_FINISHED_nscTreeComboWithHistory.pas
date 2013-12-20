unit NOT_FINISHED_nscTreeComboWithHistory;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Nemesis"
// Модуль: "w:/common/components/gui/Garant/Nemesis/NOT_FINISHED_nscTreeComboWithHistory.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<GuiControl::Class>> Shared Delphi For F1::Nemesis::Editor::TnscTreeComboWithHistory
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

{$Include ..\Nemesis\nscDefine.inc}

interface

{$If defined(Nemesis)}
uses
  nscCustomTreeComboWithHistory
  ;
{$IfEnd} //Nemesis

{$If defined(Nemesis)}
type
 TnscTreeComboWithHistory = class(TnscCustomTreeComboWithHistory)
 public
 // overridden public methods
   function NeedAlignMarksOnSingleClick: Boolean; override;
 end;//TnscTreeComboWithHistory
{$IfEnd} //Nemesis

implementation

{$If defined(Nemesis)}
uses
  l3Drawer,
  vtF1InterfaceConst
  {$If not defined(NoVGScene)}
  ,
  vg_scene
  {$IfEnd} //not NoVGScene
  
  ;
{$IfEnd} //Nemesis

{$If defined(Nemesis)}

// start class TnscTreeComboWithHistory

function TnscTreeComboWithHistory.NeedAlignMarksOnSingleClick: Boolean;
//#UC START# *4D6D427D023A_4B97EE390310_var*
//#UC END# *4D6D427D023A_4B97EE390310_var*
begin
//#UC START# *4D6D427D023A_4B97EE390310_impl*
 !!! Needs to be implemented !!!
//#UC END# *4D6D427D023A_4B97EE390310_impl*
end;//TnscTreeComboWithHistory.NeedAlignMarksOnSingleClick

{$IfEnd} //Nemesis

end.