unit Parent_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/common/components/gui/Garant/VCM/View/ParentAndChild/Forms/Parent_Form.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFinalContainer::Class>> Shared Delphi F1 Like Application::F1Like::View::ParentAndChild::ParentAndChildPrim::Parent
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\common\components\gui\f1LikeAppDefine.inc}

interface

uses
  Classes
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  PrimParent_Form,
  F1Like_FormDefinitions_Controls
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  vtPanel,
  l3InterfacedComponent {a},
  vcmComponent {a},
  vcmBaseEntities {a},
  vcmEntities {a},
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;

type
  TParentForm = {final form} class(TvcmContainerFormRef, ParentFormDef)
  Entities : TvcmEntities;
  end;//TParentForm

implementation

{$R *.DFM}

uses
  SysUtils
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  
  ;

type
   Tkw_Form_Parent = class(TtfwControlString)
    {* ����� ������� ��� �������������� ����� Parent
----
*������ �������������*:
[code]
'aControl' �����::Parent TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_Parent

// start class Tkw_Form_Parent

{$If not defined(NoScripts)}
function Tkw_Form_Parent.GetString: AnsiString;
 {-}
begin
 Result := 'ParentForm';
end;//Tkw_Form_Parent.GetString
{$IfEnd} //not NoScripts

type
   Tkw_Parent_ParentZone_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� ParentZone ����� Parent }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Parent_ParentZone_ControlInstance

// start class Tkw_Parent_ParentZone_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Parent_ParentZone_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TParentForm).ParentZone);
end;//Tkw_Parent_ParentZone_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

initialization
// ����������� ������� ����� Parent
 fm_ParentForm.SetFactory(TParentForm.Make);
// ����������� Tkw_Form_Parent
 Tkw_Form_Parent.Register('�����::Parent', TParentForm);
// ����������� Tkw_Parent_ParentZone_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TParentForm.ParentZone', Tkw_Parent_ParentZone_ControlInstance);

end.