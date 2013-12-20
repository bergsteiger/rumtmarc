unit tfwScriptingInterfaces;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/tfwScriptingInterfaces.pas"
// Начат: 20.04.2011 21:48
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<InternalInterfaces::Category>> Shared Delphi Scripting::ScriptEngine::tfwScriptingInterfaces
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
  l3Interfaces,
  l3Types,
  TypInfo,
  l3PureMixIns,
  l3EtalonsWorking,
  l3StringList,
  SysUtils,
  l3PrimString,
  l3ProtoObject,
  l3ParserInterfaces,
  tfwDictionaryPrim,
  tfwParser,
  tfwCStringFactory
  ;

(*
 ScriptCaller = PureMixIn
   procedure Check(aCondition: Boolean;
    const aMessage: AnsiString = '');
     {* Проверяет инвариант }
   procedure Print(const aStr: Tl3WString); overload; 
   procedure Print(const aStr: Il3CString); overload; 
 end;//ScriptCaller
*)

(*
 PrintingCaller = PureMixIn
   function GetIsWritingToK: Boolean;
   function GetIsFakeCVS: Boolean;
   function GetCVSPath: AnsiString;
   procedure DontRaiseIfEtalonCreated;
   procedure TimeToLog(aTime: Cardinal;
     const aSt: AnsiString;
     const aSubName: AnsiString);
   function GetTestSetFolderName: AnsiString;
   function GetEtalonSuffix: AnsiString;
   procedure CheckPrintEtalon(const aLogName: AnsiString;
    const aOutputName: AnsiString);
   function ShouldStop: Boolean;
   procedure CheckTimeout(aNow: Cardinal;
    aTimeout: Cardinal);
   function StartTimer: Longword;
   function StopTimer(const aSt: AnsiString = '';
    const aSubName: AnsiString = '';
    aNeedTimeToLog: Boolean = true): Longword;
 end;//PrintingCaller
*)

type
 TtfwStackValueType = (
   tfw_svtVoid
 , tfw_svtInt
 , tfw_svtBool
 , tfw_svtStr
 , tfw_svtObj
 , tfw_svtList
 , tfw_svtIntf // Интерфейс
 , tfw_svtNil
 , tfw_svtFile
 , tfw_svtChar
 , tfw_svtWStr
 , tfw_svtBracket // Псевдо-значение. "Скобка"
 , tfw_svtClass // Ссылка на класс
 );//TtfwStackValueType

  ItfwFile_ReadLines_Action = function (const anItem: Tl3WString): Boolean;
   {* Тип подитеративной функции для ItfwFile.ReadLines }

 ItfwFile = interface(IUnknown)
   ['{BBB2A3FB-A633-40F3-BE85-9E997623BA12}']
   function ReadLn: Il3CString;
   procedure WriteLn(const aString: Il3CString);
   {iterator} function ReadLines(anAction: ItfwFile_ReadLines_Action): Integer;
   {iterator} function ReadLinesF(anAction: ItfwFile_ReadLines_Action): Integer;
   procedure WriteChar(aChar: AnsiChar);
   function ReadWStrLn: Tl3WString;
   procedure WriteWStrLn(const aStr: Tl3WString);
   procedure WriteWStr(const aStr: Tl3WString);
   function EOF: Boolean;
 end;//ItfwFile

 ItfwValueList = interface;
 { - предварительное описание ItfwValueList. }

 TtfwStackValue = {$IfDef XE4}record{$Else}object{$EndIf}
 private
    procedure CheckTypeIs(aTypeNeeded: TtfwStackValueType);
 public
   rString : Il3CString;
   rInteger : Integer;
   rType : TtfwStackValueType;
   rSLen : Integer;
   rSCodePage : Integer;
 public
    function AsBoolean: Boolean;
    function AsString: Il3CString;
    function AsObject: TObject;
    function AsList: ItfwValueList;
    procedure IncValue(aValue: Integer);
    function AsIntf(const aGUID: TGUID): IUnknown; overload; 
    function AsIntf: IUnknown; overload; 
    function AsFile: ItfwFile;
    function AsChar: AnsiChar;
    function AsWString: Tl3WString;
    function AsPrintable: Il3CString;
    function IsBracket: Boolean;
    function AsClass: TClass;
 end;//TtfwStackValue

 TtfwWordModifier = (
   tfw_wmStr
 , tfw_wmInt
 , tfw_wmBool
 , tfw_wmPrivate
 , tfw_wmList
 , tfw_wmObj
 , tfw_wmClass
 , tfw_wmIntf
 , tfw_wmVirtual
 , tfw_wmAbstract
 , tfw_wmFinal
 , tfw_wmSummoned
 , tfw_wmProtected
 , tfw_wmPublic
 , tfw_wmOverride
 , tfw_wmRealize
 , tfw_wmRedefinition
 , tfw_wmAggregation
 , tfw_wmReference
 , tfw_wmLink
 , tfw_wmRedefineable
 , tfw_wmSealed
 , tfw_wmCanBeMerged // Одноимённые слова с одинаковыми стереотипами МОГУТ склеиваться в одно, как например %CHILDREN.
 , tfw_wmFile
 , tfw_wmChar
 , tfw_wmWStr
 );//TtfwWordModifier

 TtfwWordModifiers = set of TtfwWordModifier;

 ItfwValueList = interface(IUnknown)
   ['{95FE5CAE-0988-49C5-A0E1-BDA62233AA8C}']
   procedure Clear;
   procedure Insert(anIndex: Integer;
    const anItem: TtfwStackValue);
  // Ml3ListEx
   function IndexOf(const anItem: TtfwStackValue): Integer;
   function Add(const anItem: TtfwStackValue): Integer;
  // Ml3List
   function pm_GetEmpty: Boolean;
   function pm_GetFirst: TtfwStackValue;
   function pm_GetLast: TtfwStackValue;
   function pm_GetItems(anIndex: Integer): TtfwStackValue;
   property Empty: Boolean
     read pm_GetEmpty;
   property First: TtfwStackValue
     read pm_GetFirst;
     {* Первый элемент. }
   property Last: TtfwStackValue
     read pm_GetLast;
     {* Последний элемент. }
   property Items[anIndex: Integer]: TtfwStackValue
     read pm_GetItems;
     default;
  // Ml3CountHolder
   function pm_GetCount: Integer;
   property Count: Integer
     read pm_GetCount;
     {* Число элементов. }
 end;//ItfwValueList

 ItfwScriptCaller = interface(IUnknown)
   ['{9A3B1A85-FE74-4761-9100-0FC6F4EE0BD3}']
   function ResolveIncludedFilePath(const aFile: AnsiString): AnsiString;
   function ResolveOutputFilePath(const aFile: AnsiString): AnsiString;
   function ResolveInputFilePath(const aFile: AnsiString): AnsiString;
   function SystemDictionary: IStream;
   function KPage: AnsiString;
   procedure ToLog(const aSt: AnsiString);
  // ScriptCaller
   procedure Check(aCondition: Boolean;
    const aMessage: AnsiString = '');
     {* Проверяет инвариант }
   procedure Print(const aStr: Tl3WString); overload; 
   procedure Print(const aStr: Il3CString); overload; 
  // PrintingCaller
   function GetIsWritingToK: Boolean;
   function GetIsFakeCVS: Boolean;
   function GetCVSPath: AnsiString;
   procedure DontRaiseIfEtalonCreated;
   procedure TimeToLog(aTime: Cardinal;
     const aSt: AnsiString;
     const aSubName: AnsiString);
   function GetTestSetFolderName: AnsiString;
   function GetEtalonSuffix: AnsiString;
   procedure CheckPrintEtalon(const aLogName: AnsiString;
    const aOutputName: AnsiString);
   function ShouldStop: Boolean;
   procedure CheckTimeout(aNow: Cardinal;
    aTimeout: Cardinal);
   function StartTimer: Longword;
   function StopTimer(const aSt: AnsiString = '';
    const aSubName: AnsiString = '';
    aNeedTimeToLog: Boolean = true): Longword;
  // EtalonsWorking
   procedure CheckOutputWithInput(const aIn: AnsiString;
     const aOut: AnsiString;
     aHeaderBegin: AnsiChar;
     aEtalonNeedsComputerName: Boolean;
     aEtalonCanHaveDiff: Boolean;
     const anExtraFileName: AnsiString;
     aNeedsCheck: Boolean); overload; 
   procedure CheckOutputWithInput(const aSt: AnsiString;
     aHeaderBegin: AnsiChar = #0;
     const anExtraFileName: AnsiString = '';
     aNeedsCheck: Boolean = true); overload; 
   procedure CheckWithEtalon(const aFileName: AnsiString;
    aHeaderBegin: AnsiChar);
 end;//ItfwScriptCaller

 EtfwCodeFlowException = {abstract} class(Exception)
 end;//EtfwCodeFlowException

 EtfwCodeFlowError = class(EtfwCodeFlowException)
 end;//EtfwCodeFlowError

 EtfwRecursionNotSupportedYet = class(EtfwCodeFlowError)
 end;//EtfwRecursionNotSupportedYet

