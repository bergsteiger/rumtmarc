{$IfNDef evCacheableStyleTableListner_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Everest/evCacheableStyleTableListner.imp.pas"
// �����: 29.06.2009 10:14
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi::Everest::StyleTable::evCacheableStyleTableListner
//
// ��������� �� ��������� ������� ������, ������� ������ �����-�� ��������� ��������� �� � ����� �
// �� �����, ����� ��������� � ����
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define evCacheableStyleTableListner_imp}
{$IfDef DesignTimeLibrary}
 _evCacheableStyleTableListner_ = _evCacheableStyleTableListner_Parent_;
{$EndIf DesignTimeLibrary}

{$If not defined(DesignTimeLibrary)}
 _evStyleTableListnerPrim_Parent_ = _evCacheableStyleTableListner_Parent_;
 {$Include ..\Everest\evStyleTableListnerPrim.imp.pas}
 _evCacheableStyleTableListner_ = {mixin} class(_evStyleTableListnerPrim_)
  {* ��������� �� ��������� ������� ������, ������� ������ �����-�� ��������� ��������� �� � ����� � �� �����, ����� ��������� � ���� }
 protected
 // protected methods
   procedure Release; override;
 end;//_evCacheableStyleTableListner_
{$IfEnd} //not DesignTimeLibrary

{$Else evCacheableStyleTableListner_imp}

{$If not defined(DesignTimeLibrary)}

{$Include ..\Everest\evStyleTableListnerPrim.imp.pas}

// start class _evCacheableStyleTableListner_

procedure _evCacheableStyleTableListner_.Release;
//#UC START# *4A485CBD0102_4A485B9801E0_var*
//#UC END# *4A485CBD0102_4A485B9801E0_var*
begin
//#UC START# *4A485CBD0102_4A485B9801E0_impl*
 evDelStyleTableSpy(Self);
 inherited;
//#UC END# *4A485CBD0102_4A485B9801E0_impl*
end;//_evCacheableStyleTableListner_.Release

{$IfEnd} //not DesignTimeLibrary

{$EndIf evCacheableStyleTableListner_imp}
