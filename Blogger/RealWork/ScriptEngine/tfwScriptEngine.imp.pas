{$IfNDef tfwScriptEngine_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/tfwScriptEngine.imp.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Scripting::ScriptEngine::ScriptEngineCore::tfwScriptEngine
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define tfwScriptEngine_imp}
{$If not defined(NoScripts)}
 _tfwScriptEngine_ = {abstract mixin} class(_tfwScriptEngine_Parent_, ItfwScriptEngine, ItfwWordCompiler {from ItfwScriptEngine}, ItfwKeywordFinder {from ItfwScriptEngine})
 private
 // private fields
   f_UserDictionary : TtfwDictionary;
   f_ValueStack : TtfwValueStack;
    {* Поле для свойства ValueStack}
 protected
 // realized methods
   procedure PrintDictionary(const aCaller: ItfwScriptCaller;
    const aStarts: Tl3WString);
   function CheckWord(const aName: Tl3WString): TtfwKeyWord; overload; 
   function Get_KeywordByName(const aName: AnsiString): Tl3PrimString;
   function Get_ParentFinder: Il3KeywordFinder;
   function Get_ValuesCount: Integer;
   procedure DefineInParameter(const anEngine: ItfwScriptEngine;
     const aParamName: Il3CString;
     aModifiers: TtfwWordModifiers);
     {* Определяет слову входной параметр }
   function CheckWord(const aName: Il3CString): TtfwKeyWord; overload; 
   function Clone: ItfwScriptEngine;
 public
 // realized methods
   procedure PushInt(aValue: Integer);
   function PopInt: Integer;
   procedure PushBool(aValue: Boolean);
   function PopBool: Boolean;
   function IsTopBool: Boolean;
   procedure PushString(const aString: AnsiString); overload; 
   procedure PushString(const aString: Il3CString); overload; 
   procedure PushString(aString: Tl3PrimString); overload; 
   function IsTopString: Boolean;
   function PopDelphiString: AnsiString;
   function PopString: Il3CString;
   function IsTopInt: Boolean;
   procedure Dup;
   procedure Drop;
   procedure Swap;
   procedure Push(const aValue: TtfwStackValue);
   function Pop: TtfwStackValue;
   function IsTopType(aType: TtfwStackValueType): Boolean;
   procedure PushObj(aValue: TObject);
   function PopObj: TObject;
   procedure DupIfNotZero;
   procedure Rot;
   procedure Pick;
   procedure InvertRot;
   procedure Swap2;
   procedure Over2;
   procedure Dup2;
   procedure Drop2;
   procedure Nip;
   procedure Tuck;
   procedure Over;
   procedure Roll;
   procedure PushIntf(const anIntf: IUnknown);
   function PopIntf(const aGUID: TGUID): IUnknown; overload; 
   function PopIntf: IUnknown; overload; 
   function IsTopIntf: Boolean;
     {* Определяет - лежит ли на верхушке стека интерфейс }
   procedure PushString(const aString: Tl3WString); overload; 
   procedure PushFile(const aFile: ItfwFile);
   function PopFile: ItfwFile;
   function IsTopObj: Boolean;
   function IsTopChar: Boolean;
   procedure PushChar(aChar: AnsiChar);
   function PopChar: AnsiChar;
   procedure PushWStr(const aStr: Tl3WString);
   function PopWStr: Tl3WString;
   function IsTopWStr: Boolean;
   function PopPrintable: Il3CString;
   function IsTopBracket: Boolean;
   procedure PushBracket;
   procedure PushClass(aClass: TClass);
   function PopClass: TClass;
   function IsTopClass: Boolean;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
 public
 // public methods
   procedure Script(aStream: Tl3Stream;
     const aCaller: ItfwScriptCaller); virtual;
 public
 // public properties
   property ValueStack: TtfwValueStack
     read f_ValueStack;
 protected
 // Методы преобразования к реализуемым интерфейсам
   function As_ItfwWordCompiler: ItfwWordCompiler;
   function As_ItfwKeywordFinder: ItfwKeywordFinder;
 end;//_tfwScriptEngine_
{$IfEnd} //not NoScripts

{$Else tfwScriptEngine_imp}

{$If not defined(NoScripts)}

// start class _tfwScriptEngine_

procedure _tfwScriptEngine_.Script(aStream: Tl3Stream;
  const aCaller: ItfwScriptCaller);
//#UC START# *4F733B9C0064_4F733A0701F0_var*
var
 l_F : Tl3CustomFiler;
 l_P : TtfwParser;
 l_Ctx : TtfwContext;
 l_Used : Tl3StringList;
