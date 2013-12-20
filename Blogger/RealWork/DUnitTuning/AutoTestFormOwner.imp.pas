{$IfNDef AutoTestFormOwner_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "DUnitTuning"
// Модуль: "w:/common/components/rtl/Garant/DUnitTuning/AutoTestFormOwner.imp.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi TFW::DUnitTuning::VCM_TFW::AutoTestFormOwner
//
// Поддержка создания формы для автотеста.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define AutoTestFormOwner_imp}
{$If defined(nsTest)}
 _AutoTestFormOwner_ = {mixin} class(_AutoTestFormOwner_Parent_)
  {* Поддержка создания формы для автотеста. }
 private
 // private fields
   f_TextForm : TCustomForm;
 protected
 // property methods
   function pm_GetTextForm: TCustomForm;
 protected
 // protected methods
   procedure InitForm(const aName: String);
   procedure DeInitForm; virtual;
   function GetFormFactory: RFactoryFormClass; virtual; abstract;
     {* Возвращает фабрику для конкретного набора автотестов (Daily, ArchiTest, NemesisAutoTest) }
 public
 // public properties
   property TextForm: TCustomForm
     read pm_GetTextForm;
 end;//_AutoTestFormOwner_
{$IfEnd} //nsTest

{$Else AutoTestFormOwner_imp}

{$If defined(nsTest)}

// start class _AutoTestFormOwner_

procedure _AutoTestFormOwner_.InitForm(const aName: String);
//#UC START# *4E295E7D023E_4E29555902CD_var*
//#UC END# *4E295E7D023E_4E29555902CD_var*
begin
//#UC START# *4E295E7D023E_4E29555902CD_impl*
 if GetFormFactory <> nil then
  f_TextForm := GetFormFactory.MakeFormByClassName(aName);
//#UC END# *4E295E7D023E_4E29555902CD_impl*
end;//_AutoTestFormOwner_.InitForm

procedure _AutoTestFormOwner_.DeInitForm;
//#UC START# *4E295ED1011F_4E29555902CD_var*
//#UC END# *4E295ED1011F_4E29555902CD_var*
begin
//#UC START# *4E295ED1011F_4E29555902CD_impl*
 l3Free(f_TextForm);
//#UC END# *4E295ED1011F_4E29555902CD_impl*
end;//_AutoTestFormOwner_.DeInitForm

function _AutoTestFormOwner_.pm_GetTextForm: TCustomForm;
//#UC START# *4E2EACD700B4_4E29555902CDget_var*
//#UC END# *4E2EACD700B4_4E29555902CDget_var*
begin
//#UC START# *4E2EACD700B4_4E29555902CDget_impl*
 Result := f_TextForm;
//#UC END# *4E2EACD700B4_4E29555902CDget_impl*
end;//_AutoTestFormOwner_.pm_GetTextForm

{$IfEnd} //nsTest

{$EndIf AutoTestFormOwner_imp}
