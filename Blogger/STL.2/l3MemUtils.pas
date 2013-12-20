unit l3MemUtils;

//
// Ѕиблиотека "L3$Basic Concepts"
// Generated from UML model, root element: SimpleClass::Class Shared Delphi “ребовани€ к низкоуровневым библиотекам::L3$Basic Concepts::MemoryUtils::Tl3MemUtils
//

interface

uses
  Refcounted
  ;

type
 Rl3MemUtils = class of Tl3MemUtils;

 Tl3MemUtils = class(TRefcounted)
 protected
 // protected methods
   class procedure CheckMaxes; virtual;
     {* —игнатура метода CheckMaxes }
   class procedure StatMemAlloc(aSize: Integer;
     aL3: Boolean); virtual;
 public
 // public methods
   class procedure ReallocLocalMem(var P;
     NewSize: Cardinal);
     {* перераспределить кусок локальной пам€ти }
   class procedure FreeLocalMem(var P);
     {* освободить кусок локальной пам€ти }
 end;//Tl3MemUtils

var
   l3MemU : Rl3MemUtils = Tl3MemUtils;
var
   f_LocalMemUsed : Integer;

implementation

uses
  l3MemorySizeUtils
  ;

// start class Tl3MemUtils

class procedure Tl3MemUtils.ReallocLocalMem(var P;
  NewSize: Cardinal);
//#UC START# *51DD561502D9_51DD554C0205_var*
{$IfDef XE}
type
 PLong = ^Integer;
var
 l_Old : AnsiChar;
 l_OldSize : Integer;
 l_OldBorder : Integer;
{$EndIf XE}
//#UC END# *51DD561502D9_51DD554C0205_var*
begin
//#UC START# *51DD561502D9_51DD554C0205_impl*
 Dec(f_LocalMemUsed, l3MemorySize(Pointer(P)));
 {$IfDef l3DirectUseSystemMemManager}
 if (Pointer(P) = nil) then
 begin
  l3MemU.StatMemAlloc(NewSize, true);
  Pointer(P) := SysGetMem(NewSize)
 end//Pointer(P) = nil
 else
 if (NewSize > 0) then
 begin
  l3MemU.StatMemAlloc(NewSize, true);
  Pointer(P) := SysReallocMem(Pointer(P), NewSize);
 end//NewSize > 0
 else
 begin
  SysFreeMem(Pointer(P));
  Pointer(P) := nil;
 end;//NewSize > 0
 {$Else  l3DirectUseSystemMemManager}
  System.ReallocMem(Pointer(P), NewSize);
 {$EndIf l3DirectUseSystemMemManager}
 Inc(f_LocalMemUsed, l3MemorySize(Pointer(P)));
 l3MemU.CheckMaxes;
//#UC END# *51DD561502D9_51DD554C0205_impl*
end;//Tl3MemUtils.ReallocLocalMem

class procedure Tl3MemUtils.FreeLocalMem(var P);
//#UC START# *51DD62110253_51DD554C0205_var*
//#UC END# *51DD62110253_51DD554C0205_var*
begin
//#UC START# *51DD62110253_51DD554C0205_impl*
 if (Pointer(P) <> nil) then
 begin
  Dec(f_LocalMemUsed, l3MemorySize(Pointer(P)));
  {$IfDef l3DirectUseSystemMemManager}
  SysFreeMem(Pointer(P));
  {$Else  l3DirectUseSystemMemManager}
  System.FreeMem(Pointer(P));
  {$EndIf l3DirectUseSystemMemManager}
 end;//Pointer(P) <> nil
 Pointer(P) := nil;
//#UC END# *51DD62110253_51DD554C0205_impl*
end;//Tl3MemUtils.FreeLocalMem

class procedure Tl3MemUtils.CheckMaxes;
//#UC START# *51DD686A03A3_51DD554C0205_var*
//#UC END# *51DD686A03A3_51DD554C0205_var*
begin
//#UC START# *51DD686A03A3_51DD554C0205_impl*
 // - ничего пока не делаем
//#UC END# *51DD686A03A3_51DD554C0205_impl*
end;//Tl3MemUtils.CheckMaxes

class procedure Tl3MemUtils.StatMemAlloc(aSize: Integer;
  aL3: Boolean);
//#UC START# *51DD6DCE00DF_51DD554C0205_var*
//#UC END# *51DD6DCE00DF_51DD554C0205_var*
begin
//#UC START# *51DD6DCE00DF_51DD554C0205_impl*
 // - ничего пока не делаем
//#UC END# *51DD6DCE00DF_51DD554C0205_impl*
end;//Tl3MemUtils.StatMemAlloc

end.