unit evdSegmentsLayer;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "EVD"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/EVD/evdSegmentsLayer.pas"
// �����: 12.01.2010 18:36
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::EVD::Core Objects::TevdSegmentsLayer
//
// ���������� ������ ���������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Layer
  ;

type
 TevdSegmentsLayer = class(Tk2Layer)
  {* ���������� ������ ��������� }
 protected
 // overridden protected methods
   function CompareWithInt(aValue: Integer;
    anIndex: Integer): Integer; override;
 end;//TevdSegmentsLayer

implementation

uses
  k2Tags,
  evdTypes
  ;

// start class TevdSegmentsLayer

function TevdSegmentsLayer.CompareWithInt(aValue: Integer;
  anIndex: Integer): Integer;
//#UC START# *4A6445E402A5_4B4C96D80211_var*
//#UC END# *4A6445E402A5_4B4C96D80211_var*
begin
//#UC START# *4A6445E402A5_4B4C96D80211_impl*
 Result := inherited CompareWithInt(aValue, anIndex);
//#UC END# *4A6445E402A5_4B4C96D80211_impl*
end;//TevdSegmentsLayer.CompareWithInt

end.