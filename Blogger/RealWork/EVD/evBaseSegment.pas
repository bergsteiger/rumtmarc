unit evBaseSegment;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "EVD"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/EVD/evBaseSegment.pas"
// �����: 12.07.2007 19:57
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::EVD::Standard::TevBaseSegment
//
// ������� (�����, ����������, ���� etc.)
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2SmallTagObject,
  k2Interfaces,
  l3Types
  ;

type
 TevBaseSegment = class(Tk2SmallTagObject)
  {* ������� (�����, ����������, ���� etc.) }
 protected
 // overridden protected methods
   function GetEmpty: Boolean; override;
   function CompareWithInt(aValue: Integer;
    anIndex: Integer): Integer; override;
   function CompareWithTag(const aTag: Ik2Tag;
    aSortIndex: Tl3SortIndex): Integer; override;
 end;//TevBaseSegment

implementation

uses
  k2Tags
  ;

// start class TevBaseSegment

function TevBaseSegment.GetEmpty: Boolean;
//#UC START# *4A54E03B009A_484FDE440015_var*
var
 S : Long;
//#UC END# *4A54E03B009A_484FDE440015_var*
begin
//#UC START# *4A54E03B009A_484FDE440015_impl*
 Result := false;
 with Attr[k2_tiStart] do
  if IsValid then
   S := AsLong
  else
   Exit;
 with Attr[k2_tiFinish] do
  if IsValid then
   Result := S > AsLong;
//#UC END# *4A54E03B009A_484FDE440015_impl*
end;//TevBaseSegment.GetEmpty

function TevBaseSegment.CompareWithInt(aValue: Integer;
  anIndex: Integer): Integer;
//#UC START# *4A6445E402A5_484FDE440015_var*
//#UC END# *4A6445E402A5_484FDE440015_var*
begin
//#UC START# *4A6445E402A5_484FDE440015_impl*
 Result := inherited CompareWithInt(aValue, anIndex);
//#UC END# *4A6445E402A5_484FDE440015_impl*
end;//TevBaseSegment.CompareWithInt

function TevBaseSegment.CompareWithTag(const aTag: Ik2Tag;
  aSortIndex: Tl3SortIndex): Integer;
//#UC START# *4A64463F014E_484FDE440015_var*
//#UC END# *4A64463F014E_484FDE440015_var*
begin
//#UC START# *4A64463F014E_484FDE440015_impl*
 Result := inherited CompareWithTag(aTag, aSortIndex);
//#UC END# *4A64463F014E_484FDE440015_impl*
end;//TevBaseSegment.CompareWithTag

end.