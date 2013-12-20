{$IfNDef HyperlinkProcessorWithOwnLocalLink_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/HyperlinkProcessorWithOwnLocalLink.imp.pas"
// �����: 18.08.2009 19:04
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Core::Base Operations::View::Navigation::HyperlinkProcessorWithOwnLocalLink
//
// ���������� ������ � ����������� ���������� ��������� ������ (������ ������)
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define HyperlinkProcessorWithOwnLocalLink_imp}
{$If not defined(Admin) AND not defined(Monitorings)}
 _HyperlinkProcessor_Parent_ = _HyperlinkProcessorWithOwnLocalLink_Parent_;
 {$Include ..\View\HyperlinkProcessor.imp.pas}
 _HyperlinkProcessorWithOwnLocalLink_ = {abstract form} class(_HyperlinkProcessor_)
  {* ���������� ������ � ����������� ���������� ��������� ������ (������ ������) }
 protected
 // realized methods
   function DoProcessExternalOperation(const anOperation: IExternalOperation): Boolean; override;
     {* ���������� ������� �������� }
   procedure OpenRedactionLocalLink(const aDocument: IDocument;
    aSub: Cardinal); override;
     {* ��������� ��������� ������ �� ������ �������� }
 end;//_HyperlinkProcessorWithOwnLocalLink_
{$IfEnd} //not Admin AND not Monitorings

{$Else HyperlinkProcessorWithOwnLocalLink_imp}

{$If not defined(Admin) AND not defined(Monitorings)}


{$Include ..\View\HyperlinkProcessor.imp.pas}

// start class _HyperlinkProcessorWithOwnLocalLink_

function _HyperlinkProcessorWithOwnLocalLink_.DoProcessExternalOperation(const anOperation: IExternalOperation): Boolean;
//#UC START# *4A815E860391_4A8AC2DB0210_var*
//#UC END# *4A815E860391_4A8AC2DB0210_var*
begin
//#UC START# *4A815E860391_4A8AC2DB0210_impl*
 Result := false;
//#UC END# *4A815E860391_4A8AC2DB0210_impl*
end;//_HyperlinkProcessorWithOwnLocalLink_.DoProcessExternalOperation

procedure _HyperlinkProcessorWithOwnLocalLink_.OpenRedactionLocalLink(const aDocument: IDocument;
  aSub: Cardinal);
//#UC START# *4A81650B014A_4A8AC2DB0210_var*
//#UC END# *4A81650B014A_4A8AC2DB0210_var*
begin
//#UC START# *4A81650B014A_4A8AC2DB0210_impl*
 TdmStdRes.OpenDocument(MakeLinkDocInfo(aDocument, dptSub, aSub), nil);
//#UC END# *4A81650B014A_4A8AC2DB0210_impl*
end;//_HyperlinkProcessorWithOwnLocalLink_.OpenRedactionLocalLink

{$IfEnd} //not Admin AND not Monitorings

{$EndIf HyperlinkProcessorWithOwnLocalLink_imp}
