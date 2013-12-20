unit Filters_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Filters/Forms/Filters_Form.pas"
// �����: 29.10.2010 15:00
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 �������� ����������::Filters::View::Filters::Filters$FP::Filters
//
// �������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  Common_FormDefinitions_Controls,
  PrimFiltersOptions_Form
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  
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
  TenFilters = {final form} class(TvcmEntityFormRef, FiltersFormDef)
   {* ������� }
  Entities : TvcmEntities;
  end;//TenFilters

  TFiltersForm = TenFilters;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$R *.DFM}

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  SysUtils
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

type
   Tkw_Form_Filters = class(TtfwControlString)
    {* ����� ������� ��� �������������� ����� Filters
----
*������ �������������*:
[code]
'aControl' �����::Filters TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_Filters

// start class Tkw_Form_Filters

{$If not defined(NoScripts)}
function Tkw_Form_Filters.GetString: AnsiString;
 {-}
begin
 Result := 'enFilters';
end;//Tkw_Form_Filters.GetString
{$IfEnd} //not NoScripts

type
   Tkw_Filters_FiltersList_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� FiltersList ����� Filters }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Filters_FiltersList_ControlInstance

// start class Tkw_Filters_FiltersList_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Filters_FiltersList_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TenFilters).FiltersList);
end;//Tkw_Filters_FiltersList_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� ������� ����� Filters
 fm_enFilters.SetFactory(TenFilters.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Form_Filters
 Tkw_Form_Filters.Register('�����::Filters', TenFilters);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Filters_FiltersList_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TenFilters.FiltersList', Tkw_Filters_FiltersList_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.