(*
 ValueStack = PureMixIn
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
   function Get_ValuesCount: Integer;
   procedure PushString(aString: Tl3PrimString); overload; 
   procedure PushString(const aString: Il3CString); overload; 
   procedure PushString(const aString: AnsiString); overload; 
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
   procedure PushInt(aValue: Integer);
   function PopInt: Integer;
   procedure PushBool(aValue: Boolean);
   function PopBool: Boolean;
   function IsTopBool: Boolean;
   property ValuesCount: Integer
     read Get_ValuesCount;
 end;//ValueStack
*)

 EtfwScriptException = class(Exception)
  {* Исключение кидаемое скриптом }
 end;//EtfwScriptException

 ItfwKeywordFinder = l3ParserInterfaces.Il3KeywordFinder;

 TtfwKeyWordPrim = {abstract} class(Tl3PrimString)
 private
 // private fields
   f_AsCStr : Il3CString;
    {* Поле для свойства AsCStr}
 protected
 // overridden protected methods
   procedure ClearFields; override;
 public
 // public properties
   property AsCStr: Il3CString
     read f_AsCStr;
 end;//TtfwKeyWordPrim

 EtfwBreak = class(EtfwCodeFlowException)
 end;//EtfwBreak

 EtfwContinue = class(EtfwCodeFlowException)
 end;//EtfwContinue

 EtfwExit = class(EtfwCodeFlowException)
 end;//EtfwExit

 EtfwHalt = class(EtfwCodeFlowException)
 end;//EtfwHalt


 TtfwWord = class;


 TtfwKeyWord = class;

 ItfwScriptEngine = interface;
 { - предварительное описание ItfwScriptEngine. }

 ItfwCompiler = interface;
 { - предварительное описание ItfwCompiler. }

 ItfwStoredValuesStack = interface;
 { - предварительное описание ItfwStoredValuesStack. }

 TtfwContext = record
   rCaller : ItfwScriptCaller;
   rEngine : ItfwScriptEngine;
   rParser : TtfwParser;
   rCompiling : Boolean;
   rCompiler : ItfwCompiler;
   rException : Exception;
   rUsed : Tl3StringList;
   rModifiers : TtfwWordModifiers;
   rScriptFilename : AnsiString;
   rImmediateLevel : Integer;
   rSkipLevel : Integer;
   rKeyWordCompilingNow : TtfwKeyWord;
   rFirstHalfOfDualWord : TtfwWord; // Первая половина двойного слова
   rInt : Integer;
   rStoredValuesStack : ItfwStoredValuesStack; // Стек для сохранения состояния слов при обработке рекурсивных вызовов
   rWordCompilingNow : TtfwWord; // Текущее компилируемое слово
   rWordDefiningNow : TtfwWord; // Текущее определяемое ИМЕНОВАННОЕ слово
   rKeyWordDefiningNow : TtfwKeyWord; // Текущее определяемое ИМЕНОВАННОЕ слово
 end;//TtfwContext

 RtfwWord = class of TtfwWord;

 TtfwWord = {abstract} class(Tl3ProtoObject)
  {* Элемент словаря }
 private
 // private fields
   f_NestedCallsCount : Integer;
   f_Redefines : TtfwWord;
    {* Поле для свойства Redefines}
   f_Key : TtfwKeyWordPrim;
    {* Поле для свойства Key}
 protected
 // property methods
   procedure pm_SetRedefines(aValue: TtfwWord);
   function pm_GetWordProducer: TtfwWord; virtual;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   {$If not defined(DesignTimeLibrary)}
   class function IsCacheable: Boolean; override;
     {* функция класса, определяющая могут ли объекты данного класса попадать в кэш повторного использования. }
   {$IfEnd} //not DesignTimeLibrary
 protected
 // protected methods
   procedure DoDoIt(const aCtx: TtfwContext); virtual; abstract;
   procedure CompilerAssert(aCondition: Boolean;
     const aMessage: AnsiString;
     const aContext: TtfwContext);
   procedure RunnerAssert(aCondition: Boolean;
     const aMessage: AnsiString;
     const aContext: TtfwContext);
   function AllowNestedCalls: Boolean; virtual;
   procedure CompilerAssertFmt(aCondition: Boolean;
     const aMessage: AnsiString;
     const aParams: array of const;
     const aContext: TtfwContext);
   procedure RunnerAssertFmt(aCondition: Boolean;
     const aMessage: AnsiString;
     const aParams: array of const;
     const aContext: TtfwContext);
 public
 // public methods
   function IsCompiled: Boolean; virtual;
   function IsImmediate: Boolean; virtual;
   function IsDefaultBranch: Boolean; virtual;
   procedure DoIt(const aCtx: TtfwContext); // can raise EtfwCodeFlowError, EtfwRecursionNotSupportedYet
   function IsAnonimous: Boolean; virtual;
   function IsRunner: Boolean; virtual;
   function CompiledWordClassPrim: RtfwWord; virtual;
   procedure StoreState(const aCtx: TtfwContext); virtual;
   procedure RestoreState(const aCtx: TtfwContext); virtual;
   function IsForwardDeclaration: Boolean; virtual;
 public
 // public properties
   property Redefines: TtfwWord
     read f_Redefines
     write pm_SetRedefines;
     {* Слово, которое переопределяет данное (Self) }
   property WordProducer: TtfwWord
     read pm_GetWordProducer;
     {* Слово, которое породило данное }
   property Key: TtfwKeyWordPrim
     read f_Key
     write f_Key;
     {* Слово словаря к которому привязан данный код }
 end;//TtfwWord

 TtfwKeyWord = class(TtfwKeyWordPrim)
 private
 // private fields
   f_Word : TtfwWord;
    {* Поле для свойства Word}
 protected
 // property methods
   procedure pm_SetWord(aValue: TtfwWord);
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   function GetAsPCharLen: Tl3WString; override;
   procedure DoSetAsPCharLen(const Value: Tl3PCharLen); override;
 public
 // public methods
   constructor Create(const aKeyword: AnsiString;
     aWord: TtfwWord); overload; 
   constructor Create(const aKeyword: Tl3WString); overload; 
   constructor Create(const aKeyword: Il3CString); overload; 
 public
 // public properties
   property Word: TtfwWord
     read f_Word
     write pm_SetWord;
     {* Код данного ключевого слова }
 end;//TtfwKeyWord

 TtfwCStringFactory = tfwCStringFactory.TtfwCStringFactory;

 ItfwWordCompiler = interface(IUnknown)
   ['{53492B5D-4786-4516-B453-12659A656068}']
   procedure DefineInParameter(const anEngine: ItfwScriptEngine;
     const aParamName: Il3CString;
     aModifiers: TtfwWordModifiers);
     {* Определяет слову входной параметр }
   function CheckWord(const aName: Il3CString): TtfwKeyWord; overload; 
   function CheckWord(const aName: Tl3WString): TtfwKeyWord; overload; 
 end;//ItfwWordCompiler

 ItfwScriptEngine = interface(IUnknown{, ItfwWordCompiler, ItfwKeywordFinder})
   ['{29CD3B5A-963E-4630-AE73-2D2D05667FAA}']
   function Clone: ItfwScriptEngine;
   procedure PrintDictionary(const aCaller: ItfwScriptCaller;
    const aStarts: Tl3WString);
  // Методы преобразования к реализуемым интерфейсам
   function As_ItfwWordCompiler: ItfwWordCompiler;
   function As_ItfwKeywordFinder: ItfwKeywordFinder;
  // ValueStack
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
   function Get_ValuesCount: Integer;
   procedure PushString(aString: Tl3PrimString); overload; 
   procedure PushString(const aString: Il3CString); overload; 
   procedure PushString(const aString: AnsiString); overload; 
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
   procedure PushInt(aValue: Integer);
   function PopInt: Integer;
   procedure PushBool(aValue: Boolean);
   function PopBool: Boolean;
   function IsTopBool: Boolean;
   property ValuesCount: Integer
     read Get_ValuesCount;
 end;//ItfwScriptEngine

 ItfwCompiler = interface(IUnknown{, ItfwWordCompiler, ItfwKeywordFinder})
   ['{B1D12D19-BEB1-461A-9862-942FF4F064FE}']
   function GetWordCompilingNow: TtfwWord;
     {* Возвращает слово, которое в данный момент компилируется }
   procedure CompileInParameterPopCode(const aContext: TtfwContext;
     aParameterToPop: TtfwWord); overload; 
     {* Компилирует код извлечения входного параметра в код компилируемого слова }
   procedure CompileInParameterPopCode(const aContext: TtfwContext;
     const aParameterToPop: Il3CString); overload; 
   procedure AddCodePart(aWord: TtfwWord;
    AtStartOfCode: Boolean;
    const aCtx: TtfwContext);
     {* Добавляет скомпилированный код к текущему компилируемуму слову }
  // Методы преобразования к реализуемым интерфейсам
   function As_ItfwWordCompiler: ItfwWordCompiler;
   function As_ItfwKeywordFinder: ItfwKeywordFinder;
 end;//ItfwCompiler

 TtfwStoredValue = record
  {* Сохранённое значение переменной для восстановления }
   rValue : TtfwStackValue; // Значение для восстановления
   rWord : TtfwWord; // Переменная для восстановления
 end;//TtfwStoredValue

 ItfwStoredValues = interface;
 { - предварительное описание ItfwStoredValues. }

 ItfwStoredValuesStack = interface(IUnknown)
   ['{DABE9CDD-34A6-43DB-BFB5-4F58BE50A720}']
   procedure Restore;
  // Ml3ListEx
   function IndexOf(const anItem: ItfwStoredValues): Integer;
   function Add(const anItem: ItfwStoredValues): Integer;
  // Ml3List
   function pm_GetEmpty: Boolean;
   function pm_GetFirst: ItfwStoredValues;
   function pm_GetLast: ItfwStoredValues;
   function pm_GetItems(anIndex: Integer): ItfwStoredValues;
   property Empty: Boolean
     read pm_GetEmpty;
   property First: ItfwStoredValues
     read pm_GetFirst;
     {* Первый элемент. }
   property Last: ItfwStoredValues
     read pm_GetLast;
     {* Последний элемент. }
   property Items[anIndex: Integer]: ItfwStoredValues
     read pm_GetItems;
     default;
  // Ml3CountHolder
   function pm_GetCount: Integer;
   property Count: Integer
     read pm_GetCount;
     {* Число элементов. }
 end;//ItfwStoredValuesStack

 ItfwStoredValues = interface(IUnknown)
   ['{39369047-E783-4A4B-9657-6C2450D737C3}']
   procedure Restore;
  // Ml3ListEx
   function IndexOf(const anItem: TtfwStoredValue): Integer;
   function Add(const anItem: TtfwStoredValue): Integer;
  // Ml3List
   function pm_GetEmpty: Boolean;
   function pm_GetFirst: TtfwStoredValue;
   function pm_GetLast: TtfwStoredValue;
   function pm_GetItems(anIndex: Integer): TtfwStoredValue;
   property Empty: Boolean
     read pm_GetEmpty;
   property First: TtfwStoredValue
     read pm_GetFirst;
     {* Первый элемент. }
   property Last: TtfwStoredValue
     read pm_GetLast;
     {* Последний элемент. }
   property Items[anIndex: Integer]: TtfwStoredValue
     read pm_GetItems;
     default;
  // Ml3CountHolder
   function pm_GetCount: Integer;
   property Count: Integer
     read pm_GetCount;
     {* Число элементов. }
 end;//ItfwStoredValues

 TtfwDictionary = class(TtfwDictionaryPrim)
  {* Словарь }
 protected
 // property methods
   function pm_GetDRbyName(const aName: AnsiString): TtfwKeyWord;
   function pm_GetDRbyCName(const aName: Il3CString): TtfwKeyWord;
 protected
 // overridden protected methods
   procedure InitFields; override;
   {$If not defined(DesignTimeLibrary)}
   class function IsCacheable: Boolean; override;
     {* функция класса, определяющая могут ли объекты данного класса попадать в кэш повторного использования. }
   {$IfEnd} //not DesignTimeLibrary
 public
 // public methods
   procedure AddWord(const aWordName: AnsiString;
     aWordClass: RtfwWord); overload; 
   procedure AddWord(aWord: TtfwKeyWord); overload; 
   procedure AddWord(const aWordName: AnsiString;
     aWord: TtfwWord); overload; 
   function CheckWord(const aName: Tl3WString): TtfwKeyWord; overload; 
   function CheckWord(const aName: Il3CString): TtfwKeyWord; overload; 
 public
 // public properties
   property DRbyName[const aName: AnsiString]: TtfwKeyWord
     read pm_GetDRbyName;
     {* Элемент словаря по его имени }
   property DRbyCName[const aName: Il3CString]: TtfwKeyWord
     read pm_GetDRbyCName;
 end;//TtfwDictionary

 PtfwStackValue = ^TtfwStackValue;

 PtfwContext = ^TtfwContext;

 EtfwBreakIterator = class(EtfwCodeFlowException)
 end;//EtfwBreakIterator

 TkwForwardDeclaration = class(TtfwWord)
 private
 // private fields
   f_RealWord : TtfwWord;
    {* Поле для свойства RealWord}
 protected
 // property methods
   procedure pm_SetRealWord(aValue: TtfwWord);
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // overridden property methods
   function pm_GetWordProducer: TtfwWord; override;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
 public
 // overridden public methods
   function IsForwardDeclaration: Boolean; override;
 public
 // public properties
   property RealWord: TtfwWord
     read f_RealWord
     write pm_SetRealWord;
 end;//TkwForwardDeclaration

