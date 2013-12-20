unit NOT_FINISHED_TB97Tlbr;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "tb97"
// ������: "w:/common/components/rtl/external/tb97/NOT_FINISHED_TB97Tlbr.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi::tb97::Toolbar::TB97Tlbr
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ���� ���� ������������ ������ ��� �������������, � �� ��� ����������. !

interface

uses
  Types,
  TB97,
  tb97GraphicControl
  ;

type
 TCustomToolbar97 = class(TCustomToolWindow97)
 private
 // private fields
   f_Bounds : TRect;
   f_ResizeLockedCount : Integer;
    {* ���� ��� �������� ResizeLockedCount}
 protected
 // overridden protected methods
   procedure SetBounds(ALeft: Integer;
     ATop: Integer;
     AWidth: Integer;
     AHeight: Integer); override;
 protected
 // protected methods
   procedure ExecuteHandler(Sender: TObject); virtual;
   procedure ExecuteDefered; virtual;
     {* ��������� ������ ExecuteDefered }
   function IsGToolbarSizeNeeded: Boolean; virtual;
   procedure LockResize;
     {* ��������� ������ LockResize }
   procedure UnlockResize;
     {* ��������� ������ UnlockResize }
   procedure AdjustSizeForPanels; virtual;
     {* ��������� ������ AdjustSizeForPanels }
 protected
 // protected properties
   property ResizeLockedCount: Integer
     read f_ResizeLockedCount;
 end;//TCustomToolbar97

 TToolbar97 = class(TCustomToolbar97)
 end;//TToolbar97

 TToolbarSep97 = class(Ttb97CustomGraphicControl)
 end;//TToolbarSep97

implementation

// start class TCustomToolbar97

procedure TCustomToolbar97.ExecuteHandler(Sender: TObject);
//#UC START# *5028A00600B5_502888EA0114_var*
//#UC END# *5028A00600B5_502888EA0114_var*
begin
//#UC START# *5028A00600B5_502888EA0114_impl*
 !!! Needs to be implemented !!!
//#UC END# *5028A00600B5_502888EA0114_impl*
end;//TCustomToolbar97.ExecuteHandler

procedure TCustomToolbar97.ExecuteDefered;
//#UC START# *5028A09900D5_502888EA0114_var*
//#UC END# *5028A09900D5_502888EA0114_var*
begin
//#UC START# *5028A09900D5_502888EA0114_impl*
 !!! Needs to be implemented !!!
//#UC END# *5028A09900D5_502888EA0114_impl*
end;//TCustomToolbar97.ExecuteDefered

function TCustomToolbar97.IsGToolbarSizeNeeded: Boolean;
//#UC START# *503DE79F02BA_502888EA0114_var*
//#UC END# *503DE79F02BA_502888EA0114_var*
begin
//#UC START# *503DE79F02BA_502888EA0114_impl*
 !!! Needs to be implemented !!!
//#UC END# *503DE79F02BA_502888EA0114_impl*
end;//TCustomToolbar97.IsGToolbarSizeNeeded

procedure TCustomToolbar97.LockResize;
//#UC START# *504F06E0002A_502888EA0114_var*
//#UC END# *504F06E0002A_502888EA0114_var*
begin
//#UC START# *504F06E0002A_502888EA0114_impl*
 !!! Needs to be implemented !!!
//#UC END# *504F06E0002A_502888EA0114_impl*
end;//TCustomToolbar97.LockResize

procedure TCustomToolbar97.UnlockResize;
//#UC START# *504F06EB033F_502888EA0114_var*
//#UC END# *504F06EB033F_502888EA0114_var*
begin
//#UC START# *504F06EB033F_502888EA0114_impl*
 !!! Needs to be implemented !!!
//#UC END# *504F06EB033F_502888EA0114_impl*
end;//TCustomToolbar97.UnlockResize

procedure TCustomToolbar97.AdjustSizeForPanels;
//#UC START# *5058B29A007C_502888EA0114_var*
//#UC END# *5058B29A007C_502888EA0114_var*
begin
//#UC START# *5058B29A007C_502888EA0114_impl*
 !!! Needs to be implemented !!!
//#UC END# *5058B29A007C_502888EA0114_impl*
end;//TCustomToolbar97.AdjustSizeForPanels

procedure TCustomToolbar97.SetBounds(ALeft: Integer;
  ATop: Integer;
  AWidth: Integer;
  AHeight: Integer);
//#UC START# *4F2A599E0283_502888EA0114_var*
//#UC END# *4F2A599E0283_502888EA0114_var*
begin
//#UC START# *4F2A599E0283_502888EA0114_impl*
 !!! Needs to be implemented !!!
//#UC END# *4F2A599E0283_502888EA0114_impl*
end;//TCustomToolbar97.SetBounds
end.