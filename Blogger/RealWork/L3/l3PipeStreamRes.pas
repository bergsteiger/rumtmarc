unit l3PipeStreamRes;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "L3"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/L3/l3PipeStreamRes.pas"
// �����: 18.03.2010 14:15
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi Low Level::L3::l3CoreObjects::l3PipeStreamRes
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\L3\l3Define.inc}

interface

uses
  l3StringIDEx
  ;

var
  { ������������ ������ Local }
 str_l3mmReadFile : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'l3mmReadFile'; rValue : '������ �����');
  { '������ �����' }

implementation

uses
  l3MessageID
  ;


initialization
// ������������� str_l3mmReadFile
 str_l3mmReadFile.Init;

end.