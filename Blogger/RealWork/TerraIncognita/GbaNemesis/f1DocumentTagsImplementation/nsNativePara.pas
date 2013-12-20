unit nsNativePara;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "f1DocumentTagsImplementation"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/f1DocumentTagsImplementation/nsNativePara.pas"
// Начат: 2005/12/02 12:37:25
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Базовые определения предметной области::LegalDomain::f1DocumentTagsImplementation::DocumentTagNodes::TnsNativePara
//
// "Родной" параграф. Не представлен нодой из адаптерного дерева
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

uses
  nsBaseTagNode,
  k2Interfaces,
  Classes,
  nevBase,
  k2Prim,
  k2BaseTypes,
  l3Types,
  l3Interfaces
  ;

type
 _k2ParentedTagObject_Parent_ = TnsBaseTagNode;
 {$Include w:\common\components\rtl\Garant\K2\k2ParentedTagObject.imp.pas}
 _nsNativePara_Parent_ = _k2ParentedTagObject_;
 {$Include ..\f1DocumentTagsImplementation\nsNativePara.imp.pas}
 TnsNativePara = class(_nsNativePara_)
  {* "Родной" параграф. Не представлен нодой из адаптерного дерева }
 end;//TnsNativePara

implementation

uses
  k2Base,
  k2Facade,
  l3Base
  ;

type _Instance_R_ = TnsNativePara;

{$Include w:\common\components\rtl\Garant\K2\k2ParentedTagObject.imp.pas}


{$Include ..\f1DocumentTagsImplementation\nsNativePara.imp.pas}

end.