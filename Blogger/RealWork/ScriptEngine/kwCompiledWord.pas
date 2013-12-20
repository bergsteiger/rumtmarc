unit kwCompiledWord;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledWord.pas"
// Начат: 26.04.2011 17:36
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwCompiledWord
//
// Поддержки скомпилированных слов.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  l3ProtoDataContainer,
  tfwScriptingInterfaces,
  l3ParserInterfaces,
  l3Types,
  l3Memory,
  l3Interfaces,
  l3Core,
  l3Except,
  Classes,
  l3PrimString
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 _ItemType_ = TtfwWord;
 _l3UncomparabeObjectRefList_Parent_ = Tl3ProtoDataContainer;
 {$Define l3Items_IsProto}
{$Include w:\common\components\rtl\Garant\L3\l3UncomparabeObjectRefList.imp.pas}
 TtfwWordRefList = class(_l3UncomparabeObjectRefList_)
 end;//TtfwWordRefList

 RkwCompiledWord = class of TkwCompiledWord;

 TkwForwardDeclarationHolder = class(TtfwWord)
 private
 // private fields
   f_Holded : TtfwWord;
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
 end;//TkwForwardDeclarationHolder

 TkwCompiledWord = class(TtfwWord, ItfwCompiler, ItfwWordCompiler {from ItfwCompiler}, ItfwKeywordFinder {from ItfwCompiler})
  {* Поддержки скомпилированных слов. }
 private
 // private fields
   f_PrevFinder : Pointer;
   f_WordProducer : TtfwWord;
    {* Слово, которое породило данное при компиляции}
   f_Code : TtfwWordRefList;
    {* Поле для свойства Code}
   f_LocalDictionary : TtfwDictionary;
    {* Поле для свойства LocalDictionary}
   f_InParams : TtfwWordRefList;
    {* Поле для свойства InParams}
 protected
 // property methods
   function pm_GetModifiers: TtfwWordModifiers; virtual;
   procedure pm_SetModifiers(aValue: TtfwWordModifiers); virtual;
   function pm_GetParentWord: TtfwWord;
   function pm_GetCompiler: ItfwCompiler; virtual;
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
   function CheckWord(const aName: Tl3WString): TtfwKeyWord; overload; 
   procedure AddCodePart(aWord: TtfwWord;
    AtStartOfCode: Boolean;
    const aCtx: TtfwContext);
     {* Добавляет скомпилированный код к текущему компилируемуму слову }
   function Get_KeywordByName(const aName: AnsiString): Tl3PrimString;
   function GetWordCompilingNow: TtfwWord;
     {* Возвращает слово, которое в данный момент компилируется }
   function Get_ParentFinder: Il3KeywordFinder;
   procedure DefineInParameter(const anEngine: ItfwScriptEngine;
     const aParamName: Il3CString;
     aModifiers: TtfwWordModifiers);
     {* Определяет слову входной параметр }
   procedure CompileInParameterPopCode(const aContext: TtfwContext;
     aParameterToPop: TtfwWord); overload; 
     {* Компилирует код извлечения входного параметра в код компилируемого слова }
   procedure CompileInParameterPopCode(const aContext: TtfwContext;
     const aParameterToPop: Il3CString); overload; 
   function CheckWord(const aName: Il3CString): TtfwKeyWord; overload; 
 protected
 // overridden property methods
   function pm_GetWordProducer: TtfwWord; override;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   {$If not defined(DesignTimeLibrary)}
   class function IsCacheable: Boolean; override;
     {* функция класса, определяющая могут ли объекты данного класса попадать в кэш повторного использования. }
   {$IfEnd} //not DesignTimeLibrary
   function AllowNestedCalls: Boolean; override;
 public
 // overridden public methods
   function IsCompiled: Boolean; override;
   procedure StoreState(const aCtx: TtfwContext); override;
   procedure RestoreState(const aCtx: TtfwContext); override;
 protected
 // protected methods
   function AllowLocalDictionary: Boolean; virtual;
   function AllowLocalCode: Boolean; virtual;
 public
 // public methods
   procedure DoAddCodePart(aWord: TtfwWord;
     AtStartOfCode: Boolean;
     const aCtx: TtfwContext);
   constructor Create(aWordProducer: TtfwWord;
     const aPrevFinder: Il3KeywordFinder;
     aModifiers: TtfwWordModifiers); reintroduce;
   procedure ClearCode;
 public
 // public properties
   property Code: TtfwWordRefList
     read f_Code;
   property LocalDictionary: TtfwDictionary
     read f_LocalDictionary;
   property Modifiers: TtfwWordModifiers
     read pm_GetModifiers
     write pm_SetModifiers;
   property ParentWord: TtfwWord
     read pm_GetParentWord;
   property Compiler: ItfwCompiler
     read pm_GetCompiler;
   property InParams: TtfwWordRefList
     read f_InParams;
     {* Входные параметры слова }
 protected
 // Методы преобразования к реализуемым интерфейсам
   function As_ItfwWordCompiler: ItfwWordCompiler;
   function As_ItfwKeywordFinder: ItfwKeywordFinder;
 end;//TkwCompiledWord
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  l3Base,
  l3MinMax,
  RTLConsts,
  SysUtils,
  kwCompiledIn,
  kwIn,
  kwCompiledPopToVar,
  kwPopToVar,
  kwVar,
  kwCompiledVar,
  tfwStoredValues,
  tfwArray
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TkwCompiledWord

