{$IfNDef tfwCompilingWord_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/tfwCompilingWord.imp.pas"
// Начат: 26.04.2011 17:30
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::tfwCompilingWord
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define tfwCompilingWord_imp}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
 _tfwCompilingWord_ = {abstract mixin} class(_tfwAutoregisteringWord_)
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   function IsImmediate: Boolean; override;
   function CompiledWordClassPrim: RtfwWord; override;
 protected
 // protected methods
   function EndBracket(const aContext: TtfwContext): AnsiString; virtual; abstract;
   procedure BeforeCompile(const aPrevContext: TtfwContext;
     var theNewContext: TtfwContext); virtual;
   procedure AfterCompile(var aPrevContext: TtfwContext;
     var theNewContext: TtfwContext;
     aCompiled: TkwCompiledWord); virtual;
   procedure UnknownWord(var aContext: TtfwContext;
     var theCompiled: TkwCompiledWord;
     const aPrevFinder: Il3KeywordFinder); virtual;
   function AfterWordMaxCount: Cardinal; virtual;
   function AcceptsKeyWordAfter: Boolean; virtual;
   function CompiledWordClass: RkwCompiledWord; virtual;
   procedure DoStringToken(const aContext: TtfwContext;
     aCompiled: TkwCompiledWord;
     const aString: Il3CString); virtual;
   function AcceptsEOF: Boolean; virtual;
   function DisabledEndBracket(const aContext: TtfwContext): AnsiString;
   procedure FillCompiledWord(aCompiled: TkwCompiledWord;
     const aCtx: TtfwContext); virtual;
   function GetWordProducerForCompiledClass: TtfwWord; virtual;
   function SupressNextImmediate: Boolean; virtual;
   procedure AfterCodePartAdded(aWord: TtfwWord;
     var aCtx: TtfwContext); virtual;
 end;//_tfwCompilingWord_
{$IfEnd} //not NoScripts

{$Else tfwCompilingWord_imp}

{$IfNDef tfwCompilingWord_imp_impl}
{$Define tfwCompilingWord_imp_impl}

{$If not defined(NoScripts)}


