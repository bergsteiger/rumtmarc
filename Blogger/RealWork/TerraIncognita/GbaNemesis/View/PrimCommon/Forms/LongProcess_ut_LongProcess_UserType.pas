unit LongProcess_ut_LongProcess_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/PrimCommon/Forms/LongProcess_ut_LongProcess_UserType.pas"
// �����: 21.08.2009 20:15
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 ������� ����������� ���������� �������::F1 Application Template::View::PrimCommon::PrimCommon::LongProcess::ut_LongProcess
//
// LongProcess
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

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
    { ��������� ��� ���� ����� ut_LongProcess }
   ut_LongProcessName = 'ut_LongProcess';
    { ��������� ������������� ����������������� ���� "LongProcess" }
   ut_LongProcess = TvcmUserType(0);
    { LongProcess }

type
   Tkw_FormUserType_ut_LongProcess = class(TtfwInteger)
    {* ����� ������� ��� ���� ����� ut_LongProcess }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_FormUserType_ut_LongProcess

implementation

// start class Tkw_FormUserType_ut_LongProcess

{$If not defined(NoScripts)}
function Tkw_FormUserType_ut_LongProcess.GetInteger: Integer;
 {-}
begin
 Result := ut_LongProcess;
end;//Tkw_FormUserType_ut_LongProcess.GetInteger
{$IfEnd} //not NoScripts

initialization
// ����������� Tkw_FormUserType_ut_LongProcess
 Tkw_FormUserType_ut_LongProcess.Register('���_�����::ut_LongProcess');

end.