unit DocumentPrintAndExportSettingRes;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Document/DocumentPrintAndExportSettingRes.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> F1 Работа с документом и списком документов::Document::View::Document::DocumentPrintAndExportSettingRes
//
// Ресурсы для настройки "Печать и экспорт"
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  l3StringIDEx
  ;

const
  { PrintAndExportKey }
 pi_Document_PrintAndExport = 'Работа с документом/Печать и экспорт';
  { Идентификатор настройки "Печать и экспорт" }
 dv_Document_PrintAndExport = false;
  { Значение по-умолчанию настройки "Печать и экспорт" }

var
  { Локализуемые строки PrintAndExportValues }
 str_PrintAndExport_Default : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'PrintAndExport_Default'; rValue : 'Использовать для экспорта и печати размер шрифта, отображаемого на экране');
  { Использовать для экспорта и печати размер шрифта, отображаемого на экране }
 str_PrintAndExport_Custom : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'PrintAndExport_Custom'; rValue : 'Использовать для экспорта и печати следующий размер шрифта');
  { Использовать для экспорта и печати следующий размер шрифта }

const
  { Карта преобразования локализованных строк PrintAndExportValues }
 PrintAndExportValuesMap : array [Boolean] of Pl3StringIDEx = (
  @str_PrintAndExport_Default
  , @str_PrintAndExport_Custom
 );//PrintAndExportValuesMap

var
  { Локализуемые строки PrintAndExportName }
 str_PrintAndExport : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'PrintAndExport'; rValue : 'Печать и экспорт');
  { Печать и экспорт }
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  l3MessageID
  ;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_PrintAndExport_Default
 str_PrintAndExport_Default.Init;
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_PrintAndExport_Custom
 str_PrintAndExport_Custom.Init;
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_PrintAndExport
 str_PrintAndExport.Init;
{$IfEnd} //not Admin AND not Monitorings

end.