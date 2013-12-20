unit LukoedTest;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Abstract Archi Tests"
// ������: "w:/common/components/rtl/Garant/Abstract_Archi_Tests/LukoedTest.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<TestCase::Class>> Shared Delphi Tests::Abstract Archi Tests::Filters::LukoedTest
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\Abstract_Archi_Tests\TestDefine.inc.pas}

interface

{$If defined(nsTest) AND not defined(NoScripts)}
uses
  EVDtoEVDWriterTest,
  k2Prim
  ;
{$IfEnd} //nsTest AND not NoScripts

{$If defined(nsTest) AND not defined(NoScripts)}
type
 TLukoedTest = {abstract} class(TEVDtoEVDWriterTest)
 protected
 // overridden protected methods
   procedure SetFilters(var theGenerator: Ik2TagGenerator); override;
   function GetFolder: AnsiString; override;
     {* ����� � ������� ������ ���� }
   function GetModelElementGUID: AnsiString; override;
     {* ������������� �������� ������, ������� ��������� ���� }
 end;//TLukoedTest
{$IfEnd} //nsTest AND not NoScripts

implementation

{$If defined(nsTest) AND not defined(NoScripts)}
uses
  lukTextBeautyfiler,
  Document_Const,
  TestFrameWork
  ;
{$IfEnd} //nsTest AND not NoScripts

{$If defined(nsTest) AND not defined(NoScripts)}

// start class TLukoedTest

procedure TLukoedTest.SetFilters(var theGenerator: Ik2TagGenerator);
//#UC START# *4C07BCBE01F2_4D53DE920239_var*
//#UC END# *4C07BCBE01F2_4D53DE920239_var*
begin
//#UC START# *4C07BCBE01F2_4D53DE920239_impl*
 TlukTextBeautyfiler.SetTo(theGenerator);
//#UC END# *4C07BCBE01F2_4D53DE920239_impl*
end;//TLukoedTest.SetFilters

function TLukoedTest.GetFolder: AnsiString;
 {-}
begin
 Result := 'Filters';
end;//TLukoedTest.GetFolder

function TLukoedTest.GetModelElementGUID: AnsiString;
 {-}
begin
 Result := '4D53DE920239';
end;//TLukoedTest.GetModelElementGUID

{$IfEnd} //nsTest AND not NoScripts

end.