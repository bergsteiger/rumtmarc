unit kwIncludesInChildren;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwIncludesInChildren.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::IncludesAndUses::IncludesAndUsesPack::IncludesInChildren
//
// ��� USES, �� ��������� �������� ����� �� ���������� ������� - � ������� ����� (%C) - ������
// ����� ���� �������
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
  tfwScriptingInterfaces,
  kwIncluded,
  l3Interfaces,
  kwCompiledWord,
  l3ParserInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\kwUsesLike.imp.pas}
 TkwIncludesInChildren = {final} class(_kwUsesLike_)
  {* ��� USES, �� ��������� �������� ����� �� ���������� ������� - � ������� ����� (%C) - ������ ����� ���� ������� }
 protected
 // overridden protected methods
   function MakeIncluded(const aFileName: AnsiString;
     const aContext: TtfwContext): TkwIncluded; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwIncludesInChildren
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwInnerIncludedInChildren,
  kwCompiledProcedure,
  l3String,
  SysUtils,
  l3Types,
  l3Parser,
  kwInteger,
  kwString,
  TypInfo,
  l3Base,
  kwIntegerFactory,
  kwStringFactory,
  l3Chars,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwIncludesInChildren;

{$Include ..\ScriptEngine\kwUsesLike.imp.pas}

// start class TkwIncludesInChildren

class function TkwIncludesInChildren.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := '%INCLUDES';
end;//TkwIncludesInChildren.GetWordNameForRegister

function TkwIncludesInChildren.MakeIncluded(const aFileName: AnsiString;
  const aContext: TtfwContext): TkwIncluded;
//#UC START# *4F47673F03B0_4F476A0301B8_var*
var
 l_C  : ItfwCompiler;
 l_W  : TkwCompiledWord;
 l_KW : TtfwKeyWord;
 l_WC : TkwCompiledWord;
 l_ProducerKW : TtfwKeyWord;
//#UC END# *4F47673F03B0_4F476A0301B8_var*
begin
//#UC START# *4F47673F03B0_4F476A0301B8_impl*
 l_C := aContext.rCompiler;
 l_C := aContext.rCompiler.As_ItfwKeywordFinder.ParentFinder As ItfwCompiler;
 l_W := l_C.GetWordCompilingNow As TkwCompiledWord;
 l_KW := ItfwWordCompiler(l_W).CheckWord(l3PCharLen('%C'));
 if (l_KW.Word = nil) then
 begin
  l_ProducerKW := ItfwCompiler(l_W).As_ItfwKeywordFinder.KeywordByName['%CHILDREN'] As TtfwKeyWord;
  //l_ProducerKW := aContext.rEngine.As_ItfwKeywordFinder.KeywordByName['%CHILDREN'] As TtfwKeyWord;
  CompilerAssert(l_ProducerKW <> nil, '����� %CHILDREN �� �������', aContext);
  CompilerAssert(l_ProducerKW.Word <> nil, '����� %CHILDREN �� �������', aContext);
  l_WC := RkwCompiledWord(l_ProducerKW.Word.
                          CompiledWordClassPrim).Create(l_ProducerKW.Word,
                                                        // - ����� ���������� ����� ������ "���������"
                                                        //   ��� �������, ���� ���-�� ��������� ���� �� �������,
                                                        l_W{PrevFinder},
                                                        [tfw_wmCanBeMerged]);
  try
   l_KW.Word := l_WC;
  finally
   FreeAndNil(l_WC);
  end;//try..finally
  l_WC := l_KW.Word As TkwCompiledWord;
 end//l_KW.Word = nil
 else
  l_WC := l_KW.Word As TkwCompiledWord;
 Result := TkwInnerIncludedInChildren.Create(aFileName, l_WC); 
//#UC END# *4F47673F03B0_4F476A0301B8_impl*
end;//TkwIncludesInChildren.MakeIncluded

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwUsesLike.imp.pas}
{$IfEnd} //not NoScripts

end.