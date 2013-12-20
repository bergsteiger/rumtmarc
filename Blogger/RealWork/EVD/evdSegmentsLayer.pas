unit evdSegmentsLayer;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "EVD"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/EVD/evdSegmentsLayer.pas"
// Начат: 12.01.2010 18:36
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::EVD::Core Objects::TevdSegmentsLayer
//
// Реализация списка сегментов
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Layer
  ;

type
 TevdSegmentsLayer = class(Tk2Layer)
  {* Реализация списка сегментов }
 protected
 // overridden protected methods
   function CompareWithInt(aValue: Integer;
    anIndex: Integer): Integer; override;
 end;//TevdSegmentsLayer

implementation

uses
  k2Tags,
  evdTypes
  ;

// start class TevdSegmentsLayer

function TevdSegmentsLayer.CompareWithInt(aValue: Integer;
  anIndex: Integer): Integer;
//#UC START# *4A6445E402A5_4B4C96D80211_var*
//#UC END# *4A6445E402A5_4B4C96D80211_var*
begin
//#UC START# *4A6445E402A5_4B4C96D80211_impl*
 Result := inherited CompareWithInt(aValue, anIndex);
//#UC END# *4A6445E402A5_4B4C96D80211_impl*
end;//TevdSegmentsLayer.CompareWithInt

end.