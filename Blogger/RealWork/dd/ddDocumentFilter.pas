unit ddDocumentFilter;

interface

uses evdBufferedFilter, k2Interfaces;

type
 TddDocumentFilter = class(TevdCustomChildBufferedFilter)
 private
 protected
  function ChildTypeForFiltering: Integer; override;
 public
 end;

implementation

uses
 Document_Const;

function TddDocumentFilter.ChildTypeForFiltering: Integer;
begin
 Result := k2_idDocument;
end;

end.
