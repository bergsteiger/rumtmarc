{$IfNDef RefCountedPrim_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "L3$Basic Concepts"
// ������: "w:/common/components/rtl/Garant/L3/RefCountedPrim.imp.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi ���������� � �������������� �����������::L3$Basic Concepts::Ref Counting::RefCountedPrim
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define RefCountedPrim_imp}
 _RefCountedPrim_ = {mixin} class(_RefCountedPrim_Parent_)
 private
 // private fields
   f_RefCount : Integer;
    {* ���� ��� �������� RefCount}
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
     {* ������� ������� ����� �������. }
 public
 // public methods
   function Use: Pointer;
     {* ��������� ������� ������ �� 1 � ������� ��������� �� ����. }
   function SetRefTo(var F): Boolean;
 public
 // public properties
   property RefCount: Integer
     read f_RefCount;
 end;//_RefCountedPrim_

{$Else RefCountedPrim_imp}

// start class _RefCountedPrim_

procedure _RefCountedPrim_.Cleanup;
//#UC START# *479731C50290_51612ED700B4_var*
//#UC END# *479731C50290_51612ED700B4_var*
begin
//#UC START# *479731C50290_51612ED700B4_impl*
//#UC END# *479731C50290_51612ED700B4_impl*
end;//_RefCountedPrim_.Cleanup

function _RefCountedPrim_.Use: Pointer;
//#UC START# *479152500168_51612ED700B4_var*
//#UC END# *479152500168_51612ED700B4_var*
begin
//#UC START# *479152500168_51612ED700B4_impl*
 if (Self <> nil) then
  InterlockedIncrement(f_RefCount);
 Result := Self;
//#UC END# *479152500168_51612ED700B4_impl*
end;//_RefCountedPrim_.Use

function _RefCountedPrim_.SetRefTo(var F): Boolean;
//#UC START# *5161325E01CB_51612ED700B4_var*
//#UC END# *5161325E01CB_51612ED700B4_var*
begin
//#UC START# *5161325E01CB_51612ED700B4_impl*
 if (Pointer(F) = Self) then
  Result := false
 else
 begin
  Result := true;
  TObject(F).Free;
  Pointer(F) := Self.Use;
 end;//Pointer(F) = V
//#UC END# *5161325E01CB_51612ED700B4_impl*
end;//_RefCountedPrim_.SetRefTo

destructor _RefCountedPrim_.Destroy;
//#UC START# *48077504027E_51612ED700B4_var*
//#UC END# *48077504027E_51612ED700B4_var*
begin
//#UC START# *48077504027E_51612ED700B4_impl*
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
//#UC END# *48077504027E_51612ED700B4_impl*
end;//_RefCountedPrim_.Destroy

class function _RefCountedPrim_.NewInstance: TObject;
//#UC START# *516131510341_51612ED700B4_var*
//#UC END# *516131510341_51612ED700B4_var*
begin
//#UC START# *516131510341_51612ED700B4_impl*
 Result := inherited NewInstance;
 _RefCounted_(Result).Use;
//#UC END# *516131510341_51612ED700B4_impl*
end;//_RefCountedPrim_.NewInstance

procedure _RefCountedPrim_.FreeInstance;
//#UC START# *5161317A0219_51612ED700B4_var*
//#UC END# *5161317A0219_51612ED700B4_var*
begin
//#UC START# *5161317A0219_51612ED700B4_impl*
 if (f_RefCount = 0) then
  inherited FreeInstance;
//#UC END# *5161317A0219_51612ED700B4_impl*
end;//_RefCountedPrim_.FreeInstance

{$EndIf RefCountedPrim_imp}
