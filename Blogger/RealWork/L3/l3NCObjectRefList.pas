unit l3NCObjectRefList;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "L3"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/L3/l3NCObjectRefList.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Low Level::L3::l3CoreObjects::Tl3NCObjectRefList
//
// ������������ ������ ������ �� �������.
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\L3\l3Define.inc}

interface

uses
  l3ObjectRefList1
  ;

type
 Tl3NCObjectRefList = class(Tl3ObjectRefList1)
  {* ������������ ������ ������ �� �������. }
 protected
 // overridden protected methods
   {$If not defined(DesignTimeLibrary)}
   class function IsCacheable: Boolean; override;
     {* ������� ������, ������������ ����� �� ������� ������� ������ �������� � ��� ���������� �������������. }
   {$IfEnd} //not DesignTimeLibrary
 end;//Tl3NCObjectRefList

implementation

// start class Tl3NCObjectRefList

{$If not defined(DesignTimeLibrary)}
class function Tl3NCObjectRefList.IsCacheable: Boolean;
//#UC START# *47A6FEE600FC_4773DB08020B_var*
//#UC END# *47A6FEE600FC_4773DB08020B_var*
begin
//#UC START# *47A6FEE600FC_4773DB08020B_impl*
 Result := false;
//#UC END# *47A6FEE600FC_4773DB08020B_impl*
end;//Tl3NCObjectRefList.IsCacheable
{$IfEnd} //not DesignTimeLibrary

end.