{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class _tfwCompilingWord_

procedure _tfwCompilingWord_.BeforeCompile(const aPrevContext: TtfwContext;
  var theNewContext: TtfwContext);
//#UC START# *4DB6CDDA038B_4DB6C8F30161_var*
//#UC END# *4DB6CDDA038B_4DB6C8F30161_var*
begin
//#UC START# *4DB6CDDA038B_4DB6C8F30161_impl*
 // - ничего не делаем
//#UC END# *4DB6CDDA038B_4DB6C8F30161_impl*
end;//_tfwCompilingWord_.BeforeCompile

procedure _tfwCompilingWord_.AfterCompile(var aPrevContext: TtfwContext;
  var theNewContext: TtfwContext;
  aCompiled: TkwCompiledWord);
//#UC START# *4DB6CE2302C9_4DB6C8F30161_var*
//#UC END# *4DB6CE2302C9_4DB6C8F30161_var*
begin
//#UC START# *4DB6CE2302C9_4DB6C8F30161_impl*
 // - ничего не делаем
//#UC END# *4DB6CE2302C9_4DB6C8F30161_impl*
end;//_tfwCompilingWord_.AfterCompile

procedure _tfwCompilingWord_.UnknownWord(var aContext: TtfwContext;
  var theCompiled: TkwCompiledWord;
  const aPrevFinder: Il3KeywordFinder);
//#UC START# *4DB6F2760023_4DB6C8F30161_var*
//#UC END# *4DB6F2760023_4DB6C8F30161_var*
begin
//#UC START# *4DB6F2760023_4DB6C8F30161_impl*
 CompilerAssert(false, 'Неизвестный тип токена', aContext);
//#UC END# *4DB6F2760023_4DB6C8F30161_impl*
end;//_tfwCompilingWord_.UnknownWord

function _tfwCompilingWord_.AfterWordMaxCount: Cardinal;
//#UC START# *4DB9B446039A_4DB6C8F30161_var*
//#UC END# *4DB9B446039A_4DB6C8F30161_var*
begin
//#UC START# *4DB9B446039A_4DB6C8F30161_impl*
 Result := High(Result);
//#UC END# *4DB9B446039A_4DB6C8F30161_impl*
end;//_tfwCompilingWord_.AfterWordMaxCount

function _tfwCompilingWord_.AcceptsKeyWordAfter: Boolean;
//#UC START# *4DB9B502013D_4DB6C8F30161_var*
//#UC END# *4DB9B502013D_4DB6C8F30161_var*
begin
//#UC START# *4DB9B502013D_4DB6C8F30161_impl*
 Result := true;
//#UC END# *4DB9B502013D_4DB6C8F30161_impl*
end;//_tfwCompilingWord_.AcceptsKeyWordAfter

function _tfwCompilingWord_.CompiledWordClass: RkwCompiledWord;
//#UC START# *4DBAEE0D028D_4DB6C8F30161_var*
//#UC END# *4DBAEE0D028D_4DB6C8F30161_var*
begin
//#UC START# *4DBAEE0D028D_4DB6C8F30161_impl*
 Result := TkwCompiledWord;
//#UC END# *4DBAEE0D028D_4DB6C8F30161_impl*
end;//_tfwCompilingWord_.CompiledWordClass

procedure _tfwCompilingWord_.DoStringToken(const aContext: TtfwContext;
  aCompiled: TkwCompiledWord;
  const aString: Il3CString);
//#UC START# *4DC19432023E_4DB6C8F30161_var*
var
 l_S : kwString.TkwString;
//#UC END# *4DC19432023E_4DB6C8F30161_var*
begin
//#UC START# *4DC19432023E_4DB6C8F30161_impl*
 l_S := TkwStringFactory.Instance.MakeKW(aString);
 try
  aCompiled.DoAddCodePart(l_S, false, aContext);
 finally
  FreeAndNil(l_S);
 end;//try..finally
//#UC END# *4DC19432023E_4DB6C8F30161_impl*
end;//_tfwCompilingWord_.DoStringToken

function _tfwCompilingWord_.AcceptsEOF: Boolean;
//#UC START# *4DC2DEE70178_4DB6C8F30161_var*
//#UC END# *4DC2DEE70178_4DB6C8F30161_var*
begin
//#UC START# *4DC2DEE70178_4DB6C8F30161_impl*
 Result := false;
//#UC END# *4DC2DEE70178_4DB6C8F30161_impl*
end;//_tfwCompilingWord_.AcceptsEOF

function _tfwCompilingWord_.DisabledEndBracket(const aContext: TtfwContext): AnsiString;
//#UC START# *4EF4A9500352_4DB6C8F30161_var*
//#UC END# *4EF4A9500352_4DB6C8F30161_var*
begin
//#UC START# *4EF4A9500352_4DB6C8F30161_impl*
 Result := '';
 CompilerAssert(false, 'Слово не может иметь завершающей скобки', aContext);
//#UC END# *4EF4A9500352_4DB6C8F30161_impl*
end;//_tfwCompilingWord_.DisabledEndBracket

procedure _tfwCompilingWord_.FillCompiledWord(aCompiled: TkwCompiledWord;
  const aCtx: TtfwContext);
//#UC START# *4F21A4F60049_4DB6C8F30161_var*
//#UC END# *4F21A4F60049_4DB6C8F30161_var*
begin
//#UC START# *4F21A4F60049_4DB6C8F30161_impl*
 // - ничего не делаем
//#UC END# *4F21A4F60049_4DB6C8F30161_impl*
end;//_tfwCompilingWord_.FillCompiledWord

function _tfwCompilingWord_.GetWordProducerForCompiledClass: TtfwWord;
//#UC START# *4F395A6902D2_4DB6C8F30161_var*
//#UC END# *4F395A6902D2_4DB6C8F30161_var*
begin
//#UC START# *4F395A6902D2_4DB6C8F30161_impl*
 Result := Self;
//#UC END# *4F395A6902D2_4DB6C8F30161_impl*
end;//_tfwCompilingWord_.GetWordProducerForCompiledClass

function _tfwCompilingWord_.SupressNextImmediate: Boolean;
//#UC START# *4F3AB3B101FC_4DB6C8F30161_var*
//#UC END# *4F3AB3B101FC_4DB6C8F30161_var*
begin
//#UC START# *4F3AB3B101FC_4DB6C8F30161_impl*
 Result := false;
//#UC END# *4F3AB3B101FC_4DB6C8F30161_impl*
end;//_tfwCompilingWord_.SupressNextImmediate

procedure _tfwCompilingWord_.AfterCodePartAdded(aWord: TtfwWord;
  var aCtx: TtfwContext);
//#UC START# *4F3BCE1501F0_4DB6C8F30161_var*
//#UC END# *4F3BCE1501F0_4DB6C8F30161_var*
begin
//#UC START# *4F3BCE1501F0_4DB6C8F30161_impl*
 // - ничего не делаем
//#UC END# *4F3BCE1501F0_4DB6C8F30161_impl*
end;//_tfwCompilingWord_.AfterCodePartAdded

procedure _tfwCompilingWord_.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DB6C8F30161_var*

var
 l_Ctx : TtfwContext;
 
 function CheckInt64(const aString : Tl3WString): Boolean;
 var
  l_V : Int64;
 begin//CheckInt64
  Result := false;
  if l3AllCharsInCharSet(aString, cc_Digits) then
//   if TryStrToInt64(aString, l_V) then
   begin
    Result := true;
    DoStringToken(l_Ctx, TkwCompiledWord(l_Ctx.rWordCompilingNow), TtfwCStringFactory.C(aString));
   end;//TryStrToInt64(aString, l_V)
 end;//CheckInt64

var
 l_I  : TkwInteger;
 l_W  : TtfwWord;
 l_MC  : Cardinal;
 l_Finder : Il3KeywordFinder;
 l_FinderToResolve : Il3KeywordFinder;
 l_Compiler : ItfwCompiler;
 l_KW : TtfwKeyWord;
//#UC END# *4DAEEDE10285_4DB6C8F30161_var*
begin
//#UC START# *4DAEEDE10285_4DB6C8F30161_impl*
 if (aCtx.rCompiler = nil) then
 begin
  l_Compiler := nil;
  l_Finder := aCtx.rEngine.As_ItfwKeywordFinder
 end//aCtx.rCompiler = nil
 else
 begin
  l_Compiler := aCtx.rCompiler;
  l_Finder := l_Compiler.As_ItfwKeywordFinder;
 end;//aCtx.rCompiler = nil
 try
  l_Ctx := aCtx;
  l_Ctx.rKeyWordCompilingNow := nil;
  l_Ctx.rFirstHalfOfDualWord := nil;
  l_Ctx.rInt := 0;
  l_Ctx.rModifiers := [];
  // - чтобы внутренним словам не досталось ереси, которая уже была использована
  l_Ctx.rCompiling := true;
  try
   l_Ctx.rWordCompilingNow := CompiledWordClass.Create(GetWordProducerForCompiledClass, l_Finder, aCtx.rModifiers);
   try
    l_Ctx.rWordCompilingNow.Key := Self.Key;
    // - чтобы под отладчиком можно было смотреть
    FillCompiledWord(TkwCompiledWord(l_Ctx.rWordCompilingNow), aCtx);
    l_Compiler := TkwCompiledWord(l_Ctx.rWordCompilingNow).Compiler;
    l_Ctx.rCompiler := l_Compiler;
    
    BeforeCompile(aCtx, l_Ctx);

    l_Compiler := TkwCompiledWord(l_Ctx.rWordCompilingNow).Compiler;
    l_Ctx.rCompiler := l_Compiler;
    // - т.к. в BeforeCompile rWordCompilingNow - могло ПОМЕНЯТЬСЯ, например как %CHILDREN
    try
     l_MC := AfterWordMaxCount;
     if (l_MC > 0) then
     begin
      if (l_Compiler = nil) then
       l_Ctx.rParser.KeyWords := aCtx.rEngine.As_ItfwKeywordFinder
      else
       l_Ctx.rParser.KeyWords := l_Compiler.As_ItfwKeywordFinder;
      try
       l_Ctx.rParser.NextToken;
       while (l_MC > 0) do
       begin
        Dec(l_MC);
        Case l_Ctx.rParser.TokenType of
         l3_ttEOF:
         begin
          if not AcceptsEOF then
           CompilerAssert(false, 'Неожиданный конец файла', l_Ctx);
          break;
         end;//l3_ttEOF
         l3_ttInteger:
         begin
          l_I := TkwIntegerFactory.Instance.MakeKW(l_Ctx.rParser.TokenInt);
          try
           TkwCompiledWord(l_Ctx.rWordCompilingNow).DoAddCodePart(l_I, false, l_Ctx);
          finally
           FreeAndNil(l_I);
          end;//try..finally
         end;//l3_ttInteger
         l3_ttKeyWord:
         begin
          if AcceptsKeyWordAfter then
          begin
           l_W := (l_Ctx.rParser.KeyWord As TtfwKeyWord).Word;
           if (l_W = nil) then
           // - описание слова видимо ещё не заверщено, надо брать его же из родителя
           begin
            l_FinderToResolve := l_Finder;
            while (l_FinderToResolve <> nil) do
            begin
             l_KW := (l_FinderToResolve.KeywordByName[l_Ctx.rParser.TokenString] As TtfwKeyWord);
             CompilerAssert((l_KW <> nil),
                            Format('Слово %s не найдено',
                                   [l_Ctx.rParser.KeyWord.AsString]),
                            l_Ctx);
             l_W := l_KW.Word;
             if (l_W <> nil) then
              break;
             l_FinderToResolve := l_FinderToResolve.ParentFinder;
            end;//while (l_FinderToResolve <> nil)
            if (l_W = nil) then
            begin
             l_FinderToResolve := aCtx.rEngine.As_ItfwKeywordFinder;
             if (l_FinderToResolve <> l_Finder) then
             begin
             // - если там УЖЕ не искали
              l_KW := (l_FinderToResolve.KeywordByName[l_Ctx.rParser.TokenString] As TtfwKeyWord);
              CompilerAssert((l_KW <> nil),
                             Format('Слово %s не найдено',
                                    [l_Ctx.rParser.KeyWord.AsString]),
                             l_Ctx);
              l_W := l_KW.Word;
             end;//l_FinderToResolve <> l_Finder
            end;//l_W = nil
           end;//l_W = nil
           CompilerAssert(l_W <> nil,
                          Format('Пустое слово для: %s',
                          [l_Ctx.rParser.KeyWord.AsString]),
                          l_Ctx);
           if l_W.IsImmediate AND
              (not Self.SupressNextImmediate OR l_W.IsAnonimous)
              {OR (l_Ctx.rImmediateLevel > 0)} then
            l_W.DoIt(l_Ctx)
           else
           begin
            TkwCompiledWord(l_Ctx.rWordCompilingNow).DoAddCodePart(l_W, false, l_Ctx);
            AfterCodePartAdded(l_W, l_Ctx);
           end;//l_W.IsImmediate..
          end//AcceptsKeyWordAfter
          else
           CompilerAssert(false, 'Неожиданное ключевое слово', l_Ctx);
         end;//l3_ttKeyWord
         l3_ttString:
          DoStringToken(l_Ctx, TkwCompiledWord(l_Ctx.rWordCompilingNow), TtfwCStringFactory.C(l_Ctx.rParser.TokenLongString));
         else
         begin
          if not CheckInt64(l_Ctx.rParser.TokenLongString.AsWStr) then
          begin
           if l3Same(l_Ctx.rParser.TokenLongString.AsWStr, EndBracket(l_Ctx)) then
            break
           else
            UnknownWord(l_Ctx, TkwCompiledWord(l_Ctx.rWordCompilingNow), l_Finder);
          end;//not CheckInt64(l_Ctx.rParser.TokenLongString.AsWStr)
         end;//else
        end;//Case l_Ctx.rParser.TokenType
        if (l_MC > 0) then
         l_Ctx.rParser.NextToken;
       end;//while true
      finally
       l_Ctx.rParser.KeyWords := l_Finder;
      end;//try..finally
     end;//l_MC > 0
    finally
     try
      AfterCompile(PtfwContext(@aCtx)^, l_Ctx, TkwCompiledWord(l_Ctx.rWordCompilingNow));
     finally
      PtfwContext(@aCtx).rModifiers := [];
      // - сбрасываем модификаторы
     end;//try..finally
    end;//try..finally
   finally
    FreeAndNil(l_Ctx.rWordCompilingNow);
   end;//try..finally
  finally
   Finalize(l_Ctx);
  end;//try..finally
 finally
  l_Finder := nil;
 end;//try..finally
//#UC END# *4DAEEDE10285_4DB6C8F30161_impl*
end;//_tfwCompilingWord_.DoDoIt

function _tfwCompilingWord_.IsImmediate: Boolean;
//#UC START# *4DB6D7F70155_4DB6C8F30161_var*
//#UC END# *4DB6D7F70155_4DB6C8F30161_var*
begin
//#UC START# *4DB6D7F70155_4DB6C8F30161_impl*
 Result := true;
//#UC END# *4DB6D7F70155_4DB6C8F30161_impl*
end;//_tfwCompilingWord_.IsImmediate

function _tfwCompilingWord_.CompiledWordClassPrim: RtfwWord;
//#UC START# *4F477C2C03B9_4DB6C8F30161_var*
//#UC END# *4F477C2C03B9_4DB6C8F30161_var*
begin
//#UC START# *4F477C2C03B9_4DB6C8F30161_impl*
 Result := CompiledWordClass;
//#UC END# *4F477C2C03B9_4DB6C8F30161_impl*
end;//_tfwCompilingWord_.CompiledWordClassPrim

{$IfEnd} //not NoScripts

{$Else  tfwCompilingWord_imp_impl}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

{$EndIf tfwCompilingWord_imp_impl}
{$EndIf tfwCompilingWord_imp}