function L2ItfwFileReadLinesAction(anAction: pointer): ItfwFile_ReadLines_Action;
   {* Функция формирования заглушки для ЛОКАЛЬНОЙ подитеративной функции для ItfwFile.ReadLines }

function TtfwStackValue_C(aValue: Integer): TtfwStackValue; overload;
function TtfwStackValue_C(aValue: Boolean): TtfwStackValue; overload;
function TtfwStackValue_C(const aValue: Il3CString): TtfwStackValue; overload;
function TtfwStackValue_E: TtfwStackValue;
function TtfwStackValue_C(aValue: TObject): TtfwStackValue; overload;
function TtfwStackValue_C(const aValue: ItfwValueList): TtfwStackValue; overload;
function TtfwStackValue_C(const anIntf: IUnknown): TtfwStackValue; overload;
function TtfwStackValue_NULL: TtfwStackValue;
function TtfwStackValue_C(const aValue: ItfwFile): TtfwStackValue; overload;
function TtfwStackValue_C(aValue: AnsiChar): TtfwStackValue; overload;
function TtfwStackValue_C(const aValue: Tl3WString): TtfwStackValue; overload;
function TtfwStackValue_CBracket: TtfwStackValue;
function TtfwStackValue_C(aClass: TClass): TtfwStackValue; overload;

function TtfwStoredValue_C(aWord: TtfwWord;
     const aValue: TtfwStackValue): TtfwStoredValue;
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  l3Base,
  Classes,
  l3Parser,
  l3String
  ;

// start class ItfwFile

function L2ItfwFileReadLinesAction(anAction: pointer): ItfwFile_ReadLines_Action;
 {-}
asm
 jmp l3LocalStub
