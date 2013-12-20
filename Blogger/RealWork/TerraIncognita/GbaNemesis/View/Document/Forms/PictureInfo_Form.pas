unit PictureInfo_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: �������� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Document/Forms/PictureInfo_Form.pas"
// �����: 11 ���� 2007
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 ������ � ���������� � ������� ����������::Document::View::Document::Document::PictureInfo
//
// ���������� � ��������
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
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  l3StringIDEx,
  PrimPictureInfoOptions_Form
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
  PictureInfo_ut_PictureInfo_UserType,
  eeMemoWithEditOperations,
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
  Ten_PictureInfo = {final form} class(TvcmEntityFormRef)
   {* ���������� � �������� }
  Entities : TvcmEntities;
  Info: TeeMemoWithEditOperations;
  protected
   procedure MakeControls; override;
  end;//Ten_PictureInfo

  TPictureInfoForm = Ten_PictureInfo;
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
    { ������������ ������ ut_PictureInfoLocalConstants }
   str_ut_PictureInfoCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'ut_PictureInfoCaption'; rValue : '���������� � ��������');
    { ��������� ����������������� ���� "���������� � ��������" }

type
   Tkw_Form_PictureInfo = class(TtfwControlString)
    {* ����� ������� ��� �������������� ����� PictureInfo
----
*������ �������������*:
[code]
'aControl' �����::PictureInfo TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_PictureInfo

// start class Tkw_Form_PictureInfo

{$If not defined(NoScripts)}
function Tkw_Form_PictureInfo.GetString: AnsiString;
 {-}
begin
 Result := 'en_PictureInfo';
end;//Tkw_Form_PictureInfo.GetString
{$IfEnd} //not NoScripts

type
   Tkw_PictureInfo_Info_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� Info ����� PictureInfo }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_PictureInfo_Info_ControlInstance

// start class Tkw_PictureInfo_Info_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_PictureInfo_Info_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_PictureInfo).Info);
end;//Tkw_PictureInfo_Info_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

procedure Ten_PictureInfo.MakeControls;
begin
 inherited;
 with AddUsertype(ut_PictureInfoName,
  str_ut_PictureInfoCaption,
  str_ut_PictureInfoCaption,
  false,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(ut_PictureInfoName
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Form_PictureInfo
 Tkw_Form_PictureInfo.Register('�����::PictureInfo', Ten_PictureInfo);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PictureInfo_Info_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_PictureInfo.Info', Tkw_PictureInfo_Info_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ������������� str_ut_PictureInfoCaption
 str_ut_PictureInfoCaption.Init;
{$IfEnd} //not Admin AND not Monitorings

end.