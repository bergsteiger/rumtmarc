unit destLevelText;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "dd"
// Модуль: "w:/common/components/rtl/Garant/dd/destLevelText.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::dd::RTFSupport::TdestLevelText
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

interface

uses
  ddRTFdestination,
  ddRTFState
  ;

type
 TdestLevelText = class(TddRTFDestination)
 private
 // private fields
   f_Length : Integer;
    {* Поле для свойства Length}
   f_Numbers : AnsiString;
    {* Поле для свойства Numbers}
   f_Text : AnsiString;
    {* Поле для свойства Text}
 public
 // overridden public methods
   procedure Clear; override;
   procedure AddAnsiChar(aText: AnsiChar;
     aState: TddRTFState); override;
 public
 // public properties
   property Length: Integer
     read f_Length
     write f_Length;
   property Numbers: AnsiString
     read f_Numbers
     write f_Numbers;
   property Text: AnsiString
     read f_Text
     write f_Text;
 end;//TdestLevelText

implementation

// start class TdestLevelText

procedure TdestLevelText.Clear;
//#UC START# *51D27A48038E_51DD039F01CF_var*
//#UC END# *51D27A48038E_51DD039F01CF_var*
begin
//#UC START# *51D27A48038E_51DD039F01CF_impl*
 f_Length:= 0;
 f_Text:= '';
 f_Numbers:= '';
//#UC END# *51D27A48038E_51DD039F01CF_impl*
end;//TdestLevelText.Clear

procedure TdestLevelText.AddAnsiChar(aText: AnsiChar;
  aState: TddRTFState);
//#UC START# *51D27C0402E9_51DD039F01CF_var*
//#UC END# *51D27C0402E9_51DD039F01CF_var*
begin
//#UC START# *51D27C0402E9_51DD039F01CF_impl*
 if Length = 0 then
  Length:= Ord(aText)
 else
 begin
  if aText <> ';' then
   f_Numbers:= f_Numbers + aText;
  if atext < #9 then
   f_Text:= f_Text + '%s'
  else
  if aText <> ';' then
   f_Text:= f_Text + aText;
 end;
//#UC END# *51D27C0402E9_51DD039F01CF_impl*
end;//TdestLevelText.AddAnsiChar

end.