{$IfNDef k2DoQT_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "K2"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/K2/NOT_FINISHED_k2DoQT.imp.pas"
// �����: 16.12.2010 19:33
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi::K2::k2CoreMixins::k2DoQT
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define k2DoQT_imp}
 _k2DoQT_ = {mixin} class(_k2DoQT_Parent_)
 protected
 // protected methods
   function DoQT(const IID: TGUID;
    out Obj;
    const aProcessor: Ik2Processor = nil): Boolean; virtual; abstract;
     {* ���������� ���������� ��� ������ � �����, � �������� �������� �������� ���������� }
 end;//_k2DoQT_

{$Else k2DoQT_imp}


{$EndIf k2DoQT_imp}
