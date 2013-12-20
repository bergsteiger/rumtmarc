unit NOT_FINISHED_eeTreeView;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest Engine"
// Модуль: "w:/common/components/gui/Garant/Everest_Engine/NOT_FINISHED_eeTreeView.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<GuiControl::Class>> Shared Delphi For F1::Everest Engine::Tree::TeeTreeView
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

{$Include ..\Everest_Engine\eeDefine.inc}

interface

uses
  l3TreeInterfaces,
  eeCustomTreeView
  ;

type
 TeeCurrentChanged = procedure (aSender: TObject;
  aNewCurrent: Integer;
  aOldCurrent: Integer);

 TeeNewCharPressed = procedure (aChar: AnsiChar) of object;

 TeeMakeTreeSource = procedure (out theTree: Il3SimpleTree) of object;

 TeeTreeView = class(TeeCustomTreeView)
 end;//TeeTreeView

implementation

end.