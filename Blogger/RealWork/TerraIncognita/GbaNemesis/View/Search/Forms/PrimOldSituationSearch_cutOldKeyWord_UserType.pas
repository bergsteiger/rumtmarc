unit PrimOldSituationSearch_cutOldKeyWord_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/PrimOldSituationSearch_cutOldKeyWord_UserType.pas"
// �����: 28.10.2009 20:45
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 �������� ����������::Search::View::Search::PrimOldSituationSearch::cutOldKeyWord
//
// ����� �� ��������
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
   { ��������� ��� ���� ����� cutOldKeyWord }
  cutOldKeyWordName = 'cutOldKeyWord';
   { ��������� ������������� ����������������� ���� "����� �� ��������" }
  cutOldKeyWord = TvcmUserType(0);
   { ����� �� �������� }

type
  Tkw_FormUserType_cutOldKeyWord = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� cutOldKeyWord }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_cutOldKeyWord
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_cutOldKeyWord

{$If not defined(NoScripts)}
function Tkw_FormUserType_cutOldKeyWord.GetInteger: Integer;
 {-}
begin
 Result := cutOldKeyWord;
end;//Tkw_FormUserType_cutOldKeyWord.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_cutOldKeyWord
 Tkw_FormUserType_cutOldKeyWord.Register('���_�����::cutOldKeyWord');
{$IfEnd} //not Admin AND not Monitorings

end.