end;//L2ItfwFileReadLinesAction
// start class TtfwStackValue

procedure TtfwStackValue.CheckTypeIs(aTypeNeeded: TtfwStackValueType);
//#UC START# *4F47BE7100B4_4DB00A510300_var*
//#UC END# *4F47BE7100B4_4DB00A510300_var*
begin
//#UC START# *4F47BE7100B4_4DB00A510300_impl*
 Assert(rType = aTypeNeeded,
        'Тип значения ' +
        GetEnumName(TypeInfo(TtfwStackValueType), Ord(rType)) +
        ' несовместим с ' +
        GetEnumName(TypeInfo(TtfwStackValueType), Ord(aTypeNeeded))
       );
//#UC END# *4F47BE7100B4_4DB00A510300_impl*
end;//TtfwStackValue.CheckTypeIs

function TtfwStackValue_C(aValue: Integer): TtfwStackValue;
//#UC START# *4DB00AAB02FA_4DB00A510300_var*
//#UC END# *4DB00AAB02FA_4DB00A510300_var*
begin
 System.FillChar(Result, SizeOf(Result), 0);
//#UC START# *4DB00AAB02FA_4DB00A510300_impl*
 Result.rType := tfw_svtInt;
 Result.rInteger := aValue;
//#UC END# *4DB00AAB02FA_4DB00A510300_impl*
end;//TtfwStackValue.C


function TtfwStackValue_C(aValue: Boolean): TtfwStackValue;
//#UC START# *4DB01368005C_4DB00A510300_var*
//#UC END# *4DB01368005C_4DB00A510300_var*
begin
 System.FillChar(Result, SizeOf(Result), 0);
//#UC START# *4DB01368005C_4DB00A510300_impl*
 Result.rType := tfw_svtBool;
 if aValue then
  Result.rInteger := 1
 else
  Result.rInteger := 0;
//#UC END# *4DB01368005C_4DB00A510300_impl*
end;//TtfwStackValue.C

// start class TtfwStackValue

function TtfwStackValue.AsBoolean: Boolean;
//#UC START# *4DB0137B0192_4DB00A510300_var*
//#UC END# *4DB0137B0192_4DB00A510300_var*
begin
//#UC START# *4DB0137B0192_4DB00A510300_impl*
 CheckTypeIs(tfw_svtBool);
 Result := (rInteger <> 0);
//#UC END# *4DB0137B0192_4DB00A510300_impl*
end;//TtfwStackValue.AsBoolean

function TtfwStackValue_C(const aValue: Il3CString): TtfwStackValue;
//#UC START# *4DB04AC6039F_4DB00A510300_var*
//#UC END# *4DB04AC6039F_4DB00A510300_var*
begin
 System.FillChar(Result, SizeOf(Result), 0);
//#UC START# *4DB04AC6039F_4DB00A510300_impl*
 Result.rType := tfw_svtStr;
 Result.rString := aValue;
//#UC END# *4DB04AC6039F_4DB00A510300_impl*
end;//TtfwStackValue.C

// start class TtfwStackValue

function TtfwStackValue.AsString: Il3CString;
//#UC START# *4DB04AE10159_4DB00A510300_var*
//#UC END# *4DB04AE10159_4DB00A510300_var*
begin
//#UC START# *4DB04AE10159_4DB00A510300_impl*
 CheckTypeIs(tfw_svtStr);
 Result := rString;
//#UC END# *4DB04AE10159_4DB00A510300_impl*
end;//TtfwStackValue.AsString

function TtfwStackValue_E: TtfwStackValue;
//#UC START# *4DBAF93202ED_4DB00A510300_var*
//#UC END# *4DBAF93202ED_4DB00A510300_var*
begin
 System.FillChar(Result, SizeOf(Result), 0);
//#UC START# *4DBAF93202ED_4DB00A510300_impl*
 Result.rType := tfw_svtVoid;
//#UC END# *4DBAF93202ED_4DB00A510300_impl*
end;//TtfwStackValue.E


function TtfwStackValue_C(aValue: TObject): TtfwStackValue;
//#UC START# *4DBAF9410061_4DB00A510300_var*
//#UC END# *4DBAF9410061_4DB00A510300_var*
begin
 System.FillChar(Result, SizeOf(Result), 0);
//#UC START# *4DBAF9410061_4DB00A510300_impl*
 Result.rType := tfw_svtObj;
 Result.rInteger := Integer(aValue);
//#UC END# *4DBAF9410061_4DB00A510300_impl*
end;//TtfwStackValue.C

// start class TtfwStackValue

function TtfwStackValue.AsObject: TObject;
//#UC START# *4DBAF96002B5_4DB00A510300_var*
//#UC END# *4DBAF96002B5_4DB00A510300_var*
begin
//#UC START# *4DBAF96002B5_4DB00A510300_impl*
 if (rType = tfw_svtNil) then
  Result := nil
 else
 begin
  CheckTypeIs(tfw_svtObj);
  Result := TObject(rInteger);
 end;//rType = tfw_svtNil
//#UC END# *4DBAF96002B5_4DB00A510300_impl*
end;//TtfwStackValue.AsObject

function TtfwStackValue.AsList: ItfwValueList;
//#UC START# *4DCC15D001E1_4DB00A510300_var*
//#UC END# *4DCC15D001E1_4DB00A510300_var*
begin
//#UC START# *4DCC15D001E1_4DB00A510300_impl*
 CheckTypeIs(tfw_svtList);
 Result := ItfwValueList(rString);
//#UC END# *4DCC15D001E1_4DB00A510300_impl*
end;//TtfwStackValue.AsList

function TtfwStackValue_C(const aValue: ItfwValueList): TtfwStackValue;
//#UC START# *4DCC17860019_4DB00A510300_var*
//#UC END# *4DCC17860019_4DB00A510300_var*
begin
 System.FillChar(Result, SizeOf(Result), 0);
//#UC START# *4DCC17860019_4DB00A510300_impl*
 Result.rType := tfw_svtList;
 ItfwValueList(Result.rString) := aValue;
//#UC END# *4DCC17860019_4DB00A510300_impl*
end;//TtfwStackValue.C

// start class TtfwStackValue

procedure TtfwStackValue.IncValue(aValue: Integer);
//#UC START# *4E4CE1D0000E_4DB00A510300_var*
//#UC END# *4E4CE1D0000E_4DB00A510300_var*
begin
//#UC START# *4E4CE1D0000E_4DB00A510300_impl*
 CheckTypeIs(tfw_svtInt);
 Inc(rInteger, aValue);
//#UC END# *4E4CE1D0000E_4DB00A510300_impl*
end;//TtfwStackValue.IncValue

function TtfwStackValue.AsIntf(const aGUID: TGUID): IUnknown;
//#UC START# *4EB2750D010D_4DB00A510300_var*
//#UC END# *4EB2750D010D_4DB00A510300_var*
begin
//#UC START# *4EB2750D010D_4DB00A510300_impl*
 if not Supports(Self.AsIntf, aGUID, Result) then
  Assert(false);
//#UC END# *4EB2750D010D_4DB00A510300_impl*
end;//TtfwStackValue.AsIntf

function TtfwStackValue.AsIntf: IUnknown;
//#UC START# *4EB275290323_4DB00A510300_var*
//#UC END# *4EB275290323_4DB00A510300_var*
begin
//#UC START# *4EB275290323_4DB00A510300_impl*
 if (rType = tfw_svtNil) then
  Result := nil
 else
 begin
  CheckTypeIs(tfw_svtIntf);
  Result := IUnknown(rString);
 end;//rType = tfw_svtNil
//#UC END# *4EB275290323_4DB00A510300_impl*
end;//TtfwStackValue.AsIntf

function TtfwStackValue_C(const anIntf: IUnknown): TtfwStackValue;
//#UC START# *4EB275570202_4DB00A510300_var*
//#UC END# *4EB275570202_4DB00A510300_var*
begin
 System.FillChar(Result, SizeOf(Result), 0);
//#UC START# *4EB275570202_4DB00A510300_impl*
 Result.rType := tfw_svtIntf;
 IUnknown(Result.rString) := anIntf;
