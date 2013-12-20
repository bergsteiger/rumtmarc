unit BitmapPara_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Everest/BitmapPara_Const.pas"
// �����: 09.06.2008 10:39
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::Everest::Standard::evNative::BitmapPara
//
// �������� � ������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� BitmapPara - "�������� � ������".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idBitmapPara = 97;
var k2_idBitmapPara_Object : Integer = -1;

function k2_typBitmapPara: Tk2Type;

//#UC START# *4858116B0355const_intf*
//#UC END# *4858116B0355const_intf*

implementation

uses
  evNative_Schema,
  k2Facade {a}
  ;
var
 g_BitmapPara : Tk2Type = nil;


// start class BitmapParaTag

function k2_typBitmapPara: Tk2Type;
begin
 if (g_BitmapPara = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevNativeSchema);
  g_BitmapPara := TevNativeSchema(Tk2TypeTable.GetInstance).t_BitmapPara;
 end;//g_BitmapPara = nil
 Result := g_BitmapPara;
end;

end.