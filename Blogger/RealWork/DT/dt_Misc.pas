Unit DT_Misc;

{ $Id: dt_Misc.pas,v 1.4 2008/11/17 07:42:20 voba Exp $ }

// $Log: dt_Misc.pas,v $
// Revision 1.4  2008/11/17 07:42:20  voba
// - add function MakeJoinFieldArray
//
// Revision 1.3  2007/08/14 14:30:09  lulin
// - ������������ ����������� ������ ������.
//
// Revision 1.2  2007/03/09 07:36:34  voba
// - _move type TFieldArray  to Dt_Types
//
// Revision 1.1  2007/02/16 16:15:42  voba
// no message
//

{$I DtDefine.inc}

interface
uses
 DT_Types,
 dt_Sab;

 function MakeFieldArray(const aFieldArr : array of Smallint) : TFieldArray;
 function MakeJoinFieldArray(const aFieldArr : array of TJoinFieldRec) : TJoinFieldarray;

 function  htStub2(Action: Pointer) : Pointer; register;
 function  htStub3(Action: Pointer) : Pointer; register;
 procedure htStubFree(var Stub: Pointer); register;

 function dtCheckErr(ID : LongInt) : LongInt;
  {* - �������� ���������� HT, ��� ����� HT_ERR_KEY_DOUBLET, ������������ � ��������� �������� �������}

implementation
uses
 HT_Const,
 DT_Err,
 l3Base;

function dtCheckErr(ID : LongInt) : LongInt;
begin
 // ����� HT_ERR_KEY_DOUBLET � ��������� �������� �������
 if (ID = HT_ERR_KEY_DOUBLET) then ID := 0;
 Result := Ht(ID);
end;

function  htStub2(Action: Pointer) : Pointer;
asm
 {$IFDEF HT_MODE64}
  jmp  l3StdLocalStub2
 {$ELSE}
  jmp  l3PasLocalStub2
 {$ENDIF};
end;

function  htStub3(Action: Pointer) : Pointer;
asm
 {$IFDEF HT_MODE64}
  jmp  l3StdLocalStub3
 {$ELSE}
  jmp  l3PasLocalStub3
 {$ENDIF};
end;

procedure htStubFree(var Stub: Pointer);
asm
 jmp  l3FreeLocalStub
end;

function MakeFieldArray(const aFieldArr : array of Smallint) : TFieldArray;
begin
 Result := l3SmallIntArray(aFieldArr);
end;

function MakeJoinFieldArray(const aFieldArr : array of TJoinFieldRec) : TJoinFieldarray;
var
 l_Len   : Integer;
 l_Index : Integer;
begin
 l_Len := Length(aFieldArr);
 SetLength(Result, l_Len);
 for l_Index := 0 to Pred(l_Len) do
  Result[l_Index] := aFieldArr[l_Index];
end;
end.
