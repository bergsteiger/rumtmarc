unit l3NCObjectRefArray;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "L3"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/L3/l3NCObjectRefArray.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Low Level::L3::l3CoreObjects::Tl3NCObjectRefArray
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\L3\l3Define.inc}

interface

uses
  l3ObjectRefArray
  ;

type
 Tl3NCObjectRefArray = class(Tl3ObjectRefArray)
 protected
 // overridden protected methods
   {$If not defined(DesignTimeLibrary)}
   class function IsCacheable: Boolean; override;
     {* ������� ������, ������������ ����� �� ������� ������� ������ �������� � ��� ���������� �������������. }
   {$IfEnd} //not DesignTimeLibrary
 end;//Tl3NCObjectRefArray

implementation

// start class Tl3NCObjectRefArray

{$If not defined(DesignTimeLibrary)}
class function Tl3NCObjectRefArray.IsCacheable: Boolean;
//#UC START# *47A6FEE600FC_4773DDBD03AB_var*
//#UC END# *47A6FEE600FC_4773DDBD03AB_var*
begin
//#UC START# *47A6FEE600FC_4773DDBD03AB_impl*
 Result := false;
//#UC END# *47A6FEE600FC_4773DDBD03AB_impl*
end;//Tl3NCObjectRefArray.IsCacheable
{$IfEnd} //not DesignTimeLibrary

end.