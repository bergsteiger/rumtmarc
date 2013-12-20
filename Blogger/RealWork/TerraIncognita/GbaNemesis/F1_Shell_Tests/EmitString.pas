unit EmitString;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "F1 Shell Tests"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Shell_Tests/EmitString.pas"
// Начат: 22.04.2011 22:11
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<TestCase::Class>> F1 Ежедневные тесты::F1 Shell Tests::First Step::EmitString
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
 TEmitString = class(TInsiderOwnScripter)
 protected
 // overridden protected methods
   function GetFolder: AnsiString; override;
     {* Папка в которую входит тест }
   function GetModelElementGUID: AnsiString; override;
     {* Идентификатор элемента модели, который описывает тест }
 end;//TEmitString
{$IfEnd} //InsiderTest AND nsTest AND not Admin AND not Monitorings

implementation

{$If defined(InsiderTest) AND defined(nsTest) AND not defined(Admin) AND not defined(Monitorings)}
uses
  TestFrameWork
  ;
{$IfEnd} //InsiderTest AND nsTest AND not Admin AND not Monitorings

{$If defined(InsiderTest) AND defined(nsTest) AND not defined(Admin) AND not defined(Monitorings)}

// start class TEmitString

function TEmitString.GetFolder: AnsiString;
 {-}
begin
 Result := 'First Step';
end;//TEmitString.GetFolder

function TEmitString.GetModelElementGUID: AnsiString;
 {-}
begin
 Result := '4DB1C4CB03D9';
end;//TEmitString.GetModelElementGUID

{$IfEnd} //InsiderTest AND nsTest AND not Admin AND not Monitorings

initialization
 TestFramework.RegisterTest(TEmitString.Suite);

end.