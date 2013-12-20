unit nsInpharmContextHistory;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/nsInpharmContextHistory.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Core::Base Operations::View::BaseSearch::TnsInpharmContextHistory
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
  nsInpharmContextHistoryPrim
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TnsInpharmContextHistory = class(TnsInpharmContextHistoryPrim)
 public
 // public methods
   class function Make: InsContextSearchHistory; reintroduce;
 end;//TnsInpharmContextHistory
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  l3Base {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

// start class TnsInpharmContextHistory

var g_TnsInpharmContextHistory : Pointer = nil;

procedure TnsInpharmContextHistoryFree;
begin
 IUnknown(g_TnsInpharmContextHistory) := nil;
end;


class function TnsInpharmContextHistory.Make: InsContextSearchHistory;
begin
 if (g_TnsInpharmContextHistory = nil) then
 begin
  l3System.AddExitProc(TnsInpharmContextHistoryFree);
  InsContextSearchHistory(g_TnsInpharmContextHistory) := inherited Make;
 end;
 Result := InsContextSearchHistory(g_TnsInpharmContextHistory);
end;

{$IfEnd} //not Admin AND not Monitorings

end.