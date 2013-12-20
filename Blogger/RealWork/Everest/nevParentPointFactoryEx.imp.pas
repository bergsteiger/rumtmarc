{$IfNDef nevParentPointFactoryEx_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// ������: "w:/common/components/gui/Garant/Everest/nevParentPointFactoryEx.imp.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi::Everest::Cursors::nevParentPointFactoryEx
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define nevParentPointFactoryEx_imp}
 _nevParentPointFactoryEx_ = {mixin} class(_nevParentPointFactoryEx_Parent_)
 public
 // realized methods
   function PointToParentByLevel(aLevel: Integer = 0): InevBasePoint;
   function PointToTypedParent(aParentType: Integer): InevBasePoint;
 end;//_nevParentPointFactoryEx_

{$Else nevParentPointFactoryEx_imp}

// start class _nevParentPointFactoryEx_

function _nevParentPointFactoryEx_.PointToParentByLevel(aLevel: Integer = 0): InevBasePoint;
//#UC START# *49D243600057_49D25A310104_var*
var
 l_Tag : InevObject;
//#UC END# *49D243600057_49D25A310104_var*
begin
//#UC START# *49D243600057_49D25A310104_impl*
 Result := _Instance_R_(Self);
 l_Tag := _Instance_R_(Self).ParaX.OwnerObj;
 while l_Tag.IsValid AND (aLevel >= 0) do
 begin
  Result := Result.PointToParent(l_Tag);
  l_Tag := l_Tag.OwnerObj;
  Dec(aLevel);
 end;//while l_Tag.IsValid
//#UC END# *49D243600057_49D25A310104_impl*
end;//_nevParentPointFactoryEx_.PointToParentByLevel

function _nevParentPointFactoryEx_.PointToTypedParent(aParentType: Integer): InevBasePoint;
//#UC START# *49D2437302B2_49D25A310104_var*
var
 l_Tag : InevObject;
//#UC END# *49D2437302B2_49D25A310104_var*
begin
//#UC START# *49D2437302B2_49D25A310104_impl*
 Result := nil;
 l_Tag := _Instance_R_(Self).ParaX;
 while l_Tag.IsValid do
 begin
  if l_Tag.InheritsFrom(aParentType) then
  begin
   Result := PointToParent(l_Tag);
   break;
  end;//l_Parent.InheritsFrom(aParentType)
  l_Tag := l_Tag.OwnerObj;
 end;//while l_Tag.IsValid
//#UC END# *49D2437302B2_49D25A310104_impl*
end;//_nevParentPointFactoryEx_.PointToTypedParent

{$EndIf nevParentPointFactoryEx_imp}
