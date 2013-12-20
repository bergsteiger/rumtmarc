unit DocumentUserTypes_dftAnnotation_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/DocumentUserTypes_dftAnnotation_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::DocumentUserTypes::dftAnnotation
//
// ���������
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
  DocumentUserTypes_dftDictSubEntry_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� dftAnnotation }
  dftAnnotationName = 'dftAnnotation';
   { ��������� ������������� ����������������� ���� "���������" }
  dftAnnotation = TvcmUserType(dftDictSubEntry + 1);
   { ��������� }

type
  Tkw_FormUserType_dftAnnotation = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� dftAnnotation }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_dftAnnotation
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_dftAnnotation

{$If not defined(NoScripts)}
function Tkw_FormUserType_dftAnnotation.GetInteger: Integer;
 {-}
begin
 Result := dftAnnotation;
end;//Tkw_FormUserType_dftAnnotation.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_dftAnnotation
 Tkw_FormUserType_dftAnnotation.Register('���_�����::dftAnnotation');
{$IfEnd} //not Admin AND not Monitorings

end.