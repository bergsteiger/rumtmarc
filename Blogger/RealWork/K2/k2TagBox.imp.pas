{$IfNDef k2TagBox_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "K2"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/K2/k2TagBox.imp.pas"
// �����: 20.04.2005 19:29
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi::K2::k2CoreObjects::k2TagBox
//
// ���������� �����������, ����������� � ������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define k2TagBox_imp}
//#UC START# *48CF9748004Fci*
 {$Define _Box_}
//#UC END# *48CF9748004Fci*
 _k2Tag_Parent_ = _k2TagBox_Parent_;
 {$Include ..\K2\k2Tag.imp.pas}
 _k2TagBox_ = {mixin} class(_k2Tag_)
  {* ���������� �����������, ����������� � ������ }
 protected
 // realized methods
   {$If not defined(_Box_) AND not defined(k2TagIsAtomic)}
   function SetAtomPrim(const aProp: _PropIn_;
    var V: Tk2Values): Boolean; override;
   {$IfEnd} //not _Box_ AND not k2TagIsAtomic
//#UC START# *48CF9748004Fpubl*
//#UC END# *48CF9748004Fpubl*
 end;//_k2TagBox_

{$Else k2TagBox_imp}


{$Include ..\K2\k2Tag.imp.pas}

// start class _k2TagBox_

{$If not defined(_Box_) AND not defined(k2TagIsAtomic)}
function _k2TagBox_.SetAtomPrim(const aProp: _PropIn_;
  var V: Tk2Values): Boolean;
//#UC START# *49A545580241_48CF9748004F_var*
//#UC END# *49A545580241_48CF9748004F_var*
begin
//#UC START# *49A545580241_48CF9748004F_impl*
 !!! Needs to be implemented !!!
//#UC END# *49A545580241_48CF9748004F_impl*
end;//_k2TagBox_.SetAtomPrim
{$IfEnd} //not _Box_ AND not k2TagIsAtomic

//#UC START# *48CF9748004Fimpl*
//#UC END# *48CF9748004Fimpl*

{$EndIf k2TagBox_imp}
