unit PrimAdmin_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Admin/Forms/PrimAdmin_Form.pas"
// �����: 11.11.2009 21:24
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMContainer::Class>> F1 �������������::Admin::View::Admin::PrimAdmin
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If defined(Admin)}
uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  vtSizeablePanel,
  vtPanel,
  vtProportionalPanel,
  l3StringIDEx
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwBynameControlPush
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  PrimAdmin_utAdmin_UserType,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a},
  vcmContainerForm {a}
  ;
{$IfEnd} //Admin

{$If defined(Admin)}
type
 TPrimAdminForm = {form} class(TvcmContainerForm)
 private
 // private fields
   f_BackgroundPanel : TvtProportionalPanel;
    {* ���� ��� �������� BackgroundPanel}
   f_PropertyZone : TvtSizeablePanel;
    {* ���� ��� �������� PropertyZone}
   f_TreeZone : TvtPanel;
    {* ���� ��� �������� TreeZone}
 protected
  procedure MakeControls; override;
 protected
 // property methods
   function pm_GetBackgroundPanel: TvtProportionalPanel;
   function pm_GetPropertyZone: TvtSizeablePanel;
   function pm_GetTreeZone: TvtPanel;
 public
 // public properties
   property BackgroundPanel: TvtProportionalPanel
     read pm_GetBackgroundPanel;
   property PropertyZone: TvtSizeablePanel
     read pm_GetPropertyZone;
   property TreeZone: TvtPanel
     read pm_GetTreeZone;
 end;//TPrimAdminForm
{$IfEnd} //Admin

implementation

{$If defined(Admin)}
uses
  Admin_Users_Controls,
  OfficeLike_Result_Controls,
  OfficeLike_ResultEx_Controls
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  l3MessageID,
  StdRes {a}
  ;
{$IfEnd} //Admin

{$If defined(Admin)}

var
   { ������������ ������ utAdminLocalConstants }
  str_utAdminCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'utAdminCaption'; rValue : '����������������� �������������');
   { ��������� ����������������� ���� "����������������� �������������" }

type
  Tkw_PrimAdmin_Control_BackgroundPanel = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� BackgroundPanel
----
*������ �������������*:
[code]
�������::BackgroundPanel TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimAdmin_Control_BackgroundPanel

// start class Tkw_PrimAdmin_Control_BackgroundPanel

{$If not defined(NoScripts)}
function Tkw_PrimAdmin_Control_BackgroundPanel.GetString: AnsiString;
 {-}
begin
 Result := 'BackgroundPanel';
end;//Tkw_PrimAdmin_Control_BackgroundPanel.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimAdmin_Control_BackgroundPanel_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� BackgroundPanel
----
*������ �������������*:
[code]
�������::BackgroundPanel:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimAdmin_Control_BackgroundPanel_Push

// start class Tkw_PrimAdmin_Control_BackgroundPanel_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimAdmin_Control_BackgroundPanel_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('BackgroundPanel');
 inherited;
end;//Tkw_PrimAdmin_Control_BackgroundPanel_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimAdmin_Control_PropertyZone = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� PropertyZone
----
*������ �������������*:
[code]
�������::PropertyZone TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimAdmin_Control_PropertyZone

// start class Tkw_PrimAdmin_Control_PropertyZone

{$If not defined(NoScripts)}
function Tkw_PrimAdmin_Control_PropertyZone.GetString: AnsiString;
 {-}
begin
 Result := 'PropertyZone';
end;//Tkw_PrimAdmin_Control_PropertyZone.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimAdmin_Control_PropertyZone_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� PropertyZone
----
*������ �������������*:
[code]
�������::PropertyZone:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimAdmin_Control_PropertyZone_Push

// start class Tkw_PrimAdmin_Control_PropertyZone_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimAdmin_Control_PropertyZone_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('PropertyZone');
 inherited;
end;//Tkw_PrimAdmin_Control_PropertyZone_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimAdmin_Control_TreeZone = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� TreeZone
----
*������ �������������*:
[code]
�������::TreeZone TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimAdmin_Control_TreeZone

// start class Tkw_PrimAdmin_Control_TreeZone

{$If not defined(NoScripts)}
function Tkw_PrimAdmin_Control_TreeZone.GetString: AnsiString;
 {-}
begin
 Result := 'TreeZone';
end;//Tkw_PrimAdmin_Control_TreeZone.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimAdmin_Control_TreeZone_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� TreeZone
----
*������ �������������*:
[code]
�������::TreeZone:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimAdmin_Control_TreeZone_Push

// start class Tkw_PrimAdmin_Control_TreeZone_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimAdmin_Control_TreeZone_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('TreeZone');
 inherited;
end;//Tkw_PrimAdmin_Control_TreeZone_Push.DoDoIt
{$IfEnd} //not NoScripts

function TPrimAdminForm.pm_GetBackgroundPanel: TvtProportionalPanel;
begin
 if (f_BackgroundPanel = nil) then
  f_BackgroundPanel := FindComponent('BackgroundPanel') As TvtProportionalPanel;
 Result := f_BackgroundPanel;
end;

function TPrimAdminForm.pm_GetPropertyZone: TvtSizeablePanel;
begin
 if (f_PropertyZone = nil) then
  f_PropertyZone := FindComponent('PropertyZone') As TvtSizeablePanel;
 Result := f_PropertyZone;
end;

function TPrimAdminForm.pm_GetTreeZone: TvtPanel;
begin
 if (f_TreeZone = nil) then
  f_TreeZone := FindComponent('TreeZone') As TvtPanel;
 Result := f_TreeZone;
end;

procedure TPrimAdminForm.MakeControls;
begin
 inherited;
 with AddUsertype(utAdminName,
  str_utAdminCaption,
  str_utAdminCaption,
  true,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(utAdminName
end;

{$IfEnd} //Admin

initialization
{$If defined(Admin)}
// ����������� Tkw_PrimAdmin_Control_BackgroundPanel
 Tkw_PrimAdmin_Control_BackgroundPanel.Register('�������::BackgroundPanel', TvtProportionalPanel);
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_PrimAdmin_Control_BackgroundPanel_Push
 Tkw_PrimAdmin_Control_BackgroundPanel_Push.Register('�������::BackgroundPanel:push');
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_PrimAdmin_Control_PropertyZone
 Tkw_PrimAdmin_Control_PropertyZone.Register('�������::PropertyZone', TvtSizeablePanel);
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_PrimAdmin_Control_PropertyZone_Push
 Tkw_PrimAdmin_Control_PropertyZone_Push.Register('�������::PropertyZone:push');
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_PrimAdmin_Control_TreeZone
 Tkw_PrimAdmin_Control_TreeZone.Register('�������::TreeZone', TvtPanel);
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_PrimAdmin_Control_TreeZone_Push
 Tkw_PrimAdmin_Control_TreeZone_Push.Register('�������::TreeZone:push');
{$IfEnd} //Admin
{$If defined(Admin)}
// ������������� str_utAdminCaption
 str_utAdminCaption.Init;
{$IfEnd} //Admin

end.