procedure TkwCompiledWord.DoAddCodePart(aWord: TtfwWord;
  AtStartOfCode: Boolean;
  const aCtx: TtfwContext);
//#UC START# *4DB6CB1703AD_4DB6CA4F010D_var*
var
 l_Holder : TkwForwardDeclarationHolder;
//#UC END# *4DB6CB1703AD_4DB6CA4F010D_var*
begin
//#UC START# *4DB6CB1703AD_4DB6CA4F010D_impl*
 Assert(aWord <> Self);
 // - чтобы избежать циклических ссылок
 if (f_Code = nil) then
  f_Code := TtfwWordRefList.Create;
 if aWord.IsForwardDeclaration {AND
    (TkwForwardDeclaration(aWord).RealWord = Self)}
    // - проверка специально убрана, т.к. бывает вложенность
    then
 // - чтобы избежать циклических ссылок
 begin
  l_Holder := TkwForwardDeclarationHolder.Create;
  try
   l_Holder.f_Holded := aWord;
   if AtStartOfCode then
    f_Code.Insert(0, l_Holder)
   else
    f_Code.Add(l_Holder);
  finally
   FreeAndNil(l_Holder);
  end;//try..finally
 end//aWord.IsForwardDeclaration
 else
 if AtStartOfCode then
  f_Code.Insert(0, aWord)
 else
  f_Code.Add(aWord);
//#UC END# *4DB6CB1703AD_4DB6CA4F010D_impl*
end;//TkwCompiledWord.DoAddCodePart

constructor TkwCompiledWord.Create(aWordProducer: TtfwWord;
  const aPrevFinder: Il3KeywordFinder;
  aModifiers: TtfwWordModifiers);
//#UC START# *4DC9723702F5_4DB6CA4F010D_var*
//#UC END# *4DC9723702F5_4DB6CA4F010D_var*
begin
//#UC START# *4DC9723702F5_4DB6CA4F010D_impl*
 inherited Create;
 f_PrevFinder := Pointer(aPrevFinder);
 f_WordProducer := aWordProducer;
 Modifiers := aModifiers;
//#UC END# *4DC9723702F5_4DB6CA4F010D_impl*
end;//TkwCompiledWord.Create

function TkwCompiledWord.AllowLocalDictionary: Boolean;
//#UC START# *4DC98A4801B6_4DB6CA4F010D_var*
//#UC END# *4DC98A4801B6_4DB6CA4F010D_var*
begin
//#UC START# *4DC98A4801B6_4DB6CA4F010D_impl*
 Result := true;
//#UC END# *4DC98A4801B6_4DB6CA4F010D_impl*
end;//TkwCompiledWord.AllowLocalDictionary

