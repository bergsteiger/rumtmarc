unit PrimWorkJournal_utWorkJournal_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/WorkJournal/Forms/PrimWorkJournal_utWorkJournal_UserType.pas"
// �����: 27.04.2010 16:22
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 �������� ����������::WorkJournal::View::WorkJournal::PrimWorkJournal::utWorkJournal
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
   { ��������� ��� ���� ����� utWorkJournal }
  utWorkJournalName = 'utWorkJournal';
   { ��������� ������������� ����������������� ���� "������ ������" }
  utWorkJournal = TvcmUserType(0);
   { ������ ������ }

type
  Tkw_FormUserType_utWorkJournal = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� utWorkJournal }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utWorkJournal
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utWorkJournal

{$If not defined(NoScripts)}
function Tkw_FormUserType_utWorkJournal.GetInteger: Integer;
 {-}
begin
 Result := utWorkJournal;
end;//Tkw_FormUserType_utWorkJournal.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_utWorkJournal
 Tkw_FormUserType_utWorkJournal.Register('���_�����::utWorkJournal');
{$IfEnd} //not Admin AND not Monitorings

end.