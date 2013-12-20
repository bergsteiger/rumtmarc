unit kwPopFlashGetFrame;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopFlashGetFrame.pas"
// �����: 21.10.2011 19:32
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::ControlsProcessing::pop_flash_GetFrame
//
// ����� �� ���� ����� �������� �����
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  vtShockwaveFlashEx,
  tfwScriptingInterfaces,
  Controls,
  Classes
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\kwFlashFromStackWord.imp.pas}
 TkwPopFlashGetFrame = class(_kwFlashFromStackWord_)
  {* ����� �� ���� ����� �������� ����� }
 protected
 // realized methods
   procedure DoFlash(aControl: TvtShockwaveFlashEx;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopFlashGetFrame
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine,
  Windows,
  afwFacade,
  Forms
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwPopFlashGetFrame;

{$Include ..\ScriptEngine\kwFlashFromStackWord.imp.pas}

// start class TkwPopFlashGetFrame

procedure TkwPopFlashGetFrame.DoFlash(aControl: TvtShockwaveFlashEx;
  const aCtx: TtfwContext);
//#UC START# *4EA1903D033E_4EA1905E003D_var*
//#UC END# *4EA1903D033E_4EA1905E003D_var*
begin
//#UC START# *4EA1903D033E_4EA1905E003D_impl*
 aCtx.rEngine.PushInt(aControl.FrameNum);
//#UC END# *4EA1903D033E_4EA1905E003D_impl*
end;//TkwPopFlashGetFrame.DoFlash

class function TkwPopFlashGetFrame.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:flash:GetFrame';
end;//TkwPopFlashGetFrame.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwFlashFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.