//#UC END# *4EB275570202_4DB00A510300_impl*
end;//TtfwStackValue.C


function TtfwStackValue_NULL: TtfwStackValue;
//#UC START# *4F280A220140_4DB00A510300_var*
//#UC END# *4F280A220140_4DB00A510300_var*
begin
 System.FillChar(Result, SizeOf(Result), 0);
//#UC START# *4F280A220140_4DB00A510300_impl*
 Result.rType := tfw_svtNil;
//#UC END# *4F280A220140_4DB00A510300_impl*
end;//TtfwStackValue.NULL

// start class TtfwStackValue

function TtfwStackValue.AsFile: ItfwFile;
//#UC START# *4F4E4F7400B9_4DB00A510300_var*
//#UC END# *4F4E4F7400B9_4DB00A510300_var*
begin
//#UC START# *4F4E4F7400B9_4DB00A510300_impl*
 CheckTypeIs(tfw_svtFile);
 Result := ItfwFile(rString);
//#UC END# *4F4E4F7400B9_4DB00A510300_impl*
end;//TtfwStackValue.AsFile

function TtfwStackValue_C(const aValue: ItfwFile): TtfwStackValue;
//#UC START# *4F4E5D6C038D_4DB00A510300_var*
//#UC END# *4F4E5D6C038D_4DB00A510300_var*
begin
 System.FillChar(Result, SizeOf(Result), 0);
//#UC START# *4F4E5D6C038D_4DB00A510300_impl*
 Result.rType := tfw_svtFile;
 ItfwFile(Result.rString) := aValue;
//#UC END# *4F4E5D6C038D_4DB00A510300_impl*
end;//TtfwStackValue.C

// start class TtfwStackValue

function TtfwStackValue.AsChar: AnsiChar;
//#UC START# *4F4FDCBE01B5_4DB00A510300_var*
//#UC END# *4F4FDCBE01B5_4DB00A510300_var*
begin
//#UC START# *4F4FDCBE01B5_4DB00A510300_impl*
 CheckTypeIs(tfw_svtChar);
 Result := AnsiChar(rInteger);
//#UC END# *4F4FDCBE01B5_4DB00A510300_impl*
end;//TtfwStackValue.AsChar

function TtfwStackValue_C(aValue: AnsiChar): TtfwStackValue;
//#UC START# *4F4FDCD4016D_4DB00A510300_var*
//#UC END# *4F4FDCD4016D_4DB00A510300_var*
begin
 System.FillChar(Result, SizeOf(Result), 0);
//#UC START# *4F4FDCD4016D_4DB00A510300_impl*
 Result.rType := tfw_svtChar;
 Result.rInteger := Ord(aValue);
//#UC END# *4F4FDCD4016D_4DB00A510300_impl*
end;//TtfwStackValue.C

// start class TtfwStackValue

function TtfwStackValue.AsWString: Tl3WString;
//#UC START# *4F4FE10601D8_4DB00A510300_var*
//#UC END# *4F4FE10601D8_4DB00A510300_var*
begin
//#UC START# *4F4FE10601D8_4DB00A510300_impl*
 CheckTypeIs(tfw_svtWStr);
 Result.S := PAnsiChar(rInteger);
 Result.SLen := rSLen;
 Result.SCodePage := rSCodePage;
//#UC END# *4F4FE10601D8_4DB00A510300_impl*
end;//TtfwStackValue.AsWString

function TtfwStackValue_C(const aValue: Tl3WString): TtfwStackValue;
//#UC START# *4F4FE12601E1_4DB00A510300_var*
//#UC END# *4F4FE12601E1_4DB00A510300_var*
begin
 System.FillChar(Result, SizeOf(Result), 0);
//#UC START# *4F4FE12601E1_4DB00A510300_impl*
 Result.rType := tfw_svtWStr;
 Result.rInteger := Integer(aValue.S);
 Result.rSLen := aValue.SLen;
 Result.rSCodePage := aValue.SCodePage;
//#UC END# *4F4FE12601E1_4DB00A510300_impl*
end;//TtfwStackValue.C

// start class TtfwStackValue

function TtfwStackValue.AsPrintable: Il3CString;
//#UC START# *4F4FEB3C01D1_4DB00A510300_var*
var
 l_Obj : TObject;
//#UC END# *4F4FEB3C01D1_4DB00A510300_var*
begin
//#UC START# *4F4FEB3C01D1_4DB00A510300_impl*
 Case rType of
  tfw_svtStr:
   Result := AsString;
  tfw_svtInt:
   Result := TtfwCStringFactory.C(IntToStr(rInteger));
  tfw_svtBool:
   Result := TtfwCStringFactory.C(BoolToStr(AsBoolean, true));
  tfw_svtVoid:
   Result := TtfwCStringFactory.C('<void>');
  tfw_svtObj:
  begin
   l_Obj := AsObject;
   if (l_Obj Is TComponent) then
    Result := TtfwCStringFactory.C(TComponent(l_Obj).Name + ' : ' + l_Obj.ClassName)
   else
    Result := TtfwCStringFactory.C(l_Obj.ClassName);
  end;//tfw_svtObj
  tfw_svtIntf:
   Result := TtfwCStringFactory.C(Format('<interface %h>', [Pointer(rString)]));
  tfw_svtList:
   Result := TtfwCStringFactory.C(Format('<array %h>', [Pointer(rString)]));
  tfw_svtWStr:
   Result := TtfwCStringFactory.C(AsWString);
  tfw_svtChar:
   Result := TtfwCStringFactory.C(AsChar);
  tfw_svtBracket:
   Result := TtfwCStringFactory.C('<bracket>');
  tfw_svtNil:
   Result := TtfwCStringFactory.C('<nil>');
  tfw_svtClass:
    Result := TtfwCStringFactory.C(AsClass.ClassName);
  else
  begin
   Result := nil;
   Assert(false, 'Неизвестный тип для приведения к печатному виду');
  end;//else
 end;//Case rType  
//#UC END# *4F4FEB3C01D1_4DB00A510300_impl*
end;//TtfwStackValue.AsPrintable

function TtfwStackValue_CBracket: TtfwStackValue;
//#UC START# *4F5030660367_4DB00A510300_var*
//#UC END# *4F5030660367_4DB00A510300_var*
begin
 System.FillChar(Result, SizeOf(Result), 0);
//#UC START# *4F5030660367_4DB00A510300_impl*
 Result.rType := tfw_svtBracket;
//#UC END# *4F5030660367_4DB00A510300_impl*
end;//TtfwStackValue.CBracket

// start class TtfwStackValue

function TtfwStackValue.IsBracket: Boolean;
//#UC START# *4F503089022C_4DB00A510300_var*
//#UC END# *4F503089022C_4DB00A510300_var*
begin
//#UC START# *4F503089022C_4DB00A510300_impl*
 Result := (rType = tfw_svtBracket);
//#UC END# *4F503089022C_4DB00A510300_impl*
end;//TtfwStackValue.IsBracket

function TtfwStackValue_C(aClass: TClass): TtfwStackValue;
//#UC START# *50852D1B015E_4DB00A510300_var*
//#UC END# *50852D1B015E_4DB00A510300_var*
begin
 System.FillChar(Result, SizeOf(Result), 0);
//#UC START# *50852D1B015E_4DB00A510300_impl*
 Result.rType := tfw_svtClass;
 Result.rInteger := Integer(aClass);
//#UC END# *50852D1B015E_4DB00A510300_impl*
end;//TtfwStackValue.C

// start class TtfwStackValue

function TtfwStackValue.AsClass: TClass;
//#UC START# *5085301700BE_4DB00A510300_var*
//#UC END# *5085301700BE_4DB00A510300_var*
begin
//#UC START# *5085301700BE_4DB00A510300_impl*
 if (rType = tfw_svtNil) then
  Result := nil
 else
 begin
  CheckTypeIs(tfw_svtClass);
  Result := TClass(rInteger);
 end;//rType = tfw_svtNil
//#UC END# *5085301700BE_4DB00A510300_impl*
end;//TtfwStackValue.AsClass
// start class TtfwKeyWordPrim

procedure TtfwKeyWordPrim.ClearFields;
 {-}
