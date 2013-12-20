unit F1_Schema;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest Engine"
// Модуль: "w:/common/components/gui/Garant/Everest_Engine/F1_Schema.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<TagTable::Class>> Shared Delphi For F1::Everest Engine::EVD::F1
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest_Engine\eeDefine.inc}

interface

uses
  evdTypes,
  evdStyles,
  Graphics,
  evNative_Schema,
  evdTextStyle_Const,
  evTextStyle_Const,
  f1TextStyle_Const,
  k2Base {a},
  l3Interfaces {a},
  k2Interfaces {a}
  ;

type
 TF1Schema = class(TevNativeSchema)
 protected
 // определяем стандартные методы схемы
   function  pm_GetTypeByHandle(H: Integer): Tk2Type; override;
   procedure Cleanup; override;
 public
   constructor Create; override;
 end;//TF1Schema

implementation

uses
  l3Const,
  l3Canvas,
  eeDocumentSchema,
  F1_AttrValues,
  SysUtils {a},
  TypInfo {a},
  k2Const {a},
  k2Tags {a},
  k2BaseStruct {a},
  l3Types {a},
  l3String {a}
  ;


// start class TF1Schema

constructor TF1Schema.Create;
begin
 inherited;
 // TextStyle
 with t_TextStyle do
 begin
  Recalc;
  // Моноширинный
   with MakeTag do
   begin
    IntA[k2_tiHandle] := -12;
    StrA[k2_tiName] := str_TextStyle_ANSIDOS_Name_Value.AsStr;
    IntA[k2_tiFirstIndent] := 0;
    IntA[k2_tiFirstLineIndent] := 0;
    IntA[k2_tiJustification] := Ord(ev_itPreformatted);
    AddValue(Box);
   end;//with MakeTag
  // Сравнение редакций
   with MakeTag do
   begin
    IntA[k2_tiStyle] := -10;
    IntA[k2_tiHandle] := -65534;
    StrA[k2_tiName] := str_TextStyle_CompareEditionsText_Name_Value.AsStr;
    with cAtom(k2_tiFont) do
    begin
     IntA[k2_tiForeColor] := k2_TransparentValue;
     IntA[k2_tiBold] := k2_TransparentValue;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // Удалённый текст
   with MakeTag do
   begin
    IntA[k2_tiStyle] := -65534;
    IntA[k2_tiHandle] := -42;
    StrA[k2_tiName] := str_TextStyle_DeletedText_Name_Value.AsStr;
    with cAtom(k2_tiFont) do
    begin
     BoolA[k2_tiStrikeout] := true;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // Заголовок собственного сообщения
   with MakeTag do
   begin
    IntA[k2_tiStyle] := -10;
    IntA[k2_tiHandle] := -43;
    StrA[k2_tiName] := str_TextStyle_ChatHeaderSender_Name_Value.AsStr;
    AddValue(Box);
   end;//with MakeTag
  // Заголовок полученного сообщения
   with MakeTag do
   begin
    IntA[k2_tiStyle] := -10;
    IntA[k2_tiHandle] := -44;
    StrA[k2_tiName] := str_TextStyle_ChatHeaderRecipient_Name_Value.AsStr;
    AddValue(Box);
   end;//with MakeTag
  // Добавленный текст
   with MakeTag do
   begin
    IntA[k2_tiStyle] := -65534;
    IntA[k2_tiHandle] := -41;
    StrA[k2_tiName] := str_TextStyle_AddedText_Name_Value.AsStr;
    with cAtom(k2_tiFont) do
    begin
     IntA[k2_tiBackColor] := Ord(clAqua);
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // Основное меню
   with MakeTag do
   begin
    IntA[k2_tiHandle] := -65531;
    StrA[k2_tiName] := str_TextStyle_NewSchoolMainMenu_Name_Value.AsStr;
    AddValue(Box);
   end;//with MakeTag
  // Основное меню
   with MakeTag do
   begin
    IntA[k2_tiHandle] := -29;
    StrA[k2_tiName] := str_TextStyle_MainMenu_Name_Value.AsStr;
    with cAtom(k2_tiFont) do
    begin
     StrA[k2_tiName] := str_TextStyle_MainMenu_Font_Name_Value.AsStr;
     IntA[k2_tiSize] := 8;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // Заголовки основного меню
   with MakeTag do
   begin
    IntA[k2_tiStyle] := -29;
    IntA[k2_tiHandle] := -33;
    StrA[k2_tiName] := str_TextStyle_MainMenuHeader_Name_Value.AsStr;
    with cAtom(k2_tiFont) do
    begin
     IntA[k2_tiForeColor] := $00A95800;
     IntA[k2_tiBackColor] := Ord(clBtnFace);
     BoolA[k2_tiBold] := true;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // шрифт основного меню, постоянная часть
   with MakeTag do
   begin
    IntA[k2_tiStyle] := -29;
    IntA[k2_tiHandle] := -31;
    StrA[k2_tiName] := str_TextStyle_MainMenuConstPath_Name_Value.AsStr;
    with cAtom(k2_tiFont) do
    begin
     BoolA[k2_tiBold] := true;
     BoolA[k2_tiUnderline] := true;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // Шрифт основного меню, постоянная часть 2009
   with MakeTag do
   begin
    IntA[k2_tiStyle] := -65531;
    IntA[k2_tiHandle] := -65532;
    StrA[k2_tiName] := str_TextStyle_NewSchoolMainMenuConstPath_Name_Value.AsStr;
    with cAtom(k2_tiFont) do
    begin
     StrA[k2_tiName] := str_TextStyle_NewSchoolMainMenuConstPath_Font_Name_Value.AsStr;
     IntA[k2_tiSize] := 10;
     IntA[k2_tiForeColor] := $00A95800;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // Заголовки основного меню 2009
   with MakeTag do
   begin
    IntA[k2_tiStyle] := -65531;
    IntA[k2_tiHandle] := -65533;
    StrA[k2_tiName] := str_TextStyle_NewSchoolMainMenuHeader_Name_Value.AsStr;
    with cAtom(k2_tiFont) do
    begin
     IntA[k2_tiForeColor] := Ord(clBlack);
     IntA[k2_tiBackColor] := Ord(clWhite);
     IntA[k2_tiSize] := 11;
     StrA[k2_tiName] := str_TextStyle_NewSchoolMainMenuHeader_Font_Name_Value.AsStr;
     BoolA[k2_tiBold] := true;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // шрифт основного меню, переменная часть
   with MakeTag do
   begin
    IntA[k2_tiStyle] := -29;
    IntA[k2_tiHandle] := -32;
    StrA[k2_tiName] := str_TextStyle_MainMenuChangePath_Name_Value.AsStr;
    with cAtom(k2_tiFont) do
    begin
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // заголовки основного меню, являющиеся гипперссылками
   with MakeTag do
   begin
    IntA[k2_tiStyle] := -33;
    IntA[k2_tiHandle] := -34;
    StrA[k2_tiName] := str_TextStyle_MainMenuInteractiveHeader_Name_Value.AsStr;
    with cAtom(k2_tiFont) do
    begin
     BoolA[k2_tiUnderline] := true;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // Обзор изменений документа 1
   with MakeTag do
   begin
    IntA[k2_tiHandle] := -65530;
    StrA[k2_tiName] := str_TextStyle_Changes1_Name_Value.AsStr;
    IntA[k2_tiJustification] := Ord(ev_itCenter);
    IntA[k2_tiFirstIndent] := 0;
    with cAtom(k2_tiFont) do
    begin
     BoolA[k2_tiItalic] := true;
     IntA[k2_tiForeColor] := Ord(clPurple);
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // Обзор изменений документа 2
   with MakeTag do
   begin
    IntA[k2_tiStyle] := -65530;
    IntA[k2_tiHandle] := -65529;
    StrA[k2_tiName] := str_TextStyle_Changes2_Name_Value.AsStr;
    IntA[k2_tiJustification] := Ord(ev_itLeft);
    AddValue(Box);
   end;//with MakeTag
  // Заголовок приложения
   with MakeTag do
   begin
    IntA[k2_tiStyle] := -10;
    IntA[k2_tiHandle] := Ord(ev_saEnclosureHeader);
    StrA[k2_tiName] := str_TextStyle_EnclosureHeader_Name_Value.AsStr;
    BoolA[k2_tiApply2Para] := true;
    IntA[k2_tiJustification] := Ord(ev_itRight);
    AddValue(Box);
   end;//with MakeTag
  // Интервал действия редакции
   with MakeTag do
   begin
    IntA[k2_tiStyle] := -10;
    IntA[k2_tiHandle] := Ord(ev_saEditionInterval);
    StrA[k2_tiName] := str_TextStyle_EditionInterval_Name_Value.AsStr;
    BoolA[k2_tiIsChangeableFont] := false;
    BoolA[k2_tiVisibleToUser] := false;
    with cAtom(k2_tiFont) do
    begin
     BoolA[k2_tiBold] := true;
     IntA[k2_tiForeColor] := k2_TransparentValue;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // Редакция
   with MakeTag do
   begin
    IntA[k2_tiHandle] := Ord(ev_saEdition);
    IntA[k2_tiFirstIndent] := 0;
    IntA[k2_tiLeftIndent] := 370;
    IntA[k2_tiJustification] := Ord(ev_itLeft);
    StrA[k2_tiName] := str_TextStyle_Edition_Name_Value.AsStr;
    BoolA[k2_tiIsChangeableFont] := false;
    BoolA[k2_tiVisibleToUser] := false;
    with cAtom(k2_tiFont) do
    begin
     IntA[k2_tiSize] := 10;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // Номер редакции
   with MakeTag do
   begin
    IntA[k2_tiStyle] := f1_saEditionInterval;
    IntA[k2_tiHandle] := Ord(ev_saEditionNumber);
    StrA[k2_tiName] := str_TextStyle_EditionNumber_Name_Value.AsStr;
    with cAtom(k2_tiFont) do
    begin
     IntA[k2_tiForeColor] := Ord(clSilver);
     BoolA[k2_tiBold] := false;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // Дочерний элемент списка
   with MakeTag do
   begin
    IntA[k2_tiHandle] := Ord(ev_saSnippet);
    StrA[k2_tiName] := str_TextStyle_Snippet_Name_Value.AsStr;
    IntA[k2_tiFirstIndent] := 1275;
    with cAtom(k2_tiFont) do
    begin
     IntA[k2_tiSize] := 11;
     IntA[k2_tiForeColor] := $818386;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
 end;//TextStyle
 t_TextStyle.Recalc;
end;

// определяем стандартные методы схемы


function TF1Schema.pm_GetTypeByHandle(H: Integer): Tk2Type;
begin
 Result := inherited pm_GetTypeByHandle(H);
end;

procedure TF1Schema.Cleanup;
begin
 inherited;
end;


initialization
 TF1Schema.SetAsDefault;

end.