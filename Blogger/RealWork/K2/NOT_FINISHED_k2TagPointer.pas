unit NOT_FINISHED_k2TagPointer;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "K2"
// ������: "w:/common/components/rtl/Garant/K2/NOT_FINISHED_k2TagPointer.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::K2::k2TagTool::Tk2TagPointer
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ���� ���� ������������ ������ ��� �������������, � �� ��� ����������. !

{$Include ..\K2\k2Define.inc}

interface

uses
  k2Interfaces,
  k2Base,
  l3Interfaces,
  l3Types,
  k2Prim,
  k2BaseStruct,
  k2PureMixIns,
  k2BaseTypes
  ;

type
 _k2TagHolder_Parent_ = Tk2ToolPrim;
 {$Include ..\K2\k2TagHolder.imp.pas}
 _k2TagBox_Parent_ = _k2TagHolder_;
 {$Include ..\K2\k2TagBox.imp.pas}
 Tk2TagPointer = class(_k2TagBox_, Ik2TagListner, Ik2TagTool)
 protected
 // realized methods
   procedure Fire(const anEvent: Tk2Event;
    const anOp: Ik2Op);
     {* ��������� � ���, ��� c ����� ���-�� ���������. }
   function ExcludeEvents: Tk2EventIDs;
     {* �������, ������� �� ���� �������. }
   function pm_GetParentTool: Ik2TagTool;
   procedure pm_SetParentTool(const aValue: Ik2TagTool);
   procedure SetTagQT(const aTag: Ik2Tag); override;
 protected
 // protected methods
   procedure ClearTagCache; virtual;
   procedure DoFire(const anEvent: Tk2Event;
    const anOp: Ik2Op); virtual;
   procedure ClearParents; virtual;
   function GetParentTool: Ik2TagTool; virtual;
   function GetExcludeEvents: Tk2EventIDs; virtual;
   function NeedEvents: Boolean; virtual;
     {* ����� �� ������������� �� ������� ����� }
   procedure TagChanged(const anOld: Ik2Tag;
    const aNew: Ik2Tag); virtual;
 public
 // public methods
   constructor Create(const aTag: Ik2Tag); reintroduce; virtual;
 end;//Tk2TagPointer

implementation

uses
  k2TagList,
  k2List,
  k2Tags,
  l3Dict,
  k2Const,
  l3Const,
  SysUtils,
  l3String,
  k2Except,
  k2Strings,
  TypInfo,
  l3Stream,
  l3Base,
  k2Facade,
  Classes
  ;

{$Include ..\K2\k2TagHolder.imp.pas}

type _Instance_R_ = Tk2TagPointer;

{$Include ..\K2\k2TagBox.imp.pas}

// start class Tk2TagPointer

procedure Tk2TagPointer.ClearTagCache;
//#UC START# *48CE74A10014_467C185C03E7_var*
//#UC END# *48CE74A10014_467C185C03E7_var*
begin
//#UC START# *48CE74A10014_467C185C03E7_impl*
 !!! Needs to be implemented !!!
//#UC END# *48CE74A10014_467C185C03E7_impl*
end;//Tk2TagPointer.ClearTagCache

procedure Tk2TagPointer.DoFire(const anEvent: Tk2Event;
  const anOp: Ik2Op);
//#UC START# *48CF73CE00B5_467C185C03E7_var*
//#UC END# *48CF73CE00B5_467C185C03E7_var*
begin
//#UC START# *48CF73CE00B5_467C185C03E7_impl*
 !!! Needs to be implemented !!!
//#UC END# *48CF73CE00B5_467C185C03E7_impl*
end;//Tk2TagPointer.DoFire

procedure Tk2TagPointer.ClearParents;
//#UC START# *48CFBCF803B3_467C185C03E7_var*
//#UC END# *48CFBCF803B3_467C185C03E7_var*
begin
//#UC START# *48CFBCF803B3_467C185C03E7_impl*
 !!! Needs to be implemented !!!
//#UC END# *48CFBCF803B3_467C185C03E7_impl*
end;//Tk2TagPointer.ClearParents

function Tk2TagPointer.GetParentTool: Ik2TagTool;
//#UC START# *48D0BC9401DB_467C185C03E7_var*
//#UC END# *48D0BC9401DB_467C185C03E7_var*
begin
//#UC START# *48D0BC9401DB_467C185C03E7_impl*
 !!! Needs to be implemented !!!
