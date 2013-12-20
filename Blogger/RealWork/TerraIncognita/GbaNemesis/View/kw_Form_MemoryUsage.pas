unit kw_Form_MemoryUsage;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/kw_Form_MemoryUsage.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 �������� ��� �����������::F1 Without Usecases::View::Main::Tkw_Form_MemoryUsage
//
// ����� ������� ��� �������������� ����� MemoryUsage
// ----
// *������ �������������*:
// {code}
// 'aControl' �����::MemoryUsage TryFocus ASSERT
// {code}
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
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 Tkw_Form_MemoryUsage = class(TtfwControlString)
  {* ����� ������� ��� �������������� ����� MemoryUsage
----
*������ �������������*:
[code]
'aControl' �����::MemoryUsage TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_MemoryUsage
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  MemoryUsage_Form
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

// start class Tkw_Form_MemoryUsage

{$If not defined(NoScripts)}
function Tkw_Form_MemoryUsage.GetString: AnsiString;
 {-}
begin
 Result := 'MemoryUsageForm';
end;//Tkw_Form_MemoryUsage.GetString
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Form_MemoryUsage
 Tkw_Form_MemoryUsage.Register('�����::MemoryUsage', TMemoryUsageForm);
{$IfEnd} //not Admin AND not Monitorings

end.