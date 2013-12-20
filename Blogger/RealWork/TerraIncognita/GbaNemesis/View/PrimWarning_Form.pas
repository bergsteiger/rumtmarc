unit PrimWarning_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/PrimWarning_Form.pas"
// �����: 23.01.2009 18:42
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 ������ � ���������� � ������� ����������::Document::View::Warning::PrimWarning
//
// ��������������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  afwInterfaces,
  nevTools,
  eeInterfaces,
  DocumentAndListInterfaces
  {$If defined(Nemesis)}
  ,
  nscEditor
  {$IfEnd} //Nemesis
  
  {$If not defined(NoVCM)}
  ,
  vcmEntityForm
  {$IfEnd} //not NoVCM
  ,
  Document_Strange_Controls,
  Base_Operations_Editions_Controls,
  afwDockingInterfaces
  {$If not defined(NoScripts)}
  ,
  kwBynameControlPush
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  DocumentUnit,
  ExternalOperationUnit,
  evCustomEditorWindow,
  nevGUIInterfaces,
  afwNavigation,
  nevNavigation,
  NavigationInterfaces,
  DocumentInterfaces,
  bsTypesNew
  {$If not defined(NoVCM)}
  ,
  vcmInterfaces
  {$IfEnd} //not NoVCM
  ,
  vcmExternalInterfaces {a}
  {$If not defined(NoVCM)}
  ,
  vcmControllers
  {$IfEnd} //not NoVCM
  ,
  Controls
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
//#UC START# *4979E5520222ci*
 {$IfOpt D+}
  {$IfNDef Console}
   {.$Define DebugViewer}
  {$EndIf  Console}
 {$EndIf D+}
//#UC END# *4979E5520222ci*
 _HyperlinkProcessorWithOwnLocalLink_Parent_ = TvcmEntityForm;
 {$Include ..\View\HyperlinkProcessorWithOwnLocalLink.imp.pas}
 TPrimWarningForm = {form} class(_HyperlinkProcessorWithOwnLocalLink_, IafwFormView, IafwDockableControl)
  {* �������������� }
 private
 // private fields
   f_Viewer : TnscEditor;
    {* ���� ��� �������� Viewer}
 protected
  procedure SignalDataSourceChanged(const anOld : IvcmViewAreaController;
                                const aDsNew : IvcmViewAreaController); override;
  procedure InitEntities; override;
  procedure MakeControls; override;
 private
 // private methods
   procedure MakeDocumentContainer(Sender: TObject;
     var aMade: InevDocumentContainer);
 protected
 // realized methods
   procedure GotoPoint(aPointID: Cardinal;
    aPointType: TDocumentPositionType = dptSub); override;
     {* ������� �� ����� � ��������� }
   function HyperlinkDocument: IDocument; override;
     {* �������� �� �������� ���� ������ }
   function pm_GetHyperlinkText: TevCustomEditorWindow; override;
   function IsFloating: Boolean; override;
     {* ����� ��������� }
   procedure System_TimeMachineStateChange_Execute(aStayInCurrentRedaction: Boolean = false);
   procedure System_TimeMachineStateChange(const aParams: IvcmExecuteParams);
   function CalculateHeightByWidth(var theWidth: Integer;
    aForceLoadData: Boolean): Integer;
   procedure SetBackColor(aColor: TafwColor);
   function CanBeDockedInto(aControl: TWinControl): Boolean;
 protected
 // overridden protected methods
   {$If not defined(NoVCM)}
   procedure NotifyDataSourceChanged(const anOld: IvcmViewAreaController;
    const aNew: IvcmViewAreaController); override;
     {* ��������� �������� ������. ��� ���������� � �������� }
   {$IfEnd} //not NoVCM
   {$If not defined(NoVCM)}
   procedure InitControls; override;
     {* ��������� ������������� ���������. ��� ���������� � �������� }
   {$IfEnd} //not NoVCM
 protected
 // protected fields
   ViewArea : IdsWarning;
 protected
 // protected methods
   procedure PositionOnRequestedSub(aSubID: TnsWarningSub);
 public
 // public properties
   property Viewer: TnscEditor
     read f_Viewer;
