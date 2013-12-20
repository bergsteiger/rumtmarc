{$IfNDef RefCounted_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "L3$Basic Concepts"
// Модуль: "w:/common/components/rtl/Garant/L3/RefCounted.imp.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Требования к низкоуровневым библиотекам::L3$Basic Concepts::Ref Counting::RefCounted
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define RefCounted_imp}
 _RefCountedPrim_Parent_ = _RefCounted_Parent_;
 {$Include w:\common\components\rtl\Garant\L3\RefCountedPrim.imp.pas}
 _RefCounted_ = {mixin} class(_RefCountedPrim_)
 protected
 // protected methods
   destructor Destroy;
     {* Это чтобы не было соблазна перекрывать destroy. }
 end;//_RefCounted_

{$Else RefCounted_imp}

type _RefCountedPrim_R_ = _RefCounted_;

{$Include w:\common\components\rtl\Garant\L3\RefCountedPrim.imp.pas}

// start class _RefCounted_

destructor _RefCounted_.Destroy;
//#UC START# *5161409E01B6_51614065019A_var*
//#UC END# *5161409E01B6_51614065019A_var*
begin
//#UC START# *5161409E01B6_51614065019A_impl*
 assert(false, 'По идее мы попасть сюда не должны');
 inherited;
//#UC END# *5161409E01B6_51614065019A_impl*
end;//_RefCounted_.Destroy

{$EndIf RefCounted_imp}
