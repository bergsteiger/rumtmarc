unit NOT_FINISHED_StyleEditorNavigator_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Settings/Forms/NOT_FINISHED_StyleEditorNavigator_Form.pas"
// Начат: 09.09.2009 16:29
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Основные прецеденты::Settings::View::Settings::Settings::StyleEditorNavigator
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  PrimStyleEditorNavigator_Form
  {$If defined(Nemesis)}
  ,
  nscTreeView
  {$IfEnd} //Nemesis
  ,
  Classes {a},
  l3InterfacedComponent {a},
  vcmComponent {a},
  vcmBaseEntities {a},
  vcmEntities {a},
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
  TStyleEditorNavigatorForm = {final form} class(TvcmEntityFormRef)
  Entities : TvcmEntities;
  f_StyleTreeView: TnscTreeView;
  protected
  // realized methods
   function GetStyleIdFromTreeByIndex(aIndex: Integer): Integer; override;
   procedure SendToAggregateSetNewContentNotify(aStyleId: Integer); override;
  end;//TStyleEditorNavigatorForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$R *.DFM}

{$If not defined(Admin) AND not defined(Monitorings)}

// start class TStyleEditorNavigatorForm

function TStyleEditorNavigatorForm.GetStyleIdFromTreeByIndex(aIndex: Integer): Integer;
//#UC START# *4AE8271D021B_4ABA14480078_var*
//#UC END# *4AE8271D021B_4ABA14480078_var*
begin
//#UC START# *4AE8271D021B_4ABA14480078_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AE8271D021B_4ABA14480078_impl*
end;//TStyleEditorNavigatorForm.GetStyleIdFromTreeByIndex

procedure TStyleEditorNavigatorForm.SendToAggregateSetNewContentNotify(aStyleId: Integer);
//#UC START# *4AE82A780199_4ABA14480078_var*
//#UC END# *4AE82A780199_4ABA14480078_var*
begin
//#UC START# *4AE82A780199_4ABA14480078_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AE82A780199_4ABA14480078_impl*
end;//TStyleEditorNavigatorForm.SendToAggregateSetNewContentNotify

{$IfEnd} //not Admin AND not Monitorings

end.