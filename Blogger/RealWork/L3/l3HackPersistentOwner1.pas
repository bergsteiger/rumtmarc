unit l3HackPersistentOwner1;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "L3"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/L3/l3HackPersistentOwner1.pas"
// �����: 15.12.209 14:17
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Low Level::L3::RTL Tuning::Tl3HackPersistentOwner1
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\L3\l3Define.inc}

interface

uses
  Classes,
  l3HackPersistentOwner
  ;

type
 Tl3HackPersistentOwner1 = {abstract} class(Tl3HackPersistentOwner)
 public
 // public methods
   function GetOwner: TPersistent; virtual;
     {* ������ ��������� ������� }
 end;//Tl3HackPersistentOwner1

implementation

// start class Tl3HackPersistentOwner1

function Tl3HackPersistentOwner1.GetOwner: TPersistent;
//#UC START# *4B2770DA0349_4B27703D0320_var*
//#UC END# *4B2770DA0349_4B27703D0320_var*
begin
//#UC START# *4B2770DA0349_4B27703D0320_impl*
 Result := nil;
//#UC END# *4B2770DA0349_4B27703D0320_impl*
end;//Tl3HackPersistentOwner1.GetOwner

end.