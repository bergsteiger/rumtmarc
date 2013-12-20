unit l3Thread;

{ Библиотека "L3 (Low Level Library)" }
{ Автор: Люлин А.В. ©                 }
{ Модуль: l3Thread -                  }
{ Начат: 15.05.2002 16:56             }
{ $Id: l3Thread.pas,v 1.2 2002/05/23 14:48:20 law Exp $ }

// $Log: l3Thread.pas,v $
// Revision 1.2  2002/05/23 14:48:20  law
// - new class: Tl3NonAbsLoopThread.
//
// Revision 1.1  2002/05/15 13:47:52  law
// - new unit: l3Thread.
//

{$I l3Define.inc }

interface

uses
  SyncObjs,
  
  l3Base
  ;

type
  Tl3SyncLoopThread = class(Tl3NonAbsLoopThread)
    private
    // internal fields
      f_Sync : TCriticalSection;
    protected
    // internal methods
      procedure Release;
        override;
        {-}  
    public
    // public mtehods
      constructor Create(aToolThreadClass: Rl3ToolThread = nil);
        override;
        {-}
      procedure Enter;
        {-}
      procedure Leave;
        {-}
  end;//Tl3SyncLoopThread

implementation

// start class Tl3SyncLoopThread

constructor Tl3SyncLoopThread.Create(aToolThreadClass: Rl3ToolThread = nil);
  //override;
  {-}
begin
 f_Sync := TCriticalSection.Create;
 inherited Create(aToolThreadClass);
end;

procedure Tl3SyncLoopThread.Release;
  //override;
  {-}
begin
 inherited;
 l3Free(f_Sync);
end;

procedure Tl3SyncLoopThread.Enter;
  {-}
begin
 f_Sync.Enter;
end;

procedure Tl3SyncLoopThread.Leave;
  {-}
begin
 f_Sync.Leave;
end;

end.

