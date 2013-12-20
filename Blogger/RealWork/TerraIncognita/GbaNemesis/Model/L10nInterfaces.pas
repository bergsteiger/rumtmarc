unit L10nInterfaces;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Model"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/Model/L10nInterfaces.pas"
// �����: 10.02.2009 17:47
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Interfaces::Category>> F1 ������� ����������� ���������� �������::LegalDomain::Model::L10nInterfaces
//
// ���������� ��� �����������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

uses
  l3Interfaces,
  afwInterfaces
  ;

type
 InsStringValueMap = afwInterfaces.IafwStringValueMap;

 InsSpetialStringValueMap = interface(InsStringValueMap)
  {* ���� "<�����> %"-"��������� �����" �� ��������� ���� ��������� "�� ���� �����" }
   ['{808A21E0-63EB-4659-AA60-9D0CB1EF937E}']
   function Get_SpetialDisplayName: Il3CString;
   function Get_SpetialValue: Il3CString;
   function Get_MinValue: Integer;
   function Get_MaxValue: Integer;
   property SpetialDisplayName: Il3CString
     read Get_SpetialDisplayName;
   property SpetialValue: Il3CString
     read Get_SpetialValue;
   property MinValue: Integer
     read Get_MinValue;
   property MaxValue: Integer
     read Get_MaxValue;
 end;//InsSpetialStringValueMap

 InsStringsSource = afwInterfaces.IafwStringsSource;

 TnsValueMapID = afwInterfaces.TafwValueMapID;

 InsValueMap = afwInterfaces.IafwValueMap;

 InsStringValueMapFactory = afwInterfaces.IafwStringValueMapFactory;

 InsStringValueMapManager = afwInterfaces.IafwStringValueMapManager;

 InsIntegerValueMap = afwInterfaces.IafwIntegerValueMap;

 InsIntegerValueMapFactory = afwInterfaces.IafwIntegerValueMapFactory;

 InsIntegerValueMapManager = afwInterfaces.IafwIntegerValueMapManager;

implementation

end.