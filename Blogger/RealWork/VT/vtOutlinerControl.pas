unit vtOutlinerControl;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "VT"
// ������: "w:/common/components/gui/Garant/VT/vtOutlinerControl.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<GuiControl::Class>> Shared Delphi::VT::Outliner::TvtOutlinerControl
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\VT\vtDefine.inc}

interface

uses
  vtOutliner
  ;

type
 TvtOutlinerControl = class(TvtCustomOutliner)
 protected
 // realized methods
   procedure Invalidate;
     {* ������ �� �����������. }
 end;//TvtOutlinerControl

implementation

// start class TvtOutlinerControl

procedure TvtOutlinerControl.Invalidate;
//#UC START# *46A5AA4B003C_4D46A125003A_var*
//#UC END# *46A5AA4B003C_4D46A125003A_var*
begin
//#UC START# *46A5AA4B003C_4D46A125003A_impl*
 inherited Invalidate;
//#UC END# *46A5AA4B003C_4D46A125003A_impl*
end;//TvtOutlinerControl.Invalidate

end.