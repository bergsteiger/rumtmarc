unit stDocumentPrintAndExportFontSizeItem;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Document/stDocumentPrintAndExportFontSizeItem.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Работа с документом и списком документов::Document::View::Document::TstDocumentPrintAndExportFontSizeItem
//
// Визуализатор для настройки "Использовать для экспорта и печати следующий размер шрифта"
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
  ddAppConfigTypes,
  ddAppConfigTypesModelPart
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TstDocumentPrintAndExportFontSizeItem = class(TddComboBoxConfigItem)
  {* Визуализатор для настройки "Использовать для экспорта и печати следующий размер шрифта" }
 public
 // public methods
   constructor Create(aMasterItem: TddBaseConfigItem = nil); reintroduce;
     {* undefined }
 end;//TstDocumentPrintAndExportFontSizeItem
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  DocumentPrintAndExportFontSizeSettingRes,
  l3Base,
  ddAppConfigConst
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

// start class TstDocumentPrintAndExportFontSizeItem

constructor TstDocumentPrintAndExportFontSizeItem.Create(aMasterItem: TddBaseConfigItem = nil);
var
 l_Value : TddConfigValue;
begin
 l3FillChar(l_Value, SizeOf(l_Value));
 l_Value.Kind := dd_vkInteger;
 l_Value.AsInteger := dv_Document_PrintAndExportFontSize;
 inherited Create(pi_Document_PrintAndExportFontSize,
  str_PrintAndExportFontSize.AsStr,
  l_Value, TPrintAndExportFontSizeValuesMapImpl.Make, aMasterItem);
end;//TstDocumentPrintAndExportFontSizeItem.Create

{$IfEnd} //not Admin AND not Monitorings

end.