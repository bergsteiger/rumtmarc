unit nsFoundBlocksList;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/nsFoundBlocksList.pas"
// �����: 28.01.2010 18:21
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Core::Base Operations::View::ContextSearchInEVDDocument::TnsFoundBlocksList
//
// ��������� ����� ��� ����������������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  nevTools,
  l3ProtoDataContainer,
  l3Memory,
  l3Interfaces,
  l3Types,
  l3Core,
  l3Except,
  Classes
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TnsFoundBlockInfo = {$IfDef XE4}record{$Else}object{$EndIf}
 public
   rBlockID : Integer;
   rPoint : InevBasePoint;
 end;//TnsFoundBlockInfo

 _ItemType_ = TnsFoundBlockInfo;
 _l3RecordListPrim_Parent_ = Tl3ProtoDataContainer;
 {$Define l3Items_IsProto}
 {$Include w:\common\components\rtl\Garant\L3\l3RecordListPrim.imp.pas}
 TnsFoundBlocksList = class(_l3RecordListPrim_)
  {* ��������� ����� ��� ���������������� }
 end;//TnsFoundBlocksList
{$IfEnd} //not Admin AND not Monitorings

function TnsFoundBlockInfo_C(aBlockID: Integer;
    const aPoint: InevBasePoint): TnsFoundBlockInfo; overload;
function TnsFoundBlockInfo_C(aBlockID: Integer): TnsFoundBlockInfo; overload;

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  l3Base,
  l3MinMax,
  RTLConsts,
  SysUtils
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

// start class TnsFoundBlocksList

procedure AssignItem(const aTo: _ItemType_;
  const aFrom: _ItemType_); forward;

function CompareExistingItems(const CI: CompareItemsRec): Integer; forward;

{$If not defined(l3Items_IsAtomic)}
function IsSame(const A: _ItemType_;
  const B: _ItemType_): Boolean;
//#UC START# *47B07CF403D0_4B61AB64033F_var*
//#UC END# *47B07CF403D0_4B61AB64033F_var*
begin
//#UC START# *47B07CF403D0_4B61AB64033F_impl*
 Result := false;
 Assert(false);
//#UC END# *47B07CF403D0_4B61AB64033F_impl*
end;//IsSame
{$IfEnd} //not l3Items_IsAtomic

procedure AssignItem(const aTo: _ItemType_;
  const aFrom: _ItemType_);
//#UC START# *47B2C42A0163_4B61AB64033F_var*
//#UC END# *47B2C42A0163_4B61AB64033F_var*
begin
//#UC START# *47B2C42A0163_4B61AB64033F_impl*
 Assert(false);
//#UC END# *47B2C42A0163_4B61AB64033F_impl*
end;//AssignItem

function CompareExistingItems(const CI: CompareItemsRec): Integer;
//#UC START# *47B99D4503A2_4B61AB64033F_var*
//#UC END# *47B99D4503A2_4B61AB64033F_var*
begin
//#UC START# *47B99D4503A2_4B61AB64033F_impl*
 {$IfDef l3Items_HasCustomSort}
 Assert(CI.rSortIndex = l3_siNative);
 {$EndIf l3Items_HasCustomSort}
 Result := CI.rA.rBlockID - CI.rB.rBlockID;
//#UC END# *47B99D4503A2_4B61AB64033F_impl*
end;//CompareExistingItems

type _Instance_R_ = TnsFoundBlocksList;

{$Include w:\common\components\rtl\Garant\L3\l3RecordListPrim.imp.pas}


function TnsFoundBlockInfo_C(aBlockID: Integer;
        const aPoint: InevBasePoint): TnsFoundBlockInfo;
//#UC START# *4B61AC4403B2_4B61ABFB015F_var*
//#UC END# *4B61AC4403B2_4B61ABFB015F_var*
begin
 System.FillChar(Result, SizeOf(Result), 0);
//#UC START# *4B61AC4403B2_4B61ABFB015F_impl*
 Result.rBlockID := aBlockID;
 Result.rPoint := aPoint;
//#UC END# *4B61AC4403B2_4B61ABFB015F_impl*
end;//TnsFoundBlockInfo.C


function TnsFoundBlockInfo_C(aBlockID: Integer): TnsFoundBlockInfo;
//#UC START# *4B61AE6A01A4_4B61ABFB015F_var*
//#UC END# *4B61AE6A01A4_4B61ABFB015F_var*
begin
 System.FillChar(Result, SizeOf(Result), 0);
//#UC START# *4B61AE6A01A4_4B61ABFB015F_impl*
 Result := TnsFoundBlockInfo_C(aBlockID, nil);
//#UC END# *4B61AE6A01A4_4B61ABFB015F_impl*
end;//TnsFoundBlockInfo.C


{$IfEnd} //not Admin AND not Monitorings
end.