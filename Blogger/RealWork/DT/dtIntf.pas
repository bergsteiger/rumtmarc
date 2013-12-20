unit dtIntf;

{ $Id: dtIntf.pas,v 1.5 2013/04/19 13:07:39 lulin Exp $ }

// $Log: dtIntf.pas,v $
// Revision 1.5  2013/04/19 13:07:39  lulin
// - портируем.
//
// Revision 1.4  2012/07/16 11:17:53  voba
// no message
//
// Revision 1.3  2009/10/26 14:39:59  voba
// - add  procedure AddRec, UpdRec
//
// Revision 1.2  2009/09/11 08:32:32  voba
// - опубликовал некоторые функции
//
// Revision 1.1  2009/05/12 08:39:57  voba
// - заменил в ISab ссылки на таблицу на интерфейсы
//

interface
uses
 HT_Const,
 l3Interfaces,
 Dt_Types;

type

 ITblInfo = interface(Il3Base)
  ['{473BFC63-AECB-4A27-B61A-7A6C17C68BA1}']

  function  GetHandle: HT_Const.THANDLE;
  function  GetFldLength(aField : ThtField): Word;
  function  GetFldOffset(aField : ThtField): Word;
  function  CalcUniqKeyElemNum : ThtField;
  function  GetUniqKeyElemNum : ThtField;
  function  GetElement(aField: ThtField) : ThtElementInfo;
  function  GetElementClass(aField : ThtField): Byte;
  function  GetElementKeyKind(aField : ThtField): Byte;
  function  GetElementType(aField : ThtField): Byte;
  function  GetPureFldCnt : Word;
  function  GetFieldCount : Word;
  function  GetFullRecSize : Word;
  function  GetTblName : TTblNameStr;
  function  GetIsAnsi : Boolean;

  function  ElemNumByName(const anElemName : AnsiString): Integer;
  function  PhotoOfTable : Sab;
  function  IsTblHeld: Boolean;
  procedure CheckIsOpen;
  procedure CheckFieldNum(aField: Word);

  property  Handle : HT_Const.THANDLE read GetHandle;
  property  TblName : TTblNameStr read GetTblName;
  property  fldCount : Word read GetPureFldCnt;
  property  ElementsCount : Word read GetFieldCount;
  property  Element[aField : ThtField] : ThtElementInfo read GetElement;
  property  ElementClass[aField : ThtField] : Byte read GetElementClass;
  property  ElementType[aField : ThtField] : Byte read GetElementType;
  property  ElementKeyKind[aField : ThtField] : Byte read GetElementKeyKind;
  property  FldLength[aField : ThtField] : Word read GetFldLength;
  property  FldOffset[aField : ThtField] : Word read GetFldOffset;
  property  UniqKeyElemNum : ThtField read GetUniqKeyElemNum;
  property  RecSize : Word read GetFullRecSize;
  property  IsAnsi : Boolean read GetIsAnsi;
 end;


 IEditTbl = interface(Il3Base)
  ['{B3B5AFFC-233C-4E2F-85B1-5B8E6D99326A}']
  procedure AddRec(aRec: Pointer);
  procedure UpdRec(aAbsNum  : LongInt; aRec : Pointer);

  procedure ModifyRecs(aRecs : Sab; aField : ThtField; aValue : Pointer; aDupIgnore : Boolean = False); overload;
  procedure ModifyRecs(aRecs : Sab; aModifyProc : Pointer; aDupIgnore : Boolean = False; aNeedLock : boolean = True); overload;
 end;
implementation
end.
