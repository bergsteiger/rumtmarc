unit ModifyListTest;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "F1 Shell Tests"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Shell_Tests/ModifyListTest.pas"
// Начат: 28.04.2011 14:53
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<TestCase::Class>> F1 Ежедневные тесты::F1 Shell Tests::List::ModifyListTest
//
// {ReqestLink:259892768}.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\GbaNemesis\nsDefine.inc}

interface

{$If defined(InsiderTest) AND defined(nsTest) AND not defined(Admin) AND not defined(Monitorings)}
uses
  InsiderOwnScripter
  ;
{$IfEnd} //InsiderTest AND nsTest AND not Admin AND not Monitorings

{$If defined(InsiderTest) AND defined(nsTest) AND not defined(Admin) AND not defined(Monitorings)}
type
 TModifyListTest = class(TInsiderOwnScripter)
  {* [ReqestLink:259892768]. }
 protected
 // overridden protected methods
   function GetFolder: AnsiString; override;
     {* Папка в которую входит тест }
   function GetModelElementGUID: AnsiString; override;
     {* Идентификатор элемента модели, который описывает тест }
 end;//TModifyListTest
{$IfEnd} //InsiderTest AND nsTest AND not Admin AND not Monitorings

implementation

{$If defined(InsiderTest) AND defined(nsTest) AND not defined(Admin) AND not defined(Monitorings)}
uses
  TestFrameWork
  ;
{$IfEnd} //InsiderTest AND nsTest AND not Admin AND not Monitorings

{$If defined(InsiderTest) AND defined(nsTest) AND not defined(Admin) AND not defined(Monitorings)}

// start class TModifyListTest

function TModifyListTest.GetFolder: AnsiString;
 {-}
begin
 Result := 'List';
end;//TModifyListTest.GetFolder

function TModifyListTest.GetModelElementGUID: AnsiString;
 {-}
begin
 Result := '4DB9482A039E';
end;//TModifyListTest.GetModelElementGUID

{$IfEnd} //InsiderTest AND nsTest AND not Admin AND not Monitorings

initialization
 TestFramework.RegisterTest(TModifyListTest.Suite);

end.