function TkwCompiledWord.AllowLocalCode: Boolean;
//#UC START# *4F3E29A700F1_4DB6CA4F010D_var*
//#UC END# *4F3E29A700F1_4DB6CA4F010D_var*
begin
//#UC START# *4F3E29A700F1_4DB6CA4F010D_impl*
 Result := AllowLocalDictionary;
//#UC END# *4F3E29A700F1_4DB6CA4F010D_impl*
end;//TkwCompiledWord.AllowLocalCode

procedure TkwCompiledWord.ClearCode;
//#UC START# *4F48E1AB0388_4DB6CA4F010D_var*
//#UC END# *4F48E1AB0388_4DB6CA4F010D_var*
begin
//#UC START# *4F48E1AB0388_4DB6CA4F010D_impl*
 FreeAndNil(f_Code);
//#UC END# *4F48E1AB0388_4DB6CA4F010D_impl*
end;//TkwCompiledWord.ClearCode
// start class TtfwWordRefList

function CompareExistingItems(const CI: CompareItemsRec): Integer; forward;

procedure AssignItem(const aTo: _ItemType_;
  const aFrom: _ItemType_);
//#UC START# *47B2C42A0163_4DB6CAC402B4_var*
//#UC END# *47B2C42A0163_4DB6CAC402B4_var*
begin
//#UC START# *47B2C42A0163_4DB6CAC402B4_impl*
 Assert(false);
//#UC END# *47B2C42A0163_4DB6CAC402B4_impl*
end;//AssignItem

function CompareExistingItems(const CI: CompareItemsRec): Integer;
//#UC START# *47B99D4503A2_4DB6CAC402B4_var*
//#UC END# *47B99D4503A2_4DB6CAC402B4_var*
begin
//#UC START# *47B99D4503A2_4DB6CAC402B4_impl*
 Result := -1;
 Assert(false);
//#UC END# *47B99D4503A2_4DB6CAC402B4_impl*
end;//CompareExistingItems

type _Instance_R_ = TtfwWordRefList;

{$Include w:\common\components\rtl\Garant\L3\l3UncomparabeObjectRefList.imp.pas}

// start class TkwForwardDeclarationHolder

procedure TkwForwardDeclarationHolder.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4F4BC6DB02F4_var*
//#UC END# *4DAEEDE10285_4F4BC6DB02F4_var*
begin
//#UC START# *4DAEEDE10285_4F4BC6DB02F4_impl*
 RunnerAssert(f_Holded <> nil, 'Навалидная ссылка на слово', aCtx);
 f_Holded.DoIt(aCtx);
//#UC END# *4DAEEDE10285_4F4BC6DB02F4_impl*
end;//TkwForwardDeclarationHolder.DoDoIt

procedure TkwForwardDeclarationHolder.Cleanup;
//#UC START# *479731C50290_4F4BC6DB02F4_var*
//#UC END# *479731C50290_4F4BC6DB02F4_var*
begin
//#UC START# *479731C50290_4F4BC6DB02F4_impl*
 f_Holded := nil;
 inherited;
//#UC END# *479731C50290_4F4BC6DB02F4_impl*
end;//TkwForwardDeclarationHolder.Cleanup

function TkwCompiledWord.pm_GetModifiers: TtfwWordModifiers;
//#UC START# *4DCACD1800C8_4DB6CA4F010Dget_var*
//#UC END# *4DCACD1800C8_4DB6CA4F010Dget_var*
begin
//#UC START# *4DCACD1800C8_4DB6CA4F010Dget_impl*
 Result := [];
//#UC END# *4DCACD1800C8_4DB6CA4F010Dget_impl*
end;//TkwCompiledWord.pm_GetModifiers

procedure TkwCompiledWord.pm_SetModifiers(aValue: TtfwWordModifiers);
//#UC START# *4DCACD1800C8_4DB6CA4F010Dset_var*

 function locProducer: AnsiString;
 begin
  if (f_WordProducer = nil) then
   Result := ''
  else
   Result := f_WordProducer.Key.AsString;
 end;

 function locParent: AnsiString;
 begin
  if (ParentWord = nil) then
   Result := ''
  else
   Result := ParentWord.Key.AsString;
 end;

