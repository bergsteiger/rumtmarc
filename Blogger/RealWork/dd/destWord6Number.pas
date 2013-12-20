unit destWord6Number;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "dd"
// Модуль: "w:/common/components/rtl/Garant/dd/destWord6Number.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::dd::RTFSupport::TdestWord6Number
//
// Текст нумерации в стиле Word 6/95
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
 TdestWord6Number = class(TddRTFDestination)
  {* Текст нумерации в стиле Word 6/95 }
 private
 // private fields
   f_ItemText : AnsiString;
    {* Поле для свойства ItemText}
 public
 // overridden public methods
   procedure Clear; override;
   procedure AddAnsiChar(aText: AnsiChar;
     aState: TddRTFState); override;
 public
 // public properties
   property ItemText: AnsiString
     read f_ItemText
     write f_ItemText;
 end;//TdestWord6Number

implementation

// start class TdestWord6Number

procedure TdestWord6Number.Clear;
//#UC START# *51D27A48038E_51DD081A0082_var*
//#UC END# *51D27A48038E_51DD081A0082_var*
begin
//#UC START# *51D27A48038E_51DD081A0082_impl*
 f_Itemtext := '';
//#UC END# *51D27A48038E_51DD081A0082_impl*
end;//TdestWord6Number.Clear

procedure TdestWord6Number.AddAnsiChar(aText: AnsiChar;
  aState: TddRTFState);
//#UC START# *51D27C0402E9_51DD081A0082_var*
//#UC END# *51D27C0402E9_51DD081A0082_var*
begin
//#UC START# *51D27C0402E9_51DD081A0082_impl*
 f_ItemText := f_Itemtext + aText;
//#UC END# *51D27C0402E9_51DD081A0082_impl*
end;//TdestWord6Number.AddAnsiChar

end.