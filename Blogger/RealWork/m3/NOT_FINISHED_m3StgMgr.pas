unit NOT_FINISHED_m3StgMgr;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "m3"
// ������: "w:/common/components/rtl/Garant/m3/NOT_FINISHED_m3StgMgr.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi::m3::m3DB::m3StgMgr
//
// ������-��������� ��� ������ � IStorage
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ���� ���� ������������ ������ ��� �������������, � �� ��� ����������. !

{$Include ..\m3\m3Define.inc}

interface

uses
  m3BasCla
  ;

type
 Tm3StorageManager = class(Tm3BaseClass)
 end;//Tm3StorageManager

 Tm3FullModeStorageManager = class(Tm3StorageManager)
 end;//Tm3FullModeStorageManager

 Tm3ReadModeStorageManager = class(Tm3StorageManager)
 end;//Tm3ReadModeStorageManager

implementation

uses
  m3SplittedFileStream
  ;

end.