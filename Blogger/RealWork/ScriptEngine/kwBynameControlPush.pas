unit kwBynameControlPush;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwBynameControlPush.pas"
// �����: 26.01.2012 16:06
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::ControlsProcessing::byname_control_push
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
  Controls,
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\kwControlWord.imp.pas}
 TkwBynameControlPush = class(_kwControlWord_)
 protected
 // realized methods
   procedure DoControl(aControl: TControl;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 public
 // public methods
   class procedure Register(const aName: AnsiString);
 end;//TkwBynameControlPush
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwScriptEngine,
  l3Except,
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmForm
  {$IfEnd} //not NoVCM
  ,
  afwFacade,
  SysUtils,
  tfwAutoregisteredDiction,
  Windows,
  Forms
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwBynameControlPush;

{$Include ..\ScriptEngine\kwControlWord.imp.pas}

// start class TkwBynameControlPush

class procedure TkwBynameControlPush.Register(const aName: AnsiString);
//#UC START# *5077F84E0246_4F2141AD0203_var*
//#UC END# *5077F84E0246_4F2141AD0203_var*
begin
//#UC START# *5077F84E0246_4F2141AD0203_impl*
 try
  TtfwScriptEngine.GlobalAddWord(aName, Self);
 except
  on El3DuplicateItem do
   ;
 end;//try..except
//#UC END# *5077F84E0246_4F2141AD0203_impl*
end;//TkwBynameControlPush.Register

procedure TkwBynameControlPush.DoControl(aControl: TControl;
  const aCtx: TtfwContext);
//#UC START# *4DB98B990054_4F2141AD0203_var*
//#UC END# *4DB98B990054_4F2141AD0203_var*
begin
//#UC START# *4DB98B990054_4F2141AD0203_impl*
 aCtx.rEngine.PushObj(aControl);
//#UC END# *4DB98B990054_4F2141AD0203_impl*
end;//TkwBynameControlPush.DoControl

class function TkwBynameControlPush.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'byname:control:push';
end;//TkwBynameControlPush.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwControlWord.imp.pas}
{$IfEnd} //not NoScripts

end.