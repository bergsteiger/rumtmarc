unit MemorySizeTest;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "SandBoxTest"
// ������: "w:/common/components/rtl/Garant/SandBox/MemorySizeTest.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: TestCase::Class Shared Delphi Sand Box::SandBoxTest::Memory::MemorySizeTest
//
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

interface

{$If defined(nsTest)}
uses
  BaseTest
  ;
{$IfEnd} //nsTest

{$If defined(nsTest)}
type
 TMemorySizeTest = class(TBaseTest)
 protected
 // overridden protected methods
   function GetFolder: AnsiString; override;
     {* ����� � ������� ������ ���� }
   function GetModelElementGUID: AnsiString; override;
     {* ������������� �������� ������, ������� ��������� ���� }
 published
 // published methods
   procedure DoIt;
 end;//TMemorySizeTest
{$IfEnd} //nsTest

implementation

{$If defined(nsTest)}
uses
  l3MemorySizeUtils,
  SysUtils,
  TestFrameWork
  ;
{$IfEnd} //nsTest

{$If defined(nsTest)}

// start class TMemorySizeTest

procedure TMemorySizeTest.DoIt;
//#UC START# *51DAE7030012_51DAE6E20300_var*
var
 l_Index : Integer;
 l_Size  : Integer;
 l_RealSize : Integer;
 l_P     : Pointer;
//#UC END# *51DAE7030012_51DAE6E20300_var*
begin
//#UC START# *51DAE7030012_51DAE6E20300_impl*
 for l_Index := 1 to 4 * 1024 do
 begin
  l_Size := l_Index * 2;
  System.GetMem(l_P, l_Size);
  try
   l_RealSize := l3MemorySize(l_P);
   Check(l_RealSize >= l_Size, Format('�������� %d. ���������� %d.', [l_Size, l_RealSize]));
  finally
   System.FreeMem(l_P);
  end;//try..finally
 end;//form l_Index
//#UC END# *51DAE7030012_51DAE6E20300_impl*
end;//TMemorySizeTest.DoIt

function TMemorySizeTest.GetFolder: AnsiString;
 {-}
begin
 Result := 'Memory';
end;//TMemorySizeTest.GetFolder

function TMemorySizeTest.GetModelElementGUID: AnsiString;
 {-}
begin
 Result := '51DAE6E20300';
end;//TMemorySizeTest.GetModelElementGUID

{$IfEnd} //nsTest

initialization
 TestFramework.RegisterTest(TMemorySizeTest.Suite);

end.