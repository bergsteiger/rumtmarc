unit Bool_Wrap;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/K2/Bool_Wrap.pas"
// Начат: 07.09.1998 12:46
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Wrapper::Class>> Shared Delphi::K2::Standard::WBool
//
// WBool
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\K2\k2Define.inc}

interface

uses
  k2Bool_Const,
  Enumeration_Wrap,
  k2Interfaces
  ;

type
 WBool = class(WEnumeration)
  {* WBool }
 protected
 // overridden protected methods
   function BoolToTag(Value: Boolean): Ik2Tag; override;
   function AsBool(const A: Ik2Tag): Boolean; override;
 end;//WBool

implementation

// start class WBool

function WBool.BoolToTag(Value: Boolean): Ik2Tag;
//#UC START# *484D279B0058_4849452F013C_var*
//#UC END# *484D279B0058_4849452F013C_var*
begin
//#UC START# *484D279B0058_4849452F013C_impl*
 Result := AtomType.IntToTag(Ord(Value));
//#UC END# *484D279B0058_4849452F013C_impl*
end;//WBool.BoolToTag

function WBool.AsBool(const A: Ik2Tag): Boolean;
//#UC START# *49C8EA61008F_4849452F013C_var*
//#UC END# *49C8EA61008F_4849452F013C_var*
begin
//#UC START# *49C8EA61008F_4849452F013C_impl*
 Result := A.AsLong <> 0;
//#UC END# *49C8EA61008F_4849452F013C_impl*
end;//WBool.AsBool

end.