{$IfNDef nevPrimPoint_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Everest/nevPrimPoint.imp.pas"
// �����: 31.03.2009 21:03
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi::Everest::Cursors::nevPrimPoint
//
// ����������� �����
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define nevPrimPoint_imp}
 {$Include ..\Everest\nevBasePoint.imp.pas}
 _nevParentPointFactoryExVOID_Parent_ = _nevBasePoint_;
 {$Include ..\Everest\nevParentPointFactoryExVOID.imp.pas}
 _nevPrimPoint_ = {mixin} class(_nevParentPointFactoryExVOID_)
  {* ����������� ����� }
 end;//_nevPrimPoint_

{$Else nevPrimPoint_imp}


{$Include ..\Everest\nevBasePoint.imp.pas}

{$Include ..\Everest\nevParentPointFactoryExVOID.imp.pas}


{$EndIf nevPrimPoint_imp}
