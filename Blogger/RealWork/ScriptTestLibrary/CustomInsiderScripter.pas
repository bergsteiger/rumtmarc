unit CustomInsiderScripter;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptTestLibrary"
// ������: "w:/common/components/rtl/Garant/ScriptTestLibrary/CustomInsiderScripter.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<TestCase::Class>> Shared Delphi TFW::ScriptTestLibrary::ScriptTestUnit::TCustomInsiderScripter
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

interface

{$If defined(nsTest) AND not defined(NoScripts)}
uses
  Classes
  {$If defined(nsTest) AND not defined(NoScripts) AND not defined(NotTunedDUnit)}
  ,
  vcmInsiderTest
  {$IfEnd} //nsTest AND not NoScripts AND not NotTunedDUnit
  
  ;
{$IfEnd} //nsTest AND not NoScripts

{$If defined(nsTest) AND not defined(NoScripts)}
type
 TCustomInsiderScripter = {abstract} class(TvcmInsiderTest)
 protected
 // overridden protected methods
   function GetFolder: AnsiString; override;
     {* ����� � ������� ������ ���� }
   function GetModelElementGUID: AnsiString; override;
     {* ������������� �������� ������, ������� ��������� ���� }
   {$If defined(nsTest) AND not defined(NoScripts) AND not defined(NotTunedDUnit)}
   function GetScriptName: AnsiString; override;
   {$IfEnd} //nsTest AND not NoScripts AND not NotTunedDUnit
    {$If defined(nsTest) AND not defined(NotTunedDUnit)}
   function FileNameForOutput: AnsiString; override;
    {$IfEnd} //nsTest AND not NotTunedDUnit
 protected
 // protected methods
   procedure Run; virtual; abstract;
   procedure Prepare; virtual; abstract;
     {* ���������� � ������ DoIt }
 published
 // published methods
   procedure DoIt;
 end;//TCustomInsiderScripter
{$IfEnd} //nsTest AND not NoScripts

implementation

{$If defined(nsTest) AND not defined(NoScripts)}
uses
  evDocumentsCache
  {$If not defined(NoVCM)}
  ,
  vcmBase
  {$IfEnd} //not NoVCM
  ,
  afwFacade,
  TestFrameWork
  ;
{$IfEnd} //nsTest AND not NoScripts

{$If defined(nsTest) AND not defined(NoScripts)}

// start class TCustomInsiderScripter

procedure TCustomInsiderScripter.DoIt;
//#UC START# *4DC3D3150155_4DC3D2590217_var*
//#UC END# *4DC3D3150155_4DC3D2590217_var*
begin
//#UC START# *4DC3D3150155_4DC3D2590217_impl*
 try
  Prepare;
  {$IfNDef NoVCM}
  if (vcmDispatcher.History <> nil) then
   vcmDispatcher.History.Clear(false);
  {$EndIf  NoVCM} 
  TevDocumentsCache.Clear;
  afw.ProcessMessages;
  StartTimer;
  try
   Run;
  finally
   StopTimer;
  end;//try..finally
 finally
  CheckOutputFiler;
 end;//try..finally
//#UC END# *4DC3D3150155_4DC3D2590217_impl*
end;//TCustomInsiderScripter.DoIt

function TCustomInsiderScripter.GetFolder: AnsiString;
 {-}
begin
 Result := 'ScriptTestUnit';
end;//TCustomInsiderScripter.GetFolder

function TCustomInsiderScripter.GetModelElementGUID: AnsiString;
 {-}
begin
 Result := '4DC3D2590217';
end;//TCustomInsiderScripter.GetModelElementGUID

{$If defined(nsTest) AND not defined(NoScripts) AND not defined(NotTunedDUnit)}
function TCustomInsiderScripter.GetScriptName: AnsiString;
//#UC START# *4DC263E8038F_4DC3D2590217_var*
//#UC END# *4DC263E8038F_4DC3D2590217_var*
begin
//#UC START# *4DC263E8038F_4DC3D2590217_impl*
 if IsScript then
  Result := FTestName
 else
  Result := inherited GetScriptName;
//#UC END# *4DC263E8038F_4DC3D2590217_impl*
end;//TCustomInsiderScripter.GetScriptName
{$IfEnd} //nsTest AND not NoScripts AND not NotTunedDUnit

{$If defined(nsTest) AND not defined(NotTunedDUnit)}
function TCustomInsiderScripter.FileNameForOutput: AnsiString;
//#UC START# *4DCA41A20364_4DC3D2590217_var*
//#UC END# *4DCA41A20364_4DC3D2590217_var*
begin
//#UC START# *4DCA41A20364_4DC3D2590217_impl*
 if IsScript then
  Result := GetScriptName
 else
  Result := inherited FileNameForOutput;
//#UC END# *4DCA41A20364_4DC3D2590217_impl*
end;//TCustomInsiderScripter.FileNameForOutput
{$IfEnd} //nsTest AND not NotTunedDUnit

{$IfEnd} //nsTest AND not NoScripts

end.