unit Bullet_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "EVD"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/EVD/Bullet_Const.pas"
// �����: 07.06.2008 19:47
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Atom::Class>> Shared Delphi::EVD::Standard::evdNative::Bullet
//
// ��� �������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� Bullet - "��� �������".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idBullet = 111;

function k2_typBullet: Tk2Type;

implementation

uses
  evdNative_Schema,
  k2Facade {a}
  ;
var
 g_Bullet : Tk2Type = nil;


// start class BulletAtom

function k2_typBullet: Tk2Type;
begin
 if (g_Bullet = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevdNativeSchema);
  g_Bullet := TevdNativeSchema(Tk2TypeTable.GetInstance).t_Bullet;
 end;//g_Bullet = nil
 Result := g_Bullet;
end;

end.