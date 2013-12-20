unit Object_Wrap;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/K2/Object_Wrap.pas"
// Начат: 07.09.1998 12:46
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Wrapper::Class>> Shared Delphi::K2::Standard::WObject
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\K2\k2Define.inc}

interface

uses
  k2Base,
  k2Object_Const,
  k2Interfaces
  ;

type
 WObject = class(Wk2Atom)
 protected
 // overridden protected methods
   function ObjToTag(aValue: TObject): Ik2Tag; override;
 end;//WObject

implementation

// start class WObject

function WObject.ObjToTag(aValue: TObject): Ik2Tag;
//#UC START# *484CEAD301AE_484CCE17015D_var*
//#UC END# *484CEAD301AE_484CCE17015D_var*
begin
//#UC START# *484CEAD301AE_484CCE17015D_impl*
 if (aValue = nil) then
  Result := k2NullTag
 else
  Result := AtomType.TagFromIntRef(Integer(aValue));
//#UC END# *484CEAD301AE_484CCE17015D_impl*
end;//WObject.ObjToTag

end.