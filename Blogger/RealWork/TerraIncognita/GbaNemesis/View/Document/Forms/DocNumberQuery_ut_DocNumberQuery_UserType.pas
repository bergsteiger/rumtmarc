unit DocNumberQuery_ut_DocNumberQuery_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Document/Forms/DocNumberQuery_ut_DocNumberQuery_UserType.pas"
// �����: 16.09.2009 22:49
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 ������ � ���������� � ������� ����������::Document::View::Document::Document::DocNumberQuery::ut_DocNumberQuery
//
// ������� �������� �� ������
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
    { ��������� ��� ���� ����� ut_DocNumberQuery }
   ut_DocNumberQueryName = 'ut_DocNumberQuery';
    { ��������� ������������� ����������������� ���� "������� �������� �� ������" }
   ut_DocNumberQuery = TvcmUserType(0);
    { ������� �������� �� ������ }

type
   Tkw_FormUserType_ut_DocNumberQuery = class(TtfwInteger)
    {* ����� ������� ��� ���� ����� ut_DocNumberQuery }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_FormUserType_ut_DocNumberQuery
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_ut_DocNumberQuery

{$If not defined(NoScripts)}
function Tkw_FormUserType_ut_DocNumberQuery.GetInteger: Integer;
 {-}
begin
 Result := ut_DocNumberQuery;
end;//Tkw_FormUserType_ut_DocNumberQuery.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_ut_DocNumberQuery
 Tkw_FormUserType_ut_DocNumberQuery.Register('���_�����::ut_DocNumberQuery');
{$IfEnd} //not Admin AND not Monitorings

end.