unit DocumentPrintAndExportSettingRes;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Document/DocumentPrintAndExportSettingRes.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> F1 ������ � ���������� � ������� ����������::Document::View::Document::DocumentPrintAndExportSettingRes
//
// ������� ��� ��������� "������ � �������"
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  l3StringIDEx
  ;

const
  { PrintAndExportKey }
 pi_Document_PrintAndExport = '������ � ����������/������ � �������';
  { ������������� ��������� "������ � �������" }
 dv_Document_PrintAndExport = false;
  { �������� ��-��������� ��������� "������ � �������" }

var
  { ������������ ������ PrintAndExportValues }
 str_PrintAndExport_Default : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'PrintAndExport_Default'; rValue : '������������ ��� �������� � ������ ������ ������, ������������� �� ������');
  { ������������ ��� �������� � ������ ������ ������, ������������� �� ������ }
 str_PrintAndExport_Custom : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'PrintAndExport_Custom'; rValue : '������������ ��� �������� � ������ ��������� ������ ������');
  { ������������ ��� �������� � ������ ��������� ������ ������ }

const
  { ����� �������������� �������������� ����� PrintAndExportValues }
 PrintAndExportValuesMap : array [Boolean] of Pl3StringIDEx = (
  @str_PrintAndExport_Default
  , @str_PrintAndExport_Custom
 );//PrintAndExportValuesMap

var
  { ������������ ������ PrintAndExportName }
 str_PrintAndExport : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'PrintAndExport'; rValue : '������ � �������');
  { ������ � ������� }
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  l3MessageID
  ;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ������������� str_PrintAndExport_Default
 str_PrintAndExport_Default.Init;
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ������������� str_PrintAndExport_Custom
 str_PrintAndExport_Custom.Init;
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ������������� str_PrintAndExport
 str_PrintAndExport.Init;
{$IfEnd} //not Admin AND not Monitorings

end.