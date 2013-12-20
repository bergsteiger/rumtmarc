unit DocNumberQuery_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Document/Forms/DocNumberQuery_Form.pas"
// �����: 16.09.2009 22:49
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 ������ � ���������� � ������� ����������::Document::View::Document::Document::DocNumberQuery
//
// ������� �������� �� ������
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
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmInterfaces
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  l3StringIDEx,
  PrimDocNumberQueryOptions_Form
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  DocNumberQuery_ut_DocNumberQuery_UserType,
  vtLabel
  {$If defined(Nemesis)}
  ,
  nscComboBox
  {$IfEnd} //Nemesis
  ,
  eeCheckBox,
  l3InterfacedComponent {a},
  vcmComponent {a},
  vcmBaseEntities {a},
  vcmEntities {a},
  vcmExternalInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
const
    { DocNumberQueryIDs }
   fm_DocNumberQueryForm : TvcmFormDescriptor = (rFormID : (rName : 'DocNumberQueryForm'; rID : 0); rFactory : nil);
    { ������������� ����� TDocNumberQueryForm }

type
 DocNumberQueryFormDef = interface(IUnknown)
  {* ������������� ����� DocNumberQuery }
   ['{A522FA71-1132-495B-A68D-0533C12052F1}']
 end;//DocNumberQueryFormDef

  TDocNumberQueryForm = {final form} class(TvcmEntityFormRef, DocNumberQueryFormDef)
   {* ������� �������� �� ������ }
  Entities : TvcmEntities;
  protected
   procedure MakeControls; override;
  end;//TDocNumberQueryForm
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
  ,
  l3MessageID
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

var
    { ������������ ������ ut_DocNumberQueryLocalConstants }
   str_ut_DocNumberQueryCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'ut_DocNumberQueryCaption'; rValue : '������� �������� �� ������');
    { ��������� ����������������� ���� "������� �������� �� ������" }

type
   Tkw_Form_DocNumberQuery = class(TtfwControlString)
    {* ����� ������� ��� �������������� ����� DocNumberQuery
----
*������ �������������*:
[code]
'aControl' �����::DocNumberQuery TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_DocNumberQuery

// start class Tkw_Form_DocNumberQuery

{$If not defined(NoScripts)}
function Tkw_Form_DocNumberQuery.GetString: AnsiString;
 {-}
begin
 Result := 'DocNumberQueryForm';
end;//Tkw_Form_DocNumberQuery.GetString
{$IfEnd} //not NoScripts

type
   Tkw_DocNumberQuery_Label1_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� Label1 ����� DocNumberQuery }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_DocNumberQuery_Label1_ControlInstance

// start class Tkw_DocNumberQuery_Label1_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_DocNumberQuery_Label1_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TDocNumberQueryForm).Label1);
end;//Tkw_DocNumberQuery_Label1_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_DocNumberQuery_edNumber_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� edNumber ����� DocNumberQuery }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_DocNumberQuery_edNumber_ControlInstance

// start class Tkw_DocNumberQuery_edNumber_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_DocNumberQuery_edNumber_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TDocNumberQueryForm).edNumber);
end;//Tkw_DocNumberQuery_edNumber_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_DocNumberQuery_cbInternal_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� cbInternal ����� DocNumberQuery }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_DocNumberQuery_cbInternal_ControlInstance

// start class Tkw_DocNumberQuery_cbInternal_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_DocNumberQuery_cbInternal_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TDocNumberQueryForm).cbInternal);
end;//Tkw_DocNumberQuery_cbInternal_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

procedure TDocNumberQueryForm.MakeControls;
begin
 inherited;
 with AddUsertype(ut_DocNumberQueryName,
  str_ut_DocNumberQueryCaption,
  str_ut_DocNumberQueryCaption,
  false,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(ut_DocNumberQueryName
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Form_DocNumberQuery
 Tkw_Form_DocNumberQuery.Register('�����::DocNumberQuery', TDocNumberQueryForm);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_DocNumberQuery_Label1_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TDocNumberQueryForm.Label1', Tkw_DocNumberQuery_Label1_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_DocNumberQuery_edNumber_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TDocNumberQueryForm.edNumber', Tkw_DocNumberQuery_edNumber_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_DocNumberQuery_cbInternal_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TDocNumberQueryForm.cbInternal', Tkw_DocNumberQuery_cbInternal_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ������������� str_ut_DocNumberQueryCaption
 str_ut_DocNumberQueryCaption.Init;
{$IfEnd} //not Admin AND not Monitorings

end.