//#UC START# *4979E5520222publ*
//#UC END# *4979E5520222publ*
 end;//TPrimWarningForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  Base_Operations_Strange_Controls,
  F1Like_InternalOperations_Controls,
  StdCtrls,
  SysUtils,
  TextPara_Const,
  nevBase,
  k2Tags,
  l3ScreenIC,
  l3InternalInterfaces,
  l3String,
  l3Chars,
  l3Types,
  evDef,
  l3MinMax,
  Graphics,
  DocumentUserTypes_dftDocument_UserType,
  DocumentUserTypes_dftDrug_UserType,
  nsWarningDocumentContainer,
  eeTextSourceExport,
  WarningUserTypes_Warning_UserType,
  BaloonWarningUserTypes_Fake_UserType,
  BaloonWarningUserTypes_WarnJuror_UserType,
  BaloonWarningUserTypes_WarnPreActive_UserType,
  BaloonWarningUserTypes_WarnIsAbolished_UserType,
  BaloonWarningUserTypes_WarnOnControl_UserType,
  BaloonWarningUserTypes_WarnInactualDocument_UserType,
  BaloonWarningUserTypes_WarnTimeMachineOn_UserType,
  BaloonWarningUserTypes_WarnRedaction_UserType,
  BaloonWarningUserTypes_WarnTimeMachineWarning_UserType,
  BaloonWarningUserTypes_WarnTimeMachineException_UserType,
  BaloonWarningUserTypes_remListModified_UserType,
  BaloonWarningUserTypes_remListFiltered_UserType,
  BaloonWarningUserTypes_remTimeMachineWarning_UserType,
  BaloonWarningUserTypes_remUnreadConsultations_UserType,
  BaloonWarningUserTypes_remOnlineDead_UserType,
  BaloonWarningUserTypes_TrialModeWarning_UserType,
  BaloonWarningUserTypes_OldBaseWarning_UserType,
  BaloonWarningUserTypes_ControlledChangingWarning_UserType
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  nsConst,
  afwFacade
  {$If not defined(NoVCM)}
  ,
  vcmBase
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  StdRes
  {$IfEnd} //not NoVCM
  ,
  nsHyperLinkProcessor,
  deDocInfo,
  nsOpenUtils
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

type _Instance_R_ = TPrimWarningForm;

{$Include ..\View\HyperlinkProcessorWithOwnLocalLink.imp.pas}

type
  Tkw_PrimWarning_Control_Viewer = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� Viewer
----
*������ �������������*:
[code]
�������::Viewer TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimWarning_Control_Viewer

// start class Tkw_PrimWarning_Control_Viewer

{$If not defined(NoScripts)}
function Tkw_PrimWarning_Control_Viewer.GetString: AnsiString;
 {-}
begin
 Result := 'Viewer';
end;//Tkw_PrimWarning_Control_Viewer.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimWarning_Control_Viewer_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� Viewer
----
*������ �������������*:
[code]
�������::Viewer:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimWarning_Control_Viewer_Push

// start class Tkw_PrimWarning_Control_Viewer_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimWarning_Control_Viewer_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('Viewer');
 inherited;
end;//Tkw_PrimWarning_Control_Viewer_Push.DoDoIt
{$IfEnd} //not NoScripts

procedure TPrimWarningForm.MakeDocumentContainer(Sender: TObject;
  var aMade: InevDocumentContainer);
//#UC START# *4F153B0E0018_4979E5520222_var*
//#UC END# *4F153B0E0018_4979E5520222_var*
begin
//#UC START# *4F153B0E0018_4979E5520222_impl*
 Assert(ViewArea <> nil);
 aMade := TnsWarningDocumentContainer.Make(ViewArea, UserType);
