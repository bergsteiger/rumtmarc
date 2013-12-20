unit NOT_FINISHED_vcmMenuManager;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "VCM"
// Модуль: "w:/common/components/gui/Garant/VCM/implementation/Components/NOT_FINISHED_vcmMenuManager.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi::VCM::Components::vcmMenuManager
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

{$Include w:\common\components\gui\Garant\VCM\vcmDefine.inc}

interface

{$If not defined(NoVCM)}
uses
  vcmBaseMenuManager
  ;

type
 TvcmCustomMenuManager = class(TvcmBaseMenuManager)
 end;//TvcmCustomMenuManager

 TvcmMenuManager = class(TvcmCustomMenuManager)
 end;//TvcmMenuManager

 TvcmPopupMenu = class
 end;//TvcmPopupMenu
{$IfEnd} //not NoVCM

implementation

{$If not defined(NoVCM)}
uses
  afwDrawing,
  vcmEntitiesDefIteratorForContextMenu
  ;

{$IfEnd} //not NoVCM
end.