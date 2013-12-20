unit k2PureMixIns;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/K2/k2PureMixIns.pas"
// Начат: 16.04.2010 14:27
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Interfaces::Category>> Shared Delphi::K2::k2PureMixIns
//
// Примеси для конструирования интерфейсов библиотеки
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\K2\k2Define.inc}

interface

uses
  l3Interfaces,
  l3Types,
  k2Prim
  ;

(*
 Mk2ProcessorHolder = PureMixIn
   function pm_GetProcessor: Ik2Processor;
   property Processor: Ik2Processor
     read pm_GetProcessor;
 end;//Mk2ProcessorHolder
*)

(*
 Mk2PCharLenHolder = PureMixIn
   function pm_GetPCharLenA(anIndex: Integer): Tl3PCharLen;
   procedure pm_SetPCharLenA(anIndex: Integer; const aValue: Tl3PCharLen);
   procedure pm_SetPCharLenW(anIndex: Integer; const aContext: Ik2Op; const aValue: Tl3WString);
   property PCharLenA[anIndex: Integer]: Tl3PCharLen
     read pm_GetPCharLenA
     write pm_SetPCharLenA;
   property PCharLenW[anIndex: Integer; const aContext: Ik2Op]: Tl3WString
     write pm_SetPCharLenW;
 end;//Mk2PCharLenHolder
*)

(*
 Mk2BooleanHolder = PureMixIn
   function pm_GetBoolA(anIndex: Integer): Boolean;
   procedure pm_SetBoolA(anIndex: Integer; aValue: Boolean);
   procedure pm_SetBoolW(anIndex: Integer; const aContext: Ik2Op; aValue: Boolean);
   function RBool(anIndex: Integer;
    aDefault: Boolean): Boolean;
   property BoolA[anIndex: Integer]: Boolean
     read pm_GetBoolA
     write pm_SetBoolA;
   property BoolW[anIndex: Integer; const aContext: Ik2Op]: Boolean
     write pm_SetBoolW;
 end;//Mk2BooleanHolder
*)

(*
 Mk2TypeHolder = PureMixIn
   function pm_GetTagType: Tk2TypePrim;
   property TagType: Tk2TypePrim
     read pm_GetTagType;
 end;//Mk2TypeHolder
*)

(*
 Mk2StringHolder = PureMixIn
   function pm_GetStrA(anIndex: Integer): AnsiString;
   procedure pm_SetStrA(anIndex: Integer; const aValue: AnsiString);
   procedure pm_SetStrW(anIndex: Integer; const aContext: Ik2Op; const aValue: AnsiString);
   property StrA[anIndex: Integer]: AnsiString
     read pm_GetStrA
     write pm_SetStrA;
   property StrW[anIndex: Integer; const aContext: Ik2Op]: AnsiString
     write pm_SetStrW;
 end;//Mk2StringHolder
*)

(*
 Mk2ObjectHolder = PureMixIn
   procedure pm_SetObjW(anIndex: Integer; const aContext: Ik2Op; aValue: TObject);
   property ObjW[anIndex: Integer; const aContext: Ik2Op]: TObject
     write pm_SetObjW;
 end;//Mk2ObjectHolder
*)

(*
 Mk2IntegerHolder = PureMixIn
   function pm_GetIntA(anIndex: Integer): Integer;
   procedure pm_SetIntA(anIndex: Integer; aValue: Integer);
   procedure pm_SetIntW(anIndex: Integer; const aContext: Ik2Op; aValue: Integer);
   function RLong(anIndex: Integer;
    aDefault: Integer): Integer;
   property IntA[anIndex: Integer]: Integer
     read pm_GetIntA
     write pm_SetIntA;
   property IntW[anIndex: Integer; const aContext: Ik2Op]: Integer
     write pm_SetIntW;
 end;//Mk2IntegerHolder
*)

(*
 Mk2AtomHolder = PureMixIn
   function HasSubAtom(anIndex: Integer): Boolean;
 end;//Mk2AtomHolder
*)

(*
 Mk2TagInfo = PureMixIn
   function IsNull: Boolean;
     {* пустой тег? }
   function IsValid: Boolean;
     {* тег имеет значение? }
   function IsTransparent: Boolean;
     {* тег "прозрачный"? }
   function IsStream(out theStream: IStream): Boolean;
     {* Проверяет может ли тег приводиться к потоку. И приводит к потоку - если указатель на поток - не нулевой. }
 end;//Mk2TagInfo
*)

(*
 Mk2TagToolProvider = PureMixIn
   function QT(const IID: TGUID;
    out Obj;
    const aProcessor: Ik2Processor = nil): Boolean;
     {* возвращает инструмент для работы с тегом, к которому привязан исходный инструмент. }
 end;//Mk2TagToolProvider
*)

(*
 Mk2InterfaceProvider = PureMixIn
   function GetOwnInterface(const IID: TGUID;
    out Obj): Boolean;
     {* возвращает интерфейс НЕПОСРЕДСТВЕННО поддерживаемый реализацией инструмента. }
   function GetLinkedInterface(const IID: TGUID;
    out Obj): Boolean;
 end;//Mk2InterfaceProvider
*)

(*
 Mk2Int64Holder = PureMixIn
   function Get_Int64A(aTagID: Integer): Int64;
   procedure Set_Int64A(aTagID: Integer; aValue: Int64);
   procedure Set_Int64W(aTagID: Integer; const aContext: Ik2Op; aValue: Int64);
   property Int64A[aTagID: Integer]: Int64
     read Get_Int64A
     write Set_Int64A;
   property Int64W[aTagID: Integer; const aContext: Ik2Op]: Int64
     write Set_Int64W;
 end;//Mk2Int64Holder
*)

implementation

end.