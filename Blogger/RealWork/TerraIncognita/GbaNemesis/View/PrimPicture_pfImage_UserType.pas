unit PrimPicture_pfImage_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/PrimPicture_pfImage_UserType.pas"
// �����: 15.09.2009 21:32
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 ������ � ���������� � ������� ����������::Document::View::Picture::PrimPicture::pfImage
//
// �������� ������������ �������
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
  
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� pfImage }
  pfImageName = 'pfImage';
   { ��������� ������������� ����������������� ���� "�������� ������������ �������" }
  pfImage = TvcmUserType(0);
   { �������� ������������ ������� }

type
  Tkw_FormUserType_pfImage = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� pfImage }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_pfImage
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_pfImage

{$If not defined(NoScripts)}
function Tkw_FormUserType_pfImage.GetInteger: Integer;
 {-}
begin
 Result := pfImage;
end;//Tkw_FormUserType_pfImage.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_pfImage
 Tkw_FormUserType_pfImage.Register('���_�����::pfImage');
{$IfEnd} //not Admin AND not Monitorings

end.