unit nsContextHistory;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/nsContextHistory.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> F1 Core::Base Operations::View::BaseSearch::nsContextHistory
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

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