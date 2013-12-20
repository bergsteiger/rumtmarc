unit PrimConsultationMark_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Consultation/Forms/PrimConsultationMark_Form.pas"
// �����: 27.01.2009 13:06
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 ���������������� �������::Consultation::View::Consultation::PrimConsultationMark
//
// ������ ������������
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
  Classes,
  bsTypes,
  StdCtrls
  {$If not defined(NoVCM)}
  ,
  vcmEntityForm
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  vtPanel,
  ConsultationDomainInterfaces,
  eeMemoWithEditOperations,
  vtGroupBox,
  vtLabel,
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
  PrimConsultationMark_utcmMain_UserType,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmControllers {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
const
  { Constants }
 c_TextCommentLen = 6000;

type
 TPrimConsultationMarkForm = {form} class(TvcmEntityForm)
  {* ������ ������������ }
 private
 // private fields
   f_gbMark : TvtGroupBox;
    {* ���� ��� �������� gbMark}
   f_rbNotSure : TRadioButton;
    {* ���� ��� �������� rbNotSure}
   f_rbTwo : TRadioButton;
    {* ���� ��� �������� rbTwo}
   f_rbThree : TRadioButton;
    {* ���� ��� �������� rbThree}
   f_rbFour : TRadioButton;
    {* ���� ��� �������� rbFour}
   f_rbFive : TRadioButton;
    {* ���� ��� �������� rbFive}
   f_pnlHelp : TvtPanel;
    {* ���� ��� �������� pnlHelp}
   f_lblHelp : TvtLabel;
    {* ���� ��� �������� lblHelp}
   f_gbComment : TvtGroupBox;
    {* ���� ��� �������� gbComment}
   f_mComment : TeeMemoWithEditOperations;
    {* ���� ��� �������� mComment}
 protected
  procedure SignalDataSourceChanged(const anOld : IvcmViewAreaController;
                                const aDsNew : IvcmViewAreaController); override;
  procedure MakeControls; override;
 private
 // private methods
   procedure RbNotSureClick(Sender: TObject);
     {* TNotifyEvent is used for events that do not require parameters. }
   procedure RbFiveClick(Sender: TObject);
     {* TNotifyEvent is used for events that do not require parameters. }
   procedure RbFourClick(Sender: TObject);
     {* TNotifyEvent is used for events that do not require parameters. }
   procedure RbThreeClick(Sender: TObject);
     {* TNotifyEvent is used for events that do not require parameters. }
   procedure RbTwoClick(Sender: TObject);
     {* TNotifyEvent is used for events that do not require parameters. }
   procedure PlaceComponents;
     {* ��������� ������ PlaceComponents }
   procedure ChangeMark(aMark: TbsConsultationMark);
 protected
 // overridden protected methods
   {$If not defined(NoVCM)}
   procedure InitControls; override;
     {* ��������� ������������� ���������. ��� ���������� � �������� }
   {$IfEnd} //not NoVCM
 protected
 // protected fields
   DSMark : IdsConsultationMark;
    {* ������ ������������}
 public
 // public properties
   property gbMark: TvtGroupBox
     read f_gbMark;
     {* ������: }
   property rbNotSure: TRadioButton
     read f_rbNotSure;
     {* ����������� �������� (������ 0) }
   property rbTwo: TRadioButton
     read f_rbTwo;
     {* ����� (������ 2) }
   property rbThree: TRadioButton
     read f_rbThree;
     {* ����������������� (������ 3) }
   property rbFour: TRadioButton
     read f_rbFour;
     {* ������ (������ 4) }
   property rbFive: TRadioButton
     read f_rbFive;
     {* ������� (������ 5) }
   property pnlHelp: TvtPanel
     read f_pnlHelp;
   property lblHelp: TvtLabel
     read f_lblHelp;
     {* ������ ���� ������������� ��� �������� ����������� � ������ �������������� ������������. ���� ��� ���������� ��������������  ����������� �� ���� ���������������� ������, ������� ������ ��������� ������ � �������� ������� ��������� ��������� ������. }
   property gbComment: TvtGroupBox
     read f_gbComment;
     {* ����������� � ����� ������: }
   property mComment: TeeMemoWithEditOperations
     read f_mComment;
 end;//TPrimConsultationMarkForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  Forms,
  Controls,
  Types,
  l3MessageID
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  SysUtils {a},
  StdRes {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

var
   { ������������ ������ utcmMainLocalConstants }
  str_utcmMainCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'utcmMainCaption'; rValue : '������ ������');
   { ��������� ����������������� ���� "������ ������" }

type
  Tkw_PrimConsultationMark_Control_gbMark = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� gbMark
----
*������ �������������*:
[code]
�������::gbMark TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimConsultationMark_Control_gbMark

// start class Tkw_PrimConsultationMark_Control_gbMark

{$If not defined(NoScripts)}
function Tkw_PrimConsultationMark_Control_gbMark.GetString: AnsiString;
 {-}
begin
 Result := 'gbMark';
end;//Tkw_PrimConsultationMark_Control_gbMark.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimConsultationMark_Control_gbMark_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� gbMark
----
*������ �������������*:
[code]
�������::gbMark:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimConsultationMark_Control_gbMark_Push

// start class Tkw_PrimConsultationMark_Control_gbMark_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimConsultationMark_Control_gbMark_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('gbMark');
 inherited;
end;//Tkw_PrimConsultationMark_Control_gbMark_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimConsultationMark_Control_rbNotSure = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� rbNotSure
----
*������ �������������*:
[code]
�������::rbNotSure TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimConsultationMark_Control_rbNotSure

// start class Tkw_PrimConsultationMark_Control_rbNotSure

{$If not defined(NoScripts)}
function Tkw_PrimConsultationMark_Control_rbNotSure.GetString: AnsiString;
 {-}
begin
 Result := 'rbNotSure';
end;//Tkw_PrimConsultationMark_Control_rbNotSure.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimConsultationMark_Control_rbNotSure_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� rbNotSure
----
*������ �������������*:
[code]
�������::rbNotSure:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimConsultationMark_Control_rbNotSure_Push

// start class Tkw_PrimConsultationMark_Control_rbNotSure_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimConsultationMark_Control_rbNotSure_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('rbNotSure');
 inherited;
end;//Tkw_PrimConsultationMark_Control_rbNotSure_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimConsultationMark_Control_rbTwo = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� rbTwo
----
*������ �������������*:
[code]
�������::rbTwo TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimConsultationMark_Control_rbTwo

// start class Tkw_PrimConsultationMark_Control_rbTwo

{$If not defined(NoScripts)}
function Tkw_PrimConsultationMark_Control_rbTwo.GetString: AnsiString;
 {-}
begin
 Result := 'rbTwo';
end;//Tkw_PrimConsultationMark_Control_rbTwo.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimConsultationMark_Control_rbTwo_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� rbTwo
----
*������ �������������*:
[code]
�������::rbTwo:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimConsultationMark_Control_rbTwo_Push

// start class Tkw_PrimConsultationMark_Control_rbTwo_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimConsultationMark_Control_rbTwo_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('rbTwo');
 inherited;
end;//Tkw_PrimConsultationMark_Control_rbTwo_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimConsultationMark_Control_rbThree = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� rbThree
----
*������ �������������*:
[code]
�������::rbThree TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimConsultationMark_Control_rbThree

// start class Tkw_PrimConsultationMark_Control_rbThree

{$If not defined(NoScripts)}
function Tkw_PrimConsultationMark_Control_rbThree.GetString: AnsiString;
 {-}
begin
 Result := 'rbThree';
end;//Tkw_PrimConsultationMark_Control_rbThree.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimConsultationMark_Control_rbThree_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� rbThree
----
*������ �������������*:
[code]
�������::rbThree:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimConsultationMark_Control_rbThree_Push

// start class Tkw_PrimConsultationMark_Control_rbThree_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimConsultationMark_Control_rbThree_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('rbThree');
 inherited;
end;//Tkw_PrimConsultationMark_Control_rbThree_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimConsultationMark_Control_rbFour = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� rbFour
----
*������ �������������*:
[code]
�������::rbFour TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimConsultationMark_Control_rbFour

// start class Tkw_PrimConsultationMark_Control_rbFour

{$If not defined(NoScripts)}
function Tkw_PrimConsultationMark_Control_rbFour.GetString: AnsiString;
 {-}
begin
 Result := 'rbFour';
end;//Tkw_PrimConsultationMark_Control_rbFour.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimConsultationMark_Control_rbFour_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� rbFour
----
*������ �������������*:
[code]
�������::rbFour:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimConsultationMark_Control_rbFour_Push

// start class Tkw_PrimConsultationMark_Control_rbFour_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimConsultationMark_Control_rbFour_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('rbFour');
 inherited;
end;//Tkw_PrimConsultationMark_Control_rbFour_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimConsultationMark_Control_rbFive = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� rbFive
----
*������ �������������*:
[code]
�������::rbFive TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimConsultationMark_Control_rbFive

// start class Tkw_PrimConsultationMark_Control_rbFive

{$If not defined(NoScripts)}
function Tkw_PrimConsultationMark_Control_rbFive.GetString: AnsiString;
 {-}
begin
 Result := 'rbFive';
end;//Tkw_PrimConsultationMark_Control_rbFive.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimConsultationMark_Control_rbFive_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� rbFive
----
*������ �������������*:
[code]
�������::rbFive:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimConsultationMark_Control_rbFive_Push

// start class Tkw_PrimConsultationMark_Control_rbFive_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimConsultationMark_Control_rbFive_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('rbFive');
 inherited;
end;//Tkw_PrimConsultationMark_Control_rbFive_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimConsultationMark_Control_pnlHelp = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� pnlHelp
----
*������ �������������*:
[code]
�������::pnlHelp TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimConsultationMark_Control_pnlHelp

// start class Tkw_PrimConsultationMark_Control_pnlHelp

{$If not defined(NoScripts)}
function Tkw_PrimConsultationMark_Control_pnlHelp.GetString: AnsiString;
 {-}
begin
 Result := 'pnlHelp';
end;//Tkw_PrimConsultationMark_Control_pnlHelp.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimConsultationMark_Control_pnlHelp_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� pnlHelp
----
*������ �������������*:
[code]
�������::pnlHelp:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimConsultationMark_Control_pnlHelp_Push

// start class Tkw_PrimConsultationMark_Control_pnlHelp_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimConsultationMark_Control_pnlHelp_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('pnlHelp');
 inherited;
end;//Tkw_PrimConsultationMark_Control_pnlHelp_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimConsultationMark_Control_lblHelp = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� lblHelp
----
*������ �������������*:
[code]
�������::lblHelp TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimConsultationMark_Control_lblHelp

// start class Tkw_PrimConsultationMark_Control_lblHelp

{$If not defined(NoScripts)}
function Tkw_PrimConsultationMark_Control_lblHelp.GetString: AnsiString;
 {-}
begin
 Result := 'lblHelp';
end;//Tkw_PrimConsultationMark_Control_lblHelp.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimConsultationMark_Control_lblHelp_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� lblHelp
----
*������ �������������*:
[code]
�������::lblHelp:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimConsultationMark_Control_lblHelp_Push

// start class Tkw_PrimConsultationMark_Control_lblHelp_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimConsultationMark_Control_lblHelp_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('lblHelp');
 inherited;
end;//Tkw_PrimConsultationMark_Control_lblHelp_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimConsultationMark_Control_gbComment = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� gbComment
----
*������ �������������*:
[code]
�������::gbComment TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimConsultationMark_Control_gbComment

// start class Tkw_PrimConsultationMark_Control_gbComment

{$If not defined(NoScripts)}
function Tkw_PrimConsultationMark_Control_gbComment.GetString: AnsiString;
 {-}
begin
 Result := 'gbComment';
end;//Tkw_PrimConsultationMark_Control_gbComment.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimConsultationMark_Control_gbComment_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� gbComment
----
*������ �������������*:
[code]
�������::gbComment:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimConsultationMark_Control_gbComment_Push

// start class Tkw_PrimConsultationMark_Control_gbComment_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimConsultationMark_Control_gbComment_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('gbComment');
 inherited;
end;//Tkw_PrimConsultationMark_Control_gbComment_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimConsultationMark_Control_mComment = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� mComment
----
*������ �������������*:
[code]
�������::mComment TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimConsultationMark_Control_mComment

// start class Tkw_PrimConsultationMark_Control_mComment

{$If not defined(NoScripts)}
function Tkw_PrimConsultationMark_Control_mComment.GetString: AnsiString;
 {-}
begin
 Result := 'mComment';
end;//Tkw_PrimConsultationMark_Control_mComment.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimConsultationMark_Control_mComment_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� mComment
----
*������ �������������*:
[code]
�������::mComment:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimConsultationMark_Control_mComment_Push

// start class Tkw_PrimConsultationMark_Control_mComment_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimConsultationMark_Control_mComment_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('mComment');
 inherited;
end;//Tkw_PrimConsultationMark_Control_mComment_Push.DoDoIt
{$IfEnd} //not NoScripts

procedure TPrimConsultationMarkForm.RbNotSureClick(Sender: TObject);
//#UC START# *5176B3D003B4_497EDC5003D1_var*
//#UC END# *5176B3D003B4_497EDC5003D1_var*
begin
//#UC START# *5176B3D003B4_497EDC5003D1_impl*
 ChangeMark(bs_cmNotSure);
//#UC END# *5176B3D003B4_497EDC5003D1_impl*
end;//TPrimConsultationMarkForm.RbNotSureClick

procedure TPrimConsultationMarkForm.RbFiveClick(Sender: TObject);
//#UC START# *5176B3E200C1_497EDC5003D1_var*
//#UC END# *5176B3E200C1_497EDC5003D1_var*
begin
//#UC START# *5176B3E200C1_497EDC5003D1_impl*
 ChangeMark(bs_cmFive);
//#UC END# *5176B3E200C1_497EDC5003D1_impl*
end;//TPrimConsultationMarkForm.RbFiveClick

procedure TPrimConsultationMarkForm.RbFourClick(Sender: TObject);
//#UC START# *5176B3F200F4_497EDC5003D1_var*
//#UC END# *5176B3F200F4_497EDC5003D1_var*
begin
//#UC START# *5176B3F200F4_497EDC5003D1_impl*
 ChangeMark(bs_cmFour);
//#UC END# *5176B3F200F4_497EDC5003D1_impl*
end;//TPrimConsultationMarkForm.RbFourClick

procedure TPrimConsultationMarkForm.RbThreeClick(Sender: TObject);
//#UC START# *5176B3FD0292_497EDC5003D1_var*
//#UC END# *5176B3FD0292_497EDC5003D1_var*
begin
//#UC START# *5176B3FD0292_497EDC5003D1_impl*
 ChangeMark(bs_cmThree);
//#UC END# *5176B3FD0292_497EDC5003D1_impl*
end;//TPrimConsultationMarkForm.RbThreeClick

procedure TPrimConsultationMarkForm.RbTwoClick(Sender: TObject);
//#UC START# *5176B4060002_497EDC5003D1_var*
//#UC END# *5176B4060002_497EDC5003D1_var*
begin
//#UC START# *5176B4060002_497EDC5003D1_impl*
 ChangeMark(bs_cmTwo);
//#UC END# *5176B4060002_497EDC5003D1_impl*
end;//TPrimConsultationMarkForm.RbTwoClick

procedure TPrimConsultationMarkForm.PlaceComponents;
//#UC START# *5176B4200040_497EDC5003D1_var*
const
 c_Indent = 10;
var
 l_Rect: TRect;
//#UC END# *5176B4200040_497EDC5003D1_var*
begin
//#UC START# *5176B4200040_497EDC5003D1_impl*
 l_Rect := ClientRect;
 AlignControls(nil, l_Rect);
 
 mComment.Left := c_Indent;
 mComment.Top := c_Indent * 2;
 mComment.Width := gbComment.Width - mComment.Left - c_Indent;
 mComment.Height := gbComment.Height - mComment.Top - c_Indent;

 lblHelp.Left := (pnlHelp.Width - lblHelp.Width) div 2;
 lblHelp.Top := (pnlHelp.Height - lblHelp.Height) div 2;
//#UC END# *5176B4200040_497EDC5003D1_impl*
end;//TPrimConsultationMarkForm.PlaceComponents

procedure TPrimConsultationMarkForm.ChangeMark(aMark: TbsConsultationMark);
//#UC START# *5176B42C0279_497EDC5003D1_var*
//#UC END# *5176B42C0279_497EDC5003D1_var*
begin
//#UC START# *5176B42C0279_497EDC5003D1_impl*
 if Assigned(dsMark) then
  dsMark.Mark := aMark;
//#UC END# *5176B42C0279_497EDC5003D1_impl*
end;//TPrimConsultationMarkForm.ChangeMark

{$If not defined(NoVCM)}
procedure TPrimConsultationMarkForm.InitControls;
//#UC START# *4A8E8F2E0195_497EDC5003D1_var*
//#UC END# *4A8E8F2E0195_497EDC5003D1_var*
begin
//#UC START# *4A8E8F2E0195_497EDC5003D1_impl*
 BorderIcons := [biSystemMenu];
 BorderStyle := bsSingle;
 ClientHeight := 225;
 ClientWidth := 613;

 with gbMark do
 begin
  Align := alLeft;
  Width := 238;
  TabOrder := 0;
 end;
 
 with rbFive do
 begin
  Left := 8;
  Top := 17;
  Width := 222;
  Height := 14;
  TabOrder := 0;
  OnClick := rbFiveClick;
 end;
 with rbFour do
 begin
  Left := 8;
  Top := 43;
  Width := 222;
  Height := 14;
  TabOrder := 1;
  OnClick := rbFourClick;
 end;
 with rbThree do
 begin
  Left := 8;
  Top := 68;
  Width := 222;
  Height := 14;
  TabOrder := 2;
  OnClick := rbThreeClick;
 end;
 with rbTwo do
 begin
  Left := 8;
  Top := 94;
  Width := 222;
  Height := 14;
  TabOrder := 3;
  OnClick := rbTwoClick;
 end;
 with rbNotSure do
 begin
  Left := 8;
  Top := 120;
  Width := 222;
  Height := 14;
  TabOrder := 4;
  OnClick := rbNotSureClick;
 end;

 with pnlHelp do
 begin
  Align := alTop;
  BevelOuter := bvNone;
  Height := 73;
  TabOrder := 1;
 end;
 with lblHelp do
 begin
  WordWrap := True;
  Left := 20;
  Top := 6;
  Width := 560;
  Height := 64;
 end;

 with gbComment do
 begin
  Align := alClient;
  TabOrder := 2;
 end;
 with mComment do
 begin
  Left := 13;
  Top := 20;
  Width := 352;
  Height := 121;
  AutoSelect := False;
  BorderStyle := bsSingle;
  TabOrder := 0;
  TabStop := True;
 end;

 PlaceComponents;
 mComment.TextSource;
 if mComment.HasDocument then
  mComment.TextSource.DocumentContainer.DocumentLimits.BruttoCharLimit := c_TextCommentLen;
//#UC END# *4A8E8F2E0195_497EDC5003D1_impl*
end;//TPrimConsultationMarkForm.InitControls
{$IfEnd} //not NoVCM

procedure TPrimConsultationMarkForm.SignalDataSourceChanged(const anOld : IvcmViewAreaController;
 const aDsNew : IvcmViewAreaController);
begin
 inherited;
 if (aDsNew = nil) then
 begin
  DSMark := nil;
 end//aDsNew = nil
 else
 begin
  Supports(aDsNew, IdsConsultationMark, DSMark);
 end;//aDsNew = nil
end;

procedure TPrimConsultationMarkForm.MakeControls;
begin
 inherited;
 with AddUsertype(utcmMainName,
  str_utcmMainCaption,
  str_utcmMainCaption,
  false,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(utcmMainName
 f_gbMark := TvtGroupBox.Create(Self);
 f_gbMark.Name := 'gbMark';
 f_gbMark.Parent := Self;
 f_gbMark.Caption := '������:';
 f_rbNotSure := TRadioButton.Create(Self);
 f_rbNotSure.Name := 'rbNotSure';
 f_rbNotSure.Parent := gbMark;
 f_rbNotSure.Caption := '����������� �������� (������ 0)';
 f_rbTwo := TRadioButton.Create(Self);
 f_rbTwo.Name := 'rbTwo';
 f_rbTwo.Parent := gbMark;
 f_rbTwo.Caption := '����� (������ 2)';
 f_rbThree := TRadioButton.Create(Self);
 f_rbThree.Name := 'rbThree';
 f_rbThree.Parent := gbMark;
 f_rbThree.Caption := '����������������� (������ 3)';
 f_rbFour := TRadioButton.Create(Self);
 f_rbFour.Name := 'rbFour';
 f_rbFour.Parent := gbMark;
 f_rbFour.Caption := '������ (������ 4)';
 f_rbFive := TRadioButton.Create(Self);
 f_rbFive.Name := 'rbFive';
 f_rbFive.Parent := gbMark;
 f_rbFive.Caption := '������� (������ 5)';
 f_pnlHelp := TvtPanel.Create(Self);
 f_pnlHelp.Name := 'pnlHelp';
 f_pnlHelp.Parent := Self;
 f_lblHelp := TvtLabel.Create(Self);
 f_lblHelp.Name := 'lblHelp';
 f_lblHelp.Parent := pnlHelp;
 f_lblHelp.Caption := '������ ���� ������������� ��� �������� ����������� � ������ �������������� ������������. ���� ��� ���������� ��������������  ����������� �� ���� ���������������� ������, ������� ������ ��������� ������ � �������� ������� ��������� ��������� ������.';
 f_gbComment := TvtGroupBox.Create(Self);
 f_gbComment.Name := 'gbComment';
 f_gbComment.Parent := Self;
 f_gbComment.Caption := '����������� � ����� ������:';
 f_mComment := TeeMemoWithEditOperations.Create(Self);
 f_mComment.Name := 'mComment';
 f_mComment.Parent := gbComment;
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ������������� str_utcmMainCaption
 str_utcmMainCaption.Init;
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimConsultationMark_Control_gbMark
 Tkw_PrimConsultationMark_Control_gbMark.Register('�������::gbMark', TvtGroupBox);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimConsultationMark_Control_gbMark_Push
 Tkw_PrimConsultationMark_Control_gbMark_Push.Register('�������::gbMark:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimConsultationMark_Control_rbNotSure
 Tkw_PrimConsultationMark_Control_rbNotSure.Register('�������::rbNotSure', TRadioButton);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimConsultationMark_Control_rbNotSure_Push
 Tkw_PrimConsultationMark_Control_rbNotSure_Push.Register('�������::rbNotSure:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimConsultationMark_Control_rbTwo
 Tkw_PrimConsultationMark_Control_rbTwo.Register('�������::rbTwo', TRadioButton);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimConsultationMark_Control_rbTwo_Push
 Tkw_PrimConsultationMark_Control_rbTwo_Push.Register('�������::rbTwo:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimConsultationMark_Control_rbThree
 Tkw_PrimConsultationMark_Control_rbThree.Register('�������::rbThree', TRadioButton);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimConsultationMark_Control_rbThree_Push
 Tkw_PrimConsultationMark_Control_rbThree_Push.Register('�������::rbThree:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimConsultationMark_Control_rbFour
 Tkw_PrimConsultationMark_Control_rbFour.Register('�������::rbFour', TRadioButton);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimConsultationMark_Control_rbFour_Push
 Tkw_PrimConsultationMark_Control_rbFour_Push.Register('�������::rbFour:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimConsultationMark_Control_rbFive
 Tkw_PrimConsultationMark_Control_rbFive.Register('�������::rbFive', TRadioButton);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimConsultationMark_Control_rbFive_Push
 Tkw_PrimConsultationMark_Control_rbFive_Push.Register('�������::rbFive:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimConsultationMark_Control_pnlHelp
 Tkw_PrimConsultationMark_Control_pnlHelp.Register('�������::pnlHelp', TvtPanel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimConsultationMark_Control_pnlHelp_Push
 Tkw_PrimConsultationMark_Control_pnlHelp_Push.Register('�������::pnlHelp:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimConsultationMark_Control_lblHelp
 Tkw_PrimConsultationMark_Control_lblHelp.Register('�������::lblHelp', TvtLabel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimConsultationMark_Control_lblHelp_Push
 Tkw_PrimConsultationMark_Control_lblHelp_Push.Register('�������::lblHelp:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimConsultationMark_Control_gbComment
 Tkw_PrimConsultationMark_Control_gbComment.Register('�������::gbComment', TvtGroupBox);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimConsultationMark_Control_gbComment_Push
 Tkw_PrimConsultationMark_Control_gbComment_Push.Register('�������::gbComment:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimConsultationMark_Control_mComment
 Tkw_PrimConsultationMark_Control_mComment.Register('�������::mComment', TeeMemoWithEditOperations);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimConsultationMark_Control_mComment_Push
 Tkw_PrimConsultationMark_Control_mComment_Push.Register('�������::mComment:push');
{$IfEnd} //not Admin AND not Monitorings

end.