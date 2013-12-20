unit NOT_FINISHED_evdBufferedFilter;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "EVD"
// ������: "w:/common/components/rtl/Garant/EVD/NOT_FINISHED_evdBufferedFilter.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi::EVD::Generators::evdBufferedFilter
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ���� ���� ������������ ������ ��� �������������, � �� ��� ����������. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Interfaces,
  k2TagFilter
  ;

type
 TevdCustomBufferedFilter = class(Tk2TagFilter)
 protected
 // protected methods
   function NeedFlushBuffer(const aLeaf: Ik2Tag;
     aTagId: Integer): Boolean; virtual;
   procedure DoFlushBuffer(const aLeaf: Ik2Tag;
     aTagId: Integer;
     aNeedCloseBracket: Boolean); virtual;
   function NeedStartBuffering(aID: Integer): Boolean; virtual;
 end;//TevdCustomBufferedFilter

 TevdBufferedFilter = class(TevdCustomBufferedFilter)
 protected
 // protected methods
   procedure DoFlushBuffer(const aLeaf: Ik2Tag;
     aTagId: Integer;
     aNeedCloseBracket: Boolean); virtual;
 end;//TevdBufferedFilter

 TevdChildBufferedFilter = class(TevdBufferedFilter)
 end;//TevdChildBufferedFilter

 TevdCustomChildBufferedFilter = class(TevdBufferedFilter)
 end;//TevdCustomChildBufferedFilter

 TevdTagBufferedFilter = class(TevdBufferedFilter)
 end;//TevdTagBufferedFilter

implementation

// start class TevdCustomBufferedFilter

function TevdCustomBufferedFilter.NeedFlushBuffer(const aLeaf: Ik2Tag;
  aTagId: Integer): Boolean;
//#UC START# *4CF7BC520161_49E496650211_var*
//#UC END# *4CF7BC520161_49E496650211_var*
begin
//#UC START# *4CF7BC520161_49E496650211_impl*
 !!! Needs to be implemented !!!
//#UC END# *4CF7BC520161_49E496650211_impl*
end;//TevdCustomBufferedFilter.NeedFlushBuffer

procedure TevdCustomBufferedFilter.DoFlushBuffer(const aLeaf: Ik2Tag;
  aTagId: Integer;
  aNeedCloseBracket: Boolean);
//#UC START# *4CF7BEC40130_49E496650211_var*
//#UC END# *4CF7BEC40130_49E496650211_var*
begin
//#UC START# *4CF7BEC40130_49E496650211_impl*
 !!! Needs to be implemented !!!
//#UC END# *4CF7BEC40130_49E496650211_impl*
end;//TevdCustomBufferedFilter.DoFlushBuffer

function TevdCustomBufferedFilter.NeedStartBuffering(aID: Integer): Boolean;
//#UC START# *4C56D54B002A_49E496650211_var*
//#UC END# *4C56D54B002A_49E496650211_var*
begin
//#UC START# *4C56D54B002A_49E496650211_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C56D54B002A_49E496650211_impl*
end;//TevdCustomBufferedFilter.NeedStartBuffering
// start class TevdBufferedFilter

procedure TevdBufferedFilter.DoFlushBuffer(const aLeaf: Ik2Tag;
  aTagId: Integer;
  aNeedCloseBracket: Boolean);
//#UC START# *4D53D8BF00D5_49E4965202A1_var*
//#UC END# *4D53D8BF00D5_49E4965202A1_var*
begin
//#UC START# *4D53D8BF00D5_49E4965202A1_impl*
 !!! Needs to be implemented !!!
//#UC END# *4D53D8BF00D5_49E4965202A1_impl*
end;//TevdBufferedFilter.DoFlushBuffer
end.