unit NOT_FINISHED_PostingsList_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Monitorings/Forms/NOT_FINISHED_PostingsList_Form.pas"
// �����: 15.09.2009 18:15
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 ������� �����::NewsLineTuning::View::Monitorings::CommonPost::PostingsList
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ���� ���� ������������ ������ ��� �������������, � �� ��� ����������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If defined(Monitorings) AND not defined(Admin)}
uses
  NewsLineTuning_FormDefinitions_Controls,
  PrimPostingsListOptions_Form,
  eeTreeView,
  Classes {a},
  l3InterfacedComponent {a},
  vcmComponent {a},
  vcmBaseEntities {a},
  vcmEntities {a},
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //Monitorings AND not Admin

{$If defined(Monitorings) AND not defined(Admin)}
type
  TenPostingsList = {final form} class(TvcmEntityFormRef, PostingsListFormDef)
  Entities : TvcmEntities;
  tvPostings: TeeTreeView;
  protected
  // realized methods
   procedure Tree_Wrap_Test(const aParams: IvcmTestParamsPrim);
     {* ������� �� ������ }
   procedure Tree_Wrap_Execute(const aParams: IvcmExecuteParamsPrim);
     {* ������� �� ������ }
   function Save: Boolean; override;
  end;//TenPostingsList

  TPostingsListForm = TenPostingsList;
{$IfEnd} //Monitorings AND not Admin

implementation

{$R *.DFM}

{$If defined(Monitorings) AND not defined(Admin)}

// start class TenPostingsList

procedure TenPostingsList.Tree_Wrap_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4BDAF7B803CF_4AAFA16202D3test_var*
//#UC END# *4BDAF7B803CF_4AAFA16202D3test_var*
begin
//#UC START# *4BDAF7B803CF_4AAFA16202D3test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4BDAF7B803CF_4AAFA16202D3test_impl*
end;//TenPostingsList.Tree_Wrap_Test

procedure TenPostingsList.Tree_Wrap_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4BDAF7B803CF_4AAFA16202D3exec_var*
//#UC END# *4BDAF7B803CF_4AAFA16202D3exec_var*
begin
//#UC START# *4BDAF7B803CF_4AAFA16202D3exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4BDAF7B803CF_4AAFA16202D3exec_impl*
end;//TenPostingsList.Tree_Wrap_Execute

function TenPostingsList.Save: Boolean;
//#UC START# *4C84F272012A_4AAFA16202D3_var*
//#UC END# *4C84F272012A_4AAFA16202D3_var*
begin
//#UC START# *4C84F272012A_4AAFA16202D3_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C84F272012A_4AAFA16202D3_impl*
end;//TenPostingsList.Save

{$IfEnd} //Monitorings AND not Admin

end.