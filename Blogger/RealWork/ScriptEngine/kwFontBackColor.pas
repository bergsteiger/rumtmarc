unit kwFontBackColor;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwFontBackColor.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::FontKeywords::font_BackColor
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
 TkwFontBackColor = {final} class(_kwFontWord_)
 protected
 // realized methods
   procedure DoFont(aFont: TFont;
     const aCtx: TtfwContext); override;
   procedure DoIFont(const aFont: Il3Font;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwFontBackColor
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

type _Instance_R_ = TkwFontBackColor;

{$Include ..\ScriptEngine\kwFontWord.imp.pas}

// start class TkwFontBackColor

procedure TkwFontBackColor.DoFont(aFont: TFont;
  const aCtx: TtfwContext);
//#UC START# *5190B11A0069_51A1C34E022B_var*
//#UC END# *5190B11A0069_51A1C34E022B_var*
begin
//#UC START# *5190B11A0069_51A1C34E022B_impl*
 RunnerAssert(False, '����� font:BackColor ����� �������� ������ � ������� ���������.', aCtx);
//#UC END# *5190B11A0069_51A1C34E022B_impl*
end;//TkwFontBackColor.DoFont

procedure TkwFontBackColor.DoIFont(const aFont: Il3Font;
  const aCtx: TtfwContext);
//#UC START# *5190DDC60327_51A1C34E022B_var*
//#UC END# *5190DDC60327_51A1C34E022B_var*
begin
//#UC START# *5190DDC60327_51A1C34E022B_impl*
 aCtx.rEngine.PushInt(aFont.BackColor);
//#UC END# *5190DDC60327_51A1C34E022B_impl*
end;//TkwFontBackColor.DoIFont

class function TkwFontBackColor.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'font:BackColor';
end;//TkwFontBackColor.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwFontWord.imp.pas}
{$IfEnd} //not NoScripts

end.