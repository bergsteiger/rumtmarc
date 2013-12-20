unit nsContextHistory;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/nsContextHistory.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> F1 Core::Base Operations::View::BaseSearch::nsContextHistory
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
  BaseSearchInterfaces
  ;

function NsGetContextHistory(aKind: TnsContextHistoryKind): InsContextSearchHistory;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  nsDocumentContextHistory,
  nsInpharmContextHistory
  ;

// unit methods

function NsGetContextHistory(aKind: TnsContextHistoryKind): InsContextSearchHistory;
//#UC START# *4AD85724035A_4AD8570C01CC_var*
//#UC END# *4AD85724035A_4AD8570C01CC_var*
begin
//#UC START# *4AD85724035A_4AD8570C01CC_impl*
 case aKind of
  ns_chkDocument:
   Result := TnsDocumentCOntextHistory.Make;
  ns_chkInpharm:
   Result := TnsInpharmCOntextHistory.Make;
 else
  Result := nil;
 end;
//#UC END# *4AD85724035A_4AD8570C01CC_impl*
end;//NsGetContextHistory
{$IfEnd} //not Admin AND not Monitorings

end.