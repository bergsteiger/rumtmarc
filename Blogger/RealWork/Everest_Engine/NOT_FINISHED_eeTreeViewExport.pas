unit NOT_FINISHED_eeTreeViewExport;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest Engine"
// Модуль: "w:/common/components/gui/Garant/Everest_Engine/NOT_FINISHED_eeTreeViewExport.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<GuiControl::Class>> Shared Delphi For F1::Everest Engine::Tree::TeeTreeViewExport
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

{$Include ..\Everest_Engine\eeDefine.inc}

interface

uses
  l3Interfaces,
  eeInterfaces,
  vtOutlinerWithDragDrop
  ;

type
 TeeRootChangedEvent = procedure (aSender: TObject;
  const anOldRoot: IeeNode;
  const aNewRoot: IeeNode) of object;

 TeeFormatStatusInfo = procedure (aSender: TObject;
  var Info: Il3CString;
  const aCurrent: Integer;
  const aCount: Integer;
  const aSelected: Integer) of object;

 TeeTreeViewExport = class(TvtOutlinerWithDragDrop)
 protected
 // realized methods
   procedure Invalidate;
     {* Запрос на перерисовку. }
 protected
 // protected methods
   function GetSelectedCountForStatusbar: Integer; virtual;
 end;//TeeTreeViewExport

implementation

// start class TeeTreeViewExport

function TeeTreeViewExport.GetSelectedCountForStatusbar: Integer;
//#UC START# *51DBCA8C0206_499C0B7B012E_var*
//#UC END# *51DBCA8C0206_499C0B7B012E_var*
begin
//#UC START# *51DBCA8C0206_499C0B7B012E_impl*
 !!! Needs to be implemented !!!
//#UC END# *51DBCA8C0206_499C0B7B012E_impl*
end;//TeeTreeViewExport.GetSelectedCountForStatusbar

procedure TeeTreeViewExport.Invalidate;
//#UC START# *46A5AA4B003C_499C0B7B012E_var*
//#UC END# *46A5AA4B003C_499C0B7B012E_var*
begin
//#UC START# *46A5AA4B003C_499C0B7B012E_impl*
 !!! Needs to be implemented !!!
//#UC END# *46A5AA4B003C_499C0B7B012E_impl*
end;//TeeTreeViewExport.Invalidate

end.