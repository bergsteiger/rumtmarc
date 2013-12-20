unit NOT_FINISHED_NewsLine_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/NOT_FINISHED_NewsLine_Form.pas"
// Начат: 21.08.2009 20:46
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Пользовательские сервисы::Autoreferat::View::Search::PrimMonitorings::NewsLine
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
  Common_FormDefinitions_Controls,
  PrimNewsLineOptions_Form,
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
  TenNewsLine = {final form} class(TvcmEntityFormRef, NewsLineFormDef)
  Entities : TvcmEntities;
  DateList: TnscTreeView;
  protected
  // realized methods
   procedure OpenAutoreferat(const aNode: Il3SimpleNode;
    AllowOpen: Boolean = True); override;
   procedure Tree_Wrap_Test(const aParams: IvcmTestParamsPrim);
     {* Перенос по словам }
   procedure Tree_Wrap_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Перенос по словам }
   procedure UpdateNewsLineTree; override;
   procedure ResetThemeList; override;
  end;//TenNewsLine

  TNewsLineForm = TenNewsLine;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$R *.DFM}

{$If not defined(Admin) AND not defined(Monitorings)}

// start class TenNewsLine

procedure TenNewsLine.OpenAutoreferat(const aNode: Il3SimpleNode;
  AllowOpen: Boolean = True);
//#UC START# *4AF822ED0237_4A8ECFCD0174_var*
//#UC END# *4AF822ED0237_4A8ECFCD0174_var*
begin
//#UC START# *4AF822ED0237_4A8ECFCD0174_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AF822ED0237_4A8ECFCD0174_impl*
end;//TenNewsLine.OpenAutoreferat

procedure TenNewsLine.Tree_Wrap_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4BDAF7B803CF_4A8ECFCD0174test_var*
//#UC END# *4BDAF7B803CF_4A8ECFCD0174test_var*
begin
//#UC START# *4BDAF7B803CF_4A8ECFCD0174test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4BDAF7B803CF_4A8ECFCD0174test_impl*
end;//TenNewsLine.Tree_Wrap_Test

procedure TenNewsLine.Tree_Wrap_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4BDAF7B803CF_4A8ECFCD0174exec_var*
//#UC END# *4BDAF7B803CF_4A8ECFCD0174exec_var*
begin
//#UC START# *4BDAF7B803CF_4A8ECFCD0174exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4BDAF7B803CF_4A8ECFCD0174exec_impl*
end;//TenNewsLine.Tree_Wrap_Execute

procedure TenNewsLine.UpdateNewsLineTree;
//#UC START# *4C87BD85008A_4A8ECFCD0174_var*
//#UC END# *4C87BD85008A_4A8ECFCD0174_var*
begin
//#UC START# *4C87BD85008A_4A8ECFCD0174_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C87BD85008A_4A8ECFCD0174_impl*
end;//TenNewsLine.UpdateNewsLineTree

procedure TenNewsLine.ResetThemeList;
//#UC START# *4C8DC50203CB_4A8ECFCD0174_var*
//#UC END# *4C8DC50203CB_4A8ECFCD0174_var*
begin
//#UC START# *4C8DC50203CB_4A8ECFCD0174_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C8DC50203CB_4A8ECFCD0174_impl*
end;//TenNewsLine.ResetThemeList

{$IfEnd} //not Admin AND not Monitorings

end.