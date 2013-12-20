unit DocumentUserTypes_dftAnnotationSynchroView_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/DocumentUserTypes_dftAnnotationSynchroView_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::DocumentUserTypes::dftAnnotationSynchroView
//
// ��������� (���������� ��������)
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
  DocumentUserTypes_dftTranslation_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� dftAnnotationSynchroView }
  dftAnnotationSynchroViewName = 'dftAnnotationSynchroView';
   { ��������� ������������� ����������������� ���� "��������� (���������� ��������)" }
  dftAnnotationSynchroView = TvcmUserType(dftTranslation + 1);
   { ��������� (���������� ��������) }

type
  Tkw_FormUserType_dftAnnotationSynchroView = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� dftAnnotationSynchroView }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_dftAnnotationSynchroView
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_dftAnnotationSynchroView

{$If not defined(NoScripts)}
function Tkw_FormUserType_dftAnnotationSynchroView.GetInteger: Integer;
 {-}
begin
 Result := dftAnnotationSynchroView;
end;//Tkw_FormUserType_dftAnnotationSynchroView.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_dftAnnotationSynchroView
 Tkw_FormUserType_dftAnnotationSynchroView.Register('���_�����::dftAnnotationSynchroView');
{$IfEnd} //not Admin AND not Monitorings

end.