begin
 f_AsCStr := nil;
 inherited;
end;//TtfwKeyWordPrim.ClearFields
// start class TtfwWord

function TtfwWord.IsCompiled: Boolean;
//#UC START# *4DB6CF7202CB_4DAEED140007_var*
//#UC END# *4DB6CF7202CB_4DAEED140007_var*
begin
//#UC START# *4DB6CF7202CB_4DAEED140007_impl*
 Result := false;
//#UC END# *4DB6CF7202CB_4DAEED140007_impl*
end;//TtfwWord.IsCompiled

function TtfwWord.IsImmediate: Boolean;
//#UC START# *4DB6D7F70155_4DAEED140007_var*
//#UC END# *4DB6D7F70155_4DAEED140007_var*
begin
//#UC START# *4DB6D7F70155_4DAEED140007_impl*
 Result := false;
//#UC END# *4DB6D7F70155_4DAEED140007_impl*
end;//TtfwWord.IsImmediate

function TtfwWord.IsDefaultBranch: Boolean;
//#UC START# *4DBAF4630154_4DAEED140007_var*
//#UC END# *4DBAF4630154_4DAEED140007_var*
begin
//#UC START# *4DBAF4630154_4DAEED140007_impl*
 Result := false;
//#UC END# *4DBAF4630154_4DAEED140007_impl*
end;//TtfwWord.IsDefaultBranch

procedure TtfwWord.CompilerAssert(aCondition: Boolean;
  const aMessage: AnsiString;
  const aContext: TtfwContext);
//#UC START# *4EF4A312023F_4DAEED140007_var*

 function locName : AnsiString;
 begin
  if (f_Key <> nil) then
   Result := f_Key.AsString
  else
   Result := '';
 end;

//#UC END# *4EF4A312023F_4DAEED140007_var*
begin
//#UC START# *4EF4A312023F_4DAEED140007_impl*
 Assert(aCondition,
       Format('Ошибка компиляции: "%s". Тип токена: %s : %s в строке %d. Файл: %s. Класс: %s. Слово: %s',
              [aMessage,
               GetEnumName(TypeInfo(Tl3TokenType),
                           Ord(aContext.rParser.TokenType)),
               aContext.rParser.TokenString,
               aContext.rParser.SourceLine,                                                                      //
               aContext.rParser.Filer.Identifier,
               ClassName,
               locName
              ]));
//#UC END# *4EF4A312023F_4DAEED140007_impl*
end;//TtfwWord.CompilerAssert

procedure TtfwWord.RunnerAssert(aCondition: Boolean;
  const aMessage: AnsiString;
  const aContext: TtfwContext);
//#UC START# *4EF4AE480303_4DAEED140007_var*

 function locName : AnsiString;
 begin
  if (f_Key <> nil) then
   Result := f_Key.AsString
  else
   Result := ''; 
 end;

//#UC END# *4EF4AE480303_4DAEED140007_var*
begin
//#UC START# *4EF4AE480303_4DAEED140007_impl*
 if (@aContext = nil) then
 Assert(aCondition,
       Format('Ошибка выполнения: "%s". Класс: %s. Слово: %s',
              [aMessage,
               ClassName,
               locName
              ]))
 else
 Assert(aCondition,
       Format('Ошибка выполнения: "%s". Главный файл: %s. Класс: %s. Слово: %s',
              [aMessage,
               aContext.rScriptFilename,
               ClassName,
               locName
              ]));
//#UC END# *4EF4AE480303_4DAEED140007_impl*
end;//TtfwWord.RunnerAssert

procedure TtfwWord.DoIt(const aCtx: TtfwContext); // can raise EtfwCodeFlowError, EtfwRecursionNotSupportedYet
//#UC START# *4F22776902FC_4DAEED140007_var*
//#UC END# *4F22776902FC_4DAEED140007_var*
begin
//#UC START# *4F22776902FC_4DAEED140007_impl*
 Assert(f_NestedCallsCount >= 0);
 if (f_NestedCallsCount > 0) then
  if IsCompiled then
  // - отсекаем некомпилированные слова, т.к. с ними наверное всё хорошо
  //   а иначе падает например на том же INCLUDE
   if not AllowNestedCalls then
   begin
    Self.StoreState(aCtx);
    try
     Inc(f_NestedCallsCount);
     try
      DoDoIt(aCtx);
     finally
      Dec(f_NestedCallsCount);
     end;//try..finally
    finally
     Self.RestoreState(aCtx);
    end;//try..finally
    Exit;
    //raise EtfwRecursionNotSupportedYet.Create('Вложенные вызовы слов пока не поддерживаются');
    // - тут вообще говоря надо сложить значения переменных в стек, вызвать DoDoIt, а потом восстановит переменные
   end;//f_NestedCallsCount > 0
 Inc(f_NestedCallsCount);
 try
  DoDoIt(aCtx);
 finally
  Dec(f_NestedCallsCount);
 end;//try..finally
//#UC END# *4F22776902FC_4DAEED140007_impl*
end;//TtfwWord.DoIt

function TtfwWord.IsAnonimous: Boolean;
//#UC START# *4F3AB3600008_4DAEED140007_var*
//#UC END# *4F3AB3600008_4DAEED140007_var*
begin
//#UC START# *4F3AB3600008_4DAEED140007_impl*
 Result := false;
//#UC END# *4F3AB3600008_4DAEED140007_impl*
end;//TtfwWord.IsAnonimous

function TtfwWord.AllowNestedCalls: Boolean;
//#UC START# *4F3C06550278_4DAEED140007_var*
//#UC END# *4F3C06550278_4DAEED140007_var*
begin
//#UC START# *4F3C06550278_4DAEED140007_impl*
 Result := false;
//#UC END# *4F3C06550278_4DAEED140007_impl*
end;//TtfwWord.AllowNestedCalls

procedure TtfwWord.CompilerAssertFmt(aCondition: Boolean;
  const aMessage: AnsiString;
  const aParams: array of const;
  const aContext: TtfwContext);
//#UC START# *4F3E369002A2_4DAEED140007_var*
//#UC END# *4F3E369002A2_4DAEED140007_var*
begin
//#UC START# *4F3E369002A2_4DAEED140007_impl*
 CompilerAssert(aCondition, Format(aMessage, aParams), aContext);
//#UC END# *4F3E369002A2_4DAEED140007_impl*
end;//TtfwWord.CompilerAssertFmt

procedure TtfwWord.RunnerAssertFmt(aCondition: Boolean;
  const aMessage: AnsiString;
  const aParams: array of const;
  const aContext: TtfwContext);
//#UC START# *4F3E36A5031F_4DAEED140007_var*
//#UC END# *4F3E36A5031F_4DAEED140007_var*
begin
//#UC START# *4F3E36A5031F_4DAEED140007_impl*
 RunnerAssert(aCondition, Format(aMessage, aParams), aContext);
//#UC END# *4F3E36A5031F_4DAEED140007_impl*
end;//TtfwWord.RunnerAssertFmt

function TtfwWord.IsRunner: Boolean;
//#UC START# *4F3FB2E202A2_4DAEED140007_var*
//#UC END# *4F3FB2E202A2_4DAEED140007_var*
begin
//#UC START# *4F3FB2E202A2_4DAEED140007_impl*
 Result := false;
//#UC END# *4F3FB2E202A2_4DAEED140007_impl*
end;//TtfwWord.IsRunner

function TtfwWord.CompiledWordClassPrim: RtfwWord;
//#UC START# *4F477C2C03B9_4DAEED140007_var*
//#UC END# *4F477C2C03B9_4DAEED140007_var*
begin
//#UC START# *4F477C2C03B9_4DAEED140007_impl*
 Result := nil;
//#UC END# *4F477C2C03B9_4DAEED140007_impl*
end;//TtfwWord.CompiledWordClassPrim

procedure TtfwWord.StoreState(const aCtx: TtfwContext);
//#UC START# *4F49428A01EA_4DAEED140007_var*
//#UC END# *4F49428A01EA_4DAEED140007_var*
begin
//#UC START# *4F49428A01EA_4DAEED140007_impl*
 // - ничего не делаем
//#UC END# *4F49428A01EA_4DAEED140007_impl*
end;//TtfwWord.StoreState

