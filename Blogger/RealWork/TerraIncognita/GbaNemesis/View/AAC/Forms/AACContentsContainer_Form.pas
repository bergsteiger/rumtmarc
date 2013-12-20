unit AACContentsContainer_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/AAC/Forms/AACContentsContainer_Form.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFinalContainer::Class>> F1 ���������������� �������::AAC::View::AAC::AACPrim::AACContentsContainer
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
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  AACContainerPrim_Form
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  vtProportionalPanel,
  vtPanel,
  vtScrollBar,
  vtSizeablePanel,
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
    { AACContentsContainerIDs }
   fm_AACContentsContainerForm : TvcmFormDescriptor = (rFormID : (rName : 'AACContentsContainerForm'; rID : 0); rFactory : nil);
    { ������������� ����� TAACContentsContainerForm }

type
 AACContentsContainerFormDef = interface(IUnknown)
  {* ������������� ����� AACContentsContainer }
   ['{3EBD2AC1-BEED-4678-BF35-5B80CE4A6852}']
 end;//AACContentsContainerFormDef

  TAACContentsContainerForm = {final form} class(TvcmContainerFormRef, AACContentsContainerFormDef)
  Entities : TvcmEntities;
  end;//TAACContentsContainerForm
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
   Tkw_Form_AACContentsContainer = class(TtfwControlString)
    {* ����� ������� ��� �������������� ����� AACContentsContainer
----
*������ �������������*:
[code]
'aControl' �����::AACContentsContainer TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_AACContentsContainer

// start class Tkw_Form_AACContentsContainer

{$If not defined(NoScripts)}
function Tkw_Form_AACContentsContainer.GetString: AnsiString;
 {-}
begin
 Result := 'AACContentsContainerForm';
end;//Tkw_Form_AACContentsContainer.GetString
{$IfEnd} //not NoScripts

type
   Tkw_AACContentsContainer_pnBack_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� pnBack ����� AACContentsContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_AACContentsContainer_pnBack_ControlInstance

// start class Tkw_AACContentsContainer_pnBack_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AACContentsContainer_pnBack_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TAACContentsContainerForm).pnBack);
end;//Tkw_AACContentsContainer_pnBack_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_AACContentsContainer_pnRightEx_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� pnRightEx ����� AACContentsContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_AACContentsContainer_pnRightEx_ControlInstance

// start class Tkw_AACContentsContainer_pnRightEx_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AACContentsContainer_pnRightEx_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TAACContentsContainerForm).pnRightEx);
end;//Tkw_AACContentsContainer_pnRightEx_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_AACContentsContainer_pnRightForScroll_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� pnRightForScroll ����� AACContentsContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_AACContentsContainer_pnRightForScroll_ControlInstance

// start class Tkw_AACContentsContainer_pnRightForScroll_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AACContentsContainer_pnRightForScroll_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TAACContentsContainerForm).pnRightForScroll);
end;//Tkw_AACContentsContainer_pnRightForScroll_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_AACContentsContainer_pnRight_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� pnRight ����� AACContentsContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_AACContentsContainer_pnRight_ControlInstance

// start class Tkw_AACContentsContainer_pnRight_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AACContentsContainer_pnRight_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TAACContentsContainerForm).pnRight);
end;//Tkw_AACContentsContainer_pnRight_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_AACContentsContainer_pnlRightTop_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� pnlRightTop ����� AACContentsContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_AACContentsContainer_pnlRightTop_ControlInstance

// start class Tkw_AACContentsContainer_pnlRightTop_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AACContentsContainer_pnlRightTop_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TAACContentsContainerForm).pnlRightTop);
end;//Tkw_AACContentsContainer_pnlRightTop_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_AACContentsContainer_scrRight_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� scrRight ����� AACContentsContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_AACContentsContainer_scrRight_ControlInstance

// start class Tkw_AACContentsContainer_scrRight_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AACContentsContainer_scrRight_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TAACContentsContainerForm).scrRight);
end;//Tkw_AACContentsContainer_scrRight_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_AACContentsContainer_pnLeftEx_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� pnLeftEx ����� AACContentsContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_AACContentsContainer_pnLeftEx_ControlInstance

// start class Tkw_AACContentsContainer_pnLeftEx_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AACContentsContainer_pnLeftEx_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TAACContentsContainerForm).pnLeftEx);
end;//Tkw_AACContentsContainer_pnLeftEx_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_AACContentsContainer_pnLeftForScroll_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� pnLeftForScroll ����� AACContentsContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_AACContentsContainer_pnLeftForScroll_ControlInstance

// start class Tkw_AACContentsContainer_pnLeftForScroll_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AACContentsContainer_pnLeftForScroll_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TAACContentsContainerForm).pnLeftForScroll);
end;//Tkw_AACContentsContainer_pnLeftForScroll_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_AACContentsContainer_pnlLeftTop_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� pnlLeftTop ����� AACContentsContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_AACContentsContainer_pnlLeftTop_ControlInstance

// start class Tkw_AACContentsContainer_pnlLeftTop_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AACContentsContainer_pnlLeftTop_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TAACContentsContainerForm).pnlLeftTop);
end;//Tkw_AACContentsContainer_pnlLeftTop_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_AACContentsContainer_pnLeft_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� pnLeft ����� AACContentsContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_AACContentsContainer_pnLeft_ControlInstance

// start class Tkw_AACContentsContainer_pnLeft_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AACContentsContainer_pnLeft_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TAACContentsContainerForm).pnLeft);
end;//Tkw_AACContentsContainer_pnLeft_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_AACContentsContainer_scrLeft_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� scrLeft ����� AACContentsContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_AACContentsContainer_scrLeft_ControlInstance

// start class Tkw_AACContentsContainer_scrLeft_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AACContentsContainer_scrLeft_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TAACContentsContainerForm).scrLeft);
end;//Tkw_AACContentsContainer_scrLeft_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� ������� ����� AACContentsContainer
 fm_AACContentsContainerForm.SetFactory(TAACContentsContainerForm.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Form_AACContentsContainer
 Tkw_Form_AACContentsContainer.Register('�����::AACContentsContainer', TAACContentsContainerForm);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_AACContentsContainer_pnBack_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TAACContentsContainerForm.pnBack', Tkw_AACContentsContainer_pnBack_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_AACContentsContainer_pnRightEx_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TAACContentsContainerForm.pnRightEx', Tkw_AACContentsContainer_pnRightEx_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_AACContentsContainer_pnRightForScroll_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TAACContentsContainerForm.pnRightForScroll', Tkw_AACContentsContainer_pnRightForScroll_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_AACContentsContainer_pnRight_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TAACContentsContainerForm.pnRight', Tkw_AACContentsContainer_pnRight_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_AACContentsContainer_pnlRightTop_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TAACContentsContainerForm.pnlRightTop', Tkw_AACContentsContainer_pnlRightTop_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_AACContentsContainer_scrRight_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TAACContentsContainerForm.scrRight', Tkw_AACContentsContainer_scrRight_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_AACContentsContainer_pnLeftEx_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TAACContentsContainerForm.pnLeftEx', Tkw_AACContentsContainer_pnLeftEx_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_AACContentsContainer_pnLeftForScroll_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TAACContentsContainerForm.pnLeftForScroll', Tkw_AACContentsContainer_pnLeftForScroll_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_AACContentsContainer_pnlLeftTop_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TAACContentsContainerForm.pnlLeftTop', Tkw_AACContentsContainer_pnlLeftTop_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_AACContentsContainer_pnLeft_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TAACContentsContainerForm.pnLeft', Tkw_AACContentsContainer_pnLeft_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_AACContentsContainer_scrLeft_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TAACContentsContainerForm.scrLeft', Tkw_AACContentsContainer_scrLeft_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.