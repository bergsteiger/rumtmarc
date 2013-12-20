{$IfNDef tfwNewWord_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/tfwNewWord.imp.pas"
// �����: 28.09.2011 22:50
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::tfwNewWord
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define tfwNewWord_imp}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwCompilingWord.imp.pas}
 _tfwNewWord_ = {abstract mixin} class(_tfwCompilingWord_)
 protected
 // overridden protected methods
   procedure BeforeCompile(const aPrevContext: TtfwContext;
     var theNewContext: TtfwContext); override;
   procedure AfterCompile(var aPrevContext: TtfwContext;
     var theNewContext: TtfwContext;
     aCompiled: TkwCompiledWord); override;
 protected
 // protected methods
   procedure FinishDefinitionOfNewWord(aWordToFinish: TtfwKeyWord;
     aCompiled: TkwCompiledWord;
     const aContext: TtfwContext); virtual;
     {* ��������� ����������� ����� ���������� ����� }
   function GetNewWordName(const aContext: TtfwContext): Il3CString; virtual;
 end;//_tfwNewWord_
{$IfEnd} //not NoScripts

{$Else tfwNewWord_imp}

{$IfNDef tfwNewWord_imp_impl}
{$Define tfwNewWord_imp_impl}

{$If not defined(NoScripts)}


{$Include ..\ScriptEngine\tfwCompilingWord.imp.pas}

// start class _tfwNewWord_

procedure _tfwNewWord_.FinishDefinitionOfNewWord(aWordToFinish: TtfwKeyWord;
  aCompiled: TkwCompiledWord;
  const aContext: TtfwContext);
//#UC START# *4F219629036A_4DB9B6D20168_var*
//#UC END# *4F219629036A_4DB9B6D20168_var*
begin
//#UC START# *4F219629036A_4DB9B6D20168_impl*
 aWordToFinish.Word := aCompiled;
//#UC END# *4F219629036A_4DB9B6D20168_impl*
end;//_tfwNewWord_.FinishDefinitionOfNewWord

function _tfwNewWord_.GetNewWordName(const aContext: TtfwContext): Il3CString;
//#UC START# *4F37B3F10318_4DB9B6D20168_var*
//#UC END# *4F37B3F10318_4DB9B6D20168_var*
begin
//#UC START# *4F37B3F10318_4DB9B6D20168_impl*
 aContext.rParser.NextToken;
 Result := TtfwCStringFactory.C(aContext.rParser.TokenLongString);
//#UC END# *4F37B3F10318_4DB9B6D20168_impl*
end;//_tfwNewWord_.GetNewWordName

procedure _tfwNewWord_.BeforeCompile(const aPrevContext: TtfwContext;
  var theNewContext: TtfwContext);
//#UC START# *4DB6CDDA038B_4DB9B6D20168_var*

 function locName : AnsiString;
 begin//locName
  if (Self.Key <> nil) then
   Result := Self.Key.AsString
  else
   Result := '';
 end;//locName

var
 l_N : Il3CString;
 l_W : TtfwKeyWord;
 l_Stereotype : AnsiString;
 l_Stereotype2 : AnsiString;
 l_C : ItfwWordCompiler;
 l_CanBeMerged : Boolean;
