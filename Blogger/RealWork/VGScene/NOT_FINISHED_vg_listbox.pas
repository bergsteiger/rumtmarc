unit NOT_FINISHED_vg_listbox;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "VGScene"
// ������: "w:/common/components/rtl/external/VGScene/NOT_FINISHED_vg_listbox.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi::VGScene::Impl::vg_listbox
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ���� ���� ������������ ������ ��� �������������, � �� ��� ����������. !

{$Include ..\VGScene\vg_define.inc}

interface

{$If not defined(NoVGScene)}
uses
  vg_controls,
  vg_scene
  ;

type
 TvgStringComboBox = class(TvgTextControl)
 end;//TvgStringComboBox

 TvgComboBox = class(TvgControl)
 end;//TvgComboBox

 TvgListBoxItem = class(TvgTextControl)
 end;//TvgListBoxItem

 TvgListBox = class
 end;//TvgListBox
{$IfEnd} //not NoVGScene

implementation

{$If not defined(NoVGScene)}
{$IfEnd} //not NoVGScene
end.