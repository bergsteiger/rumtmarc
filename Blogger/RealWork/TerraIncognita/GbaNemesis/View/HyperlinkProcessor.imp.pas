{$IfNDef HyperlinkProcessor_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/HyperlinkProcessor.imp.pas"
// �����: 11.08.2009 15:56
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Core::Base Operations::View::Navigation::HyperlinkProcessor
//
// ���������� �����������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define HyperlinkProcessor_imp}
{$If not defined(Admin) AND not defined(Monitorings)}
 _HyperlinkProcessor_ = {abstract form} class(_HyperlinkProcessor_Parent_, IbsHyperLinkProcessorHelper)
  {* ���������� ����������� }
 protected
 // property methods
   function pm_GetHyperlinkText: TevCustomEditorWindow; virtual; abstract;
 protected
 // realized methods
   function MakeContainer: IvcmContainer;
     {* ������� ��������� �� ������� ����� �������� ������ �������� }
   function MakeNewMainWindow: IvcmContainer;
     {* ������� ����� ������� ���� � ������� ��������� ��� ���� }
   function ProcessExternalOperation(const anOperation: IExternalOperation): Boolean;
   procedure CheckLinkInfo(const aLink: IevHyperlink);
   function MakeLinkDocInfo(const aDocument: IDocument;
    aPointType: TDocumentPositionType;
    aSub: Cardinal): IdeDocInfo;
   function ProcessLocalLink(const aDocument: IDocument;
    aPointType: TDocumentPositionType;
    aSub: Cardinal): Boolean;
 protected
 // overridden protected methods
   {$If not defined(NoVCM)}
   procedure InitControls; override;
     {* ��������� ������������� ���������. ��� ���������� � �������� }
   {$IfEnd} //not NoVCM
 protected
 // protected methods
   function JumpTo(Sender: TObject;
     anEffects: TafwJumpToEffects;
     const aMoniker: IevMoniker): Boolean;
     {* ���������� ����������� }
   procedure GetHotSpotInfo(Sender: TObject;
     const aHotSpot: IevHotSpot;
     const aKeys: TafwCursorState;
     var theInfo: TafwCursorInfo);
     {* ���������� ������� OnGetHotSpotInfo }
   procedure DoSetHyperlinkCallStatus(aValue: Boolean); virtual;
     {* ���������� ����, ������������ ������������� ������� �� ������ }
   function NeedJumpTo(const aHyperlink: IevHyperlink): Boolean; virtual;
   function DoProcessExternalOperation(const anOperation: IExternalOperation): Boolean; virtual; abstract;
     {* ���������� ������� �������� }
   function DoMakeLinkDocInfo(const aDocument: IDocument;
    aPointType: TDocumentPositionType;
    aSub: Cardinal): IdeDocInfo; virtual;
   function DoProcessLocalLink(const aDocument: IDocument;
    aPointType: TDocumentPositionType;
    aSub: Cardinal): Boolean; virtual;
     {* ��������� ��������� ������ }
   procedure GotoPoint(aPointID: Cardinal;
    aPointType: TDocumentPositionType = dptSub); virtual; abstract;
     {* ������� �� ����� � ��������� }
   procedure OpenRedactionLocalLink(const aDocument: IDocument;
    aSub: Cardinal); virtual; abstract;
     {* ��������� ��������� ������ �� ������ �������� }
   function HyperlinkDocument: IDocument; virtual; abstract;
     {* �������� �� �������� ���� ������ }
   procedure GetNonHyperlinkInfo(Sender: TObject;
    const aHotSpot: IevHotSpot;
    const aKeys: TafwCursorState;
    var theInfo: TafwCursorInfo); virtual;
     {* ���������� ���������� � ������� �� ��� ������� }
   function IsFloating: Boolean; virtual; abstract;
     {* ����� ��������� }
   procedure DoCheckLinkInfo(const aLink: IevHyperlink); virtual;
 protected
 // protected properties
   property HyperlinkText: TevCustomEditorWindow
     read pm_GetHyperlinkText;
     {* �����, ���������� ����������� }
 end;//_HyperlinkProcessor_
{$IfEnd} //not Admin AND not Monitorings

{$Else HyperlinkProcessor_imp}

{$If not defined(Admin) AND not defined(Monitorings)}

// start class _HyperlinkProcessor_

function _HyperlinkProcessor_.JumpTo(Sender: TObject;
  anEffects: TafwJumpToEffects;
  const aMoniker: IevMoniker): Boolean;
//#UC START# *4A8199EE00F2_4A815C200111_var*
//#UC END# *4A8199EE00F2_4A815C200111_var*
var
 l_Hyperlink : IevHyperlink;
begin
//#UC START# *4A8199EE00F2_4A815C200111_impl*
 Result := false;
 if Supports(aMoniker, IevHyperlink, l_HyperLink) then
  try
   HyperlinkText.SetFocus;

   // http://mdp.garant.ru/pages/viewpage.action?pageId=460286108
   if not NeedJumpTo(l_Hyperlink) then
   begin
    Result := True;
    Exit;
   end;

   // http://mdp.garant.ru/pages/viewpage.action?pageId=352452629
   DoSetHyperlinkCallStatus(True);

   Result := nsProcessHyperLink(l_HyperLink, (afw_jteRequestNewWindow in anEffects) or
                               afw.Settings.LoadBoolean(pi_Document_OpenInNewWindow,
                                          dv_Document_OpenInNewWindow), Self, Aggregate, HyperlinkDocument);
   if not Result then
    DoSetHyperlinkCallStatus(False);
  finally
   l_HyperLink := nil;
  end;//try..finally
//#UC END# *4A8199EE00F2_4A815C200111_impl*
end;//_HyperlinkProcessor_.JumpTo

procedure _HyperlinkProcessor_.GetHotSpotInfo(Sender: TObject;
  const aHotSpot: IevHotSpot;
  const aKeys: TafwCursorState;
  var theInfo: TafwCursorInfo);
//#UC START# *4A82C02701E4_4A815C200111_var*
//#UC END# *4A82C02701E4_4A815C200111_var*
var
 l_Hyperlink : IevHyperlink;
begin
//#UC START# *4A82C02701E4_4A815C200111_impl*
 if Supports(aHotSpot, IevHyperlink, l_Hyperlink) then
  nsCheckHyperLinkInfo(l_Hyperlink, Self, theInfo, HyperlinkDocument)
 else
  GetNonHyperlinkInfo(Sender, aHotSpot, aKeys, theInfo); 
//#UC END# *4A82C02701E4_4A815C200111_impl*
end;//_HyperlinkProcessor_.GetHotSpotInfo

procedure _HyperlinkProcessor_.DoSetHyperlinkCallStatus(aValue: Boolean);
//#UC START# *4F382E2D01C1_4A815C200111_var*
//#UC END# *4F382E2D01C1_4A815C200111_var*
begin
//#UC START# *4F382E2D01C1_4A815C200111_impl*
 // - ������, �� ������, ����� ������� �����������, ���� �����
//#UC END# *4F382E2D01C1_4A815C200111_impl*
end;//_HyperlinkProcessor_.DoSetHyperlinkCallStatus

function _HyperlinkProcessor_.NeedJumpTo(const aHyperlink: IevHyperlink): Boolean;
//#UC START# *520234BD015B_4A815C200111_var*
//#UC END# *520234BD015B_4A815C200111_var*
begin
//#UC START# *520234BD015B_4A815C200111_impl*
 Result := True;
//#UC END# *520234BD015B_4A815C200111_impl*
end;//_HyperlinkProcessor_.NeedJumpTo

function _HyperlinkProcessor_.DoMakeLinkDocInfo(const aDocument: IDocument;
  aPointType: TDocumentPositionType;
  aSub: Cardinal): IdeDocInfo;
//#UC START# *4A815FB3005D_4A815C200111_var*
//#UC END# *4A815FB3005D_4A815C200111_var*
begin
//#UC START# *4A815FB3005D_4A815C200111_impl*
 Result := TdeDocInfo.Make(aDocument, TbsDocPos_C(aPointType, aSub));
//#UC END# *4A815FB3005D_4A815C200111_impl*
end;//_HyperlinkProcessor_.DoMakeLinkDocInfo

function _HyperlinkProcessor_.DoProcessLocalLink(const aDocument: IDocument;
  aPointType: TDocumentPositionType;
  aSub: Cardinal): Boolean;
//#UC START# *4A8160720125_4A815C200111_var*
//#UC END# *4A8160720125_4A815C200111_var*
begin
//#UC START# *4A8160720125_4A815C200111_impl*
 Result := true;
 if aDocument.IsSameRedaction(HyperlinkDocument) then
 begin
  // ������� �� ��������� ������ � ������� �������� ���������
  Dispatcher.History.SaveState(Self.As_IvcmEntityForm, vcm_stPosition);
  GoToPoint(aSub);
 end//aDocument.IsSameRedaction(HyperlinkDocument) 
 else
  // ������� �� ��������� ������ �� ������ �������� ���������
  OpenRedactionLocalLink(aDocument, aSub);
//#UC END# *4A8160720125_4A815C200111_impl*
end;//_HyperlinkProcessor_.DoProcessLocalLink

procedure _HyperlinkProcessor_.GetNonHyperlinkInfo(Sender: TObject;
  const aHotSpot: IevHotSpot;
  const aKeys: TafwCursorState;
  var theInfo: TafwCursorInfo);
//#UC START# *4A890E81030B_4A815C200111_var*
//#UC END# *4A890E81030B_4A815C200111_var*
begin
//#UC START# *4A890E81030B_4A815C200111_impl*
 // - ������ �� ������
//#UC END# *4A890E81030B_4A815C200111_impl*
end;//_HyperlinkProcessor_.GetNonHyperlinkInfo

procedure _HyperlinkProcessor_.DoCheckLinkInfo(const aLink: IevHyperlink);
//#UC START# *4A8A9E2A004F_4A815C200111_var*
//#UC END# *4A8A9E2A004F_4A815C200111_var*
begin
//#UC START# *4A8A9E2A004F_4A815C200111_impl*
 // - ������ �� ������
//#UC END# *4A8A9E2A004F_4A815C200111_impl*
end;//_HyperlinkProcessor_.DoCheckLinkInfo

function _HyperlinkProcessor_.MakeContainer: IvcmContainer;
//#UC START# *4A7687C702C8_4A815C200111_var*
//#UC END# *4A7687C702C8_4A815C200111_var*
begin
//#UC START# *4A7687C702C8_4A815C200111_impl*
 if IsFloating then
  Result := vcmDispatcher.FormDispatcher.CurrentMainForm.AsContainer
 else
  Result := NativeMainForm;
//#UC END# *4A7687C702C8_4A815C200111_impl*
end;//_HyperlinkProcessor_.MakeContainer

function _HyperlinkProcessor_.MakeNewMainWindow: IvcmContainer;
//#UC START# *4A7687F0016D_4A815C200111_var*
//#UC END# *4A7687F0016D_4A815C200111_var*
begin
//#UC START# *4A7687F0016D_4A815C200111_impl*
 if IsFloating then
  Result := nsOpenNewWindowParams(vcmDispatcher.FormDispatcher.CurrentMainForm.AsContainer)
 else
  Result := nsOpenNewWindowParams(NativeMainForm);
//#UC END# *4A7687F0016D_4A815C200111_impl*
end;//_HyperlinkProcessor_.MakeNewMainWindow

function _HyperlinkProcessor_.ProcessExternalOperation(const anOperation: IExternalOperation): Boolean;
//#UC START# *4A76CDFA014B_4A815C200111_var*
//#UC END# *4A76CDFA014B_4A815C200111_var*
begin
//#UC START# *4A76CDFA014B_4A815C200111_impl*
 Result := DoProcessExternalOperation(anOperation);
//#UC END# *4A76CDFA014B_4A815C200111_impl*
end;//_HyperlinkProcessor_.ProcessExternalOperation

procedure _HyperlinkProcessor_.CheckLinkInfo(const aLink: IevHyperlink);
//#UC START# *4A780EBF00CD_4A815C200111_var*
//#UC END# *4A780EBF00CD_4A815C200111_var*
begin
//#UC START# *4A780EBF00CD_4A815C200111_impl*
 DoCheckLinkInfo(aLink);
//#UC END# *4A780EBF00CD_4A815C200111_impl*
end;//_HyperlinkProcessor_.CheckLinkInfo

function _HyperlinkProcessor_.MakeLinkDocInfo(const aDocument: IDocument;
  aPointType: TDocumentPositionType;
  aSub: Cardinal): IdeDocInfo;
//#UC START# *4A79216102C6_4A815C200111_var*
//#UC END# *4A79216102C6_4A815C200111_var*
begin
//#UC START# *4A79216102C6_4A815C200111_impl*
 Result := DoMakeLinkDocInfo(aDocument, aPointType, aSub);
//#UC END# *4A79216102C6_4A815C200111_impl*
end;//_HyperlinkProcessor_.MakeLinkDocInfo

function _HyperlinkProcessor_.ProcessLocalLink(const aDocument: IDocument;
  aPointType: TDocumentPositionType;
  aSub: Cardinal): Boolean;
//#UC START# *4A7928E80375_4A815C200111_var*
//#UC END# *4A7928E80375_4A815C200111_var*
begin
//#UC START# *4A7928E80375_4A815C200111_impl*
 Result := DoProcessLocalLink(aDocument, aPointType, aSub);
//#UC END# *4A7928E80375_4A815C200111_impl*
end;//_HyperlinkProcessor_.ProcessLocalLink

{$If not defined(NoVCM)}
procedure _HyperlinkProcessor_.InitControls;
//#UC START# *4A8E8F2E0195_4A815C200111_var*
//#UC END# *4A8E8F2E0195_4A815C200111_var*
begin
//#UC START# *4A8E8F2E0195_4A815C200111_impl*
 inherited;
 with HyperlinkText do
 begin
  OnJumpTo := Self.JumpTo;
  OnGetHotSpotInfo := Self.GetHotSpotInfo;
 end;//with HyperlinkText
//#UC END# *4A8E8F2E0195_4A815C200111_impl*
end;//_HyperlinkProcessor_.InitControls
{$IfEnd} //not NoVCM

{$IfEnd} //not Admin AND not Monitorings

{$EndIf HyperlinkProcessor_imp}
