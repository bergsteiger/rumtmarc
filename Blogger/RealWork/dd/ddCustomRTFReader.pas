unit ddCustomRTFReader;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "dd"
// ������: "w:/common/components/rtl/Garant/dd/ddCustomRTFReader.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::dd::RTFSupport::TddCustomRTFReader
//
// ������� ��������� TddRTFReader �� ��� �����, ����� ������������ � ��� ������ ����� ����� �� ���.
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

interface

uses
  Graphics,
  rtfListTable,
  ddLowLevelRTF,
  ddRTFProperties
  ;

type
 TddCustomRTFReader = {final} class(TddRTFParser)
  {* ������� ��������� TddRTFReader �� ��� �����, ����� ������������ � ��� ������ ����� ����� �� ���. }
 public
 // public methods
   function ListByID(aID: Integer): TrtfList; virtual;
   function ColorByIndex(anIndex: Integer): TColor; virtual;
   function StyleByNumber(aNumber: Integer): TddStyleEntry; virtual;
   function GetFonts(anID: Integer): TddFontEntry; virtual;
 end;//TddCustomRTFReader

implementation

// start class TddCustomRTFReader

function TddCustomRTFReader.ListByID(aID: Integer): TrtfList;
//#UC START# *51E7C1E90092_51E7BF4200C0_var*
//#UC END# *51E7C1E90092_51E7BF4200C0_var*
begin
//#UC START# *51E7C1E90092_51E7BF4200C0_impl*
 Result := nil;
//#UC END# *51E7C1E90092_51E7BF4200C0_impl*
end;//TddCustomRTFReader.ListByID

function TddCustomRTFReader.ColorByIndex(anIndex: Integer): TColor;
//#UC START# *51E7CF130368_51E7BF4200C0_var*
//#UC END# *51E7CF130368_51E7BF4200C0_var*
begin
//#UC START# *51E7CF130368_51E7BF4200C0_impl*
 Result := 0;
//#UC END# *51E7CF130368_51E7BF4200C0_impl*
end;//TddCustomRTFReader.ColorByIndex

function TddCustomRTFReader.StyleByNumber(aNumber: Integer): TddStyleEntry;
//#UC START# *51E7CF89008F_51E7BF4200C0_var*
//#UC END# *51E7CF89008F_51E7BF4200C0_var*
begin
//#UC START# *51E7CF89008F_51E7BF4200C0_impl*
 Result := nil;
//#UC END# *51E7CF89008F_51E7BF4200C0_impl*
end;//TddCustomRTFReader.StyleByNumber

function TddCustomRTFReader.GetFonts(anID: Integer): TddFontEntry;
//#UC START# *51E7CFC002AA_51E7BF4200C0_var*
//#UC END# *51E7CFC002AA_51E7BF4200C0_var*
begin
//#UC START# *51E7CFC002AA_51E7BF4200C0_impl*
 Result := nil;
//#UC END# *51E7CFC002AA_51E7BF4200C0_impl*
end;//TddCustomRTFReader.GetFonts

end.