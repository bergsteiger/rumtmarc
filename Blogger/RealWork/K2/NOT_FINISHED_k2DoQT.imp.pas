{$IfNDef k2DoQT_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/K2/NOT_FINISHED_k2DoQT.imp.pas"
// Начат: 16.12.2010 19:33
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi::K2::k2CoreMixins::k2DoQT
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define k2DoQT_imp}
 _k2DoQT_ = {mixin} class(_k2DoQT_Parent_)
 protected
 // protected methods
   function DoQT(const IID: TGUID;
    out Obj;
    const aProcessor: Ik2Processor = nil): Boolean; virtual; abstract;
     {* созвращает инструмент для работы с тегом, к которому привязан исходный инструмент }
 end;//_k2DoQT_

{$Else k2DoQT_imp}


{$EndIf k2DoQT_imp}
