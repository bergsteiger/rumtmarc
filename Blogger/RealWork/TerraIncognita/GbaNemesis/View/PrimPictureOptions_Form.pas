unit PrimPictureOptions_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/PrimPictureOptions_Form.pas"
// �����: 08.09.2010 14:40
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 ������ � ���������� � ������� ����������::Document::View::Picture::PrimPictureOptions
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
  OfficeLike_Text_Controls,
  Document_Strange_Controls,
  Base_Operations_Editions_Controls,
  L10nInterfaces,
  OfficeLike_Result_Controls,
  PrimPicture_Form,
  imageenview,
  Common_Strange_Controls,
  imageenproc
  {$If not defined(NoScripts)}
  ,
  kwBynameControlPush
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  l3Interfaces,
  Graphics,
  afwInterfaces
  {$If not defined(NoVCM)}
  ,
  vcmExternalInterfaces
  {$IfEnd} //not NoVCM
  ,
  OfficeLike_Usual_Controls,
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 _PrintableBitmap_Parent_ = TPrimPictureForm;
 {$Include w:\garant6x\implementation\Garant\GbaNemesis\Printing\PrintableBitmap.imp.pas}
 TPrimPictureOptionsForm = {form} class(_PrintableBitmap_)
 private
 // private fields
   f_ieProc : TImageEnProc;
    {* ���� ��� �������� ieProc}
   f_ieViewer : TImageEnView;
    {* ���� ��� �������� ieViewer}
 protected
  procedure InitEntities; override;
 protected
 // property methods
   function pm_GetIeProc: TImageEnProc;
   function pm_GetIeViewer: TImageEnView;
   function Get_Scale: Integer; virtual; abstract;
   procedure Set_Scale(aValue: Integer); virtual; abstract;
 protected
 // realized methods
   procedure File_Save_Test(const aParams: IvcmTestParamsPrim);
     {* ��������� }
   procedure File_Save_Execute(const aParams: IvcmExecuteParamsPrim);
     {* ��������� }
   procedure Result_Cancel_GetState(var State: TvcmOperationStateIndex);
     {* ������ }
   procedure Result_Cancel_Execute(const aParams: IvcmExecuteParamsPrim);
     {* ������ }
   procedure Document_GetAttributesFrmAct_Test(const aParams: IvcmTestParamsPrim);
     {* ���������� � ��������� }
   procedure Document_GetAttributesFrmAct_GetState(var State: TvcmOperationStateIndex);
     {* ���������� � ��������� }
   procedure Document_GetAttributesFrmAct_Execute(const aParams: IvcmExecuteParamsPrim);
     {* ���������� � ��������� }
   procedure Edit_Copy_Test(const aParams: IvcmTestParamsPrim);
     {* ���������� }
   procedure Edit_Copy_Execute(const aParams: IvcmExecuteParamsPrim);
     {* ���������� }
   procedure Picture_Resize_Test(const aParams: IvcmTestParamsPrim);
   procedure Picture_Resize_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure Picture_Enlarge_Test(const aParams: IvcmTestParamsPrim);
   procedure Picture_Enlarge_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure Picture_Shrink_Test(const aParams: IvcmTestParamsPrim);
   procedure Picture_Shrink_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure Picture_ActualSize_Test(const aParams: IvcmTestParamsPrim);
   procedure Picture_ActualSize_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure Picture_FitInWIndow_Test(const aParams: IvcmTestParamsPrim);
   procedure Picture_FitInWIndow_Execute(const aParams: IvcmExecuteParamsPrim);
   function pm_GetBitmapForPrint: Graphics_Bitmap; override;
   function Name: Il3CString; override;
   function ShortName: Il3CString; override;
 protected
 // protected fields
   f_ValueMap : InsSpetialStringValueMap;
 protected
 // protected methods
   procedure FitInWindow; virtual; abstract;
   function CanEnlarge: Boolean; virtual; abstract;
   function CanShrink: Boolean; virtual; abstract;
   procedure Enlarge; virtual; abstract;
   procedure Shrink; virtual; abstract;
 protected
 // protected properties
   property Scale: Integer
     read Get_Scale
     write Set_Scale;
 public
 // public properties
   property ieProc: TImageEnProc
     read pm_GetIeProc;
   property ieViewer: TImageEnView
     read pm_GetIeViewer;
 end;//TPrimPictureOptionsForm

 TvcmEntityFormRef = TPrimPictureOptionsForm;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  nsTrialSupport,
  afwFacade,
  Windows,
  Controls,
  SysUtils,
  Classes,
  l3String,
  l3ValueMap,
  nsTypes
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  evBitmapDataObject,
  nsFixedHAFMacroReplacer,
  nsObjectPreview,
  nevBase,
  nsHAFPainter,
  StdRes {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

{$Include w:\garant6x\implementation\Garant\GbaNemesis\Printing\PrintableBitmap.imp.pas}

type
  Tkw_PrimPictureOptions_Component_ieProc = class(TtfwControlString)
   {* ����� ������� ��� �������������� ���������� ieProc
----
*������ �������������*:
[code]
���������::ieProc TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimPictureOptions_Component_ieProc

// start class Tkw_PrimPictureOptions_Component_ieProc

{$If not defined(NoScripts)}
function Tkw_PrimPictureOptions_Component_ieProc.GetString: AnsiString;
 {-}
begin
 Result := 'ieProc';
end;//Tkw_PrimPictureOptions_Component_ieProc.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimPictureOptions_Control_ieViewer = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� ieViewer
----
*������ �������������*:
[code]
�������::ieViewer TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimPictureOptions_Control_ieViewer

// start class Tkw_PrimPictureOptions_Control_ieViewer

{$If not defined(NoScripts)}
function Tkw_PrimPictureOptions_Control_ieViewer.GetString: AnsiString;
 {-}
begin
 Result := 'ieViewer';
end;//Tkw_PrimPictureOptions_Control_ieViewer.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimPictureOptions_Control_ieViewer_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� ieViewer
----
*������ �������������*:
[code]
�������::ieViewer:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimPictureOptions_Control_ieViewer_Push

// start class Tkw_PrimPictureOptions_Control_ieViewer_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimPictureOptions_Control_ieViewer_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('ieViewer');
 inherited;
end;//Tkw_PrimPictureOptions_Control_ieViewer_Push.DoDoIt
{$IfEnd} //not NoScripts

function TPrimPictureOptionsForm.pm_GetIeProc: TImageEnProc;
begin
 if (f_ieProc = nil) then
  f_ieProc := FindComponent('ieProc') As TImageEnProc;
 Result := f_ieProc;
end;

function TPrimPictureOptionsForm.pm_GetIeViewer: TImageEnView;
begin
 if (f_ieViewer = nil) then
  f_ieViewer := FindComponent('ieViewer') As TImageEnView;
 Result := f_ieViewer;
end;

procedure TPrimPictureOptionsForm.File_Save_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *495235F401C0_4C8768010125test_var*
//#UC END# *495235F401C0_4C8768010125test_var*
begin
//#UC START# *495235F401C0_4C8768010125test_impl*
 nsDisableOperationInTrialMode(aParams);
//#UC END# *495235F401C0_4C8768010125test_impl*
end;//TPrimPictureOptionsForm.File_Save_Test

procedure TPrimPictureOptionsForm.File_Save_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *495235F401C0_4C8768010125exec_var*
var
 l_FileExt: string;
//#UC END# *495235F401C0_4C8768010125exec_var*
begin
//#UC START# *495235F401C0_4C8768010125exec_impl*
 with GetSaveDialog do
 begin
  l_FileExt := ExtractFileExt(FileName);

  if ((StrIComp(PChar(l_FileExt), '.bmp') = 0) or
      (StrIComp(PChar(l_FileExt), '.jpg') = 0) or
      (StrIComp(PChar(l_FileExt), '.gif') = 0))
  then
   FileName := ChangeFileExt(FileName, ''); // cleanup file extension

  if Execute then
  try
   case FilterIndex of
    1: ieIO.SaveToFileBMP(ChangeFileExt(FileName, '.bmp'));
    2: ieIO.SaveToFileJpeg(ChangeFileExt(FileName, '.jpg'));
    3: ieIO.SaveToFileGif(ChangeFileExt(FileName, '.gif'));
   end;
  except
   on EFCreateError do
   begin
    if Windows.GetLastError = ERROR_ACCESS_DENIED then
     Say(err_CannotCreateFile, [ExtractFileName(FileName)])
    else
     raise;
   end;//on EFCreateError do
  end;{try..except}
 end;//with GetSaveDialog do
//#UC END# *495235F401C0_4C8768010125exec_impl*
end;//TPrimPictureOptionsForm.File_Save_Execute

procedure TPrimPictureOptionsForm.Result_Cancel_GetState(var State: TvcmOperationStateIndex);
//#UC START# *4C762C910358_4C8768010125getstate_var*
//#UC END# *4C762C910358_4C8768010125getstate_var*
begin
//#UC START# *4C762C910358_4C8768010125getstate_impl*
 State := st_user_Result_Cancel_Close;
//#UC END# *4C762C910358_4C8768010125getstate_impl*
end;//TPrimPictureOptionsForm.Result_Cancel_GetState

procedure TPrimPictureOptionsForm.Result_Cancel_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C762C910358_4C8768010125exec_var*
//#UC END# *4C762C910358_4C8768010125exec_var*
begin
//#UC START# *4C762C910358_4C8768010125exec_impl*
 if IsModalForm then
  ModalResult := mrCancel
 else
  Dispatcher.History.Back;
//#UC END# *4C762C910358_4C8768010125exec_impl*
end;//TPrimPictureOptionsForm.Result_Cancel_Execute

procedure TPrimPictureOptionsForm.Document_GetAttributesFrmAct_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C7B9EBC01AC_4C8768010125test_var*
//#UC END# *4C7B9EBC01AC_4C8768010125test_var*
begin
//#UC START# *4C7B9EBC01AC_4C8768010125test_impl*
 aParams.Op.Flag[vcm_ofEnabled] := afw.Application.IsInternal and
                                   Assigned(f_Info);
//#UC END# *4C7B9EBC01AC_4C8768010125test_impl*
end;//TPrimPictureOptionsForm.Document_GetAttributesFrmAct_Test

procedure TPrimPictureOptionsForm.Document_GetAttributesFrmAct_GetState(var State: TvcmOperationStateIndex);
//#UC START# *4C7B9EBC01AC_4C8768010125getstate_var*
//#UC END# *4C7B9EBC01AC_4C8768010125getstate_var*
begin
//#UC START# *4C7B9EBC01AC_4C8768010125getstate_impl*
 State := st_user_Document_GetAttributesFrmAct_Picture;
//#UC END# *4C7B9EBC01AC_4C8768010125getstate_impl*
end;//TPrimPictureOptionsForm.Document_GetAttributesFrmAct_GetState

procedure TPrimPictureOptionsForm.Document_GetAttributesFrmAct_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C7B9EBC01AC_4C8768010125exec_var*
//#UC END# *4C7B9EBC01AC_4C8768010125exec_var*
begin
//#UC START# *4C7B9EBC01AC_4C8768010125exec_impl*
 TdmStdRes.OpenPictureInfo(nil, f_Info);
//#UC END# *4C7B9EBC01AC_4C8768010125exec_impl*
end;//TPrimPictureOptionsForm.Document_GetAttributesFrmAct_Execute

procedure TPrimPictureOptionsForm.Edit_Copy_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C7D0C7B0185_4C8768010125test_var*
//#UC END# *4C7D0C7B0185_4C8768010125test_var*
begin
//#UC START# *4C7D0C7B0185_4C8768010125test_impl*
 nsDisableOperationInTrialMode(aParams);
//#UC END# *4C7D0C7B0185_4C8768010125test_impl*
end;//TPrimPictureOptionsForm.Edit_Copy_Test

procedure TPrimPictureOptionsForm.Edit_Copy_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C7D0C7B0185_4C8768010125exec_var*
//#UC END# *4C7D0C7B0185_4C8768010125exec_var*
begin
//#UC START# *4C7D0C7B0185_4C8768010125exec_impl*
 ieProc.CopyToClipboard;
//#UC END# *4C7D0C7B0185_4C8768010125exec_impl*
end;//TPrimPictureOptionsForm.Edit_Copy_Execute

procedure TPrimPictureOptionsForm.Picture_Resize_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C876C1F014C_4C8768010125test_var*
var
 l_Strings : IvcmStrings;
 l_StringSource: InsStringsSource;
//#UC END# *4C876C1F014C_4C8768010125test_var*
begin
//#UC START# *4C876C1F014C_4C8768010125test_impl*
 aParams.Op.Flag[vcm_ofEnabled] := True;
 l_Strings := aParams.Op.SubItems;
 if (l_Strings = nil) then
  Exit;
 if not ieViewer.AutoFit then
  aParams.Op.SelectedString := f_ValueMap.ValueToDisplayName(nsCStr(IntToStr(Scale)))
 else
  aParams.Op.SelectedString := f_ValueMap.SpetialDisplayName;
 if (l_Strings.Count = 0) and Supports(f_ValueMap, InsStringsSource, l_StringSource) then
  l_StringSource.FillStrings(l_Strings);
//#UC END# *4C876C1F014C_4C8768010125test_impl*
end;//TPrimPictureOptionsForm.Picture_Resize_Test

procedure TPrimPictureOptionsForm.Picture_Resize_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C876C1F014C_4C8768010125exec_var*
//#UC END# *4C876C1F014C_4C8768010125exec_var*
begin
//#UC START# *4C876C1F014C_4C8768010125exec_impl*
 if l3IsNil(aParams.SelectedString) then
  Exit;
 if l3Same(f_ValueMap.SpetialDisplayName, aParams.SelectedString)then
  FitInWindow
 else
  try
   ieViewer.AutoFit := False;
   Scale := StrToInt(l3Str(f_ValueMap.DisplayNameToValue(aParams.SelectedString)))
  except
   on El3ValueMapValueNotFound do
    Say(war_PictureRangeWarning,[f_ValueMap.MinValue, f_ValueMap.MaxValue]);
  end;//try..except
//#UC END# *4C876C1F014C_4C8768010125exec_impl*
end;//TPrimPictureOptionsForm.Picture_Resize_Execute

procedure TPrimPictureOptionsForm.Picture_Enlarge_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C876E670305_4C8768010125test_var*
//#UC END# *4C876E670305_4C8768010125test_var*
begin
//#UC START# *4C876E670305_4C8768010125test_impl*
 aParams.Op.Flag[vcm_ofEnabled] := CanEnlarge;
//#UC END# *4C876E670305_4C8768010125test_impl*
end;//TPrimPictureOptionsForm.Picture_Enlarge_Test

procedure TPrimPictureOptionsForm.Picture_Enlarge_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C876E670305_4C8768010125exec_var*
//#UC END# *4C876E670305_4C8768010125exec_var*
begin
//#UC START# *4C876E670305_4C8768010125exec_impl*
 Enlarge;
//#UC END# *4C876E670305_4C8768010125exec_impl*
end;//TPrimPictureOptionsForm.Picture_Enlarge_Execute

procedure TPrimPictureOptionsForm.Picture_Shrink_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C876E850207_4C8768010125test_var*
//#UC END# *4C876E850207_4C8768010125test_var*
begin
//#UC START# *4C876E850207_4C8768010125test_impl*
 aParams.Op.Flag[vcm_ofEnabled] := CanShrink;
//#UC END# *4C876E850207_4C8768010125test_impl*
end;//TPrimPictureOptionsForm.Picture_Shrink_Test

procedure TPrimPictureOptionsForm.Picture_Shrink_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C876E850207_4C8768010125exec_var*
//#UC END# *4C876E850207_4C8768010125exec_var*
begin
//#UC START# *4C876E850207_4C8768010125exec_impl*
 Shrink;
//#UC END# *4C876E850207_4C8768010125exec_impl*
end;//TPrimPictureOptionsForm.Picture_Shrink_Execute

procedure TPrimPictureOptionsForm.Picture_ActualSize_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C876EA202FF_4C8768010125test_var*
//#UC END# *4C876EA202FF_4C8768010125test_var*
begin
//#UC START# *4C876EA202FF_4C8768010125test_impl*
 aParams.Op.Flag[vcm_ofEnabled] := Scale <> 100;
//#UC END# *4C876EA202FF_4C8768010125test_impl*
end;//TPrimPictureOptionsForm.Picture_ActualSize_Test

procedure TPrimPictureOptionsForm.Picture_ActualSize_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C876EA202FF_4C8768010125exec_var*
//#UC END# *4C876EA202FF_4C8768010125exec_var*
begin
//#UC START# *4C876EA202FF_4C8768010125exec_impl*
 Scale := 100;
//#UC END# *4C876EA202FF_4C8768010125exec_impl*
end;//TPrimPictureOptionsForm.Picture_ActualSize_Execute

procedure TPrimPictureOptionsForm.Picture_FitInWIndow_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C876EB40188_4C8768010125test_var*
//#UC END# *4C876EB40188_4C8768010125test_var*
begin
//#UC START# *4C876EB40188_4C8768010125test_impl*
 aParams.Op.Flag[vcm_ofEnabled] := not ieViewer.AutoFit;
//#UC END# *4C876EB40188_4C8768010125test_impl*
end;//TPrimPictureOptionsForm.Picture_FitInWIndow_Test

procedure TPrimPictureOptionsForm.Picture_FitInWIndow_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C876EB40188_4C8768010125exec_var*
//#UC END# *4C876EB40188_4C8768010125exec_var*
begin
//#UC START# *4C876EB40188_4C8768010125exec_impl*
 FitInWindow;
//#UC END# *4C876EB40188_4C8768010125exec_impl*
end;//TPrimPictureOptionsForm.Picture_FitInWIndow_Execute

function TPrimPictureOptionsForm.pm_GetBitmapForPrint: Graphics_Bitmap;
//#UC START# *4CDACD8302DD_4C8768010125get_var*
//#UC END# *4CDACD8302DD_4C8768010125get_var*
begin
//#UC START# *4CDACD8302DD_4C8768010125get_impl*
 Result := ieViewer.IEBitmap.VclBitmap;
//#UC END# *4CDACD8302DD_4C8768010125get_impl*
end;//TPrimPictureOptionsForm.pm_GetBitmapForPrint

function TPrimPictureOptionsForm.Name: Il3CString;
//#UC START# *4CDAD282005F_4C8768010125_var*
//#UC END# *4CDAD282005F_4C8768010125_var*
begin
//#UC START# *4CDAD282005F_4C8768010125_impl*
 Result := f_Info.Name;
//#UC END# *4CDAD282005F_4C8768010125_impl*
end;//TPrimPictureOptionsForm.Name

function TPrimPictureOptionsForm.ShortName: Il3CString;
//#UC START# *4CDAD29D0169_4C8768010125_var*
//#UC END# *4CDAD29D0169_4C8768010125_var*
begin
//#UC START# *4CDAD29D0169_4C8768010125_impl*
 Result := f_Info.ShortName;
//#UC END# *4CDAD29D0169_4C8768010125_impl*
end;//TPrimPictureOptionsForm.ShortName

procedure TPrimPictureOptionsForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_Edit, nil);
  PublishFormEntity(en_Document, nil);
  PublishFormEntity(en_Result, nil);
  PublishFormEntity(en_Picture, nil);
  PublishOp(en_File, op_Save, File_Save_Execute, File_Save_Test, nil);
  ShowInContextMenu(en_File, op_Save, true);
  ShowInToolbar(en_File, op_Save, true);
  PublishOp(en_Result, op_Cancel, Result_Cancel_Execute, nil, Result_Cancel_GetState);
  ShowInContextMenu(en_Result, op_Cancel, false);
  ShowInToolbar(en_Result, op_Cancel, true);
  PublishOp(en_Document, op_GetAttributesFrmAct, Document_GetAttributesFrmAct_Execute, Document_GetAttributesFrmAct_Test, Document_GetAttributesFrmAct_GetState);
  ShowInContextMenu(en_Document, op_GetAttributesFrmAct, false);
  ShowInToolbar(en_Document, op_GetAttributesFrmAct, true);
  PublishOp(en_Edit, op_Copy, Edit_Copy_Execute, Edit_Copy_Test, nil);
  ShowInContextMenu(en_Edit, op_Copy, true);
  ShowInToolbar(en_Edit, op_Copy, true);
  PublishOp(en_Picture, op_Resize, Picture_Resize_Execute, Picture_Resize_Test, nil);
  ShowInContextMenu(en_Picture, op_Resize, false);
  ShowInToolbar(en_Picture, op_Resize, true);
  PublishOp(en_Picture, op_Enlarge, Picture_Enlarge_Execute, Picture_Enlarge_Test, nil);
  ShowInContextMenu(en_Picture, op_Enlarge, true);
  ShowInToolbar(en_Picture, op_Enlarge, true);
  PublishOp(en_Picture, op_Shrink, Picture_Shrink_Execute, Picture_Shrink_Test, nil);
  ShowInContextMenu(en_Picture, op_Shrink, true);
  ShowInToolbar(en_Picture, op_Shrink, true);
  PublishOp(en_Picture, op_ActualSize, Picture_ActualSize_Execute, Picture_ActualSize_Test, nil);
  ShowInContextMenu(en_Picture, op_ActualSize, true);
  ShowInToolbar(en_Picture, op_ActualSize, true);
  PublishOp(en_Picture, op_FitInWIndow, Picture_FitInWIndow_Execute, Picture_FitInWIndow_Test, nil);
  ShowInContextMenu(en_Picture, op_FitInWIndow, true);
  ShowInToolbar(en_Picture, op_FitInWIndow, true);
  ShowInContextMenu(en_File, op_Print, false);
  ShowInToolbar(en_File, op_Print, true);
  
  ShowInContextMenu(en_File, op_PrintDialog, true);
  ShowInToolbar(en_File, op_PrintDialog, false);
  
  ShowInContextMenu(en_File, op_PrintPreview, false);
  ShowInToolbar(en_File, op_PrintPreview, true);
 end;//with Entities.Entities
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimPictureOptions_Component_ieProc
 Tkw_PrimPictureOptions_Component_ieProc.Register('���������::ieProc', TImageEnProc);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimPictureOptions_Control_ieViewer
 Tkw_PrimPictureOptions_Control_ieViewer.Register('�������::ieViewer', TImageEnView);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimPictureOptions_Control_ieViewer_Push
 Tkw_PrimPictureOptions_Control_ieViewer_Push.Register('�������::ieViewer:push');
{$IfEnd} //not Admin AND not Monitorings

end.