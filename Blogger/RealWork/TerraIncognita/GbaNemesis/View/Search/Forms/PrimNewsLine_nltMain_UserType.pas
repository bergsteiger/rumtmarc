unit PrimNewsLine_nltMain_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/PrimNewsLine_nltMain_UserType.pas"
// �����: 27.01.2009 11:00
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 ���������������� �������::Autoreferat::View::Search::PrimNewsLine::nltMain
//
// �����. ��� ��������� �����
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
   { ��������� ��� ���� ����� nltMain }
  nltMainName = 'nltMain';
   { ��������� ������������� ����������������� ���� "�����. ��� ��������� �����" }
  nltMain = TvcmUserType(0);
   { �����. ��� ��������� ����� }

type
  Tkw_FormUserType_nltMain = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� nltMain }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_nltMain
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_nltMain

{$If not defined(NoScripts)}
function Tkw_FormUserType_nltMain.GetInteger: Integer;
 {-}
begin
 Result := nltMain;
end;//Tkw_FormUserType_nltMain.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_nltMain
 Tkw_FormUserType_nltMain.Register('���_�����::nltMain');
{$IfEnd} //not Admin AND not Monitorings

end.