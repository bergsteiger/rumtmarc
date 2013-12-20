unit evFramePart_Wrap;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "EVD"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/EVD/evFramePart_Wrap.pas"
// �����: 16.04.1998 10:29
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Wrapper::Class>> Shared Delphi::EVD::Standard::WevFramePart
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Tag_Wrap,
  FramePart_Const,
  k2Interfaces
  ;

type
 WevFramePart = class(Wk2Tag)
 protected
 // overridden protected methods
   function BoolToTag(Value: Boolean): Ik2Tag; override;
 end;//WevFramePart

implementation

uses
  k2Base
  ;

// start class WevFramePart

function WevFramePart.BoolToTag(Value: Boolean): Ik2Tag;
//#UC START# *484D279B0058_484D270C03AD_var*
var
 D : Ik2Tag;
//#UC END# *484D279B0058_484D270C03AD_var*
begin
//#UC START# *484D279B0058_484D270C03AD_impl*
 if Value then
 begin
  D := AtomType.MakeTag;
  try
   Result := D;
  finally
   D := nil;
  end;//try..finally
 end//Value
 else
  Result := k2NullTag;
//#UC END# *484D279B0058_484D270C03AD_impl*
end;//WevFramePart.BoolToTag

end.