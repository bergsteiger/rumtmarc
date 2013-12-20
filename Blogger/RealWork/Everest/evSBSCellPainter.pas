unit evSBSCellPainter;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Everest/evSBSCellPainter.pas"
// �����: 30.01.2006 15:22
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::ParaList Painters::TevSBSCellPainter
//
// ���������� ���������� IevPainter ��� ����� �������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  evTableCellPainter,
  nevTools
  ;

type
 TevSBSCellPainter = class(TevTableCellPainter)
  {* ���������� ���������� IevPainter ��� ����� ������� }
 protected
 // overridden property methods
   function pm_GetInvisibleFrameColor: TnevColor; override;
 protected
 // overridden protected methods
   function NeedsHackK235870994: Boolean; override;
 end;//TevSBSCellPainter

implementation

// start class TevSBSCellPainter

function TevSBSCellPainter.pm_GetInvisibleFrameColor: TnevColor;
//#UC START# *4804A83F030B_49DA43AA01B9get_var*
//#UC END# *4804A83F030B_49DA43AA01B9get_var*
begin
//#UC START# *4804A83F030B_49DA43AA01B9get_impl*
 Result := TnevColor($FFD000);
//#UC END# *4804A83F030B_49DA43AA01B9get_impl*
end;//TevSBSCellPainter.pm_GetInvisibleFrameColor

function TevSBSCellPainter.NeedsHackK235870994: Boolean;
//#UC START# *4CAF3D530327_49DA43AA01B9_var*
//#UC END# *4CAF3D530327_49DA43AA01B9_var*
begin
//#UC START# *4CAF3D530327_49DA43AA01B9_impl*
 Result := false;
//#UC END# *4CAF3D530327_49DA43AA01B9_impl*
end;//TevSBSCellPainter.NeedsHackK235870994

end.