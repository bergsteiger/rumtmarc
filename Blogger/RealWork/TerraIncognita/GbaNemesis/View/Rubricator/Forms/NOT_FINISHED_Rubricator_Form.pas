unit NOT_FINISHED_Rubricator_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Rubricator/Forms/NOT_FINISHED_Rubricator_Form.pas"
// �����: 08.09.2009 20:27
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 �������� ����������::Rubricator::View::Rubricator::Rubricator::Rubricator
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ���� ���� ������������ ������ ��� �������������, � �� ��� ����������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  PrimRubricator_Form,
  Common_FormDefinitions_Controls,
  BaseTypesUnit
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
  TefRubricator = {final form} class(TvcmEntityFormRef, RubricatorFormDef)
  Entities : TvcmEntities;
  RubricatorList: TnscTreeView;
  protected
  // realized methods
   procedure UpdateTopPanel(aNodeType: TNavigatorMenuItemType); override;
   procedure RubricExecute; override;
  end;//TefRubricator

  TRubricatorForm = TefRubricator;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$R *.DFM}

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  RubricatorInterfaces
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

// start class TefRubricator

procedure TefRubricator.UpdateTopPanel(aNodeType: TNavigatorMenuItemType);
//#UC START# *4AA783230095_4AA68CCA0001_var*
//#UC END# *4AA783230095_4AA68CCA0001_var*
begin
//#UC START# *4AA783230095_4AA68CCA0001_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AA783230095_4AA68CCA0001_impl*
end;//TefRubricator.UpdateTopPanel

procedure TefRubricator.RubricExecute;
//#UC START# *4C44334A0280_4AA68CCA0001_var*
//#UC END# *4C44334A0280_4AA68CCA0001_var*
begin
//#UC START# *4C44334A0280_4AA68CCA0001_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C44334A0280_4AA68CCA0001_impl*
end;//TefRubricator.RubricExecute

{$IfEnd} //not Admin AND not Monitorings

end.