//#UC END# *4DCACD1800C8_4DB6CA4F010Dset_var*
begin
//#UC START# *4DCACD1800C8_4DB6CA4F010Dset_impl*
 Assert(aValue = [], 'Непустой список модификаторов в: ' + ClassName +
                     ' Producer: ' + locProducer +
                     ' Parent: ' + locParent
                     );
//#UC END# *4DCACD1800C8_4DB6CA4F010Dset_impl*
end;//TkwCompiledWord.pm_SetModifiers

function TkwCompiledWord.pm_GetParentWord: TtfwWord;
//#UC START# *4F37C30A0254_4DB6CA4F010Dget_var*
var
 l_C : ItfwCompiler;
//#UC END# *4F37C30A0254_4DB6CA4F010Dget_var*
begin
//#UC START# *4F37C30A0254_4DB6CA4F010Dget_impl*
 if Supports(Il3KeywordFinder(f_PrevFinder), ItfwCompiler, l_C) then
  Result := l_C.GetWordCompilingNow
 else
  Result := nil; 
//#UC END# *4F37C30A0254_4DB6CA4F010Dget_impl*
end;//TkwCompiledWord.pm_GetParentWord

function TkwCompiledWord.pm_GetCompiler: ItfwCompiler;
//#UC START# *4F3D470503C5_4DB6CA4F010Dget_var*
//#UC END# *4F3D470503C5_4DB6CA4F010Dget_var*
begin
//#UC START# *4F3D470503C5_4DB6CA4F010Dget_impl*
 Result := Self;
//#UC END# *4F3D470503C5_4DB6CA4F010Dget_impl*
end;//TkwCompiledWord.pm_GetCompiler

procedure TkwCompiledWord.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DB6CA4F010D_var*
var
 l_Index : Integer;
//#UC END# *4DAEEDE10285_4DB6CA4F010D_var*
begin
//#UC START# *4DAEEDE10285_4DB6CA4F010D_impl*
 if (f_Code <> nil) then
  for l_Index := 0 to Pred(f_Code.Count) do
   f_Code[l_Index].DoIt(aCtx);
//#UC END# *4DAEEDE10285_4DB6CA4F010D_impl*
end;//TkwCompiledWord.DoDoIt

function TkwCompiledWord.CheckWord(const aName: Tl3WString): TtfwKeyWord;
//#UC START# *4DB6DA63005E_4DB6CA4F010D_var*
//#UC END# *4DB6DA63005E_4DB6CA4F010D_var*
begin
//#UC START# *4DB6DA63005E_4DB6CA4F010D_impl*
 if AllowLocalDictionary then
 begin
  if (f_LocalDictionary = nil) then
   f_LocalDictionary := TtfwDictionary.Create;
  Result := f_LocalDictionary.CheckWord(aName);
 end//AllowLocalDictionary
 else
 begin
  Assert(f_PrevFinder <> nil);
  Result := (Il3KeywordFinder(f_PrevFinder) As ItfwWordCompiler).CheckWord(aName);
 end;//AllowLocalDictionary
//#UC END# *4DB6DA63005E_4DB6CA4F010D_impl*
end;//TkwCompiledWord.CheckWord

procedure TkwCompiledWord.AddCodePart(aWord: TtfwWord;
  AtStartOfCode: Boolean;
  const aCtx: TtfwContext);
//#UC START# *4DB6E3090290_4DB6CA4F010D_var*
//#UC END# *4DB6E3090290_4DB6CA4F010D_var*
begin
//#UC START# *4DB6E3090290_4DB6CA4F010D_impl*
 if AllowLocalCode then
  DoAddCodePart(aWord As TtfwWord, AtStartOfCode, aCtx)
 else
  CompilerAssert(false, 'Слово не может иметь свой собственный компилированный код', aCtx); 
//#UC END# *4DB6E3090290_4DB6CA4F010D_impl*
end;//TkwCompiledWord.AddCodePart

