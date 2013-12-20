unit FormulaRender;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Abstract Tests"
// ������: "w:/common/components/rtl/Garant/Abstract_Tests/FormulaRender.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<TestCase::Class>> Shared Delphi Tests::Abstract Tests::RenderEVD::TFormulaRender
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\Abstract_Tests\TestDefine.inc.pas}

interface

{$If defined(nsTest) AND not defined(NoScripts)}
uses
  Classes
  {$If defined(nsTest) AND not defined(NoVCM)}
  ,
  TextEditorVisitor
  {$IfEnd} //nsTest AND not NoVCM
  
  {$If defined(nsTest) AND not defined(NoVCM)}
  ,
  PrimTextLoad_Form
  {$IfEnd} //nsTest AND not NoVCM
  
  ;
{$IfEnd} //nsTest AND not NoScripts

{$If defined(nsTest) AND not defined(NoScripts)}
type
 TFormulaRender = {abstract} class(TTextEditorVisitor)
 protected
 // realized methods
   {$If defined(nsTest) AND not defined(NoVCM)}
   procedure DoVisit(aForm: TPrimTextLoadForm); override;
     {* ���������� ����� }
   {$IfEnd} //nsTest AND not NoVCM
 protected
 // overridden protected methods
    {$If defined(nsTest) AND not defined(NotTunedDUnit)}
   function FileForOutput: AnsiString; override;
     {* ����������� ���� ��� ������, ��� ������� ����� }
    {$IfEnd} //nsTest AND not NotTunedDUnit
   function GetFolder: AnsiString; override;
     {* ����� � ������� ������ ���� }
   function GetModelElementGUID: AnsiString; override;
     {* ������������� �������� ������, ������� ��������� ���� }
 protected
 // protected methods
   function GetZoom: Integer; virtual;
 end;//TFormulaRender
{$IfEnd} //nsTest AND not NoScripts

implementation

{$If defined(nsTest) AND not defined(NoScripts)}
uses
  eeRenderFormula,
  l3Memory,
  l3Stream,
  nevTools,
  evTypes,
  SysUtils,
  l3Interfaces,
  l3Filer,
  evdInterfaces,
  TestFrameWork
  ;
{$IfEnd} //nsTest AND not NoScripts

{$If defined(nsTest) AND not defined(NoScripts)}

// start class TFormulaRender

function TFormulaRender.GetZoom: Integer;
//#UC START# *4EF0A04A0286_4EEF59B40075_var*
//#UC END# *4EF0A04A0286_4EEF59B40075_var*
begin
//#UC START# *4EF0A04A0286_4EEF59B40075_impl*
 Result := 100;
//#UC END# *4EF0A04A0286_4EEF59B40075_impl*
end;//TFormulaRender.GetZoom

{$If defined(nsTest) AND not defined(NoVCM)}
procedure TFormulaRender.DoVisit(aForm: TPrimTextLoadForm);
//#UC START# *4BE419AF0217_4EEF59B40075_var*
var
 l_EVD : Tl3SizedMemoryPool;
 l_Range : InevRange;
 l_F : Tl3CustomFiler;
 l_N : String;
 l_Out : IStream;
//#UC END# *4BE419AF0217_4EEF59B40075_var*
begin
//#UC START# *4BE419AF0217_4EEF59B40075_impl*
 l_EVD := Tl3SizedMemoryPool.Create;
 try
  l_Range := aForm.Text.Selection.Cursor.MostInner.Obj.Range;
  l_Range.Data.Store(cf_EverestBinForceAndUnpacked, l_EVD As IStream, nil, [{evd_sfChildrenOnly}]);
  l_F := FilerForOutput;
  try
   l_F.Open;
   try
    l_Out := l_F.COMStream;
    try
     eeRenderFormula.RenderFormula(l_EVD.AsPointer + 3,
                                   l_EVD.Size -
                                                {$IfDef XE}6{$Else}6{$EndIf}
                                                // - � ���� ���������� - ���� �� ����������� - ������ ��� ������ ����� ����
                                                ,
                                   0, Self.GetZoom, l_Out);
    finally
     l_Out := nil;
    end;//try..finally
   finally
    l_F.Close;
   end;//try..finally
   l_N := ChangeFileExt(ExtractFileName(l_F.Identifier), EtalonSuffix + '.bmp');
  finally
   FreeAndNil(l_F);
  end;//try..finally
 finally
  FreeAndNil(l_EVD);
 end;//try..finally
 CheckOutputWithInput(l_N);
//#UC END# *4BE419AF0217_4EEF59B40075_impl*
end;//TFormulaRender.DoVisit
{$IfEnd} //nsTest AND not NoVCM

{$If defined(nsTest) AND not defined(NotTunedDUnit)}
function TFormulaRender.FileForOutput: AnsiString;
//#UC START# *4B4F588B0241_4EEF59B40075_var*
//#UC END# *4B4F588B0241_4EEF59B40075_var*
begin
//#UC START# *4B4F588B0241_4EEF59B40075_impl*
 Result := OutputPath + KPage + '.bmp';
//#UC END# *4B4F588B0241_4EEF59B40075_impl*
end;//TFormulaRender.FileForOutput
{$IfEnd} //nsTest AND not NotTunedDUnit

function TFormulaRender.GetFolder: AnsiString;
 {-}
begin
 Result := 'RenderEVD';
end;//TFormulaRender.GetFolder

function TFormulaRender.GetModelElementGUID: AnsiString;
 {-}
begin
 Result := '4EEF59B40075';
end;//TFormulaRender.GetModelElementGUID

{$IfEnd} //nsTest AND not NoScripts

end.