procedure TtfwWord.RestoreState(const aCtx: TtfwContext);
//#UC START# *4F4942C50339_4DAEED140007_var*
//#UC END# *4F4942C50339_4DAEED140007_var*
begin
//#UC START# *4F4942C50339_4DAEED140007_impl*
 // - ничего не делаем
//#UC END# *4F4942C50339_4DAEED140007_impl*
end;//TtfwWord.RestoreState

function TtfwWord.IsForwardDeclaration: Boolean;
//#UC START# *4F4BB6CD0359_4DAEED140007_var*
//#UC END# *4F4BB6CD0359_4DAEED140007_var*
begin
//#UC START# *4F4BB6CD0359_4DAEED140007_impl*
 Result := false;
//#UC END# *4F4BB6CD0359_4DAEED140007_impl*
end;//TtfwWord.IsForwardDeclaration

procedure TtfwWord.pm_SetRedefines(aValue: TtfwWord);
//#UC START# *4F41FF0C01A6_4DAEED140007set_var*
//#UC END# *4F41FF0C01A6_4DAEED140007set_var*
begin
//#UC START# *4F41FF0C01A6_4DAEED140007set_impl*
 Assert(f_Redefines = nil, 'Слово не может переопределять БОЛЕЕ одного слова');
 Assert(aValue <> Self, 'Слово не может переопределять самого себя');
 aValue.SetRefTo(f_Redefines);
//#UC END# *4F41FF0C01A6_4DAEED140007set_impl*
end;//TtfwWord.pm_SetRedefines

function TtfwWord.pm_GetWordProducer: TtfwWord;
//#UC START# *4F43C9A10139_4DAEED140007get_var*
//#UC END# *4F43C9A10139_4DAEED140007get_var*
begin
//#UC START# *4F43C9A10139_4DAEED140007get_impl*
 Result := nil;
//#UC END# *4F43C9A10139_4DAEED140007get_impl*
end;//TtfwWord.pm_GetWordProducer

procedure TtfwWord.Cleanup;
//#UC START# *479731C50290_4DAEED140007_var*
//#UC END# *479731C50290_4DAEED140007_var*
begin
//#UC START# *479731C50290_4DAEED140007_impl*
 f_Key := nil;
 FreeAndNil(f_Redefines);
 inherited;
//#UC END# *479731C50290_4DAEED140007_impl*
end;//TtfwWord.Cleanup

{$If not defined(DesignTimeLibrary)}
class function TtfwWord.IsCacheable: Boolean;
//#UC START# *47A6FEE600FC_4DAEED140007_var*
//#UC END# *47A6FEE600FC_4DAEED140007_var*
begin
//#UC START# *47A6FEE600FC_4DAEED140007_impl*
 Result := true;
//#UC END# *47A6FEE600FC_4DAEED140007_impl*
end;//TtfwWord.IsCacheable
{$IfEnd} //not DesignTimeLibrary
// start class TtfwKeyWord

constructor TtfwKeyWord.Create(const aKeyword: AnsiString;
  aWord: TtfwWord);
//#UC START# *4DB578450319_4DAEF23D00EE_var*
//#UC END# *4DB578450319_4DAEF23D00EE_var*
begin
//#UC START# *4DB578450319_4DAEF23D00EE_impl*
 Create(TtfwCStringFactory.C(aKeyword));
 Assert(f_Word = nil);
 f_Word := aWord.Use;
 if (f_Word <> nil) then
  f_Word.f_Key := Self;
//#UC END# *4DB578450319_4DAEF23D00EE_impl*
end;//TtfwKeyWord.Create

constructor TtfwKeyWord.Create(const aKeyword: Tl3WString);
//#UC START# *4F46550C03E5_4DAEF23D00EE_var*
//#UC END# *4F46550C03E5_4DAEF23D00EE_var*
begin
//#UC START# *4F46550C03E5_4DAEF23D00EE_impl*
 Create(TtfwCStringFactory.C(aKeyword));
//#UC END# *4F46550C03E5_4DAEF23D00EE_impl*
end;//TtfwKeyWord.Create

constructor TtfwKeyWord.Create(const aKeyword: Il3CString);
//#UC START# *4F4658D00140_4DAEF23D00EE_var*
//#UC END# *4F4658D00140_4DAEF23D00EE_var*
begin
//#UC START# *4F4658D00140_4DAEF23D00EE_impl*
 inherited Create;
 f_AsCStr := aKeyword;
//#UC END# *4F4658D00140_4DAEF23D00EE_impl*
end;//TtfwKeyWord.Create

procedure TtfwKeyWord.pm_SetWord(aValue: TtfwWord);
//#UC START# *4FFEEC630195_4DAEF23D00EEset_var*
//#UC END# *4FFEEC630195_4DAEF23D00EEset_var*
begin
//#UC START# *4FFEEC630195_4DAEF23D00EEset_impl*
 if (aValue <> f_Word) then
 begin
  if (aValue <> nil) AND (f_Word <> nil) AND f_Word.IsForwardDeclaration then
  begin
   Assert(f_Word <> aValue);
   Assert(TkwForwardDeclaration(f_Word).RealWord = nil,
          Format('Предварительное определение слова %s уже было завершено',
                 [Self.AsString])
          );
   TkwForwardDeclaration(f_Word).RealWord := aValue;
  end//(f_Word <> nil) AND f_Word.IsForwardDeclaration
  else
  begin
   if (f_Word <> nil) then
    if (f_Word.f_Key = Self) then
     f_Word.f_Key := nil;
   aValue.SetRefTo(f_Word);
   if (f_Word <> nil) then
    f_Word.f_Key := Self;
  end//(f_Word <> nil) AND f_Word.IsForwardDeclaration
 end;//aValue <> f_Word
//#UC END# *4FFEEC630195_4DAEF23D00EEset_impl*
end;//TtfwKeyWord.pm_SetWord

procedure TtfwKeyWord.Cleanup;
//#UC START# *479731C50290_4DAEF23D00EE_var*
//#UC END# *479731C50290_4DAEF23D00EE_var*
begin
//#UC START# *479731C50290_4DAEF23D00EE_impl*
 if (f_Word <> nil) then
  if (f_Word.f_Key = Self) then
   f_Word.f_Key := nil;
 FreeAndNil(f_Word);
 inherited;
//#UC END# *479731C50290_4DAEF23D00EE_impl*
end;//TtfwKeyWord.Cleanup

function TtfwKeyWord.GetAsPCharLen: Tl3WString;
//#UC START# *47A869BB02DE_4DAEF23D00EE_var*
//#UC END# *47A869BB02DE_4DAEF23D00EE_var*
begin
//#UC START# *47A869BB02DE_4DAEF23D00EE_impl*
 Result := l3PCharLen(f_AsCStr);
//#UC END# *47A869BB02DE_4DAEF23D00EE_impl*
end;//TtfwKeyWord.GetAsPCharLen

procedure TtfwKeyWord.DoSetAsPCharLen(const Value: Tl3PCharLen);
//#UC START# *47A869D10074_4DAEF23D00EE_var*
//#UC END# *47A869D10074_4DAEF23D00EE_var*
begin
//#UC START# *47A869D10074_4DAEF23D00EE_impl*
 Assert(false);
//#UC END# *47A869D10074_4DAEF23D00EE_impl*
end;//TtfwKeyWord.DoSetAsPCharLen

function TtfwStoredValue_C(aWord: TtfwWord;
       const aValue: TtfwStackValue): TtfwStoredValue;
//#UC START# *4F49402A03C2_4F493FAE01C7_var*
//#UC END# *4F49402A03C2_4F493FAE01C7_var*
begin
 System.FillChar(Result, SizeOf(Result), 0);
//#UC START# *4F49402A03C2_4F493FAE01C7_impl*
 Result.rWord := aWord;
 Result.rValue := aValue;
//#UC END# *4F49402A03C2_4F493FAE01C7_impl*
end;//TtfwStoredValue.C

// start class TtfwDictionary

procedure TtfwDictionary.AddWord(const aWordName: AnsiString;
  aWordClass: RtfwWord);
