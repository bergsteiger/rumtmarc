unit l3ScreenIC;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "L3"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/L3/l3ScreenIC.pas"
// �����: 26.05.2005 16:12
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi Low Level::L3::l3Canvas::l3ScreenIC
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\L3\l3Define.inc}

interface

uses
  l3InternalInterfaces
  ;

function L3CrtIC: Il3InfoCanvas;

implementation

uses
  l3Canvas,
  l3Base
  ;

var f_CrtIC : Pointer = nil;

// unit methods

procedure FreeInfoCanvas;
//#UC START# *4799F8A402EA_4799F84900DD_var*
//#UC END# *4799F8A402EA_4799F84900DD_var*
begin
//#UC START# *4799F8A402EA_4799F84900DD_impl*
 Il3InfoCanvas(f_CrtIC) := nil;
//#UC END# *4799F8A402EA_4799F84900DD_impl*
end;//FreeInfoCanvas

function L3CrtIC: Il3InfoCanvas;
//#UC START# *4799F86A0356_4799F84900DD_var*
//#UC END# *4799F86A0356_4799F84900DD_var*
begin
//#UC START# *4799F86A0356_4799F84900DD_impl*
 if (f_CrtIC = nil) then
 begin
  Il3InfoCanvas(f_CrtIC) := Tl3Canvas.MakeForScreen;
  l3System.AddExitProc(FreeInfoCanvas);
 end;//f_CrtIC = nil
 Result := Il3InfoCanvas(f_CrtIC);
//#UC END# *4799F86A0356_4799F84900DD_impl*
end;//L3CrtIC

end.