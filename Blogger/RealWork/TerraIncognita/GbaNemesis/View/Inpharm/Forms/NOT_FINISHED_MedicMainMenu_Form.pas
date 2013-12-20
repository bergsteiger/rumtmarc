unit NOT_FINISHED_MedicMainMenu_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Inpharm/Forms/NOT_FINISHED_MedicMainMenu_Form.pas"
// Начат: 04.09.2009 12:57
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Встроенные продукты::Inpharm::View::Inpharm::Inpharm::MedicMainMenu
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
  InpharmMainMenu_Form,
  Common_FormDefinitions_Controls
  {$If defined(Nemesis)}
  ,
  nscInterfaces
  {$IfEnd} //Nemesis
  ,
  vtPanel
  {$If defined(Nemesis)}
  ,
  nscHideField
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscTreeViewHotTruck
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
  Ten_MedicMainMenu = {final form} class(TvcmEntityFormRef, MedicMainMenuFormDef)
  Entities : TvcmEntities;
  pnlMain: TvtPanel;
  hfLastOpenDocs: TnscHideField;
  tvLastOpenDocs: TnscTreeViewHotTruck;
  protected
  // realized methods
   function DoBuildGrid: InscArrangeGrid; override;
  end;//Ten_MedicMainMenu

  TMedicMainMenuForm = Ten_MedicMainMenu;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$R *.DFM}

{$If not defined(Admin) AND not defined(Monitorings)}

// start class Ten_MedicMainMenu

function Ten_MedicMainMenu.DoBuildGrid: InscArrangeGrid;
//#UC START# *4AC9B6D00250_4AB9E67A00A7_var*
//#UC END# *4AC9B6D00250_4AB9E67A00A7_var*
begin
//#UC START# *4AC9B6D00250_4AB9E67A00A7_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AC9B6D00250_4AB9E67A00A7_impl*
end;//Ten_MedicMainMenu.DoBuildGrid

{$IfEnd} //not Admin AND not Monitorings

end.