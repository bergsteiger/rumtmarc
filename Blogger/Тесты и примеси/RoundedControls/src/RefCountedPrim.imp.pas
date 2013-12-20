{$IfNDef RefCountedPrim_imp}

{$Define RefCountedPrim_imp}
 _RefCountedPrim_ = {mixin} class(_RefCountedPrim_Parent_)
 private
 // private fields
   f_RefCount : Integer;
    {* Поле для свойства RefCount}
 protected
 // overridden protected methods
   procedure FreeInstance; override;
 public
 // overridden public methods
   destructor Destroy; override;
   class function NewInstance: TObject; override;
 protected
 // protected methods
   procedure Cleanup; virtual;
     {* Функция очистки полей объекта. }
 public
 // public methods
   function Use: Pointer;
     {* увеличить счетчик ссылок на 1 и вернуть указатель на себя. }
   function SetRefTo(var F): Boolean;
 public
 // public properties
   property RefCount: Integer
     read f_RefCount;
 end;//_RefCountedPrim_

{$Else RefCountedPrim_imp}

// start class _RefCountedPrim_

procedure _RefCountedPrim_.Cleanup;
begin
end;//_RefCountedPrim_.Cleanup

function _RefCountedPrim_.Use: Pointer;
begin
 if (Self <> nil) then
  InterlockedIncrement(f_RefCount);
 Result := Self;
end;//_RefCountedPrim_.Use

function _RefCountedPrim_.SetRefTo(var F): Boolean;
begin
 if (Pointer(F) = Self) then
  Result := false
 else
 begin
  Result := true;
  TObject(F).Free;
  Pointer(F) := Self.Use;
 end;//Pointer(F) = V
end;//_RefCountedPrim_.SetRefTo

destructor _RefCountedPrim_.Destroy;
begin
  if (InterlockedDecrement(f_RefCount) = 0) then
  begin
   Inc(f_RefCount);
   try
    try
     Cleanup;
    finally
     inherited Destroy;
    end;//try..finally
   finally
    Dec(f_RefCount);
   end;{try..finally}
  end;//InterlockedDecrement(f_RefCount) = 0
end;//_RefCountedPrim_.Destroy

class function _RefCountedPrim_.NewInstance: TObject;
begin
 Result := inherited NewInstance;
 _RefCounted_(Result).Use;
end;//_RefCountedPrim_.NewInstance

procedure _RefCountedPrim_.FreeInstance;
begin
 if (f_RefCount = 0) then
  inherited FreeInstance;
end;//_RefCountedPrim_.FreeInstance

{$EndIf RefCountedPrim_imp}
