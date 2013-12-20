unit l3ForkStream;

{ Библиотека "L3 (Low Level Library)" }
{ Автор: Люлин А.В. ©                 }
{ Модуль: l3ForkStream -              }
{ Начат: 31.01.2002 16:07 }
{ $Id: l3ForkStream.pas,v 1.9 2009/03/18 14:59:56 lulin Exp $ }

// $Log: l3ForkStream.pas,v $
// Revision 1.9  2009/03/18 14:59:56  lulin
// - делаем возможность отката, если во время записи произошло исключение.
//
// Revision 1.8  2007/08/21 11:39:52  lulin
// - избавляемся от предупреждений компилятора.
//
// Revision 1.7  2005/05/24 10:16:18  lulin
// - cleanup.
//
// Revision 1.6  2004/11/03 17:40:03  voba
// - add {$If Declared(Gm0EXCLibDefSrv)}
//
// Revision 1.5  2004/09/23 12:40:23  lulin
// - подавил exception'ы - выводим их в лог.
//
// Revision 1.4  2004/08/27 14:50:36  law
// - new define: m3UseForkStreamToOldBase.
//
// Revision 1.3  2002/12/24 13:02:03  law
// - change: объединил Int64_Seek c основной веткой.
//
// Revision 1.2.4.1  2002/12/23 15:51:28  law
// - bug fix: не работали с хранилищем > 2Гб.
//
// Revision 1.2  2002/01/31 14:54:08  voba
// - new behavior: защищаем работу со вторым потоком.
//
// Revision 1.1  2002/01/31 13:25:35  law
// - new unit: l3ForkStream.
//

{$I l3Define.inc }

interface

uses
  Classes,

  l3Interfaces,
  l3Types,
  l3Base,
  l3BaseStream
  ;

type
  Tl3ForkStream = class(Tl3Stream, Il3Rollback)
    private
    // internal fields
      f_Stream1 : TStream;
      f_Stream2 : TStream;
    protected
    // internal fields
      procedure Release;
        override;
        {-}
    public
    // public methods
      constructor Make(aStream1, aStream2: TStream);
        {-}
      constructor MakeI(const aStream1, aStream2: IStream);
        {-}
   procedure Rollback;
     {* Откатить данные }
      function Read(var Buffer; Count: Longint): Longint;
        override;
        {-}
      function Write(const Buffer; Count: Longint): Longint;
        override;
        {-}
      function Seek(const Offset: Int64; Origin: TSeekOrigin): Int64;
        override;
        {-}
    public
    // public properties
      property Stream1: TStream
        read f_Stream1;
        {-}
      property Stream2 : TStream
        read f_Stream2;
        {-}
  end;//Tl3ForkStream

implementation

uses
  SysUtils,

  l3Stream
  ;

// start class Tl3ForkStream

constructor Tl3ForkStream.Make(aStream1, aStream2: TStream);
  {-}
begin
 Create;
 l3Set(f_Stream1, aStream1);
 l3Set(f_Stream2, aStream2);
end;

constructor Tl3ForkStream.MakeI(const aStream1, aStream2: IStream);
  {-}
var
 l_Stream1 : TStream;
 l_Stream2 : TStream;
begin
 l3IStream2Stream(aStream1, l_Stream1);
 try
  l3IStream2Stream(aStream2, l_Stream2);
  try
   Make(l_Stream1, l_Stream2);
  finally
   l3Free(l_Stream2);
  end;//try..finally
 finally
  l3Free(l_Stream1);
 end;//try..finally
end;

procedure Tl3ForkStream.Rollback;
  {* Откатить данные }
var
 l_RB : Il3Rollback;  
begin
 if Supports(f_Stream1, Il3Rollback, l_RB) then
  try
   l_RB.Rollback;
  finally
   l_RB := nil;
  end;//try..finally
 if Supports(f_Stream2, Il3Rollback, l_RB) then
  try
   l_RB.Rollback;
  finally
   l_RB := nil;
  end;//try..finally
end;

procedure Tl3ForkStream.Release;
  //override;
  {-}
begin
 l3Free(f_Stream1);
 l3Free(f_Stream2);
 inherited;
end;

function Tl3ForkStream.Read(var Buffer; Count: Longint): Longint;
  //override;
  {-}
begin
 Result := f_Stream1.Read(Buffer, Count);
end;

function Tl3ForkStream.Write(const Buffer; Count: Longint): Longint;
  //override;
  {-}
begin
 Result := 0;
 try
  Result := f_Stream1.Write(Buffer, Count);
 except
  on E: Exception do
   l3System.Exception2Log(E);
 end;//try..except
 try
  f_Stream2.Write(Buffer, Result);
 except
  on E: Exception do
   l3System.Exception2Log(E);
 end;//try..except
end;

function Tl3ForkStream.Seek(const Offset: Int64; Origin: TSeekOrigin): Int64;
  //override;
  {-}
begin
 Result := 0;
 try
  Result := f_Stream1.Seek(Offset, Origin);
 except
  on E: Exception do
   l3System.Exception2Log(E);
 end;//try..except
 try
  f_Stream2.Seek(Offset, Origin);
 except
  on E: Exception do
   l3System.Exception2Log(E);
 end;//try..except
end;

end.

