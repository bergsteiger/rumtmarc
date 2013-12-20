unit evdTypes;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "EVD"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/EVD/evdTypes.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Interfaces::Category>> Shared Delphi::EVD::Types
//
// Базовые типы, используемые форматом EVD.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\EVD\evdDefine.inc}

interface

type
 TevIndentType = (
  {* Выравнивание объекта по горизонтали. }
   ev_itLeft // по левому краю.
 , ev_itRight // по правому краю.
 , ev_itCenter // по центру.
 , ev_itWidth // по ширине.
 , ev_itPreformatted // "преформатированный".
 , ev_itNone
 );//TevIndentType

 TevPageOrientation = (
  {* Ориентация страницы. }
   ev_poPortrait // книжная.
 , ev_poLandscape // альбомная.
 );//TevPageOrientation

 TevMergeStatus = (
  {* признак объединения ячеек. }
   ev_msNone
 , ev_msHead
 , ev_msContinue
 );//TevMergeStatus

 TevVerticalAligment = (
  {* Выравнивание объекта по вертикали. }
   ev_valTop
 , ev_valCenter
 , ev_valBottom
 );//TevVerticalAligment

 TevControlType = (
  {* Тип контрола. }
   ev_ctLabel // метка с курсором в виде рамки
 , ev_ctEdit // обычный редактор
 , ev_ctCombo // выпадающий список
 , ev_ctButton // кнопка
 , ev_ctSpinedit // редактор с возможностью редактирования чисел
 , ev_ctCheckEdit // редактор с CheckBox
 , ev_ctEllipsesEdit // редактор с кнопкой
 , ev_ctRadioEdit // редактор с RadioButton
 , ev_ctCalEdit // редактор с выпадающим календарём
 , ev_ctCollapsedPanel // сворачивающая панель
 , ev_ctStateButton // кнопка с изменением состояния
 , ev_ctEmailEdit // редактор для ввода E-mail адреса (с проверкой)
 , ev_ctMemoEdit // многострочное поле ввода (не используется)
 , ev_ctPictureLabel // текст примечания с картинкой
 , ev_ctTextParaLabel // метка с обычным курсором
 , ev_ctPhoneEdit
 , ev_ctUnknown // неизвестный тип контрола
 );//TevControlType

 TevReqKind = (
  {* Тип реквизита. }
   ev_rkSimple // обычный реквизит, допускающий редактировани (попадающий в модель) (ev_rkSimple).
 , ev_rkContext // контекстный атрибут, допускающий редактирование (попадающий в модель)(ev_rkContext).
 , ev_rkDescription // информационный атрибут (НЕ попадает в модель (ev_rkDescription).
 );//TevReqKind

 TevSubPlace = (
   ev_spNoWhere
 , ev_spOnlyInContents
 , ev_spInContentsAndOnSubPanel
 , ev_spOnlyOnSubPanel
 );//TevSubPlace

const
  { Hyperlink Const }
 CI_TOPIC = 65537;
  { для всех ссылок на документы }
 CI_BLOB = 65538;
  { для ссылок на двоичные объекты }
 CI_MULT = 65539;
  { для мультиссылок на документы/двоичные объекты }
 CI_REF = 65540;
  { для ссылок на внешние интернет-ресурсы }
 CI_FolderLink = 65544;
 CI_ExternalOperation = 65545;
 CI_PHARM_MULTI = 65547;
  { для мультиссылок на документы инфарма }
 CI_PIC = 65541;
  { для ссылок на внешние картинки }
 CI_SCRIPT = 65552;
  { Address Defaults }
 ev_NullAddressType = 0;
 ev_defAddressType = CI_TOPIC;

type
 TevLinkViewKind = (
   ev_lvkUnknown // Неизвестно
 , ev_lvkInternalValid // Внутри системы. Правильная
 , ev_lvkInternalInvalid // Внутри системы. На отсутствующую информацию
 , ev_lvkExternal // Наружу
 , ev_lvkInternalAbolished // Внутри системы. На утративший силу документ
 , ev_lvkInternalPreactive // Внутри системы. На не вступивший в силу документ
 , ev_lvkExternalENO // Внешнее приложение
 , ev_lvkInternalEdition // Редакция документа
 );//TevLinkViewKind

const
  { Слои меток. }
 ev_sbtNone = 0;
  { несуществующий слой меток. }
 ev_sbtSub = 1;
  { слой Sub'ов. }
 ev_sbtMarker = 2;
  { слой закладок. }
 ev_sbtBookmark = 3;
  { слой именованных закладок (зарезервированно). }
 ev_sbtMark = 4;
  { слой вспомогательных значков (зарезервированно). }
 ev_sbtPara = 10;
  { параграф (псевдослой). }
 ev_sbtDocumentPlace = 11;
  { место в документе (псевдослой) см. [TevDocumentPlace]. }
 ev_sbtHyperlink = 12;
  { ссылка (псевдослой). }
 ev_sbtBySearcher = 14;
  { условие по Searcher'у (псевдослой). }

type
 TevSubHandle = ev_sbtNone..ev_sbtBySearcher;
  {* Слои меток. }

 TevSubHandles = set of TevSubHandle;
  {* Слои меток. }

 TevDocumentPlace = (
  {* Место в документе. }
   ev_dpNone // Нигде.
 , ev_dpEnd // В конце.
 );//TevDocumentPlace

const
  { Sub Flags }
 ev_cUserCommentFlags = 2;
  { Флаги пользовательских комментариев }
 ev_cCommentsFlag = 1;
  { Флаги комментариев юристов }
 ev_cVersionCommentsFlag = 4;
  { Флаги версионных комментариев }

type
 TevHFType = (
  {* Тип колонтитула }
   evd_hftOrdinal
 , evd_hftLeft
 , evd_hftRight
 , evd_hftFirst
 );//TevHFType

const
 ev_spInContents = [ev_spOnlyInContents, ev_spInContentsAndOnSubPanel];
  {* Метка входит в оглавление }
  { Слои сегментов оформления }
 ev_slSuperposition = 0;
  { слой суперпозиции сегментов. }
 ev_slView = 1;
  { слой оформления. }
 ev_slHyperlinks = 2;
  { слой гиперссылок. }
 ev_slFoundWords = 3;
  { слой слов найденных по контексту. }
 ev_slFound = 4;
  { слой найденных слов (зарезервированно). }
 ev_slObjects = 5;
  { слой объектов, вставленных в параграф. }
 ev_slMistakes = 6;
  { слой сегментов для покраски опечаток. }
 ev_slDiff = 7;
  { Разница двух сравниваемых документов }

type
 TevNormalSegLayerHandleP = ev_slView..ev_slMistakes;

 TevNormalSegLayerHandleSet = set of TevNormalSegLayerHandleP;

const
  { Sub Const }
 POSITION_TYPE_PARA_ID = 2147483648;

type
 TevBlockViewKind = (
   ev_bvkNone
 , ev_bvkLeft
 , ev_bvkRight
 );//TevBlockViewKind

implementation

end.