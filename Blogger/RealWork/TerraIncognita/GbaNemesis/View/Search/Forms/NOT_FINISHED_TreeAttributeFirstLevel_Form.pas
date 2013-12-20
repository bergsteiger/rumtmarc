unit NOT_FINISHED_TreeAttributeFirstLevel_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/NOT_FINISHED_TreeAttributeFirstLevel_Form.pas"
// Начат: 08.09.2009 15:35
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Основные прецеденты::Search::View::Search::Search::TreeAttributeFirstLevel
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
  PrimTreeAttributeFirstLevel_Form,
  Common_FormDefinitions_Controls,
  l3TreeInterfaces
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
  TefTreeAttributeFirstLevel = {final form} class(TvcmEntityFormRef, TreeAttributeFirstLevelFormDef)
  Entities : TvcmEntities;
  FirstLevelContent: TnscTreeView;
  protected
  // realized methods
   procedure CurrentChangedNotification(const aNode: Il3SimpleNode); override;
   procedure UpdateCurrent(const aNode: Il3SimpleNode); override;
  end;//TefTreeAttributeFirstLevel

  TTreeAttributeFirstLevelForm = TefTreeAttributeFirstLevel;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$R *.DFM}

{$If not defined(Admin) AND not defined(Monitorings)}

// start class TefTreeAttributeFirstLevel

procedure TefTreeAttributeFirstLevel.CurrentChangedNotification(const aNode: Il3SimpleNode);
//#UC START# *497465F501B7_4AB8D5F8025F_var*
//#UC END# *497465F501B7_4AB8D5F8025F_var*
begin
//#UC START# *497465F501B7_4AB8D5F8025F_impl*
 !!! Needs to be implemented !!!
//#UC END# *497465F501B7_4AB8D5F8025F_impl*
end;//TefTreeAttributeFirstLevel.CurrentChangedNotification

procedure TefTreeAttributeFirstLevel.UpdateCurrent(const aNode: Il3SimpleNode);
//#UC START# *4AEF12D60115_4AB8D5F8025F_var*
//#UC END# *4AEF12D60115_4AB8D5F8025F_var*
begin
//#UC START# *4AEF12D60115_4AB8D5F8025F_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AEF12D60115_4AB8D5F8025F_impl*
end;//TefTreeAttributeFirstLevel.UpdateCurrent

{$IfEnd} //not Admin AND not Monitorings

end.