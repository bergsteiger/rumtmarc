unit seModalWorkerListPrim;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/seModalWorkerListPrim.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::CodeFlowWords::TseModalWorkerListPrim
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  l3ProtoDataContainer,
  seModalWorker,
  l3Memory,
  l3Interfaces,
  l3Types,
  l3Core,
  l3Except,
  Classes
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 _ItemType_ = TseModalWorker;
 _l3RecordListPrim_Parent_ = Tl3ProtoDataContainer;
 {$Define l3Items_IsProto}
 {$Include w:\common\components\rtl\Garant\L3\l3RecordListPrim.imp.pas}
 TseModalWorkerListPrim = class(_l3RecordListPrim_)
 end;//TseModalWorkerListPrim
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  l3Base,
  l3MinMax,
  RTLConsts,
  SysUtils
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TseModalWorkerListPrim

procedure AssignItem(const aTo: _ItemType_;
  const aFrom: _ItemType_); forward;

function CompareExistingItems(const CI: CompareItemsRec): Integer; forward;

{$If not defined(l3Items_IsAtomic)}
function IsSame(const A: _ItemType_;
  const B: _ItemType_): Boolean;
//#UC START# *47B07CF403D0_4FC7562801FE_var*
//#UC END# *47B07CF403D0_4FC7562801FE_var*
begin
//#UC START# *47B07CF403D0_4FC7562801FE_impl*
 Result := false;
 Assert(false);
//#UC END# *47B07CF403D0_4FC7562801FE_impl*
end;//IsSame
{$IfEnd} //not l3Items_IsAtomic

procedure AssignItem(const aTo: _ItemType_;
  const aFrom: _ItemType_);
//#UC START# *47B2C42A0163_4FC7562801FE_var*
//#UC END# *47B2C42A0163_4FC7562801FE_var*
begin
//#UC START# *47B2C42A0163_4FC7562801FE_impl*
 Assert(false);
//#UC END# *47B2C42A0163_4FC7562801FE_impl*
end;//AssignItem

function CompareExistingItems(const CI: CompareItemsRec): Integer;
//#UC START# *47B99D4503A2_4FC7562801FE_var*
//#UC END# *47B99D4503A2_4FC7562801FE_var*
begin
//#UC START# *47B99D4503A2_4FC7562801FE_impl*
 Result := -1;
 Assert(false);
//#UC END# *47B99D4503A2_4FC7562801FE_impl*
end;//CompareExistingItems

type _Instance_R_ = TseModalWorkerListPrim;

{$Include w:\common\components\rtl\Garant\L3\l3RecordListPrim.imp.pas}


{$IfEnd} //not NoScripts
end.