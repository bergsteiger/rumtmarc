unit nsDocumentContextHistory;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/nsDocumentContextHistory.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Core::Base Operations::View::BaseSearch::TnsDocumentContextHistory
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  BaseSearchInterfaces,
  nsDocumentContextHistoryPrim
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TnsDocumentContextHistory = class(TnsDocumentContextHistoryPrim)
 public
 // public methods
   class function Make: InsContextSearchHistory; reintroduce;
 end;//TnsDocumentContextHistory
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  l3Base {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

// start class TnsDocumentContextHistory

var g_TnsDocumentContextHistory : Pointer = nil;

procedure TnsDocumentContextHistoryFree;
begin
 IUnknown(g_TnsDocumentContextHistory) := nil;
end;


class function TnsDocumentContextHistory.Make: InsContextSearchHistory;
begin
 if (g_TnsDocumentContextHistory = nil) then
 begin
  l3System.AddExitProc(TnsDocumentContextHistoryFree);
  InsContextSearchHistory(g_TnsDocumentContextHistory) := inherited Make;
 end;
 Result := InsContextSearchHistory(g_TnsDocumentContextHistory);
end;

{$IfEnd} //not Admin AND not Monitorings

end.