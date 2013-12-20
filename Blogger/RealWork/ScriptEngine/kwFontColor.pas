unit kwFontColor;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwFontColor.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::FontKeywords::font_Color
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
 TkwFontColor = {final} class(_kwFontWord_)
 protected
 // realized methods
   procedure DoFont(aFont: TFont;
     const aCtx: TtfwContext); override;
   procedure DoIFont(const aFont: Il3Font;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwFontColor
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

type _Instance_R_ = TkwFontColor;

{$Include ..\ScriptEngine\kwFontWord.imp.pas}

// start class TkwFontColor

procedure TkwFontColor.DoFont(aFont: TFont;
  const aCtx: TtfwContext);
//#UC START# *5190B11A0069_5190B2BE0251_var*
//#UC END# *5190B11A0069_5190B2BE0251_var*
begin
//#UC START# *5190B11A0069_5190B2BE0251_impl*
 aCtx.rEngine.PushInt(aFont.Color);
//#UC END# *5190B11A0069_5190B2BE0251_impl*
end;//TkwFontColor.DoFont

procedure TkwFontColor.DoIFont(const aFont: Il3Font;
  const aCtx: TtfwContext);
//#UC START# *5190DDC60327_5190B2BE0251_var*
//#UC END# *5190DDC60327_5190B2BE0251_var*
begin
//#UC START# *5190DDC60327_5190B2BE0251_impl*
 aCtx.rEngine.PushInt(aFont.ForeColor);
//#UC END# *5190DDC60327_5190B2BE0251_impl*
end;//TkwFontColor.DoIFont

class function TkwFontColor.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'font:Color';
end;//TkwFontColor.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwFontWord.imp.pas}
{$IfEnd} //not NoScripts

end.