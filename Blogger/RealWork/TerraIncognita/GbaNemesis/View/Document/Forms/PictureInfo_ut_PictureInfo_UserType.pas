unit PictureInfo_ut_PictureInfo_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: �������� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Document/Forms/PictureInfo_ut_PictureInfo_UserType.pas"
// �����: 11 ���� 2007
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 ������ � ���������� � ������� ����������::Document::View::Document::Document::PictureInfo::ut_PictureInfo
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
  
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
    { ��������� ��� ���� ����� ut_PictureInfo }
   ut_PictureInfoName = 'ut_PictureInfo';
    { ��������� ������������� ����������������� ���� "���������� � ��������" }
   ut_PictureInfo = TvcmUserType(0);
    { ���������� � �������� }

type
   Tkw_FormUserType_ut_PictureInfo = class(TtfwInteger)
    {* ����� ������� ��� ���� ����� ut_PictureInfo }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_FormUserType_ut_PictureInfo
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_ut_PictureInfo

{$If not defined(NoScripts)}
function Tkw_FormUserType_ut_PictureInfo.GetInteger: Integer;
 {-}
begin
 Result := ut_PictureInfo;
end;//Tkw_FormUserType_ut_PictureInfo.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_ut_PictureInfo
 Tkw_FormUserType_ut_PictureInfo.Register('���_�����::ut_PictureInfo');
{$IfEnd} //not Admin AND not Monitorings

end.