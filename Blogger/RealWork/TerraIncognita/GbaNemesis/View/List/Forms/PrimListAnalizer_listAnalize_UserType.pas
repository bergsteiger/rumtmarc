unit PrimListAnalizer_listAnalize_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/List/Forms/PrimListAnalizer_listAnalize_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 ������ � ���������� � ������� ����������::WorkWithList::View::List::PrimListAnalizer::listAnalize
//
// ������ ������
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
   { ��������� ��� ���� ����� listAnalize }
  listAnalizeName = 'listAnalize';
   { ��������� ������������� ����������������� ���� "������ ������" }
  listAnalize = TvcmUserType(0);
   { ������ ������ }

type
  Tkw_FormUserType_listAnalize = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� listAnalize }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_listAnalize
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_listAnalize

{$If not defined(NoScripts)}
function Tkw_FormUserType_listAnalize.GetInteger: Integer;
 {-}
begin
 Result := listAnalize;
end;//Tkw_FormUserType_listAnalize.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_listAnalize
 Tkw_FormUserType_listAnalize.Register('���_�����::listAnalize');
{$IfEnd} //not Admin AND not Monitorings

end.