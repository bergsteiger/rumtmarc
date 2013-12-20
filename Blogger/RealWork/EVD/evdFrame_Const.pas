unit evdFrame_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "EVD"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/EVD/evdFrame_Const.pas"
// �����: 07.06.2008 19:47
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::EVD::Standard::evdNative::Frame
//
// ����� ������ �������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� Frame - "����� ������ �������".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idFrame = 41;

function k2_typFrame: Tk2Type;

const
 evd_fvEmpty = 0;
  { ������ ����� } 
 evd_fvSolid = 1111;
  { ������� ����� } 
 evd_fvDown = 0001;
  { ������ ����� } 

//#UC START# *484D2BAB02BBconst_intf*
//#UC END# *484D2BAB02BBconst_intf*

implementation

uses
  evdNative_Schema,
  k2Facade {a}
  ;
var
 g_Frame : Tk2Type = nil;


// start class FrameTag

function k2_typFrame: Tk2Type;
begin
 if (g_Frame = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevdNativeSchema);
  g_Frame := TevdNativeSchema(Tk2TypeTable.GetInstance).t_Frame;
 end;//g_Frame = nil
 Result := g_Frame;
end;

end.