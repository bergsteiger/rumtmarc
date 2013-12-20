unit RedactionSourceDocumentsAPIPrototype;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "SandBox"
// ������: "RedactionSourceDocumentsAPIPrototype.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: Interfaces::Category F1 ������� ����������� ���������� �������::LegalDomain::SandBox::RedactionSourceDocumentsAPIPrototype
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

uses
  IOUnit,
  BaseTypesUnit,
  DocumentUnit
  ;

type
 RedactionSourceDocumentInfo = record
   DocTopic : TTopic;
   DisplayName : IString;
 end;//RedactionSourceDocumentInfo

 RedactionSourceDocumentList = array of RedactionSourceDocumentInfo;
  {* ������ ����������, ���������� ��������. � ������� �������� �������� }

 RedactionInfo = record
   name : IString;
   time_machine_date : TDate;
   doc_date : TDate;
   is_comparable : Boolean;
   not_sure_intervals : INotSureIntervalList;
   actual_type : TRedactionType;
   active_intervals : IActiveIntervalList;
   id : TRedactionID;
    : RedactionSourceDocumentList;
 end;//RedactionInfo

implementation

end.