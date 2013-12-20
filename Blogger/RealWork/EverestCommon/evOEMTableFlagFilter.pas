unit evOEMTableFlagFilter;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "EverestCommon"
// �����: ������ �.�.
// ������: "w:/common/components/gui/Garant/EverestCommon/evOEMTableFlagFilter.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::EverestCommon::Generators::TevOEMTableFlagFilter
//
// ������ ����������� ����� �������� � ������������� ��������.
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\EverestCommon\evDefine.inc}

interface

uses
  k2TagFilter,
  k2Types
  ;

type
 TevOEMTableFlagFilter = class(Tk2TagFilter)
  {* ������ ����������� ����� �������� � ������������� ��������. }
 private
 // private fields
   f_NeedChange : Boolean;
    {* ������� ����� �� ������ ����.}
 protected
 // overridden protected methods
   procedure CloseStructure(NeedUndo: Boolean); override;
     {* ���������� �� ������������� "������". ��� ���������� � ��������. }
   procedure DoStartChild(TypeID: Integer); override;
   procedure DoAddAtomEx(AtomIndex: Integer;
    const Value: Tk2Variant); override;
 end;//TevOEMTableFlagFilter

implementation

uses
  Table_Const,
  k2Tags
  ;

// start class TevOEMTableFlagFilter

procedure TevOEMTableFlagFilter.CloseStructure(NeedUndo: Boolean);
//#UC START# *4836D4C20059_4C3FED3103B2_var*
//#UC END# *4836D4C20059_4C3FED3103B2_var*
begin
//#UC START# *4836D4C20059_4C3FED3103B2_impl*
 if CurrentType.InheritsFrom(k2_idTable) then
 begin
  if f_NeedChange and (Generator <> nil) then
   Generator.AddBoolAtom(k2_tiOldNSRC, True);
 end; // if CurrentType.InheritsFrom(k2_idTableCell) then
 inherited;
//#UC END# *4836D4C20059_4C3FED3103B2_impl*
end;//TevOEMTableFlagFilter.CloseStructure

procedure TevOEMTableFlagFilter.DoStartChild(TypeID: Integer);
//#UC START# *4A2D1217037A_4C3FED3103B2_var*
//#UC END# *4A2D1217037A_4C3FED3103B2_var*
begin
//#UC START# *4A2D1217037A_4C3FED3103B2_impl*
 if (TypeID = k2_idTable) then
  f_NeedChange := True;
 inherited;
//#UC END# *4A2D1217037A_4C3FED3103B2_impl*
end;//TevOEMTableFlagFilter.DoStartChild

procedure TevOEMTableFlagFilter.DoAddAtomEx(AtomIndex: Integer;
  const Value: Tk2Variant);
//#UC START# *4A2D1634025B_4C3FED3103B2_var*
//#UC END# *4A2D1634025B_4C3FED3103B2_var*
begin
//#UC START# *4A2D1634025B_4C3FED3103B2_impl*
 if CurrentType.InheritsFrom(k2_idTable) and (AtomIndex = k2_tiOldNSRC) then
  if VariantAsInteger(AtomIndex, Value) = Ord(True) then
   f_NeedChange := False;
 inherited;
//#UC END# *4A2D1634025B_4C3FED3103B2_impl*
end;//TevOEMTableFlagFilter.DoAddAtomEx

end.