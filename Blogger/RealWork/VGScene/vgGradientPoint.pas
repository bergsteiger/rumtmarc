unit vgGradientPoint;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "VGScene"
// ������: "w:/common/components/rtl/external/VGScene/vgGradientPoint.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::VGScene::Impl::TvgGradientPoint
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
  vgCustomGradientPoint
  ;
{$IfEnd} //not NoVGScene

{$If not defined(NoVGScene)}
type
//#UC START# *4D555E3901BFci*
//#UC END# *4D555E3901BFci*
 TvgGradientPoint = class(TvgCustomGradientPoint)
//#UC START# *4D555E3901BFpubl*
  published
    property Color;
    property Offset;
//#UC END# *4D555E3901BFpubl*
 end;//TvgGradientPoint
{$IfEnd} //not NoVGScene

implementation


//#UC START# *4D555E3901BFimpl*
//#UC END# *4D555E3901BFimpl*
end.