function TkwCompiledWord.Get_KeywordByName(const aName: AnsiString): Tl3PrimString;
//#UC START# *4DC95AF703B8_4DB6CA4F010Dget_var*
//#UC END# *4DC95AF703B8_4DB6CA4F010Dget_var*
begin
//#UC START# *4DC95AF703B8_4DB6CA4F010Dget_impl*
 if AllowLocalDictionary then
 begin
  if (f_LocalDictionary = nil) then
   Result := nil
  else
   Result := f_LocalDictionary.DRbyName[aName];
 end//AllowLocalDictionary
 else
  Result := nil;
 if (Result = nil) then
  if (f_PrevFinder <> nil) then
  begin
   Result := Il3KeywordFinder(f_PrevFinder).KeywordByName[aName];
   (*if (Result <> nil) AND
      (Result Is TtfwKeyWord) AND
      (TtfwKeyWord(Result).Word Is TkwCompiledWord) AND
      (tfw_wmPrivate in TkwCompiledWord(TtfwKeyWord(Result).Word).Modifiers) then
       Result := nil;*)
   // - пока отключаем эту красоту, видимость можно по разному интерпретировать    
  end;//f_PrevFinder <> nil
//#UC END# *4DC95AF703B8_4DB6CA4F010Dget_impl*
end;//TkwCompiledWord.Get_KeywordByName

function TkwCompiledWord.GetWordCompilingNow: TtfwWord;
//#UC START# *4F37AFC700E7_4DB6CA4F010D_var*
//#UC END# *4F37AFC700E7_4DB6CA4F010D_var*
begin
//#UC START# *4F37AFC700E7_4DB6CA4F010D_impl*
 Result := Self;
//#UC END# *4F37AFC700E7_4DB6CA4F010D_impl*
end;//TkwCompiledWord.GetWordCompilingNow

function TkwCompiledWord.Get_ParentFinder: Il3KeywordFinder;
//#UC START# *4F3A922803CD_4DB6CA4F010Dget_var*
//#UC END# *4F3A922803CD_4DB6CA4F010Dget_var*
begin
//#UC START# *4F3A922803CD_4DB6CA4F010Dget_impl*
 Result := Il3KeywordFinder(f_PrevFinder);
//#UC END# *4F3A922803CD_4DB6CA4F010Dget_impl*
end;//TkwCompiledWord.Get_ParentFinder

procedure TkwCompiledWord.DefineInParameter(const anEngine: ItfwScriptEngine;
  const aParamName: Il3CString;
  aModifiers: TtfwWordModifiers);
//#UC START# *4F4161BC0024_4DB6CA4F010D_var*
var
 l_Var : TkwCompiledIn;
 l_KW : TtfwKeyWord;
//#UC END# *4F4161BC0024_4DB6CA4F010D_var*
begin
//#UC START# *4F4161BC0024_4DB6CA4F010D_impl*
 l_KW := Self.CheckWord(aParamName);
 l_Var := TkwCompiledIn.Create((anEngine.As_ItfwKeywordFinder.KeywordByName[TkwIn.GetWordNameForRegister] As TtfwKeyWord).Word,
                                 // - чтобы обеспечить слову нужный "стереотип"
                                 //   хак конечно, надо как-то константу хотя бы завести
                                Self{PrevFinder},
                                aModifiers);
 try
  l_KW.Word := l_Var;
 finally
  FreeAndNil(l_Var);
 end;//try..finally
//#UC END# *4F4161BC0024_4DB6CA4F010D_impl*
end;//TkwCompiledWord.DefineInParameter

procedure TkwCompiledWord.CompileInParameterPopCode(const aContext: TtfwContext;
  aParameterToPop: TtfwWord);
//#UC START# *4F416F900048_4DB6CA4F010D_var*
var
 l_Pop : TkwCompiledPopToVar;
 l_Var : TkwCompiledIn;
