unit K265391680;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "F1 Shell Tests"
// �����: ����� �.�
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Shell_Tests/K265391680.pas"
// �����: 27.04.2011 13:56
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<TestCase::Class>> F1 ���������� �����::F1 Shell Tests::First Step::K265391680
//
// {RequestLink:265391680}
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\GbaNemesis\nsDefine.inc}

interface

{$If defined(InsiderTest) AND defined(nsTest) AND not defined(Admin) AND not defined(Monitorings)}
uses
  InsiderOwnScripter
  ;
{$IfEnd} //InsiderTest AND nsTest AND not Admin AND not Monitorings

{$If defined(InsiderTest) AND defined(nsTest) AND not defined(Admin) AND not defined(Monitorings)}
type
 TK265391680 = class(TInsiderOwnScripter)
  {* [RequestLink:265391680] }
 protected
 // overridden protected methods
   function GetFolder: AnsiString; override;
     {* ����� � ������� ������ ���� }
   function GetModelElementGUID: AnsiString; override;
     {* ������������� �������� ������, ������� ��������� ���� }
 end;//TK265391680
{$IfEnd} //InsiderTest AND nsTest AND not Admin AND not Monitorings

implementation

{$If defined(InsiderTest) AND defined(nsTest) AND not defined(Admin) AND not defined(Monitorings)}
uses
  TestFrameWork
  ;
{$IfEnd} //InsiderTest AND nsTest AND not Admin AND not Monitorings

{$If defined(InsiderTest) AND defined(nsTest) AND not defined(Admin) AND not defined(Monitorings)}

// start class TK265391680

function TK265391680.GetFolder: AnsiString;
 {-}
begin
 Result := 'First Step';
end;//TK265391680.GetFolder

function TK265391680.GetModelElementGUID: AnsiString;
 {-}
begin
 Result := '4DB7E84D0119';
end;//TK265391680.GetModelElementGUID

{$IfEnd} //InsiderTest AND nsTest AND not Admin AND not Monitorings

initialization
 TestFramework.RegisterTest(TK265391680.Suite);

end.