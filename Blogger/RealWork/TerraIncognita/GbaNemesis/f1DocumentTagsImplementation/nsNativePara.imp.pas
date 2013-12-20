{$IfNDef nsNativePara_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "f1DocumentTagsImplementation"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/f1DocumentTagsImplementation/nsNativePara.imp.pas"
// Начат: 24.11.2010 20:33
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> F1 Базовые определения предметной области::LegalDomain::f1DocumentTagsImplementation::TagDataProviders::nsNativePara
//
// "Родной" параграф. Не представлен нодой из адаптерного дерева
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define nsNativePara_imp}
 _nsNativePara_ = {mixin} class(_nsNativePara_Parent_)
  {* "Родной" параграф. Не представлен нодой из адаптерного дерева }
 public
 // public methods
   constructor Create(const aStub: InevTag); reintroduce; overload; 
   class function Make(const aStub: InevTag): InevTag; reintroduce;
     {* Сигнатура фабрики nsNativePara.Make }
   constructor Create(aTypeID: Integer); overload; 
 end;//_nsNativePara_

{$Else nsNativePara_imp}

// start class _nsNativePara_

constructor _nsNativePara_.Create(const aStub: InevTag);
//#UC START# *4C6ACF6D008A_4CED4C700123_var*
//#UC END# *4C6ACF6D008A_4CED4C700123_var*
begin
//#UC START# *4C6ACF6D008A_4CED4C700123_impl*
 Create(aStub.TagType.ID);
 AssignTag(aStub);
 Include(_Instance_R_(Self).f_State, ns_nsChanged);
//#UC END# *4C6ACF6D008A_4CED4C700123_impl*
end;//_nsNativePara_.Create

class function _nsNativePara_.Make(const aStub: InevTag): InevTag;
var
 l_Inst : _nsNativePara_;
begin
 l_Inst := Create(aStub);
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

constructor _nsNativePara_.Create(aTypeID: Integer);
//#UC START# *4CEFB6330350_4CED4C700123_var*
//#UC END# *4CEFB6330350_4CED4C700123_var*
begin
//#UC START# *4CEFB6330350_4CED4C700123_impl*
 inherited Create(k2.TypeTable[aTypeID]);
//#UC END# *4CEFB6330350_4CED4C700123_impl*
end;//_nsNativePara_.Create

{$EndIf nsNativePara_imp}
