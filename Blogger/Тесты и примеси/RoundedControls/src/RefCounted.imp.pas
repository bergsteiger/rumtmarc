{$IfNDef RefCounted_imp}

{$Define RefCounted_imp}
 _RefCountedPrim_Parent_ = _RefCounted_Parent_;
 {$Include RefCountedPrim.imp.pas}
 _RefCounted_ = {mixin} class(_RefCountedPrim_)
  {* В этом классе собираем методы, которые запрещено перекрывать и вызывать напрямую }
 public
 // public methods
   destructor Destroy;
     {* Это чтобы не было соблазна перекрывать destroy. }
   class function NewInstance: TObject;
   procedure FreeInstance;
   procedure AfterConstruction;
   procedure BeforeDestruction;
 end;//_RefCounted_

{$Else RefCounted_imp}

{$Include RefCountedPrim.imp.pas}

// start class _RefCounted_

destructor _RefCounted_.Destroy;
begin
 assert(false, 'По идее мы попасть сюда не должны');
 inherited;
end;//_RefCounted_.Destroy

class function _RefCounted_.NewInstance: TObject;
begin
 Result := nil;
 assert(false);
end;//_RefCounted_.NewInstance

procedure _RefCounted_.FreeInstance;
begin
 assert(false);
end;//_RefCounted_.FreeInstance

procedure _RefCounted_.AfterConstruction;
begin
 assert(false);
end;//_RefCounted_.AfterConstruction

procedure _RefCounted_.BeforeDestruction;
begin
 assert(false);
end;//_RefCounted_.BeforeDestruction

{$EndIf RefCounted_imp}