//#UC START# *4DAEEDA301CD_4DAEECD90016_var*
var
 l_W : TtfwWord;
 l_KW : TtfwKeyWord;
//#UC END# *4DAEEDA301CD_4DAEECD90016_var*
begin
//#UC START# *4DAEEDA301CD_4DAEECD90016_impl*
 l_W := aWordClass.Create;
 try
  l_KW := TtfwKeyWord.Create(aWordName, l_W);
  try
   Self.Add(l_KW);
  finally
   FreeAndNil(l_KW);
  end;//try..finally
 finally
  FreeAndNil(l_W);
 end;//try..finally
//#UC END# *4DAEEDA301CD_4DAEECD90016_impl*
end;//TtfwDictionary.AddWord

procedure TtfwDictionary.AddWord(aWord: TtfwKeyWord);
//#UC START# *4DB062B203D1_4DAEECD90016_var*
//#UC END# *4DB062B203D1_4DAEECD90016_var*
begin
//#UC START# *4DB062B203D1_4DAEECD90016_impl*
 Self.Add(aWord);
//#UC END# *4DB062B203D1_4DAEECD90016_impl*
end;//TtfwDictionary.AddWord

procedure TtfwDictionary.AddWord(const aWordName: AnsiString;
  aWord: TtfwWord);
//#UC START# *4DB5781B0086_4DAEECD90016_var*
var
 l_W : TtfwKeyWord;
//#UC END# *4DB5781B0086_4DAEECD90016_var*
begin
//#UC START# *4DB5781B0086_4DAEECD90016_impl*
 l_W := TtfwKeyWord.Create(aWordName, aWord);
 try
  Self.Add(l_W);
 finally
  FreeAndNil(l_W);
 end;//try..finally
//#UC END# *4DB5781B0086_4DAEECD90016_impl*
end;//TtfwDictionary.AddWord

function TtfwDictionary.CheckWord(const aName: Tl3WString): TtfwKeyWord;
//#UC START# *4DB6CF16017F_4DAEECD90016_var*
var
 i : Integer;
 l_W : TtfwKeyWord;
//#UC END# *4DB6CF16017F_4DAEECD90016_var*
begin
//#UC START# *4DB6CF16017F_4DAEECD90016_impl*
 if FindData(aName, i, SortIndex) then
  Result := TtfwKeyWord(Items[i])
 else
 begin
  l_W := TtfwKeyWord.Create(aName);
  try
   DirectInsert(i, l_W);
   Result := l_W;
  finally
   FreeAndNil(l_W);
  end;//try..finally
 end;//FindData...
//#UC END# *4DB6CF16017F_4DAEECD90016_impl*
end;//TtfwDictionary.CheckWord

function TtfwDictionary.CheckWord(const aName: Il3CString): TtfwKeyWord;
//#UC START# *4F465D580021_4DAEECD90016_var*
var
 i : Integer;
 l_W : TtfwKeyWord;
//#UC END# *4F465D580021_4DAEECD90016_var*
begin
//#UC START# *4F465D580021_4DAEECD90016_impl*
 if FindData(l3PCharLen(aName), i, SortIndex) then
  Result := TtfwKeyWord(Items[i])
 else
 begin
  l_W := TtfwKeyWord.Create(aName);
  try
   DirectInsert(i, l_W);
   Result := l_W;
  finally
   FreeAndNil(l_W);
  end;//try..finally
 end;//FindData...
//#UC END# *4F465D580021_4DAEECD90016_impl*
end;//TtfwDictionary.CheckWord

function TtfwDictionary.pm_GetDRbyName(const aName: AnsiString): TtfwKeyWord;
//#UC START# *4F4640350311_4DAEECD90016get_var*
var
 i : Integer;
//#UC END# *4F4640350311_4DAEECD90016get_var*
begin
//#UC START# *4F4640350311_4DAEECD90016get_impl*
 if FindData(aName, i, SortIndex) then
  Result := TtfwKeyWord(Items[i])
 else
  Result := nil;
//#UC END# *4F4640350311_4DAEECD90016get_impl*
end;//TtfwDictionary.pm_GetDRbyName

function TtfwDictionary.pm_GetDRbyCName(const aName: Il3CString): TtfwKeyWord;
//#UC START# *4F465A710399_4DAEECD90016get_var*
var
 i : Integer;
//#UC END# *4F465A710399_4DAEECD90016get_var*
begin
//#UC START# *4F465A710399_4DAEECD90016get_impl*
 if FindData(l3PCharLen(aName), i, SortIndex) then
  Result := TtfwKeyWord(Items[i])
 else
  Result := nil;
//#UC END# *4F465A710399_4DAEECD90016get_impl*
end;//TtfwDictionary.pm_GetDRbyCName

procedure TtfwDictionary.InitFields;
//#UC START# *47A042E100E2_4DAEECD90016_var*
//#UC END# *47A042E100E2_4DAEECD90016_var*
begin
//#UC START# *47A042E100E2_4DAEECD90016_impl*
 inherited;
 Sorted := true;
//#UC END# *47A042E100E2_4DAEECD90016_impl*
end;//TtfwDictionary.InitFields

{$If not defined(DesignTimeLibrary)}
class function TtfwDictionary.IsCacheable: Boolean;
//#UC START# *47A6FEE600FC_4DAEECD90016_var*
//#UC END# *47A6FEE600FC_4DAEECD90016_var*
begin
//#UC START# *47A6FEE600FC_4DAEECD90016_impl*
 Result := true;
//#UC END# *47A6FEE600FC_4DAEECD90016_impl*
end;//TtfwDictionary.IsCacheable
{$IfEnd} //not DesignTimeLibrary
// start class TkwForwardDeclaration

procedure TkwForwardDeclaration.pm_SetRealWord(aValue: TtfwWord);
//#UC START# *4F4BB75C021E_4F4BB70D0144set_var*
//#UC END# *4F4BB75C021E_4F4BB70D0144set_var*
begin
//#UC START# *4F4BB75C021E_4F4BB70D0144set_impl*
 aValue.SetRefTo(f_RealWord);
//#UC END# *4F4BB75C021E_4F4BB70D0144set_impl*
end;//TkwForwardDeclaration.pm_SetRealWord

procedure TkwForwardDeclaration.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4F4BB70D0144_var*
//#UC END# *4DAEEDE10285_4F4BB70D0144_var*
begin
//#UC START# *4DAEEDE10285_4F4BB70D0144_impl*
 RunnerAssert(f_RealWord <> nil,
              'Предварительное определение слова не было завершено',
              aCtx);
 f_RealWord.DoIt(aCtx);
//#UC END# *4DAEEDE10285_4F4BB70D0144_impl*
end;//TkwForwardDeclaration.DoDoIt

procedure TkwForwardDeclaration.Cleanup;
//#UC START# *479731C50290_4F4BB70D0144_var*
//#UC END# *479731C50290_4F4BB70D0144_var*
begin
//#UC START# *479731C50290_4F4BB70D0144_impl*
 FreeAndNil(f_RealWord);
 inherited;
//#UC END# *479731C50290_4F4BB70D0144_impl*
end;//TkwForwardDeclaration.Cleanup

function TkwForwardDeclaration.pm_GetWordProducer: TtfwWord;
//#UC START# *4F43C9A10139_4F4BB70D0144get_var*
//#UC END# *4F43C9A10139_4F4BB70D0144get_var*
begin
//#UC START# *4F43C9A10139_4F4BB70D0144get_impl*
 if (f_RealWord = nil) then
  Result := nil
 else
  Result := f_RealWord.WordProducer;
//#UC END# *4F43C9A10139_4F4BB70D0144get_impl*
end;//TkwForwardDeclaration.pm_GetWordProducer

function TkwForwardDeclaration.IsForwardDeclaration: Boolean;
//#UC START# *4F4BB6CD0359_4F4BB70D0144_var*
//#UC END# *4F4BB6CD0359_4F4BB70D0144_var*
begin
//#UC START# *4F4BB6CD0359_4F4BB70D0144_impl*
 Result := true;
//#UC END# *4F4BB6CD0359_4F4BB70D0144_impl*
end;//TkwForwardDeclaration.IsForwardDeclaration
{$IfEnd} //not NoScripts


end.