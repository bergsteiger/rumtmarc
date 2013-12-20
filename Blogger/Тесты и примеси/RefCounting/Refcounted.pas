unit Refcounted;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "SandBox"
// Модуль: "w:/common/components/rtl/Garant/SandBox/Refcounted.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Sand Box::SandBox::Reference Counting::TRefcounted
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

interface

type
 _RefCounted_Parent_ = TObject;
 {$Include w:\common\components\rtl\Garant\L3\RefCounted.imp.pas}
 TRefcounted = class(_RefCounted_)
 end;//TRefcounted

implementation

uses
  Windows
  ;

type _Instance_R_ = TRefcounted;
type _RefCounted_R_ = TRefcounted;

{$Include w:\common\components\rtl\Garant\L3\RefCounted.imp.pas}

end.