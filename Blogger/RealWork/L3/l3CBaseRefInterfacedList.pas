unit l3CBaseRefInterfacedList;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "L3"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/L3/l3CBaseRefInterfacedList.pas"
// �����: 27.07.2009 12:32
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Low Level::L3::Containers::Tl3CBaseRefInterfacedList
//
// ������ Tl3CBase � ������������ ��������������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\L3\l3Define.inc}

interface

uses
  l3CBase,
  l3PureMixIns,
  l3ProtoDataContainer,
  l3Types,
  l3Memory,
  l3Interfaces,
  l3Core,
  l3Except,
  Classes
  ;

type
 Il3CBaseList = interface(IUnknown)
   ['{08465E92-C901-4CD1-81C0-9927BCCA72F1}']
  // Ml3List
   function pm_GetEmpty: Boolean;
   function pm_GetFirst: Tl3CBase;
   function pm_GetLast: Tl3CBase;
   function pm_GetItems(anIndex: Integer): Tl3CBase;
   property Empty: Boolean
     read pm_GetEmpty;
   property First: Tl3CBase
     read pm_GetFirst;
     {* ������ �������. }
   property Last: Tl3CBase
     read pm_GetLast;
     {* ��������� �������. }
   property Items[anIndex: Integer]: Tl3CBase
     read pm_GetItems;
     default;
  // Ml3CountHolder
   function pm_GetCount: Integer;
   property Count: Integer
     read pm_GetCount;
     {* ����� ���������. }
 end;//Il3CBaseList

 _ItemType_ = Tl3CBase;
 _l3UncomparabeObjectRefList_Parent_ = Tl3ProtoDataContainer;
 {$Define l3Items_IsProto}
 {$Include ..\L3\l3UncomparabeObjectRefList.imp.pas}
 Tl3CBaseRefInterfacedList = class(_l3UncomparabeObjectRefList_, Il3CBaseList)
  {* ������ Tl3CBase � ������������ �������������� }
 protected
 // realized methods
   function pm_GetCount: Integer;
 protected
 // overridden protected methods
   procedure InitFields; override;
 public
 // public methods
   class function MakeI: Il3CBaseList; reintroduce;
 end;//Tl3CBaseRefInterfacedList

implementation

uses
  l3Base,
  l3MinMax,
  RTLConsts,
  SysUtils
  ;

// start class Tl3CBaseRefInterfacedList

function CompareExistingItems(const CI: CompareItemsRec): Integer; forward;

procedure AssignItem(const aTo: _ItemType_;
  const aFrom: _ItemType_);
//#UC START# *47B2C42A0163_4A6D66010286_var*
//#UC END# *47B2C42A0163_4A6D66010286_var*
begin
//#UC START# *47B2C42A0163_4A6D66010286_impl*
 Assert(false);
//#UC END# *47B2C42A0163_4A6D66010286_impl*
end;//AssignItem

function CompareExistingItems(const CI: CompareItemsRec): Integer;
//#UC START# *47B99D4503A2_4A6D66010286_var*
//#UC END# *47B99D4503A2_4A6D66010286_var*
begin
//#UC START# *47B99D4503A2_4A6D66010286_impl*
 {$IfDef l3Items_HasCustomSort}
 Assert(CI.rSortIndex = l3_siNative);
 {$EndIf l3Items_HasCustomSort}
 Result := Integer(CI.rA^) - Integer(CI.rB^);
//#UC END# *47B99D4503A2_4A6D66010286_impl*
end;//CompareExistingItems

type _Instance_R_ = Tl3CBaseRefInterfacedList;

{$Include ..\L3\l3UncomparabeObjectRefList.imp.pas}

// start class Tl3CBaseRefInterfacedList

class function Tl3CBaseRefInterfacedList.MakeI: Il3CBaseList;
var
 l_Inst : Tl3CBaseRefInterfacedList;
begin
 l_Inst := Create;
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

function Tl3CBaseRefInterfacedList.pm_GetCount: Integer;
//#UC START# *4BB08B8902F2_4A6D66010286get_var*
//#UC END# *4BB08B8902F2_4A6D66010286get_var*
begin
//#UC START# *4BB08B8902F2_4A6D66010286get_impl*
 Result := Count;
//#UC END# *4BB08B8902F2_4A6D66010286get_impl*
end;//Tl3CBaseRefInterfacedList.pm_GetCount

procedure Tl3CBaseRefInterfacedList.InitFields;
//#UC START# *47A042E100E2_4A6D66010286_var*
//#UC END# *47A042E100E2_4A6D66010286_var*
begin
//#UC START# *47A042E100E2_4A6D66010286_impl*
 inherited;
 Sorted := true;
//#UC END# *47A042E100E2_4A6D66010286_impl*
end;//Tl3CBaseRefInterfacedList.InitFields

end.