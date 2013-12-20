unit DocumentUserTypes_dftTranslation_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/DocumentUserTypes_dftTranslation_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::DocumentUserTypes::dftTranslation
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
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  DocumentUserTypes_dftConsultation_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� dftTranslation }
  dftTranslationName = 'dftTranslation';
   { ��������� ������������� ����������������� ���� "�������" }
  dftTranslation = TvcmUserType(dftConsultation + 1);
   { ������� }

type
  Tkw_FormUserType_dftTranslation = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� dftTranslation }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_dftTranslation
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_dftTranslation

{$If not defined(NoScripts)}
function Tkw_FormUserType_dftTranslation.GetInteger: Integer;
 {-}
begin
 Result := dftTranslation;
end;//Tkw_FormUserType_dftTranslation.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_dftTranslation
 Tkw_FormUserType_dftTranslation.Register('���_�����::dftTranslation');
{$IfEnd} //not Admin AND not Monitorings

end.