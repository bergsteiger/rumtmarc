unit ImageListBitmap_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Everest/ImageListBitmap_Const.pas"
// �����: 09.06.2008 10:39
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::Everest::Standard::evNative::ImageListBitmap
//
// �������� �� ������ ��������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� ImageListBitmap - "�������� �� ������ ��������".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idImageListBitmap = 137;

function k2_typImageListBitmap: Tk2Type;

implementation

uses
  evNative_Schema,
  k2Facade {a}
  ;
var
 g_ImageListBitmap : Tk2Type = nil;


// start class ImageListBitmapTag

function k2_typImageListBitmap: Tk2Type;
begin
 if (g_ImageListBitmap = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevNativeSchema);
  g_ImageListBitmap := TevNativeSchema(Tk2TypeTable.GetInstance).t_ImageListBitmap;
 end;//g_ImageListBitmap = nil
 Result := g_ImageListBitmap;
end;

end.