//#UC END# *4F733B9C0064_4F733A0701F0_var*
begin
//#UC START# *4F733B9C0064_4F733A0701F0_impl*
 Assert(f_UserDictionary = nil);
 f_UserDictionary := TtfwDictionary.Create;
 try
  l_F := Tl3CustomFiler.Create;
  try
   l_F.Stream := aStream;
   try
    l_P := TtfwParser.Create;
    try
     l_Used := Tl3StringList.Create;
     try
      l3FillChar(l_Ctx, SizeOf(l_Ctx));
      l_Used.SortIndex := l3_siCaseUnsensitive;
      l_Ctx.rCaller := aCaller;
      l_Ctx.rEngine := Self;
      l_Ctx.rParser := l_P;
      l_Ctx.rCompiling := false;
      l_Ctx.rCompiler := nil;
      l_Ctx.rException := nil;
      l_Ctx.rUsed := l_Used;
      l_Ctx.rModifiers := [];
      l_Ctx.rImmediateLevel := 0;
      l_Ctx.rSkipLevel := 0;
      l_Ctx.rStoredValuesStack := TtfwStoredValuesStack.Make;
      if (aStream Is Tl3NamedTextStream) then
       l_Ctx.rScriptFileName := Tl3NamedTextStream(aStream).FileName
      else
       l_Ctx.rScriptFileName := '';
      try
       l_F.CodePage := CP_ANSI;
       l_P.Filer := l_F;
       try
        l_P.AddDigits2WordChars := true;
        l_P.WordChars := l_P.WordChars +
                         cc_ANSIRussian +
                         [':', '.', '-', '+', '=', '<', '>', '?', '!', '&', '|',
                          '(', ')', '"', '@', '[', ']', ',',
                          '/', '^', '№', '~', '$', '%', '*'] +
                         cc_Digits;
        l_P.CheckStringBracket := false;
        // - не смотрим на символ '<' в строковых константах
        l_P.SkipSoftEnter := true;
        // - плюём на #10 модели, которые не смогли победить
        l_P.SkipHardEnter := true;
        // - плюём на #13 модели, которые не смогли победить
        l_P.KeyWords := Self;
        try
         _Instance_R_(Self).DoIt(l_Ctx);
         try
          _Instance_R_(Self).RunCompiled(l_Ctx);
         except
          on EtfwExit do
           ;
          on EtfwHalt do
           ;
          else
          begin
           l3System.Msg2Log('Script failed: ' + l_Ctx.rScriptFileName);
           raise;
          end;//else
         end;//try..except
        finally
         l_P.KeyWords := nil;
        end;//try..finally
       finally
        l_P.Filer := nil;
       end;//try..finally
      finally
       try
        l_Ctx.rEngine := nil;
       finally
        l_Ctx.rStoredValuesStack := nil
       end;//try..finally
      end;//try..finally
     finally
      FreeAndNil(l_Used);
     end;//try..finally
    finally
     FreeAndNil(l_P);
    end;//try..finally
   finally
    l_F.Stream := nil;
   end;//try..finally
  finally
   FreeAndNil(l_F);
  end;//try..finally
 finally
  FreeAndNil(f_UserDictionary);
 end;//try..finally
//#UC END# *4F733B9C0064_4F733A0701F0_impl*
end;//_tfwScriptEngine_.Script

procedure _tfwScriptEngine_.PushInt(aValue: Integer);
//#UC START# *4DB008F503BE_4F733A0701F0_var*
//#UC END# *4DB008F503BE_4F733A0701F0_var*
begin
//#UC START# *4DB008F503BE_4F733A0701F0_impl*
 if (f_ValueStack = nil) then
  f_ValueStack := TtfwValueStack.Create;
 f_ValueStack.PushInt(aValue);
//#UC END# *4DB008F503BE_4F733A0701F0_impl*
end;//_tfwScriptEngine_.PushInt

function _tfwScriptEngine_.PopInt: Integer;
//#UC START# *4DB0090A0000_4F733A0701F0_var*
//#UC END# *4DB0090A0000_4F733A0701F0_var*
begin
//#UC START# *4DB0090A0000_4F733A0701F0_impl*
 Assert(f_ValueStack <> nil);
 Result := f_ValueStack.PopInt;
//#UC END# *4DB0090A0000_4F733A0701F0_impl*
end;//_tfwScriptEngine_.PopInt

procedure _tfwScriptEngine_.PushBool(aValue: Boolean);
//#UC START# *4DB013A10166_4F733A0701F0_var*
//#UC END# *4DB013A10166_4F733A0701F0_var*
begin
//#UC START# *4DB013A10166_4F733A0701F0_impl*
 if (f_ValueStack = nil) then
  f_ValueStack := TtfwValueStack.Create;
 f_ValueStack.PushBool(aValue);
//#UC END# *4DB013A10166_4F733A0701F0_impl*
end;//_tfwScriptEngine_.PushBool

function _tfwScriptEngine_.PopBool: Boolean;
//#UC START# *4DB013AF01C9_4F733A0701F0_var*
//#UC END# *4DB013AF01C9_4F733A0701F0_var*
begin
//#UC START# *4DB013AF01C9_4F733A0701F0_impl*
 Assert(f_ValueStack <> nil);
 Result := f_ValueStack.PopBool;
//#UC END# *4DB013AF01C9_4F733A0701F0_impl*
end;//_tfwScriptEngine_.PopBool

function _tfwScriptEngine_.IsTopBool: Boolean;
//#UC START# *4DB04213007C_4F733A0701F0_var*
//#UC END# *4DB04213007C_4F733A0701F0_var*
begin
//#UC START# *4DB04213007C_4F733A0701F0_impl*
 if f_ValueStack.Empty then
  Result := false
 else
  Result := f_ValueStack.IsTopBool;  
//#UC END# *4DB04213007C_4F733A0701F0_impl*
end;//_tfwScriptEngine_.IsTopBool

procedure _tfwScriptEngine_.PushString(const aString: AnsiString);
//#UC START# *4DB047EF0005_4F733A0701F0_var*
//#UC END# *4DB047EF0005_4F733A0701F0_var*
begin
//#UC START# *4DB047EF0005_4F733A0701F0_impl*
 if (f_ValueStack = nil) then
  f_ValueStack := TtfwValueStack.Create;
 f_ValueStack.PushString(aString);
//#UC END# *4DB047EF0005_4F733A0701F0_impl*
end;//_tfwScriptEngine_.PushString

procedure _tfwScriptEngine_.PushString(const aString: Il3CString);
//#UC START# *4DB0480002EF_4F733A0701F0_var*
//#UC END# *4DB0480002EF_4F733A0701F0_var*
begin
//#UC START# *4DB0480002EF_4F733A0701F0_impl*
 if (f_ValueStack = nil) then
  f_ValueStack := TtfwValueStack.Create;
 f_ValueStack.PushString(aString);
//#UC END# *4DB0480002EF_4F733A0701F0_impl*
end;//_tfwScriptEngine_.PushString

