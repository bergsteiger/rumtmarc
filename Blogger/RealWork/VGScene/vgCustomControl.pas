unit vgCustomControl;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "VGScene"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/external/VGScene/vgCustomControl.pas"
// �����: 10.02.2011 19:47
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::VGScene::lulin::TvgCustomControl
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
  Controls,
  l3Interfaces
  ;
{$IfEnd} //not NoVGScene

{$If not defined(NoVGScene)}
 {$Define _UnknownIsComponent}

 {$Define l3Unknown_NoIUnknown}

type
//#UC START# *4D5416AC01D1ci*
//#UC END# *4D5416AC01D1ci*
 _l3Unknown_Parent_ = TCustomControl;
 {$Include w:\common\components\rtl\Garant\L3\l3Unknown.imp.pas}
 TvgCustomControl = class(_l3Unknown_)
 public
 // public methods
   procedure Free(var Dummy: Integer);
     {* ��� ����� Free }
//#UC START# *4D5416AC01D1publ*
 protected
   {$I l3DefineCleanup.inc}
//#UC END# *4D5416AC01D1publ*
 end;//TvgCustomControl
{$IfEnd} //not NoVGScene

implementation

{$If not defined(NoVGScene)}
uses
  SysUtils,
  l3Base,
  l3Core,
  Windows,
  Classes
  ;
{$IfEnd} //not NoVGScene

{$If not defined(NoVGScene)}

{$Include w:\common\components\rtl\Garant\L3\l3Unknown.imp.pas}

// start class TvgCustomControl

procedure TvgCustomControl.Free(var Dummy: Integer);
//#UC START# *4D54173D03B8_4D5416AC01D1_var*
//#UC END# *4D54173D03B8_4D5416AC01D1_var*
begin
//#UC START# *4D54173D03B8_4D5416AC01D1_impl*
 Assert(false, '����������� FreeAndNil');
//#UC END# *4D54173D03B8_4D5416AC01D1_impl*
end;//TvgCustomControl.Free

//#UC START# *4D5416AC01D1impl*
type
 _Unknown_Child_ = TvgCustomControl;
{$I l3ImplCleanup.inc}
begin
end;
//#UC END# *4D5416AC01D1impl*

{$IfEnd} //not NoVGScene

end.