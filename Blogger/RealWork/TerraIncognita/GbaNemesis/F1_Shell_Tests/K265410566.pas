unit K265410566;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "F1 Shell Tests"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Shell_Tests/K265410566.pas"
// �����: 06.05.2011 15:02
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<TestCase::Class>> F1 ���������� �����::F1 Shell Tests::Document::K265410566
//
// {RequestLink:265410566}.
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
 TK265410566 = class(TInsiderOwnScripter)
  {* [RequestLink:265410566]. }
 protected
 // overridden protected methods
   function GetFolder: AnsiString; override;
     {* ����� � ������� ������ ���� }
   function GetModelElementGUID: AnsiString; override;
     {* ������������� �������� ������, ������� ��������� ���� }
 end;//TK265410566
{$IfEnd} //InsiderTest AND nsTest AND not Admin AND not Monitorings

implementation

{$If defined(InsiderTest) AND defined(nsTest) AND not defined(Admin) AND not defined(Monitorings)}
uses
  TestFrameWork
  ;
{$IfEnd} //InsiderTest AND nsTest AND not Admin AND not Monitorings

{$If defined(InsiderTest) AND defined(nsTest) AND not defined(Admin) AND not defined(Monitorings)}

// start class TK265410566

function TK265410566.GetFolder: AnsiString;
 {-}
begin
 Result := 'Document';
end;//TK265410566.GetFolder

function TK265410566.GetModelElementGUID: AnsiString;
 {-}
begin
 Result := '4DC3D59D0253';
end;//TK265410566.GetModelElementGUID

{$IfEnd} //InsiderTest AND nsTest AND not Admin AND not Monitorings

initialization
 TestFramework.RegisterTest(TK265410566.Suite);

end.