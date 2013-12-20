////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Модуль: "w:/common/components/rtl/Garant/EVD/Types/Types.h"
// генератор заголовочных файлов C++ (.h)
// Generated from UML model, root element: <<Interfaces::Category>> Shared Delphi::EVD::Types
//
// Базовые типы, используемые форматом EVD.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#ifndef __SHARED_DELPHI_EVD_TYPES_H__
#define __SHARED_DELPHI_EVD_TYPES_H__

#include "shared/Core/sys/std_inc.h"

namespace EVD {

// Выравнивание объекта по горизонтали.
enum IndentType {
	it_Left // по левому краю.
	, it_Right // по правому краю.
	, it_Center // по центру.
	, it_Width // по ширине.
	, it_Preformatted // "преформатированный".
	, it_None
};

// Ориентация страницы.
enum PageOrientation {
	po_Portrait // книжная.
	, po_Landscape // альбомная.
};

// признак объединения ячеек.
enum MergeStatus {
	ms_None
	, ms_Head
	, ms_Continue
};

// Выравнивание объекта по вертикали.
enum VerticalAligment {
	val_Top
	, val_Center
	, val_Bottom
};

// Тип контрола.
enum ControlType {
	ct_Label // метка с курсором в виде рамки
	, ct_Edit // обычный редактор
	, ct_Combo // выпадающий список
	, ct_Button // кнопка
	, ct_Spinedit // редактор с возможностью редактирования чисел
	, ct_CheckEdit // редактор с CheckBox
	, ct_EllipsesEdit // редактор с кнопкой
	, ct_RadioEdit // редактор с RadioButton
	, ct_CalEdit // редактор с выпадающим календарём
	, ct_CollapsedPanel // сворачивающая панель
	, ct_StateButton // кнопка с изменением состояния
	, ct_EmailEdit // редактор для ввода E-mail адреса (с проверкой)
	, ct_MemoEdit // многострочное поле ввода (не используется)
	, ct_PictureLabel // текст примечания с картинкой
	, ct_TextParaLabel // метка с обычным курсором
	, ct_PhoneEdit
	, ct_Unknown // неизвестный тип контрола
};

// Тип реквизита.
enum ReqKind {
	rk_Simple // обычный реквизит, допускающий редактировани (попадающий в модель) (ev_rkSimple).
	, rk_Context // контекстный атрибут, допускающий редактирование (попадающий в модель)(ev_rkContext).
	, rk_Description // информационный атрибут (НЕ попадает в модель (ev_rkDescription).
};

enum SubPlace {
	sp_NoWhere
	, sp_OnlyInContents
	, sp_InContentsAndOnSubPanel
	, sp_OnlyOnSubPanel
};

static const unsigned long CI_TOPIC = 65537; // для всех ссылок на документы
static const unsigned long CI_BLOB = 65538; // для ссылок на двоичные объекты
static const unsigned long CI_MULT = 65539; // для мультиссылок на документы/двоичные объекты
static const unsigned long CI_REF = 65540; // для ссылок на внешние интернет-ресурсы
static const unsigned long CI_FolderLink = 65544;
static const unsigned long CI_ExternalOperation = 65545;
static const unsigned long CI_PHARM_MULTI = 65547; // для мультиссылок на документы инфарма
static const unsigned long CI_PIC = 65541; // для ссылок на внешние картинки
static const unsigned long CI_SCRIPT = 65552;

static const long NullAddressType = 0;
static const long defAddressType = CI_TOPIC;

enum LinkViewKind {
	lvk_Unknown // Неизвестно
	, lvk_InternalValid // Внутри системы. Правильная
	, lvk_InternalInvalid // Внутри системы. На отсутствующую информацию
	, lvk_External // Наружу
	, lvk_InternalAbolished // Внутри системы. На утративший силу документ
	, lvk_InternalPreactive // Внутри системы. На не вступивший в силу документ
	, lvk_ExternalENO // Внешнее приложение
	, lvk_InternalEdition // Редакция документа
};

// Слои меток.
static const unsigned long sbt_None = 0; // несуществующий слой меток.
static const unsigned long sbt_Sub = 1; // слой Sub'ов.
static const unsigned long sbt_Marker = 2; // слой закладок.
static const unsigned long sbt_Bookmark = 3; // слой именованных закладок (зарезервированно).
static const unsigned long sbt_Mark = 4; // слой вспомогательных значков (зарезервированно).
static const unsigned long sbt_Para = 10; // параграф (псевдослой).
static const unsigned long sbt_DocumentPlace = 11; // место в документе (псевдослой) см. [TevDocumentPlace].
static const unsigned long sbt_Hyperlink = 12; // ссылка (псевдослой).
static const unsigned long sbt_BySearcher = 14; // условие по Searcher'у (псевдослой).

// Место в документе.
enum DocumentPlace {
	dp_None // Нигде.
	, dp_End // В конце.
};

static const long c_UserCommentFlags = 2; // Флаги пользовательских комментариев
static const long c_CommentsFlag = 1; // Флаги комментариев юристов
static const long c_VersionCommentsFlag = 4; // Флаги версионных комментариев

// Тип колонтитула
enum HFType {
	hft_Ordinal
	, hft_Left
	, hft_Right
	, hft_First
};

// Слои сегментов оформления
static const unsigned long sl_Superposition = 0; // слой суперпозиции сегментов.
static const unsigned long sl_View = 1; // слой оформления.
static const unsigned long sl_Hyperlinks = 2; // слой гиперссылок.
static const unsigned long sl_FoundWords = 3; // слой слов найденных по контексту.
static const unsigned long sl_Found = 4; // слой найденных слов (зарезервированно).
static const unsigned long sl_Objects = 5; // слой объектов, вставленных в параграф.
static const unsigned long sl_Mistakes = 6; // слой сегментов для покраски опечаток.
static const unsigned long sl_Diff = 7; // Разница двух сравниваемых документов

static const unsigned long POSITION_TYPE_PARA_ID = 2147483648;

enum BlockViewKind {
	bvk_None
	, bvk_Left
	, bvk_Right
};

} // namespace EVD


#endif //__SHARED_DELPHI_EVD_TYPES_H__
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
