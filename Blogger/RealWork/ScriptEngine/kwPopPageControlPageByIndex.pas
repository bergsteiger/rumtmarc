unit kwPopPageControlPageByIndex;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopPageControlPageByIndex.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::vtControlsFromStackWords::pop_PageControl_PageByIndex
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If defined(Nemesis) AND not defined(NoScripts)}
uses
  nscPageControl,
  tfwScriptingInterfaces,
  Controls,
  Classes
  ;
{$IfEnd} //Nemesis AND not NoScripts

{$If defined(Nemesis) AND not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\kwPageControlFromStackWord.imp.pas}
 TkwPopPageControlPageByIndex = {final} class(_kwPageControlFromStackWord_)
 protected
 // realized methods
   procedure DoPageControl(aControl: TnscPageControl;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopPageControlPageByIndex
{$IfEnd} //Nemesis AND not NoScripts

implementation

{$If defined(Nemesis) AND not defined(NoScripts)}
uses
  SysUtils,
  tfwAutoregisteredDiction,
  tfwScriptEngine,
  Windows,
  afwFacade,
  Forms
  ;
{$IfEnd} //Nemesis AND not NoScripts

{$If defined(Nemesis) AND not defined(NoScripts)}

type _Instance_R_ = TkwPopPageControlPageByIndex;

{$Include ..\ScriptEngine\kwPageControlFromStackWord.imp.pas}

// start class TkwPopPageControlPageByIndex

procedure TkwPopPageControlPageByIndex.DoPageControl(aControl: TnscPageControl;
  const aCtx: TtfwContext);
//#UC START# *500014A6023D_50081D440322_var*
var
 l_PageIndex: Integer;
//#UC END# *500014A6023D_50081D440322_var*
begin
//#UC START# *500014A6023D_50081D440322_impl*
 l_PageIndex := aCtx.rEngine.PopInt;
 RunnerAssert(l_PageIndex >= 0, '����� ������������� �����!', aCtx);
 RunnerAssert(l_PageIndex < aControl.PageCount, '�� PageControl ������ �������!', aCtx);
 aCtx.rEngine.PushObj(aControl.Pages[l_PageIndex]);
//#UC END# *500014A6023D_50081D440322_impl*
end;//TkwPopPageControlPageByIndex.DoPageControl

class function TkwPopPageControlPageByIndex.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:PageControl:PageByIndex';
end;//TkwPopPageControlPageByIndex.GetWordNameForRegister

{$IfEnd} //Nemesis AND not NoScripts

initialization
{$If defined(Nemesis) AND not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwPageControlFromStackWord.imp.pas}
{$IfEnd} //Nemesis AND not NoScripts

end.