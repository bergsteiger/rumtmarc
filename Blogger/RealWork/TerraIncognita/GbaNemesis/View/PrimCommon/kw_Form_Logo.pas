unit kw_Form_Logo;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/PrimCommon/kw_Form_Logo.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 ������� ����������� ���������� �������::F1 Application Template::View::PrimCommon::Tkw_Form_Logo
//
// ����� ������� ��� �������������� ����� Logo
// ----
// *������ �������������*:
// {code}
// 'aControl' �����::Logo TryFocus ASSERT
// {code}
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
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  
  ;

type
 Tkw_Form_Logo = class(TtfwControlString)
  {* ����� ������� ��� �������������� ����� Logo
----
*������ �������������*:
[code]
'aControl' �����::Logo TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_Logo

implementation

uses
  Logo_Form
  ;

// start class Tkw_Form_Logo

{$If not defined(NoScripts)}
function Tkw_Form_Logo.GetString: AnsiString;
 {-}
begin
 Result := 'LogoForm';
end;//Tkw_Form_Logo.GetString
{$IfEnd} //not NoScripts

initialization
// ����������� Tkw_Form_Logo
 Tkw_Form_Logo.Register('�����::Logo', TLogoForm);

end.