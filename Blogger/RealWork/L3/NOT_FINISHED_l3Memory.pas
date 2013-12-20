unit NOT_FINISHED_l3Memory;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "L3"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/L3/NOT_FINISHED_l3Memory.pas"
// �����: 20.10.1998 17:24
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi Low Level::L3::l3CoreObjects::l3Memory
//
// �������, ������ � ������� ��� ������ � �������.
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ���� ���� ������������ ������ ��� �������������, � �� ��� ����������. !

{$Include ..\L3\l3Define.inc}

interface

uses
  l3BaseStream
  ;

type
 Tl3Ptr = record
  {* Smart-��������� �� ������. }
 end;//Tl3Ptr

 Tl3MemoryPool = class
 end;//Tl3MemoryPool

 Tl3SizedMemoryPool = class(Tl3MemoryPool)
 end;//Tl3SizedMemoryPool

 Tl3CustomMemoryStream = class(Tl3Stream)
 end;//Tl3CustomMemoryStream

 Tl3MemoryStream = class(Tl3CustomMemoryStream)
 end;//Tl3MemoryStream

 Tl3ConstMemoryStream = class(Tl3CustomMemoryStream)
  {* ����������� ����� � ������ (��� ����������������� ������) }
 end;//Tl3ConstMemoryStream

 Tl3HMemoryStream = class(Tl3ConstMemoryStream)
  {* ����������� ����� � ���������� ������ (��� ����������������� ������) }
 end;//Tl3HMemoryStream

 Tl3HPCharStream = class(Tl3HMemoryStream)
  {* ����������� ����� � ���������� ������ �������������� ����� (#0) }
 end;//Tl3HPCharStream

 Tl3HPWideCharStream = class(Tl3HMemoryStream)
  {* ����������� ����� � ���������� ������ �������������� ����� (#0) � ��������� Unicode }
 end;//Tl3HPWideCharStream

 Tl3StringStream = class(Tl3CustomMemoryStream)
 end;//Tl3StringStream

 Tl3IStreamAdapter = class(Tl3Stream)
 end;//Tl3IStreamAdapter

implementation

end.