procedure _tfwScriptEngine_.PushString(aString: Tl3PrimString);
//#UC START# *4DB0480A0174_4F733A0701F0_var*
//#UC END# *4DB0480A0174_4F733A0701F0_var*
begin
//#UC START# *4DB0480A0174_4F733A0701F0_impl*
 if (f_ValueStack = nil) then
  f_ValueStack := TtfwValueStack.Create;
 f_ValueStack.PushString(aString);
//#UC END# *4DB0480A0174_4F733A0701F0_impl*
end;//_tfwScriptEngine_.PushString

function _tfwScriptEngine_.IsTopString: Boolean;
//#UC START# *4DB0488A0157_4F733A0701F0_var*
//#UC END# *4DB0488A0157_4F733A0701F0_var*
begin
//#UC START# *4DB0488A0157_4F733A0701F0_impl*
 Result := f_ValueStack.IsTopString;
//#UC END# *4DB0488A0157_4F733A0701F0_impl*
end;//_tfwScriptEngine_.IsTopString

function _tfwScriptEngine_.PopDelphiString: AnsiString;
//#UC START# *4DB0489C0129_4F733A0701F0_var*
//#UC END# *4DB0489C0129_4F733A0701F0_var*
begin
//#UC START# *4DB0489C0129_4F733A0701F0_impl*
 Result := f_ValueStack.PopDelphiString;
//#UC END# *4DB0489C0129_4F733A0701F0_impl*
end;//_tfwScriptEngine_.PopDelphiString

procedure _tfwScriptEngine_.PrintDictionary(const aCaller: ItfwScriptCaller;
  const aStarts: Tl3WString);
//#UC START# *4DB175AE0375_4F733A0701F0_var*