//#UC END# *4F416F900048_4DB6CA4F010D_var*
begin
//#UC START# *4F416F900048_4DB6CA4F010D_impl*
 CompilerAssert(aParameterToPop <> nil, 'Параметр для заполнения не может быть nil', aContext);
 l_Var := aParameterToPop As TkwCompiledIn;
 l_Pop := TkwCompiledPopToVar.Create((aContext.rEngine.As_ItfwKeywordFinder.KeywordByName[TkwPopToVar.GetWordNameForRegister] As TtfwKeyWord).Word,
                                     // - чтобы обеспечить слову нужный "стереотип"
                                     //   хак конечно, надо как-то константу хотя бы завести
                                     Self{PrevFinder},
                                     []{Modifiers});
 try
  l_Pop.DoAddCodePart(l_Var, false, aContext);
  Self.DoAddCodePart(l_Pop, true, aContext);
  if (f_InParams = nil) then
   f_InParams := TtfwWordRefList.Create;
  CompilerAssertFmt(f_InParams.IndexOf(l_Var) < 0, 'Параметр %s уже был добавлен', [l_Var.Key.AsString],  aContext);
  f_InParams.Add(l_Var);
 finally
  FreeAndNil(l_Pop);
 end;//try..finally
//#UC END# *4F416F900048_4DB6CA4F010D_impl*
end;//TkwCompiledWord.CompileInParameterPopCode

procedure TkwCompiledWord.CompileInParameterPopCode(const aContext: TtfwContext;
  const aParameterToPop: Il3CString);
//#UC START# *4F4177910352_4DB6CA4F010D_var*
//#UC END# *4F4177910352_4DB6CA4F010D_var*
begin
//#UC START# *4F4177910352_4DB6CA4F010D_impl*
 CompileInParameterPopCode(aContext, CheckWord(aParameterToPop).Word);
//#UC END# *4F4177910352_4DB6CA4F010D_impl*
end;//TkwCompiledWord.CompileInParameterPopCode

function TkwCompiledWord.CheckWord(const aName: Il3CString): TtfwKeyWord;
//#UC START# *4F46588B021E_4DB6CA4F010D_var*
//#UC END# *4F46588B021E_4DB6CA4F010D_var*
begin
//#UC START# *4F46588B021E_4DB6CA4F010D_impl*
 if AllowLocalDictionary then
 begin
  if (f_LocalDictionary = nil) then
   f_LocalDictionary := TtfwDictionary.Create;
  Result := f_LocalDictionary.CheckWord(aName);
 end//AllowLocalDictionary
 else
 begin
  Assert(f_PrevFinder <> nil);
  Result := (Il3KeywordFinder(f_PrevFinder) As ItfwWordCompiler).CheckWord(aName);
 end;//AllowLocalDictionary
//#UC END# *4F46588B021E_4DB6CA4F010D_impl*
end;//TkwCompiledWord.CheckWord

procedure TkwCompiledWord.Cleanup;
//#UC START# *479731C50290_4DB6CA4F010D_var*
//#UC END# *479731C50290_4DB6CA4F010D_var*
begin
//#UC START# *479731C50290_4DB6CA4F010D_impl*
 f_PrevFinder := nil;
 FreeAndNil(f_InParams);
 FreeAndNil(f_Code);
 FreeAndNil(f_LocalDictionary);
 inherited;
//#UC END# *479731C50290_4DB6CA4F010D_impl*
end;//TkwCompiledWord.Cleanup

{$If not defined(DesignTimeLibrary)}
class function TkwCompiledWord.IsCacheable: Boolean;
//#UC START# *47A6FEE600FC_4DB6CA4F010D_var*
//#UC END# *47A6FEE600FC_4DB6CA4F010D_var*
begin
//#UC START# *47A6FEE600FC_4DB6CA4F010D_impl*
 Result := true;
//#UC END# *47A6FEE600FC_4DB6CA4F010D_impl*
end;//TkwCompiledWord.IsCacheable
{$IfEnd} //not DesignTimeLibrary

function TkwCompiledWord.IsCompiled: Boolean;
//#UC START# *4DB6CF7202CB_4DB6CA4F010D_var*
//#UC END# *4DB6CF7202CB_4DB6CA4F010D_var*
begin
//#UC START# *4DB6CF7202CB_4DB6CA4F010D_impl*
 Result := true;
