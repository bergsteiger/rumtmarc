unit evdTextStyle_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "EVD"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/EVD/evdTextStyle_Const.pas"
// Начат: 07.06.2008 19:47
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::EVD::Standard::evdNative::TextStyle
//
// Стиль оформления текста
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Константы для значений тега TextStyle - "Стиль оформления текста".
// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Base {a},
  evdStyles
  ;

const
 k2_idTextStyle = 39;
var k2_idTextStyle_Header : Integer = -1;
var k2_idTextStyle_Footer : Integer = -1;

function k2_typTextStyle: Tk2Type;

const
 evd_saTxtNormalANSI = -1;
  { Нормальный } 
 evd_saObject = -35;
  { псевдо-стиль, для объектных сегментов } 
 evd_saMistake = -36;
  { Слово с опечаткой } 
 evd_saColorSelection = -10;
  { Цветовое выделение } 
 evd_saHyperLink = -8;
  { Гипертекстовая ссылка } 
 evd_saInterface = -38;
  { Стиль для интерфейсных элементов } 
 evd_saActiveHyperLink = -39;
  { Активная гиперссылка } 
 evd_saNormalTable = -17;
  { Нормальный для таблиц } 
 evd_saCenteredTable = -40;
  { Центрированный в таблице } 
 evd_saColorSelectionForBaseSearch = -51;
  { Выделение для Базового Поиска } 
 evd_saItalicColorSelectionForBaseSearch = evdStyles.ev_saItalicColorSelectionForBaseSearch;
  { Выделение для Базового Поиска (курсив) } 
 evd_saDialogs = evdStyles.ev_saDialogs;
  { Текст диалогов } 
 evd_saTOC = evdStyles.ev_saTOC;
  {  } 
 evd_saAttention = evdStyles.ev_saAttention;
  { Внимание } 
 evd_saWriteToUs = evdStyles.ev_saWriteToUs;
  { Напишите нам } 

//#UC START# *484D2CBA0213const_intf*
const
 evd_saGUI =
  {$IfDef Archi}
  evd_saInterface
  {$Else  Archi}
  //evd_saTxtNormalANSI
  evd_saInterface
  // http://mdp.garant.ru/pages/viewpage.action?pageId=96475831
  {$EndIf Archi};
//#UC END# *484D2CBA0213const_intf*

implementation

uses
  evdNative_Schema,
  k2Facade {a}
  ;
var
 g_TextStyle : Tk2Type = nil;


// start class TextStyleTag

function k2_typTextStyle: Tk2Type;
begin
 if (g_TextStyle = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevdNativeSchema);
  g_TextStyle := TevdNativeSchema(Tk2TypeTable.GetInstance).t_TextStyle;
 end;//g_TextStyle = nil
 Result := g_TextStyle;
end;

end.