var
 l_Indent : Integer;
  
 procedure PrintItem(anItem : TtfwKeyWord);

  procedure locPrintDictionary(aWord : TkwCompiledWord);
  var
   l_Index : Integer;
  begin//locPrintDictionary
   if (aWord.LocalDictionary <> nil) then
   begin
    Inc(l_Indent);
    try
     with aWord.LocalDictionary do
      for l_Index := 0 to Pred(Count) do
       //if l3Starts(aStarts, Items[l_Index].AsWStr) then
        PrintItem(Items[l_Index] As TtfwKeyWord);
    finally
     Dec(l_Indent);
    end;//try..finally
   end;//aWord.LocalDictionary <> nil
  end;//locPrintDictionary

  function Shift: Il3CString;
  begin//Shift
   if (l_Indent > 0) then
    Result := TtfwCStringFactory.C(ev_psFixLen('', l_Indent, #32))
   else
    Result := nil;
  end;//Shift

  function GetDirectives(aWord : TtfwWord): Il3CString;
  var
   l_Ms : TtfwWordModifiers;
  begin//GetDirectives
   Result := nil;
   if (aWord Is TkwCompiledWord) then
   begin
    l_Ms := TkwCompiledWord(aWord).Modifiers;
    if (l_Ms <> []) then
    begin
     if (tfw_wmRedefinition in l_Ms) then
      Result := l3Cat([Result, TtfwCStringFactory.C('REDIFINITION'), TtfwCStringFactory.C(' ')]);

     if (tfw_wmSummoned in l_Ms) then
      Result := l3Cat([Result, TtfwCStringFactory.C('SUMMONED'), TtfwCStringFactory.C(' ')]);

     if (tfw_wmRealize in l_Ms) then
      Result := l3Cat([Result, TtfwCStringFactory.C('REALIZE'), TtfwCStringFactory.C(' ')])
     else
     if (tfw_wmOverride in l_Ms) then
      Result := l3Cat([Result, TtfwCStringFactory.C('OVERRIDE'), TtfwCStringFactory.C(' ')]);

     if (tfw_wmPrivate in l_Ms) then
      Result := l3Cat([Result, TtfwCStringFactory.C('PRIVATE'), TtfwCStringFactory.C(' ')])
     else
     if (tfw_wmProtected in l_Ms) then
      Result := l3Cat([Result, TtfwCStringFactory.C('PRIVATE'), TtfwCStringFactory.C(' ')]);

     if (tfw_wmAbstract in l_Ms) then
      Result := l3Cat([Result, TtfwCStringFactory.C('ABSTRACT'), TtfwCStringFactory.C(' ')])
     else
     if (tfw_wmFinal in l_Ms) then
      Result := l3Cat([Result, TtfwCStringFactory.C('FINAL'), TtfwCStringFactory.C(' ')]);

     if (tfw_wmLink in l_Ms) then
      Result := l3Cat([Result, TtfwCStringFactory.C('LINK'), TtfwCStringFactory.C(' ')])
     else
     if (tfw_wmReference in l_Ms) then
      Result := l3Cat([Result, TtfwCStringFactory.C('REFERENCE'), TtfwCStringFactory.C(' ')]);

     if (tfw_wmInt in l_Ms) then
      Result := l3Cat([Result, TtfwCStringFactory.C('INTEGER'), TtfwCStringFactory.C(' ')]);

     if (tfw_wmObj in l_Ms) then
      Result := l3Cat([Result, TtfwCStringFactory.C('OBJECT'), TtfwCStringFactory.C(' ')]);

     if (tfw_wmStr in l_Ms) then
      Result := l3Cat([Result, TtfwCStringFactory.C('STRING'), TtfwCStringFactory.C(' ')]);

     if (tfw_wmBool in l_Ms) then
      Result := l3Cat([Result, TtfwCStringFactory.C('BOOLEAN'), TtfwCStringFactory.C(' ')]);

     if (tfw_wmList in l_Ms) then
      Result := l3Cat([Result, TtfwCStringFactory.C('[]'), TtfwCStringFactory.C(' ')]);

     if (tfw_wmClass in l_Ms) then
      Result := l3Cat([Result, TtfwCStringFactory.C('CLASS'), TtfwCStringFactory.C(' ')]);

     if (tfw_wmIntf in l_Ms) then
      Result := l3Cat([Result, TtfwCStringFactory.C('INTERFACE'), TtfwCStringFactory.C(' ')]);
    end;//l_Ms <> []
   end;//aWord Is TkwCompiledWord
  end;//GetDirectives

  function GetStereos(aWord : TtfwWord): Il3CString;
  var
   l_WP : TtfwWord;
  begin//GetStereos
   Result := nil;
   while (aWord <> nil) do
   begin
    l_WP := aWord.WordProducer;
    if (l_WP = nil) then
     break;
    if (Result = nil) then
     Result := l3Cat(l_WP.Key.AsCStr, ' : ')
    else
     Result := l3Cat([l_WP.Key.AsCStr, TtfwCStringFactory.C(' :: '), Result]);
    aWord := l_WP;
   end;//aWord <> nil
  end;//GetStereos

  procedure PrintWord(aWord : TtfwWord; aRedefines : Boolean);
  var
   l_Name : Il3CString;
  begin//PrintWord
   if not aRedefines then
    l_Name := anItem.AsCStr
   else
    l_Name := aWord.Key.AsCStr;
   aCaller.Print(l3Cat([
                        Shift,
                        GetDirectives(aWord),
                        GetStereos(aWord),
                        l_Name
                       ]));
   if (aWord <> nil) AND (aWord.Redefines <> nil) then
   begin
    aCaller.Print(l3Cat([
                         Shift,
                         TtfwCStringFactory.C('==> Redefines')
                        ]));
    try
     Inc(l_Indent);
     try
      PrintWord(aWord.Redefines, true);
     finally
      Dec(l_Indent);
     end;//try..finally
    finally
     aCaller.Print(l3Cat([
                          Shift,
                          TtfwCStringFactory.C('<== Redefines')
                         ]));
    end;//try..finally                     
   end;//(aWord <> nil) AND (aWord.Redefines <> nil)
   if (aWord Is TkwCompiledWord) then
    if (TkwCompiledWord(aWord).LocalDictionary <> nil) then
    begin
     locPrintDictionary(TkwCompiledWord(aWord));
     aCaller.Print(l3Cat([
                          Shift,
                          TtfwCStringFactory.C('; // '),
                          l_Name
                         ]));
    end;//TkwCompiledWord(aWord).LocalDictionary <> nil
  end;//PrintWord

 var
  l_W : TtfwWord;
 begin//PrintItem
  l_W := anItem.Word;
  if (l_W <> nil) then
   PrintWord(l_W, false);
  //if (l_W Is TkwCompiledWord) then
   //locPrintDictionary(TkwCompiledWord(l_W));
 end;//PrintItem

var
 l_Index : Integer;
//#UC END# *4DB175AE0375_4F733A0701F0_var*
begin
//#UC START# *4DB175AE0375_4F733A0701F0_impl*
 l_Indent := 0;
 with TtfwAutoregisteredDiction.Instance do
  for l_Index := 0 to Pred(Count) do
   if l3Starts(aStarts, Items[l_Index].AsWStr) then
    PrintItem(Items[l_Index] As TtfwKeyWord);
 if (f_UserDictionary <> nil) then
  with f_UserDictionary do
   for l_Index := 0 to Pred(Count) do
    if l3Starts(aStarts, Items[l_Index].AsWStr) then
     PrintItem(Items[l_Index] As TtfwKeyWord);
//#UC END# *4DB175AE0375_4F733A0701F0_impl*
end;//_tfwScriptEngine_.PrintDictionary

function _tfwScriptEngine_.PopString: Il3CString;
//#UC START# *4DB1784F0388_4F733A0701F0_var*
//#UC END# *4DB1784F0388_4F733A0701F0_var*
begin
//#UC START# *4DB1784F0388_4F733A0701F0_impl*
 Result := f_ValueStack.PopString;
//#UC END# *4DB1784F0388_4F733A0701F0_impl*
end;//_tfwScriptEngine_.PopString

function _tfwScriptEngine_.IsTopInt: Boolean;
//#UC START# *4DB17E8502F0_4F733A0701F0_var*
//#UC END# *4DB17E8502F0_4F733A0701F0_var*
begin
//#UC START# *4DB17E8502F0_4F733A0701F0_impl*
 Result := f_ValueStack.IsTopInt;
//#UC END# *4DB17E8502F0_4F733A0701F0_impl*
end;//_tfwScriptEngine_.IsTopInt

function _tfwScriptEngine_.CheckWord(const aName: Tl3WString): TtfwKeyWord;
//#UC START# *4DB6DA63005E_4F733A0701F0_var*
var
 i : Integer;
//#UC END# *4DB6DA63005E_4F733A0701F0_var*
begin
//#UC START# *4DB6DA63005E_4F733A0701F0_impl*
 Assert(f_UserDictionary <> nil);
 //Assert(f_Dictionary <> nil);
 Assert(not TtfwAutoregisteredDiction.Instance.FindData(aName, i),
        Format('Слово %s уже определено в базовой аксиоматике', [l3Str(aName)]
        ));
 Result := f_UserDictionary.CheckWord(aName);
//#UC END# *4DB6DA63005E_4F733A0701F0_impl*
end;//_tfwScriptEngine_.CheckWord

procedure _tfwScriptEngine_.Dup;
//#UC START# *4DB6EE5E031F_4F733A0701F0_var*
//#UC END# *4DB6EE5E031F_4F733A0701F0_var*
begin
//#UC START# *4DB6EE5E031F_4F733A0701F0_impl*
 f_ValueStack.Dup;
//#UC END# *4DB6EE5E031F_4F733A0701F0_impl*
end;//_tfwScriptEngine_.Dup

procedure _tfwScriptEngine_.Drop;
//#UC START# *4DB6F04F02D2_4F733A0701F0_var*
//#UC END# *4DB6F04F02D2_4F733A0701F0_var*
begin
//#UC START# *4DB6F04F02D2_4F733A0701F0_impl*
 f_ValueStack.Drop;
//#UC END# *4DB6F04F02D2_4F733A0701F0_impl*
end;//_tfwScriptEngine_.Drop

procedure _tfwScriptEngine_.Swap;
//#UC START# *4DB704AA00BF_4F733A0701F0_var*
//#UC END# *4DB704AA00BF_4F733A0701F0_var*
begin
//#UC START# *4DB704AA00BF_4F733A0701F0_impl*
 f_ValueStack.Swap;
//#UC END# *4DB704AA00BF_4F733A0701F0_impl*
end;//_tfwScriptEngine_.Swap

procedure _tfwScriptEngine_.Push(const aValue: TtfwStackValue);
//#UC START# *4DBAF89E0328_4F733A0701F0_var*
//#UC END# *4DBAF89E0328_4F733A0701F0_var*
begin
//#UC START# *4DBAF89E0328_4F733A0701F0_impl*
 if (f_ValueStack = nil) then
  f_ValueStack := TtfwValueStack.Create;
 f_ValueStack.Push(aValue);
//#UC END# *4DBAF89E0328_4F733A0701F0_impl*
end;//_tfwScriptEngine_.Push

function _tfwScriptEngine_.Pop: TtfwStackValue;
//#UC START# *4DBAF8B002CA_4F733A0701F0_var*
//#UC END# *4DBAF8B002CA_4F733A0701F0_var*
begin
//#UC START# *4DBAF8B002CA_4F733A0701F0_impl*
 Result := f_ValueStack.Pop;
//#UC END# *4DBAF8B002CA_4F733A0701F0_impl*
end;//_tfwScriptEngine_.Pop

function _tfwScriptEngine_.IsTopType(aType: TtfwStackValueType): Boolean;
//#UC START# *4DBAF8C200E2_4F733A0701F0_var*
//#UC END# *4DBAF8C200E2_4F733A0701F0_var*
begin
//#UC START# *4DBAF8C200E2_4F733A0701F0_impl*
 Result := f_ValueStack.IsTopType(aType);
//#UC END# *4DBAF8C200E2_4F733A0701F0_impl*
end;//_tfwScriptEngine_.IsTopType

procedure _tfwScriptEngine_.PushObj(aValue: TObject);
//#UC START# *4DBAF910011B_4F733A0701F0_var*
//#UC END# *4DBAF910011B_4F733A0701F0_var*
begin
//#UC START# *4DBAF910011B_4F733A0701F0_impl*
 if (f_ValueStack = nil) then
  f_ValueStack := TtfwValueStack.Create;
 f_ValueStack.PushObj(aValue);
//#UC END# *4DBAF910011B_4F733A0701F0_impl*
end;//_tfwScriptEngine_.PushObj

function _tfwScriptEngine_.PopObj: TObject;
//#UC START# *4DBAF9210150_4F733A0701F0_var*
//#UC END# *4DBAF9210150_4F733A0701F0_var*
begin
//#UC START# *4DBAF9210150_4F733A0701F0_impl*
 Result := f_ValueStack.PopObj;
//#UC END# *4DBAF9210150_4F733A0701F0_impl*
end;//_tfwScriptEngine_.PopObj

function _tfwScriptEngine_.Get_KeywordByName(const aName: AnsiString): Tl3PrimString;
//#UC START# *4DC95AF703B8_4F733A0701F0get_var*
//#UC END# *4DC95AF703B8_4F733A0701F0get_var*
begin
//#UC START# *4DC95AF703B8_4F733A0701F0get_impl*
 Assert(f_UserDictionary <> nil);
 Assert(TtfwAutoregisteredDiction.Instance <> nil);
 if (f_UserDictionary <> nil) then
  Result := f_UserDictionary.DRbyName[aName]
 else
  Result := nil;
 if (Result = nil) then
  Result := TtfwAutoregisteredDiction.Instance.DRbyName[aName];
//#UC END# *4DC95AF703B8_4F733A0701F0get_impl*
end;//_tfwScriptEngine_.Get_KeywordByName

procedure _tfwScriptEngine_.DupIfNotZero;
//#UC START# *4DCBD16302CD_4F733A0701F0_var*
//#UC END# *4DCBD16302CD_4F733A0701F0_var*
begin
//#UC START# *4DCBD16302CD_4F733A0701F0_impl*
 f_ValueStack.DupIfNotZero;
//#UC END# *4DCBD16302CD_4F733A0701F0_impl*
end;//_tfwScriptEngine_.DupIfNotZero

procedure _tfwScriptEngine_.Rot;
//#UC START# *4DEF28E400E0_4F733A0701F0_var*
//#UC END# *4DEF28E400E0_4F733A0701F0_var*
begin
//#UC START# *4DEF28E400E0_4F733A0701F0_impl*
 f_ValueStack.Rot;
//#UC END# *4DEF28E400E0_4F733A0701F0_impl*
end;//_tfwScriptEngine_.Rot

procedure _tfwScriptEngine_.Pick;
//#UC START# *4DEF5D850232_4F733A0701F0_var*
//#UC END# *4DEF5D850232_4F733A0701F0_var*
begin
//#UC START# *4DEF5D850232_4F733A0701F0_impl*
 f_ValueStack.Pick;
//#UC END# *4DEF5D850232_4F733A0701F0_impl*
end;//_tfwScriptEngine_.Pick

procedure _tfwScriptEngine_.InvertRot;
//#UC START# *4DEF5FBB0157_4F733A0701F0_var*
//#UC END# *4DEF5FBB0157_4F733A0701F0_var*
begin
//#UC START# *4DEF5FBB0157_4F733A0701F0_impl*
 f_ValueStack.InvertRot;
//#UC END# *4DEF5FBB0157_4F733A0701F0_impl*
end;//_tfwScriptEngine_.InvertRot

procedure _tfwScriptEngine_.Swap2;
//#UC START# *4DEF5FE202B1_4F733A0701F0_var*
//#UC END# *4DEF5FE202B1_4F733A0701F0_var*
begin
//#UC START# *4DEF5FE202B1_4F733A0701F0_impl*
 f_ValueStack.Swap2;
//#UC END# *4DEF5FE202B1_4F733A0701F0_impl*
end;//_tfwScriptEngine_.Swap2

procedure _tfwScriptEngine_.Over2;
//#UC START# *4DEF5FF802E6_4F733A0701F0_var*
//#UC END# *4DEF5FF802E6_4F733A0701F0_var*
begin
//#UC START# *4DEF5FF802E6_4F733A0701F0_impl*
 f_ValueStack.Over2;
//#UC END# *4DEF5FF802E6_4F733A0701F0_impl*
end;//_tfwScriptEngine_.Over2

procedure _tfwScriptEngine_.Dup2;
//#UC START# *4DEF60050174_4F733A0701F0_var*
//#UC END# *4DEF60050174_4F733A0701F0_var*
begin
//#UC START# *4DEF60050174_4F733A0701F0_impl*
 f_ValueStack.Dup2;
//#UC END# *4DEF60050174_4F733A0701F0_impl*
end;//_tfwScriptEngine_.Dup2

procedure _tfwScriptEngine_.Drop2;
//#UC START# *4DEF6013023F_4F733A0701F0_var*
//#UC END# *4DEF6013023F_4F733A0701F0_var*
begin
//#UC START# *4DEF6013023F_4F733A0701F0_impl*
 f_ValueStack.Drop2;
//#UC END# *4DEF6013023F_4F733A0701F0_impl*
end;//_tfwScriptEngine_.Drop2

procedure _tfwScriptEngine_.Nip;
//#UC START# *4DEF602000E4_4F733A0701F0_var*
//#UC END# *4DEF602000E4_4F733A0701F0_var*
begin
//#UC START# *4DEF602000E4_4F733A0701F0_impl*
 f_ValueStack.Nip;
//#UC END# *4DEF602000E4_4F733A0701F0_impl*
end;//_tfwScriptEngine_.Nip

procedure _tfwScriptEngine_.Tuck;
//#UC START# *4DEF602B03A2_4F733A0701F0_var*
//#UC END# *4DEF602B03A2_4F733A0701F0_var*
begin
//#UC START# *4DEF602B03A2_4F733A0701F0_impl*
 f_ValueStack.Tuck;
//#UC END# *4DEF602B03A2_4F733A0701F0_impl*
end;//_tfwScriptEngine_.Tuck

procedure _tfwScriptEngine_.Over;
//#UC START# *4DF06491010E_4F733A0701F0_var*
//#UC END# *4DF06491010E_4F733A0701F0_var*
begin
//#UC START# *4DF06491010E_4F733A0701F0_impl*
 f_ValueStack.Over;
//#UC END# *4DF06491010E_4F733A0701F0_impl*
end;//_tfwScriptEngine_.Over

procedure _tfwScriptEngine_.Roll;
//#UC START# *4DF0649B0073_4F733A0701F0_var*
//#UC END# *4DF0649B0073_4F733A0701F0_var*
begin
//#UC START# *4DF0649B0073_4F733A0701F0_impl*
 f_ValueStack.Roll;
//#UC END# *4DF0649B0073_4F733A0701F0_impl*
end;//_tfwScriptEngine_.Roll

procedure _tfwScriptEngine_.PushIntf(const anIntf: IUnknown);
//#UC START# *4EB2747D0294_4F733A0701F0_var*
//#UC END# *4EB2747D0294_4F733A0701F0_var*
begin
//#UC START# *4EB2747D0294_4F733A0701F0_impl*
 if (f_ValueStack = nil) then
  f_ValueStack := TtfwValueStack.Create;
 f_ValueStack.PushIntf(anIntf);
//#UC END# *4EB2747D0294_4F733A0701F0_impl*
end;//_tfwScriptEngine_.PushIntf

function _tfwScriptEngine_.PopIntf(const aGUID: TGUID): IUnknown;
//#UC START# *4EB274C402BC_4F733A0701F0_var*
//#UC END# *4EB274C402BC_4F733A0701F0_var*
begin
//#UC START# *4EB274C402BC_4F733A0701F0_impl*
 Result := f_ValueStack.PopIntf(aGUID);
//#UC END# *4EB274C402BC_4F733A0701F0_impl*
end;//_tfwScriptEngine_.PopIntf

function _tfwScriptEngine_.PopIntf: IUnknown;
//#UC START# *4EB274E201C2_4F733A0701F0_var*
//#UC END# *4EB274E201C2_4F733A0701F0_var*
begin
//#UC START# *4EB274E201C2_4F733A0701F0_impl*
 Result := f_ValueStack.PopIntf;
//#UC END# *4EB274E201C2_4F733A0701F0_impl*
end;//_tfwScriptEngine_.PopIntf

function _tfwScriptEngine_.IsTopIntf: Boolean;
//#UC START# *4EB2759D021C_4F733A0701F0_var*
//#UC END# *4EB2759D021C_4F733A0701F0_var*
begin
//#UC START# *4EB2759D021C_4F733A0701F0_impl*
 Result := f_ValueStack.IsTopIntf;
//#UC END# *4EB2759D021C_4F733A0701F0_impl*
end;//_tfwScriptEngine_.IsTopIntf

function _tfwScriptEngine_.Get_ParentFinder: Il3KeywordFinder;
//#UC START# *4F3A922803CD_4F733A0701F0get_var*
//#UC END# *4F3A922803CD_4F733A0701F0get_var*
begin
//#UC START# *4F3A922803CD_4F733A0701F0get_impl*
 Result := nil;
//#UC END# *4F3A922803CD_4F733A0701F0get_impl*
end;//_tfwScriptEngine_.Get_ParentFinder

function _tfwScriptEngine_.Get_ValuesCount: Integer;
//#UC START# *4F3E34A1009A_4F733A0701F0get_var*
//#UC END# *4F3E34A1009A_4F733A0701F0get_var*
begin
//#UC START# *4F3E34A1009A_4F733A0701F0get_impl*
 if (f_ValueStack = nil) then
  Result := 0
 else
  Result := f_ValueStack.Count;
//#UC END# *4F3E34A1009A_4F733A0701F0get_impl*
end;//_tfwScriptEngine_.Get_ValuesCount

procedure _tfwScriptEngine_.DefineInParameter(const anEngine: ItfwScriptEngine;
  const aParamName: Il3CString;
  aModifiers: TtfwWordModifiers);
//#UC START# *4F4161BC0024_4F733A0701F0_var*
//#UC END# *4F4161BC0024_4F733A0701F0_var*
begin
//#UC START# *4F4161BC0024_4F733A0701F0_impl*
 Assert(false, 'Определение входных параметров непосредственно у скриптовой машины пока не поддерживается');
//#UC END# *4F4161BC0024_4F733A0701F0_impl*
end;//_tfwScriptEngine_.DefineInParameter

function _tfwScriptEngine_.CheckWord(const aName: Il3CString): TtfwKeyWord;
//#UC START# *4F46588B021E_4F733A0701F0_var*
var
 i : Integer;
//#UC END# *4F46588B021E_4F733A0701F0_var*
begin
//#UC START# *4F46588B021E_4F733A0701F0_impl*
 Assert(f_UserDictionary <> nil);
 //Assert(f_Dictionary <> nil);
 Assert(not TtfwAutoregisteredDiction.Instance.FindData(l3PCharLen(aName), i),
        Format('Слово %s уже существует в базовой аксиоматике', [l3Str(aName)]));
 Result := f_UserDictionary.CheckWord(aName);
//#UC END# *4F46588B021E_4F733A0701F0_impl*
end;//_tfwScriptEngine_.CheckWord

procedure _tfwScriptEngine_.PushString(const aString: Tl3WString);
//#UC START# *4F4749150158_4F733A0701F0_var*
//#UC END# *4F4749150158_4F733A0701F0_var*
begin
//#UC START# *4F4749150158_4F733A0701F0_impl*
 if (f_ValueStack = nil) then
  f_ValueStack := TtfwValueStack.Create;
 f_ValueStack.PushString(aString);
//#UC END# *4F4749150158_4F733A0701F0_impl*
end;//_tfwScriptEngine_.PushString

procedure _tfwScriptEngine_.PushFile(const aFile: ItfwFile);
//#UC START# *4F4FD9790124_4F733A0701F0_var*
//#UC END# *4F4FD9790124_4F733A0701F0_var*
begin
//#UC START# *4F4FD9790124_4F733A0701F0_impl*
 if (f_ValueStack = nil) then
  f_ValueStack := TtfwValueStack.Create;
 f_ValueStack.PushFile(aFile);
//#UC END# *4F4FD9790124_4F733A0701F0_impl*
end;//_tfwScriptEngine_.PushFile

function _tfwScriptEngine_.PopFile: ItfwFile;
//#UC START# *4F4FD99A0182_4F733A0701F0_var*
//#UC END# *4F4FD99A0182_4F733A0701F0_var*
begin
//#UC START# *4F4FD99A0182_4F733A0701F0_impl*
 Result := f_ValueStack.PopFile;
//#UC END# *4F4FD99A0182_4F733A0701F0_impl*
end;//_tfwScriptEngine_.PopFile

function _tfwScriptEngine_.IsTopObj: Boolean;
//#UC START# *4F4FDC210286_4F733A0701F0_var*
//#UC END# *4F4FDC210286_4F733A0701F0_var*
begin
//#UC START# *4F4FDC210286_4F733A0701F0_impl*
 Result := f_ValueStack.IsTopObj;
//#UC END# *4F4FDC210286_4F733A0701F0_impl*
end;//_tfwScriptEngine_.IsTopObj

function _tfwScriptEngine_.IsTopChar: Boolean;
//#UC START# *4F4FDCFB0195_4F733A0701F0_var*
//#UC END# *4F4FDCFB0195_4F733A0701F0_var*
begin
//#UC START# *4F4FDCFB0195_4F733A0701F0_impl*
 Result := f_ValueStack.IsTopChar;
//#UC END# *4F4FDCFB0195_4F733A0701F0_impl*
end;//_tfwScriptEngine_.IsTopChar

procedure _tfwScriptEngine_.PushChar(aChar: AnsiChar);
//#UC START# *4F4FDD140127_4F733A0701F0_var*
//#UC END# *4F4FDD140127_4F733A0701F0_var*
begin
//#UC START# *4F4FDD140127_4F733A0701F0_impl*
 if (f_ValueStack = nil) then
  f_ValueStack := TtfwValueStack.Create;
 f_ValueStack.PushChar(aChar);
//#UC END# *4F4FDD140127_4F733A0701F0_impl*
end;//_tfwScriptEngine_.PushChar

function _tfwScriptEngine_.PopChar: AnsiChar;
//#UC START# *4F4FDD38028A_4F733A0701F0_var*
//#UC END# *4F4FDD38028A_4F733A0701F0_var*
begin
//#UC START# *4F4FDD38028A_4F733A0701F0_impl*
 Result := f_ValueStack.PopChar;
//#UC END# *4F4FDD38028A_4F733A0701F0_impl*
end;//_tfwScriptEngine_.PopChar

procedure _tfwScriptEngine_.PushWStr(const aStr: Tl3WString);
//#UC START# *4F4FE1DC0081_4F733A0701F0_var*
//#UC END# *4F4FE1DC0081_4F733A0701F0_var*
begin
//#UC START# *4F4FE1DC0081_4F733A0701F0_impl*
 if (f_ValueStack = nil) then
  f_ValueStack := TtfwValueStack.Create;
 f_ValueStack.PushWStr(aStr);
//#UC END# *4F4FE1DC0081_4F733A0701F0_impl*
end;//_tfwScriptEngine_.PushWStr

function _tfwScriptEngine_.PopWStr: Tl3WString;
//#UC START# *4F4FE2000271_4F733A0701F0_var*
//#UC END# *4F4FE2000271_4F733A0701F0_var*
begin
//#UC START# *4F4FE2000271_4F733A0701F0_impl*
 Result := f_ValueStack.PopWStr;
//#UC END# *4F4FE2000271_4F733A0701F0_impl*
end;//_tfwScriptEngine_.PopWStr

function _tfwScriptEngine_.IsTopWStr: Boolean;
//#UC START# *4F4FE2210169_4F733A0701F0_var*
//#UC END# *4F4FE2210169_4F733A0701F0_var*
begin
//#UC START# *4F4FE2210169_4F733A0701F0_impl*
 Result := f_ValueStack.IsTopWStr;
//#UC END# *4F4FE2210169_4F733A0701F0_impl*
end;//_tfwScriptEngine_.IsTopWStr

function _tfwScriptEngine_.PopPrintable: Il3CString;
//#UC START# *4F4FEB6100A7_4F733A0701F0_var*
//#UC END# *4F4FEB6100A7_4F733A0701F0_var*
begin
//#UC START# *4F4FEB6100A7_4F733A0701F0_impl*
 Result := f_ValueStack.PopPrintable;
//#UC END# *4F4FEB6100A7_4F733A0701F0_impl*
end;//_tfwScriptEngine_.PopPrintable

function _tfwScriptEngine_.IsTopBracket: Boolean;
//#UC START# *4F5030B002E0_4F733A0701F0_var*
//#UC END# *4F5030B002E0_4F733A0701F0_var*
begin
//#UC START# *4F5030B002E0_4F733A0701F0_impl*
 Result := f_ValueStack.IsTopBracket;
//#UC END# *4F5030B002E0_4F733A0701F0_impl*
end;//_tfwScriptEngine_.IsTopBracket

procedure _tfwScriptEngine_.PushBracket;
//#UC START# *4F5030D00022_4F733A0701F0_var*
//#UC END# *4F5030D00022_4F733A0701F0_var*
begin
//#UC START# *4F5030D00022_4F733A0701F0_impl*
 if (f_ValueStack = nil) then
  f_ValueStack := TtfwValueStack.Create;
 f_ValueStack.PushBracket;
//#UC END# *4F5030D00022_4F733A0701F0_impl*
end;//_tfwScriptEngine_.PushBracket

procedure _tfwScriptEngine_.PushClass(aClass: TClass);
//#UC START# *508526FE0229_4F733A0701F0_var*
//#UC END# *508526FE0229_4F733A0701F0_var*
begin
//#UC START# *508526FE0229_4F733A0701F0_impl*
 if (f_ValueStack = nil) then
  f_ValueStack := TtfwValueStack.Create;
 f_ValueStack.PushClass(aClass);
//#UC END# *508526FE0229_4F733A0701F0_impl*
end;//_tfwScriptEngine_.PushClass

function _tfwScriptEngine_.PopClass: TClass;
//#UC START# *5085273502AA_4F733A0701F0_var*
//#UC END# *5085273502AA_4F733A0701F0_var*
begin
//#UC START# *5085273502AA_4F733A0701F0_impl*
 Result := f_ValueStack.PopClass;
//#UC END# *5085273502AA_4F733A0701F0_impl*
end;//_tfwScriptEngine_.PopClass

function _tfwScriptEngine_.IsTopClass: Boolean;
//#UC START# *5085275F0044_4F733A0701F0_var*
//#UC END# *5085275F0044_4F733A0701F0_var*
begin
//#UC START# *5085275F0044_4F733A0701F0_impl*
 Result := f_ValueStack.IsTopClass;
//#UC END# *5085275F0044_4F733A0701F0_impl*
end;//_tfwScriptEngine_.IsTopClass

function _tfwScriptEngine_.Clone: ItfwScriptEngine;
//#UC START# *519A29C802E1_4F733A0701F0_var*
type
 RClass = class of _tfwScriptEngine_;
var
 l_C : _tfwScriptEngine_;
//#UC END# *519A29C802E1_4F733A0701F0_var*
begin
//#UC START# *519A29C802E1_4F733A0701F0_impl*
 l_C := RClass(ClassType).Create;
 try
  f_UserDictionary.SetRefTo(l_C.f_UserDictionary);
  Result := l_C;
 finally
  FreeAndNil(l_C);
 end;//try..finally
//#UC END# *519A29C802E1_4F733A0701F0_impl*
end;//_tfwScriptEngine_.Clone

procedure _tfwScriptEngine_.Cleanup;
//#UC START# *479731C50290_4F733A0701F0_var*
//#UC END# *479731C50290_4F733A0701F0_var*
begin
//#UC START# *479731C50290_4F733A0701F0_impl*
 //Assert(f_ValueStack.Empty, 'Не выбран весь стек значений');
 FreeAndNil(f_ValueStack);
 FreeAndNil(f_UserDictionary);
 inherited;
//#UC END# *479731C50290_4F733A0701F0_impl*
end;//_tfwScriptEngine_.Cleanup

// Методы преобразования к реализуемым интерфейсам

function _tfwScriptEngine_.As_ItfwWordCompiler: ItfwWordCompiler;
begin
 Result := Self;
end;

function _tfwScriptEngine_.As_ItfwKeywordFinder: ItfwKeywordFinder;
begin
 Result := Self;
end;

{$IfEnd} //not NoScripts

{$EndIf tfwScriptEngine_imp}
