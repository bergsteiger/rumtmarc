unit nsTagString;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "f1DocumentTagsImplementation"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/f1DocumentTagsImplementation/nsTagString.pas"
// Начат: 2005/06/23 16:38:20
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Базовые определения предметной области::LegalDomain::f1DocumentTagsImplementation::TagDataProviders::TnsTagString
//
// Строка, представляющая строковый атрибут тега
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

uses
  nsString
  ;

type
 TnsTagString = class(TnsNewString)
  {* Строка, представляющая строковый атрибут тега }
 public
 // overridden public methods
   function Clone(anOwner: TObject = nil): Pointer; override;
     {* Создайт копию строки. }
 end;//TnsTagString

implementation

uses
  l3_String
  ;

// start class TnsTagString

function TnsTagString.Clone(anOwner: TObject = nil): Pointer;
//#UC START# *47BC3FC40111_467FCA0F01C6_var*
//#UC END# *47BC3FC40111_467FCA0F01C6_var*
begin
//#UC START# *47BC3FC40111_467FCA0F01C6_impl*
 Result := Tl3_String.Create;
 Tl3_String(Result).AssignString(Self);
//#UC END# *47BC3FC40111_467FCA0F01C6_impl*
end;//TnsTagString.Clone

end.