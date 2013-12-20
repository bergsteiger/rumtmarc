unit DictionInterfaces;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Diction"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/Diction/DictionInterfaces.pas"
// Начат: 14.11.2008 13:50
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ControllerInterfaces::Category>> F1 Встроенные продукты::Diction::Diction::DictionInterfaces
//
// Интерфейсы для работы с толковым словарём
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
  bsTypes,
  DocumentAndListInterfaces,
  CommonDictionInterfaces
  {$If not defined(NoVCM)}
  ,
  vcmControllers
  {$IfEnd} //not NoVCM
  ,
  QueryCardInterfaces,
  DictionInterfacesPrim,
  vcmInterfaces {a}
  ;

type
 IdsDiction = interface(IdsCommonDiction)
  {* Список толкований }
   ['{D97C5B61-097A-4C19-95EF-1C5820AD89EB}']
   function pm_GetLanguage: TbsLanguage;
   procedure pm_SetLanguage(aValue: TbsLanguage);
   property Language: TbsLanguage
     read pm_GetLanguage
     write pm_SetLanguage;
 end;//IdsDiction

 IbsDictionListener = interface(IbsCommonDictionListener)
  {* Слушатель событий бизнес объекта формы список толкований }
   ['{A9A4196C-CD68-47BA-8DED-97CC7084AB53}']
   procedure UpdateLanguage(aLanguage: TbsLanguage);
     {* обновить язык списка толкований }
 end;//IbsDictionListener

 IsdsDiction = interface(IsdsCommonDiction)
  {* Толковый словарь }
   ['{5F50593A-39D2-4EC7-9410-0A4FEE1DB991}']
   function pm_GetTranslationForms: Integer;
   function pm_GetDefaultLanguage: TbsLanguage;
   function pm_GetDsTranslate(aLanguageId: Integer): IdsDictionDocument;
   procedure OpenLiteratureList;
     {* открыть список литературы для толкового словаря }
   function IsShowLiteratureList: Boolean;
   property TranslationForms: Integer
     read pm_GetTranslationForms;
     {* количество форм с переводом (по количеству возможных языков) }
   property DefaultLanguage: TbsLanguage
     read pm_GetDefaultLanguage;
     {* язык по умолчанию, используется для установки фиктивной закладки толкового словаря }
   property dsTranslate[aLanguageId: Integer]: IdsDictionDocument
     read pm_GetDsTranslate;
     {* получить бизнес объект для указанного языка }
 end;//IsdsDiction

 IdDiction = interface(IdCommonDiction)
  {* Данные толкового словаря }
   ['{9BE60C81-85BB-4DBB-AC9A-CA023E09BA3C}']
   function pm_GetLanguages: TbsLanguages;
   procedure pm_SetLanguages(aValue: TbsLanguages);
   function pm_GetRefTranslationCount: Integer;
   function pm_GetIsShowLiteratureList: Boolean;
   procedure pm_SetIsShowLiteratureList(aValue: Boolean);
   function pm_GetRefTranslation(aIndex: Integer): IvcmFormDataSourceRef;
   property Languages: TbsLanguages
     read pm_GetLanguages
     write pm_SetLanguages;
   property refTranslationCount: Integer
     read pm_GetRefTranslationCount;
   property IsShowLiteratureList: Boolean
     read pm_GetIsShowLiteratureList
     write pm_SetIsShowLiteratureList;
   property refTranslation[aIndex: Integer]: IvcmFormDataSourceRef
     read pm_GetRefTranslation;
 end;//IdDiction

 IdeDiction = interface(IdeCommonDiction)
  {* Данные для сборки Толковый словарь }
   ['{A16C999F-97F3-416A-A277-572CDB3E8896}']
   function pm_GetDictLanguage: TbsLanguage;
   procedure pm_SetDictLanguage(aValue: TbsLanguage);
   property DictLanguage: TbsLanguage
     read pm_GetDictLanguage
     write pm_SetDictLanguage;
 end;//IdeDiction
{$IfEnd} //not Admin AND not Monitorings

implementation

end.