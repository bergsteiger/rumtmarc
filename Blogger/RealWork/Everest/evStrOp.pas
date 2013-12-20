unit evStrOp;

{ Библиотека "Эверест"  }
{ Автор: Люлин А.В.     }
{ Модуль: evStrOp - }
{ Начат: 15.07.98 11:49 }
{ $Id: evStrOp.pas,v 1.8 2007/12/04 12:47:05 lulin Exp $ }

// $Log: evStrOp.pas,v $
// Revision 1.8  2007/12/04 12:47:05  lulin
// - перекладываем ветку в HEAD.
//
// Revision 1.7.20.1  2007/02/13 17:32:55  lulin
// - избавляемся от использования стандартной функции поиска подстроки в строке.
//
// Revision 1.7  2004/09/21 12:55:41  lulin
// - Release заменил на Cleanup.
//
// Revision 1.6  2001/12/27 15:03:29  law
// - new constructors: добавлены два конструктора Tl3String.Make.
//
// Revision 1.5  2000/12/15 15:10:38  law
// - вставлены директивы Log.
//

{$I evDefine.inc }

interface

uses
  l3Base,
  l3Types
  ;

type
  OevString = class(Tl3Op)
    private
    {internal fields}
      f_S : Tl3String;
    protected
    {internal methods}
      procedure Cleanup;
        override;
        {-}
  end;{OevString}

  OevInsertSt = class(OevString)
    private
    {internal fields}
      f_InsS : Tl3String;
      f_Pos  : Long;
    protected
    {internal methods}
      procedure DoUndo(Container: Tl3OperationContainer);
        override;
        {-отменить операцию}
      procedure DoRedo(Container: Tl3OperationContainer);
        override;
        {-повторить операцию}
      procedure Cleanup;
        override;
        {-}
    public
    {public methods}
      procedure SetParam(S: Tl3String; St: PChar; Len: Long; aPos: Long);
        {-}
  end;{OevInsertSt}

  TevStringContext = class(Tl3OperationContainer)
    public
    {public methods}
      procedure InsertSt(S: Tl3String; St: PChar; Len: Long; aPos: Long);
        {-}
  end;{TevStringContext}

implementation

{ start class OevString }

procedure OevString.Cleanup;
  {override;}
  {-}
begin
 l3Free(f_S);
 inherited;
end;

{ start class OevInsertSt }

procedure OevInsertSt.Cleanup;
  {override;}
  {-}
begin
 l3Free(f_InsS);
 inherited;
end;

procedure OevInsertSt.SetParam(S: Tl3String; St: PChar; Len: Long; aPos: Long);
  {-}
begin
 f_S := S.Use;
 f_InsS := Tl3String.Make(St, Len);
 f_Pos := aPos;
end;

procedure OevInsertSt.DoUndo(Container: Tl3OperationContainer);
  {override;}
  {-отменить операцию}
begin
 f_S.Delete(f_Pos, f_InsS.Len);
end;

procedure OevInsertSt.DoRedo(Container: Tl3OperationContainer);
  {override;}
  {-повторить операцию}
begin
 f_S.Insert(f_InsS, f_Pos);
end;

{ start class TevStringContext }

procedure TevStringContext.InsertSt(S: Tl3String; St: PChar; Len: Long; aPos: Long);
  {-}
var
 O : OevInsertSt;
begin
 if (Self <> nil) AND SaveUndo AND (S <> nil) AND (St <> nil) AND (Len > 0) then begin
  O := OevInsertSt.Create(nil);
  try
   O.SetParam(S, St, Len, aPos);
   Put(Long(O));
  finally
   l3Free(O);
  end;{try..finally}
 end;{Self <> nil..}
end;

end.

