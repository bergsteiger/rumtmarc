unit Open10003000External;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "F1 Shell Tests"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Shell_Tests/Open10003000External.pas"
// �����: 21.04.2011 18:40
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<TestCase::Class>> F1 ���������� �����::F1 Shell Tests::First Step::Open10003000External
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
 TOpen10003000External = class(TInsiderOwnScripter)
 protected
 // overridden protected methods
   function GetFolder: AnsiString; override;
     {* ����� � ������� ������ ���� }
   function GetModelElementGUID: AnsiString; override;
     {* ������������� �������� ������, ������� ��������� ���� }
 end;//TOpen10003000External
{$IfEnd} //InsiderTest AND nsTest AND not Admin AND not Monitorings

implementation

{$If defined(InsiderTest) AND defined(nsTest) AND not defined(Admin) AND not defined(Monitorings)}
uses
  TestFrameWork
  ;
{$IfEnd} //InsiderTest AND nsTest AND not Admin AND not Monitorings

{$If defined(InsiderTest) AND defined(nsTest) AND not defined(Admin) AND not defined(Monitorings)}

// start class TOpen10003000External

function TOpen10003000External.GetFolder: AnsiString;
 {-}
begin
 Result := 'First Step';
end;//TOpen10003000External.GetFolder

function TOpen10003000External.GetModelElementGUID: AnsiString;
 {-}
begin
 Result := '4DB041CA0375';
end;//TOpen10003000External.GetModelElementGUID

{$IfEnd} //InsiderTest AND nsTest AND not Admin AND not Monitorings

initialization
 TestFramework.RegisterTest(TOpen10003000External.Suite);

end.