//#UC END# *48D0BC9401DB_467C185C03E7_impl*
end;//Tk2TagPointer.GetParentTool

function Tk2TagPointer.GetExcludeEvents: Tk2EventIDs;
//#UC START# *48D0F4810330_467C185C03E7_var*
//#UC END# *48D0F4810330_467C185C03E7_var*
begin
//#UC START# *48D0F4810330_467C185C03E7_impl*
 !!! Needs to be implemented !!!
//#UC END# *48D0F4810330_467C185C03E7_impl*
end;//Tk2TagPointer.GetExcludeEvents

constructor Tk2TagPointer.Create(const aTag: Ik2Tag);
//#UC START# *4A3F4707018A_467C185C03E7_var*
//#UC END# *4A3F4707018A_467C185C03E7_var*
begin
//#UC START# *4A3F4707018A_467C185C03E7_impl*
 !!! Needs to be implemented !!!
//#UC END# *4A3F4707018A_467C185C03E7_impl*
end;//Tk2TagPointer.Create

function Tk2TagPointer.NeedEvents: Boolean;
//#UC START# *4A48AFBD001D_467C185C03E7_var*
//#UC END# *4A48AFBD001D_467C185C03E7_var*
begin
//#UC START# *4A48AFBD001D_467C185C03E7_impl*
 !!! Needs to be implemented !!!
//#UC END# *4A48AFBD001D_467C185C03E7_impl*
end;//Tk2TagPointer.NeedEvents

procedure Tk2TagPointer.TagChanged(const anOld: Ik2Tag;
  const aNew: Ik2Tag);
//#UC START# *4E3A40FC010F_467C185C03E7_var*
//#UC END# *4E3A40FC010F_467C185C03E7_var*
begin
//#UC START# *4E3A40FC010F_467C185C03E7_impl*
 !!! Needs to be implemented !!!
//#UC END# *4E3A40FC010F_467C185C03E7_impl*
end;//Tk2TagPointer.TagChanged

procedure Tk2TagPointer.Fire(const anEvent: Tk2Event;
  const anOp: Ik2Op);
//#UC START# *4761446F0081_467C185C03E7_var*
//#UC END# *4761446F0081_467C185C03E7_var*
begin
//#UC START# *4761446F0081_467C185C03E7_impl*
 assert(false, 'Tk2TagPointer.Fire not implemented');
//#UC END# *4761446F0081_467C185C03E7_impl*
end;//Tk2TagPointer.Fire

function Tk2TagPointer.ExcludeEvents: Tk2EventIDs;
//#UC START# *476144C702AA_467C185C03E7_var*
//#UC END# *476144C702AA_467C185C03E7_var*
begin
//#UC START# *476144C702AA_467C185C03E7_impl*
 assert(false, 'Tk2TagPointer.ExcludeEvents not implemented');
//#UC END# *476144C702AA_467C185C03E7_impl*
end;//Tk2TagPointer.ExcludeEvents

function Tk2TagPointer.pm_GetParentTool: Ik2TagTool;
//#UC START# *476145AF00A8_467C185C03E7get_var*
//#UC END# *476145AF00A8_467C185C03E7get_var*
begin
//#UC START# *476145AF00A8_467C185C03E7get_impl*
 assert(false, 'Tk2TagPointer.pm_GetParentTool not implemented');
//#UC END# *476145AF00A8_467C185C03E7get_impl*
end;//Tk2TagPointer.pm_GetParentTool

procedure Tk2TagPointer.pm_SetParentTool(const aValue: Ik2TagTool);
//#UC START# *476145AF00A8_467C185C03E7set_var*
//#UC END# *476145AF00A8_467C185C03E7set_var*
begin
//#UC START# *476145AF00A8_467C185C03E7set_impl*
 assert(false, 'Tk2TagPointer.pm_SetParentTool not implemented');
//#UC END# *476145AF00A8_467C185C03E7set_impl*
end;//Tk2TagPointer.pm_SetParentTool

procedure Tk2TagPointer.SetTagQT(const aTag: Ik2Tag);
//#UC START# *49E75FA4010C_467C185C03E7_var*
//#UC END# *49E75FA4010C_467C185C03E7_var*
begin
//#UC START# *49E75FA4010C_467C185C03E7_impl*
 !!! Needs to be implemented !!!
//#UC END# *49E75FA4010C_467C185C03E7_impl*
end;//Tk2TagPointer.SetTagQT

end.