//#UC END# *4F153B0E0018_4979E5520222_impl*
end;//TPrimWarningForm.MakeDocumentContainer

procedure TPrimWarningForm.PositionOnRequestedSub(aSubID: TnsWarningSub);
//#UC START# *4AE9DF9401A6_4979E5520222_var*
//#UC END# *4AE9DF9401A6_4979E5520222_var*
var
 l_Sub : IeeSub;
begin
//#UC START# *4AE9DF9401A6_4979E5520222_impl*
 l_Sub := Viewer.Editor.Data.Document.Subs.SubsByID[Ord(aSubID)];
 if (l_Sub <> nil) and
    l_Sub.Exists then
  l_Sub.Select;
//#UC END# *4AE9DF9401A6_4979E5520222_impl*
end;//TPrimWarningForm.PositionOnRequestedSub

procedure TPrimWarningForm.GotoPoint(aPointID: Cardinal;
  aPointType: TDocumentPositionType = dptSub);
//#UC START# *4A8164E801AE_4979E5520222_var*
//#UC END# *4A8164E801AE_4979E5520222_var*
begin
//#UC START# *4A8164E801AE_4979E5520222_impl*
 Op_Document_SetPosition.Call(Aggregate, aPointID, aPointType, dftDocument);
//#UC END# *4A8164E801AE_4979E5520222_impl*
end;//TPrimWarningForm.GotoPoint

function TPrimWarningForm.HyperlinkDocument: IDocument;
//#UC START# *4A8168BB0217_4979E5520222_var*
//#UC END# *4A8168BB0217_4979E5520222_var*
begin
//#UC START# *4A8168BB0217_4979E5520222_impl*
 if (ViewArea = nil) OR (ViewArea.DocInfo = nil) then
  Result := nil
 else
  Result := ViewArea.DocInfo.Doc;
//#UC END# *4A8168BB0217_4979E5520222_impl*
end;//TPrimWarningForm.HyperlinkDocument

function TPrimWarningForm.pm_GetHyperlinkText: TevCustomEditorWindow;
//#UC START# *4A82BC390036_4979E5520222get_var*
//#UC END# *4A82BC390036_4979E5520222get_var*
begin
//#UC START# *4A82BC390036_4979E5520222get_impl*
 Result := Viewer;
//#UC END# *4A82BC390036_4979E5520222get_impl*
end;//TPrimWarningForm.pm_GetHyperlinkText

function TPrimWarningForm.IsFloating: Boolean;
//#UC START# *4A8A9DB0001A_4979E5520222_var*
//#UC END# *4A8A9DB0001A_4979E5520222_var*
begin
//#UC START# *4A8A9DB0001A_4979E5520222_impl*
 Result := (UserType > 0);
//#UC END# *4A8A9DB0001A_4979E5520222_impl*
end;//TPrimWarningForm.IsFloating

procedure TPrimWarningForm.System_TimeMachineStateChange_Execute(aStayInCurrentRedaction: Boolean = false);
//#UC START# *4A8EF367029E_4979E5520222exec_var*
//#UC END# *4A8EF367029E_4979E5520222exec_var*
begin
//#UC START# *4A8EF367029E_4979E5520222exec_impl*
 if (UserType = WarnTimeMachineOn) then
  if Assigned(Viewer) and Assigned(Viewer.TextSource) then
   Viewer.TextSource.DocumentContainer := nil; // ���������� ����� �������
//#UC END# *4A8EF367029E_4979E5520222exec_impl*
end;//TPrimWarningForm.System_TimeMachineStateChange_Execute

procedure TPrimWarningForm.System_TimeMachineStateChange(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As ISystem_TimeMachineStateChange_Params) do
  System_TimeMachineStateChange_Execute(StayInCurrentRedaction);
end;

function TPrimWarningForm.CalculateHeightByWidth(var theWidth: Integer;
  aForceLoadData: Boolean): Integer;
//#UC START# *4D8CA46002BE_4979E5520222_var*
const
 cSherMagicLen = 50;
