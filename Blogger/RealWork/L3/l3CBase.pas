unit l3CBase;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "L3"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/L3/l3CBase.pas"
// �����: 02.02.2005 14:30
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Low Level::L3::l3CoreObjects::Tl3CBase
//
// ������� ����� �������� ���������� L3, �������������� ������� ������, ��������� IUnknown � ���
// ���������� �������������.
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\L3\l3Define.inc}

interface

uses
  l3ProtoPersistent,
  l3IID,
  l3Interfaces
  ;

type
 _l3Changing_Parent_ = Tl3ProtoPersistent;
 {$Include ..\L3\l3Changing.imp.pas}
 _l3OwnedObject_Parent_ = _l3Changing_;
 {$Include ..\L3\l3OwnedObject.imp.pas}
 _l3COMQueryInterface_Parent_ = _l3OwnedObject_;
 {$Include ..\L3\l3COMQueryInterface.imp.pas}
 Tl3CBase = {abstract} class(_l3COMQueryInterface_)
  {* ������� ����� �������� ���������� L3, �������������� ������� ������, ��������� IUnknown � ��� ���������� �������������. }
 protected
 // property methods
   function pm_GetOwner: TObject;
   procedure pm_SetOwner(aValue: TObject);
 public
 // public methods
   constructor Create(anOwner: TObject = nil); reintroduce; virtual;
     {* ����������� �������. ���������� ������, �� ��������� ������ ������ 1. }
 public
 // public properties
   property Owner: TObject
     read pm_GetOwner
     write pm_SetOwner;
     {* "��������" �������. �� ��������� ������������ ��� ���������� �������� �����������, ������� �� ��������� ��� ������. }
 end;//Tl3CBase

implementation

uses
  SysUtils,
  l3Base,
  l3InterfacesMisc
  ;

{$Include ..\L3\l3Changing.imp.pas}

{$Include ..\L3\l3OwnedObject.imp.pas}

{$Include ..\L3\l3COMQueryInterface.imp.pas}

// start class Tl3CBase

function Tl3CBase.pm_GetOwner: TObject;
//#UC START# *47914F36016D_47913EC50014get_var*
//#UC END# *47914F36016D_47913EC50014get_var*
begin
//#UC START# *47914F36016D_47913EC50014get_impl*
 Result := GetOwner;
//#UC END# *47914F36016D_47913EC50014get_impl*
end;//Tl3CBase.pm_GetOwner

procedure Tl3CBase.pm_SetOwner(aValue: TObject);
//#UC START# *47914F36016D_47913EC50014set_var*
//#UC END# *47914F36016D_47913EC50014set_var*
begin
//#UC START# *47914F36016D_47913EC50014set_impl*
 if (Owner <> aValue) then
  DoSetOwner(aValue);
//#UC END# *47914F36016D_47913EC50014set_impl*
end;//Tl3CBase.pm_SetOwner

constructor Tl3CBase.Create(anOwner: TObject = nil);
//#UC START# *47914F960008_47913EC50014_var*
//#UC END# *47914F960008_47913EC50014_var*
begin
//#UC START# *47914F960008_47913EC50014_impl*
 inherited Create;
 if (anOwner <> nil) then
  Owner := anOwner;
//#UC END# *47914F960008_47913EC50014_impl*
end;//Tl3CBase.Create

end.