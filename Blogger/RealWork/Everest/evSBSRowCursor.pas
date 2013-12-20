unit evSBSRowCursor;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// ������: "w:/common/components/gui/Garant/Everest/evSBSRowCursor.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::ParaList Cursors::TevSBSRowCursor
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  evTableRowCursor,
  evColumnBorderMarker
  ;

type
 TevSBSRowCursor = class(TevTableRowCursor)
 protected
 // overridden protected methods
   function GetColumnMarkerClass: RevColumnMarkerClass; override;
 end;//TevSBSRowCursor

implementation

uses
  evSBSColumnBorderMarker
  ;

// start class TevSBSRowCursor

function TevSBSRowCursor.GetColumnMarkerClass: RevColumnMarkerClass;
//#UC START# *4ED4C5C40177_4ED4C58100B1_var*
//#UC END# *4ED4C5C40177_4ED4C58100B1_var*
begin
//#UC START# *4ED4C5C40177_4ED4C58100B1_impl*
 Result := TevSBSColumnBorderMarker;
//#UC END# *4ED4C5C40177_4ED4C58100B1_impl*
end;//TevSBSRowCursor.GetColumnMarkerClass

end.