//#UC END# *4DB6CDDA038B_4DB9B6D20168_var*
begin
//#UC START# *4DB6CDDA038B_4DB9B6D20168_impl*
 inherited;
 l_N := GetNewWordName(aPrevContext);
 if (aPrevContext.rCompiler = nil) then
  l_C := aPrevContext.rEngine.As_ItfwWordCompiler
 else
  l_C := aPrevContext.rCompiler.As_ItfwWordCompiler;
 l_W := l_C.CheckWord(l_N);
 l_CanBeMerged := false;                  
 if (l_W.Word <> nil) AND not l_W.Word.IsForwardDeclaration then
 begin
  l_Stereotype := locName;
  CompilerAssertFmt(l_Stereotype <> '',
                    '�� ����� ��������� � �������������� �������� %s: %s (%s)',
                    [
                     l_W.AsString,
                     l_W.Word.ClassName,
                     l_W.ClassName
                    ],
                    aPrevContext);
  if (l_W.Word.WordProducer <> nil) then
  begin
   l_StereoType2 := l_W.Word.WordProducer.Key.AsString;
   if (l_Stereotype = l_StereoType2) then
   begin
    if (tfw_wmCanBeMerged in (l_W.Word As TkwCompiledWord).Modifiers) then
     l_CanBeMerged := true
    else
     CompilerAssertFmt(false,
                       '��������� ���������� %s � %s', [l_Stereotype, l_StereoType2],
                       aPrevContext);
   end;//l_Stereotype = l_StereoType2
  end;//l_W.Word.WordProducer
  // - ������� ��������, �� ��� hResult � HResult - �� �������� !!!
  if l_CanBeMerged then
  begin
   l_W.Word.SetRefTo(theNewContext.rWordCompilingNow);
   // - ��������� ������� ������������� �����
   theNewContext.rCompiler := TkwCompiledWord(theNewContext.rWordCompilingNow).Compiler;
   // - ��������� ����������
  end//tfw_wmCanBeMerged in l_W.Word.Modifiers
  else
  begin
   l_N := l3Cat(l_N, '$' + l_Stereotype);
   // - ���������� ��� ���������� � ����� �������� � ����� ������� �������� ��������� ��������
   //   ��� ��� ����, ����� ��������� ��������� ��, ��� ������ �� ����
   l_W := l_C.CheckWord(l_N);
  end;//tfw_wmCanBeMerged in l_W.Word.Modifiers
 end;//l_W.Word <> nil
 theNewContext.rKeyWordCompilingNow := l_W;
 theNewContext.rKeyWordDefiningNow := l_W;
 theNewContext.rWordDefiningNow := theNewContext.rWordCompilingNow;
 if not l_CanBeMerged then
 begin
  if (l_W.Word <> nil) then
  begin
   if l_W.Word.IsForwardDeclaration then
   begin
    if (TkwForwardDeclaration(l_W.Word).RealWord <> nil) then
     CompilerAssertFmt(false,
                       '��������������� ����������� ����� %s: %s/%s (%s) ��� ���� ���������',
                       [
                        l_W.AsString,
                        l_W.Word.ClassName,
                        TkwForwardDeclaration(l_W.Word).RealWord.ClassName,
                        l_W.ClassName
                       ],
                       aPrevContext)
   end//l_W.Word.IsForwardDeclaration
   else
    CompilerAssertFmt(false,
                      '����� %s: %s (%s) ��� ���� � �������',
                      [
                       l_W.AsString,
                       l_W.Word.ClassName,
                       l_W.ClassName
                      ],
                      aPrevContext);
  end;//l_W.Word <> nil
 end;//l_CanBeMerged 
//#UC END# *4DB6CDDA038B_4DB9B6D20168_impl*
end;//_tfwNewWord_.BeforeCompile

procedure _tfwNewWord_.AfterCompile(var aPrevContext: TtfwContext;
  var theNewContext: TtfwContext;
  aCompiled: TkwCompiledWord);
//#UC START# *4DB6CE2302C9_4DB9B6D20168_var*
//#UC END# *4DB6CE2302C9_4DB9B6D20168_var*
begin
//#UC START# *4DB6CE2302C9_4DB9B6D20168_impl*
 FinishDefinitionOfNewWord(theNewContext.rKeyWordCompilingNow, aCompiled, aPrevContext);
 PtfwContext(@aPrevContext).rModifiers := [];
 // - ���������� ������������
 inherited;
//#UC END# *4DB6CE2302C9_4DB9B6D20168_impl*
end;//_tfwNewWord_.AfterCompile

{$IfEnd} //not NoScripts

{$Else  tfwNewWord_imp_impl}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwCompilingWord.imp.pas}
{$IfEnd} //not NoScripts

{$EndIf tfwNewWord_imp_impl}
{$EndIf tfwNewWord_imp}