//#UC END# *4DB6CF7202CB_4DB6CA4F010D_impl*
end;//TkwCompiledWord.IsCompiled

function TkwCompiledWord.AllowNestedCalls: Boolean;
//#UC START# *4F3C06550278_4DB6CA4F010D_var*
//#UC END# *4F3C06550278_4DB6CA4F010D_var*
begin
//#UC START# *4F3C06550278_4DB6CA4F010D_impl*
 if not AllowLocalDictionary then
 // - локального словаря не бывает, ну и нечего и морочиться
  Result := true
 else
  Result := ((f_LocalDictionary = nil) OR f_LocalDictionary.Empty) AND
            // - словаря нет, значит и переменных - нет
            ((f_InParams = nil) OR f_InParams.Empty)
            // - нет входных параметров
            ;
//#UC END# *4F3C06550278_4DB6CA4F010D_impl*
end;//TkwCompiledWord.AllowNestedCalls

function TkwCompiledWord.pm_GetWordProducer: TtfwWord;
//#UC START# *4F43C9A10139_4DB6CA4F010Dget_var*
//#UC END# *4F43C9A10139_4DB6CA4F010Dget_var*
begin
//#UC START# *4F43C9A10139_4DB6CA4F010Dget_impl*
 Result := f_WordProducer;
//#UC END# *4F43C9A10139_4DB6CA4F010Dget_impl*
end;//TkwCompiledWord.pm_GetWordProducer

procedure TkwCompiledWord.StoreState(const aCtx: TtfwContext);
//#UC START# *4F49428A01EA_4DB6CA4F010D_var*
var
 l_SV : ItfwStoredValues;
 l_Index : Integer;
 l_W : TtfwWord;
 l_V : TtfwStackValue;
 l_SVE : TtfwStoredValue;
//#UC END# *4F49428A01EA_4DB6CA4F010D_var*
begin
//#UC START# *4F49428A01EA_4DB6CA4F010D_impl*
 inherited;
 l_SV := TtfwStoredValues.Make;
 for l_Index := 0 to Pred(f_LocalDictionary.Count) do
 begin
  l_W := (f_LocalDictionary.Items[l_Index] As TtfwKeyWord).Word;
  if (l_W Is TkwCompiledVar) then
  begin
   l_V := TkwCompiledVar(l_W).Value;
   try
    l_SVE := TtfwStoredValue_C(l_W, l_V);
    try
     l_SV.Add(l_SVE);
    finally
     l_SVE.rValue.rString := nil;
     Finalize(l_SVE);
    end;//try..finally
    if (l_V.rType = tfw_svtList) then
     TkwCompiledVar(l_W).Value := TtfwStackValue_C(TtfwArray.Make);
     // - чтобы последующий вызов не испортил наш массив 
   finally
    Finalize(l_V);
   end;//try..finally
  end;//l_W Is TkwCompiledVar
 end;//for l_Index
 aCtx.rStoredValuesStack.Add(l_SV);
//#UC END# *4F49428A01EA_4DB6CA4F010D_impl*
end;//TkwCompiledWord.StoreState

procedure TkwCompiledWord.RestoreState(const aCtx: TtfwContext);
//#UC START# *4F4942C50339_4DB6CA4F010D_var*
//#UC END# *4F4942C50339_4DB6CA4F010D_var*
begin
//#UC START# *4F4942C50339_4DB6CA4F010D_impl*
 aCtx.rStoredValuesStack.Restore;
 inherited;
//#UC END# *4F4942C50339_4DB6CA4F010D_impl*
end;//TkwCompiledWord.RestoreState

// Методы преобразования к реализуемым интерфейсам

function TkwCompiledWord.As_ItfwWordCompiler: ItfwWordCompiler;
begin
 Result := Self;
end;

function TkwCompiledWord.As_ItfwKeywordFinder: ItfwKeywordFinder;
begin
 Result := Self;
end;

{$IfEnd} //not NoScripts

end.