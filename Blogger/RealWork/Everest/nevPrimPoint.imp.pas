{$IfNDef nevPrimPoint_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/nevPrimPoint.imp.pas"
// Начат: 31.03.2009 21:03
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi::Everest::Cursors::nevPrimPoint
//
// Примитивная точка
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define nevPrimPoint_imp}
 {$Include ..\Everest\nevBasePoint.imp.pas}
 _nevParentPointFactoryExVOID_Parent_ = _nevBasePoint_;
 {$Include ..\Everest\nevParentPointFactoryExVOID.imp.pas}
 _nevPrimPoint_ = {mixin} class(_nevParentPointFactoryExVOID_)
  {* Примитивная точка }
 end;//_nevPrimPoint_

{$Else nevPrimPoint_imp}


{$Include ..\Everest\nevBasePoint.imp.pas}

{$Include ..\Everest\nevParentPointFactoryExVOID.imp.pas}


{$EndIf nevPrimPoint_imp}
