unit vgScenePrim;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "VGScene"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/external/VGScene/vgScenePrim.pas"
// �����: 18.02.2011 15:14
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::VGScene::Impl::TvgScenePrim
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\VGScene\vg_define.inc}

interface

{$If not defined(NoVGScene)}
uses
  vgCustomControl,
  OvcController,
  Messages
  ;
{$IfEnd} //not NoVGScene

{$If not defined(NoVGScene)}
type
 _afwShortcutsHandler_Parent_ = TvgCustomControl;
 {$Include w:\common\components\gui\Garant\AFW\implementation\afwShortcutsHandler.imp.pas}
 TvgScenePrim = class(_afwShortcutsHandler_)
 end;//TvgScenePrim
{$IfEnd} //not NoVGScene

implementation

{$If not defined(NoVGScene)}
uses
  OvcConst,
  Controls,
  Windows,
  Forms
  ;
{$IfEnd} //not NoVGScene

{$If not defined(NoVGScene)}

{$Include w:\common\components\gui\Garant\AFW\implementation\afwShortcutsHandler.imp.pas}


{$IfEnd} //not NoVGScene
end.