var
 l_Para : InevTag;
 l_S, l_S_tmp : Tl3PCharLen;
 l_IC : Il3InfoCanvas;
 l_ind: Integer;
//#UC END# *4D8CA46002BE_4979E5520222_var*
begin
//#UC START# *4D8CA46002BE_4979E5520222_impl*
 l3AssignNil(l_S);

 //Viewer.LeftIndentDelta := 2;
 Viewer.TabStop := false;
 //Viewer.TabStop := true;
 // - ����� ����� �������� � ��������, � �� ������ � �������� ������
 // http://mdp.garant.ru/pages/viewpage.action?pageId=352452629&focusedCommentId=354683670#comment-354683670
 // - ����� �� ������� ��� � TvcmDispatcher.EntityOperation
 Viewer.ScrollStyle := ssNone;
 {$IfDef DebugViewer}
 Viewer.DrawSpecial := true;
 Viewer.Color := clWhite;
 {$EndIf DebugViewer}
 if aForceLoadData then
  if not Viewer.Document.IsValid then
   if (Viewer.TextSource <> nil) then
    if (Viewer.TextSource.DocumentContainer <> nil) then
     Viewer.TextSource.DocumentContainer.Document;
     // - �������� ���������� ��������
 with Viewer.Document do
 begin
  if IsValid AND (ChildrenCount > 0) then
  begin
   // ������ ��������������� ������ �� ������ ��������
   // �� ����� ���������� ������, ����� �� ������, ���� ��������
   // � ����� ����� � ���� ������ �� ��� ������� ����, ����� ��������� ��� ���������
   for l_ind := 0 to Pred(ChildrenCount) do
   begin
    l_Para := Child[l_ind];
    Assert(l_Para.InheritsFrom(k2_idTextPara)); // �� ������, ���� � ��������� �����-�� ����� �� ������ �����

    l_S_tmp := l_Para.PCharLenA[k2_tiText];
    if l_S_tmp.SLen > l_S.SLen then
     l_S := l_S_tmp;
   end;

   if (l_S.SLen <= cSherMagicLen) then
   begin
    if not l3HasChar(cc_SoftEnter, l_S) then
    begin
     l_IC := L3CrtIC;
     try
      l_IC.Font.Name := def_ArialFontName;
      l_IC.Font.Style := []; 
      l_IC.Font.Size := l_Para.Attr[k2_tiFont].IntA[k2_tiSize];
      Assert(l_IC.Font.Size > 3);
      theWidth := Min(theWidth, l_IC.LP2DP(l_IC.TextExtent(l_S)).X + Viewer.LeftIndentDelta * 3{50});
     finally
      l_IC := nil;
     end;//try..finally
    end;//not l3HasChar(cc_SoftEnter, l_S)
   end;//l_S.SLen <= cSherMagicLen
  end;//IsValid AND (ChildrenCount > 0)
 end;//with Viewer.Document
 Self.Width := theWidth;
 Self.ClientWidth := theWidth;
 //Viewer.AutoHeightByText := true;
 // http://mdp.garant.ru/pages/viewpage.action?pageId=265393897
 // ���-�� ��� � VGScene ��� ������ �������. �������� � �����-�� ������ ����������� ������, ��� �����.
 Viewer.Align := alNone;
 Viewer.Width := theWidth;
 Viewer.NeedDrawDocumentEdge := false;
 //Result := Viewer.Height;
 Result := Viewer.DocumentFullHeight;
 Viewer.Height := Result;
//#UC END# *4D8CA46002BE_4979E5520222_impl*
end;//TPrimWarningForm.CalculateHeightByWidth

procedure TPrimWarningForm.SetBackColor(aColor: TafwColor);
//#UC START# *4D8CA47B0343_4979E5520222_var*
//#UC END# *4D8CA47B0343_4979E5520222_var*
begin
//#UC START# *4D8CA47B0343_4979E5520222_impl*
 Self.Color := aColor;
 {$IfNDef DebugViewer}
 Viewer.Color := aColor;
 {$EndIf  DebugViewer}
