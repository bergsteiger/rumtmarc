unit kwFontSize;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwFontSize.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::FontKeywords::font_Size
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
  l3Interfaces,
  Graphics,
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\kwFontWord.imp.pas}
 TkwFontSize = {final} class(_kwFontWord_)
 protected
 // realized methods
   procedure DoFont(aFont: TFont;
     const aCtx: TtfwContext); override;
   procedure DoIFont(const aFont: Il3Font;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwFontSize
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  SysUtils,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwFontSize;

{$Include ..\ScriptEngine\kwFontWord.imp.pas}

// start class TkwFontSize

procedure TkwFontSize.DoFont(aFont: TFont;
  const aCtx: TtfwContext);
//#UC START# *5190B11A0069_5190B2720147_var*
//#UC END# *5190B11A0069_5190B2720147_var*
begin
//#UC START# *5190B11A0069_5190B2720147_impl*
 aCtx.rEngine.PushInt(aFont.Size);
//#UC END# *5190B11A0069_5190B2720147_impl*
end;//TkwFontSize.DoFont

procedure TkwFontSize.DoIFont(const aFont: Il3Font;
  const aCtx: TtfwContext);
//#UC START# *5190DDC60327_5190B2720147_var*
//#UC END# *5190DDC60327_5190B2720147_var*
begin
//#UC START# *5190DDC60327_5190B2720147_impl*
 aCtx.rEngine.PushInt(aFont.Size);
//#UC END# *5190DDC60327_5190B2720147_impl*
end;//TkwFontSize.DoIFont

class function TkwFontSize.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'font:Size';
end;//TkwFontSize.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwFontWord.imp.pas}
{$IfEnd} //not NoScripts

end.