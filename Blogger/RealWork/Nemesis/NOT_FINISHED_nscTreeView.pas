unit NOT_FINISHED_nscTreeView;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Nemesis"
// Модуль: "w:/common/components/gui/Garant/Nemesis/NOT_FINISHED_nscTreeView.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<GuiControl::Class>> Shared Delphi For F1::Nemesis::Tree::TnscTreeView
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
  l3Interfaces,
  eeTreeView
  ;
{$IfEnd} //Nemesis

{$If defined(Nemesis)}
type
 TnscTreeView = class(TeeTreeView)
 protected
 // protected methods
   function IsCommandPublished(Cmd: Tl3OperationCode): Boolean; virtual;
 end;//TnscTreeView
{$IfEnd} //Nemesis

implementation

{$If defined(Nemesis)}
uses
  Classes
  {$If defined(Nemesis) AND not defined(DesignTimeLibrary)}
  ,
  nsEntitiesTreeDataObject
  {$IfEnd} //Nemesis AND not DesignTimeLibrary
  ,
  nscTreeViewRes,
  OfficeLike_Tree_Controls
  ;
{$IfEnd} //Nemesis

{$If defined(Nemesis)}

// start class TnscTreeView

function TnscTreeView.IsCommandPublished(Cmd: Tl3OperationCode): Boolean;
//#UC START# *508F7F930094_499C26240034_var*
//#UC END# *508F7F930094_499C26240034_var*
begin
//#UC START# *508F7F930094_499C26240034_impl*
 !!! Needs to be implemented !!!
//#UC END# *508F7F930094_499C26240034_impl*
end;//TnscTreeView.IsCommandPublished

{$IfEnd} //Nemesis

end.