//#UC END# *4D8CA47B0343_4979E5520222_impl*
end;//TPrimWarningForm.SetBackColor

function TPrimWarningForm.CanBeDockedInto(aControl: TWinControl): Boolean;
//#UC START# *4DA835E501AA_4979E5520222_var*
//#UC END# *4DA835E501AA_4979E5520222_var*
begin
//#UC START# *4DA835E501AA_4979E5520222_impl*
 Result := ANSISameText(CurUserType.Name, aControl.Name); 
//#UC END# *4DA835E501AA_4979E5520222_impl*
end;//TPrimWarningForm.CanBeDockedInto

{$If not defined(NoVCM)}
procedure TPrimWarningForm.NotifyDataSourceChanged(const anOld: IvcmViewAreaController;
  const aNew: IvcmViewAreaController);
//#UC START# *497469C90140_4979E5520222_var*
//#UC END# *497469C90140_4979E5520222_var*
begin
//#UC START# *497469C90140_4979E5520222_impl*
 inherited;
 if Assigned(ViewArea) then
 begin
  Viewer.TextSource.NeedProcessMessages := false;
  Viewer.TextSource.DocumentContainer := nil;
  // - ������ ���������� ��������� ���������, � ��������� �������������� �������� � TnsWarningDocumentContainer
  //ViewArea.GenerateWarning(Viewer.TextSource.GetGenerator(Viewer.View, nil), UserType);
(*  if (ViewArea.WarningContent <> cEmptyWarning) then
   Viewer.Invalidate;*)
  if not Viewer.IsStaticText then
   Viewer.IsStaticText := True;
 end;//Assigned(ViewArea)
//#UC END# *497469C90140_4979E5520222_impl*
end;//TPrimWarningForm.NotifyDataSourceChanged
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
procedure TPrimWarningForm.InitControls;
//#UC START# *4A8E8F2E0195_4979E5520222_var*
//#UC END# *4A8E8F2E0195_4979E5520222_var*
begin
//#UC START# *4A8E8F2E0195_4979E5520222_impl*
 inherited;
 ActiveControl := Viewer;
(*    Left = 0
    Top = 0
    Width = 250
    Height = 173*)
 Viewer.Align := alClient;
 Viewer.TabOrder := 0;
 Viewer.IsStaticText := True;
 (Viewer.TextSource As TeeTextSourceExport).OnMakeDocumentContainer := Self.MakeDocumentContainer;
//#UC END# *4A8E8F2E0195_4979E5520222_impl*
end;//TPrimWarningForm.InitControls
{$IfEnd} //not NoVCM

procedure TPrimWarningForm.SignalDataSourceChanged(const anOld : IvcmViewAreaController;
 const aDsNew : IvcmViewAreaController);
begin
 inherited;
 if (aDsNew = nil) then
 begin
  ViewArea := nil;
 end//aDsNew = nil
 else
 begin
  ViewArea := aDsNew As IdsWarning;
 end;//aDsNew = nil
end;

procedure TPrimWarningForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_System, nil);
  PublishOpWithResult(en_System, op_TimeMachineStateChange, System_TimeMachineStateChange, nil, nil, true);
 end;//with Entities.Entities
end;

procedure TPrimWarningForm.MakeControls;
begin
 inherited;
 f_Viewer := TnscEditor.Create(Self);
 f_Viewer.Name := 'Viewer';
 f_Viewer.Parent := Self;
end;

//#UC START# *4979E5520222impl*
//#UC END# *4979E5520222impl*

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimWarning_Control_Viewer
 Tkw_PrimWarning_Control_Viewer.Register('�������::Viewer', TnscEditor);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimWarning_Control_Viewer_Push
 Tkw_PrimWarning_Control_Viewer_Push.Register('�������::Viewer:push');
{$IfEnd} //not Admin AND not Monitorings

end.