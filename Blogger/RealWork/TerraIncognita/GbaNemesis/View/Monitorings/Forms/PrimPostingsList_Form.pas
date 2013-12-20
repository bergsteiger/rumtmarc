unit PrimPostingsList_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Monitorings/Forms/PrimPostingsList_Form.pas"
// Начат: 15.09.2009 18:14
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Утилита Прайм::NewsLineTuning::View::Monitorings::PrimPostingsList
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If defined(Monitorings) AND not defined(Admin)}
uses
  eeTreeView
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  l3StringIDEx,
  NewsLineTuning_Strange_Controls
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwBynameControlPush
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  PrimPostingsList_MyPostingList_UserType,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //Monitorings AND not Admin

{$If defined(Monitorings) AND not defined(Admin)}
var
  { Локализуемые строки Local }
 str_PrimeFilter : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'PrimeFilter'; rValue : 'Ленты новостей|*.xml');
  { 'Ленты новостей|*.xml' }
 str_ExportPrimeTitle : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'ExportPrimeTitle'; rValue : 'Экспорт выделенных лент');
  { 'Экспорт выделенных лент' }

type
 TPrimPostingsListForm = {form} class(TvcmEntityForm)
 private
 // private fields
   f_tvPostings : TeeTreeView;
    {* Поле для свойства tvPostings}
 protected
  procedure InitEntities; override;
  procedure MakeControls; override;
 protected
 // property methods
   function pm_GetTvPostings: TeeTreeView;
 protected
 // realized methods
   procedure PostingToolBar_ptNewTheme_Test(const aParams: IvcmTestParamsPrim);
   procedure PostingToolBar_ptNewTheme_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure PostingToolBar_ptEditPosting_Test(const aParams: IvcmTestParamsPrim);
   procedure PostingToolBar_ptEditPosting_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure PostingToolBar_ptDeletePosting_Test(const aParams: IvcmTestParamsPrim);
   procedure PostingToolBar_ptDeletePosting_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure PostingToolBar_SavePostList_Test(const aParams: IvcmTestParamsPrim);
   procedure PostingToolBar_SavePostList_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure PostingToolBar_ExportSelected_Test(const aParams: IvcmTestParamsPrim);
   procedure PostingToolBar_ExportSelected_Execute(const aParams: IvcmExecuteParamsPrim);
 protected
 // protected methods
   function Save: Boolean; virtual; abstract;
 public
 // public properties
   property tvPostings: TeeTreeView
     read pm_GetTvPostings;
 end;//TPrimPostingsListForm
{$IfEnd} //Monitorings AND not Admin

implementation

{$If defined(Monitorings) AND not defined(Admin)}
uses
  nsPostingsTreeSingle,
  Dialogs,
  vtSaveDialog,
  PrimeDomainInterfaces,
  SearchUnit,
  SysUtils,
  eeInterfaces
  {$If not defined(NoVCM)}
  ,
  vcmBase
  {$IfEnd} //not NoVCM
  ,
  nsTypes,
  PrimeUnit,
  l3MessageID
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  StdRes {a}
  ;
{$IfEnd} //Monitorings AND not Admin

{$If defined(Monitorings) AND not defined(Admin)}

var
   { Локализуемые строки MyPostingListLocalConstants }
  str_MyPostingListCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'MyPostingListCaption'; rValue : 'ПРАЙМ. Моя новостная лента');
   { Заголовок пользовательского типа "ПРАЙМ. Моя новостная лента" }

type
  Tkw_PrimPostingsList_Control_tvPostings = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола tvPostings
----
*Пример использования*:
[code]
контрол::tvPostings TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimPostingsList_Control_tvPostings

// start class Tkw_PrimPostingsList_Control_tvPostings

{$If not defined(NoScripts)}
function Tkw_PrimPostingsList_Control_tvPostings.GetString: AnsiString;
 {-}
begin
 Result := 'tvPostings';
end;//Tkw_PrimPostingsList_Control_tvPostings.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimPostingsList_Control_tvPostings_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола tvPostings
----
*Пример использования*:
[code]
контрол::tvPostings:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimPostingsList_Control_tvPostings_Push

// start class Tkw_PrimPostingsList_Control_tvPostings_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimPostingsList_Control_tvPostings_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('tvPostings');
 inherited;
end;//Tkw_PrimPostingsList_Control_tvPostings_Push.DoDoIt
{$IfEnd} //not NoScripts

function TPrimPostingsListForm.pm_GetTvPostings: TeeTreeView;
begin
 if (f_tvPostings = nil) then
  f_tvPostings := FindComponent('tvPostings') As TeeTreeView;
 Result := f_tvPostings;
end;

procedure TPrimPostingsListForm.PostingToolBar_ptNewTheme_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C84EE020054_4AAFA13C01B0test_var*
//#UC END# *4C84EE020054_4AAFA13C01B0test_var*
begin
//#UC START# *4C84EE020054_4AAFA13C01B0test_impl*
 aParams.Op.Flag[vcm_ofEnabled] := true;
//#UC END# *4C84EE020054_4AAFA13C01B0test_impl*
end;//TPrimPostingsListForm.PostingToolBar_ptNewTheme_Test

procedure TPrimPostingsListForm.PostingToolBar_ptNewTheme_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C84EE020054_4AAFA13C01B0exec_var*
//#UC END# *4C84EE020054_4AAFA13C01B0exec_var*
begin
//#UC START# *4C84EE020054_4AAFA13C01B0exec_impl*
 if Save then
 begin
  TdmStdRes.OpenPostingOrder(nil);
  TnsPostingsTreeSingle.Instance.EditNodeIndex := -1;
 end;//Save
//#UC END# *4C84EE020054_4AAFA13C01B0exec_impl*
end;//TPrimPostingsListForm.PostingToolBar_ptNewTheme_Execute

procedure TPrimPostingsListForm.PostingToolBar_ptEditPosting_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C84EE1D0024_4AAFA13C01B0test_var*
//#UC END# *4C84EE1D0024_4AAFA13C01B0test_var*
begin
//#UC START# *4C84EE1D0024_4AAFA13C01B0test_impl*
 aParams.Op.Flag[vcm_ofEnabled] := Assigned(tvPostings.TreeView.CurrentNode);
//#UC END# *4C84EE1D0024_4AAFA13C01B0test_impl*
end;//TPrimPostingsListForm.PostingToolBar_ptEditPosting_Test

procedure TPrimPostingsListForm.PostingToolBar_ptEditPosting_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C84EE1D0024_4AAFA13C01B0exec_var*
var
 l_Prime : InsPrimeNode;
 l_Query : IQuery;
//#UC END# *4C84EE1D0024_4AAFA13C01B0exec_var*
begin
//#UC START# *4C84EE1D0024_4AAFA13C01B0exec_impl*
 if Save then
  with tvPostings.TreeView do
  begin
   if Supports(GetNode(Current), InsPrimeNode, l_Prime) then
   try
    l_Prime.Data.GetQuery(l_Query);
    try
     TdmStdRes.OpenPostingOrder(l_Query);
     TnsPostingsTreeSingle.Instance.EditNodeIndex := Current;
      // - пользователь может перескочить на другой узел в списке и тогда мы
      //   изменим _Caption у другого узла. Для новой карточки название узла и
      //   так присваивается.
    finally
     l_Query := nil;
    end;//try..finally
   finally
    l_Prime := nil;
   end;//try..finally
  end;//with tvPostings.TreeView
//#UC END# *4C84EE1D0024_4AAFA13C01B0exec_impl*
end;//TPrimPostingsListForm.PostingToolBar_ptEditPosting_Execute

procedure TPrimPostingsListForm.PostingToolBar_ptDeletePosting_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C84EE3801EB_4AAFA13C01B0test_var*
//#UC END# *4C84EE3801EB_4AAFA13C01B0test_var*
begin
//#UC START# *4C84EE3801EB_4AAFA13C01B0test_impl*
 aParams.Op.Flag[vcm_ofEnabled] := Assigned(tvPostings.TreeView.CurrentNode);
//#UC END# *4C84EE3801EB_4AAFA13C01B0test_impl*
end;//TPrimPostingsListForm.PostingToolBar_ptDeletePosting_Test

procedure TPrimPostingsListForm.PostingToolBar_ptDeletePosting_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C84EE3801EB_4AAFA13C01B0exec_var*
var
 l_CurTreeView: IeeTreeView;
 l_CurNode: IeeNode;
//#UC END# *4C84EE3801EB_4AAFA13C01B0exec_var*
begin
//#UC START# *4C84EE3801EB_4AAFA13C01B0exec_impl*
 TdmStdRes.CheckHistory;
 l_CurTreeView := tvPostings.TreeView;
 if Assigned(l_CurTreeView) then
  if l_CurTreeView.Tree.SelectedCount > 1 then
  begin
   if Ask(qr_DeletePostings) then
    TnsPostingsTreeSingle.Instance.DeleteSelectedPostings(l_CurTreeView);
  end
  else
   with l_CurTreeView do
   begin
    l_CurNode := GetNode(Current);
    try
     if Ask(qr_DeletePosting, [l_CurNode.Text]) then
       TnsPostingsTreeSingle.Instance.DeletePosting(l_CurNode);
    finally
     l_CurNode := nil;
    end;
  end;
//#UC END# *4C84EE3801EB_4AAFA13C01B0exec_impl*
end;//TPrimPostingsListForm.PostingToolBar_ptDeletePosting_Execute

procedure TPrimPostingsListForm.PostingToolBar_SavePostList_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C84EE590206_4AAFA13C01B0test_var*
//#UC END# *4C84EE590206_4AAFA13C01B0test_var*
begin
//#UC START# *4C84EE590206_4AAFA13C01B0test_impl*
 aParams.Op.Flag[vcm_ofEnabled] := TdmStdRes.CanSavePostList;
//#UC END# *4C84EE590206_4AAFA13C01B0test_impl*
end;//TPrimPostingsListForm.PostingToolBar_SavePostList_Test

procedure TPrimPostingsListForm.PostingToolBar_SavePostList_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C84EE590206_4AAFA13C01B0exec_var*
//#UC END# *4C84EE590206_4AAFA13C01B0exec_var*
begin
//#UC START# *4C84EE590206_4AAFA13C01B0exec_impl*
 TdmStdRes.SavePostList;
//#UC END# *4C84EE590206_4AAFA13C01B0exec_impl*
end;//TPrimPostingsListForm.PostingToolBar_SavePostList_Execute

procedure TPrimPostingsListForm.PostingToolBar_ExportSelected_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C84EE750308_4AAFA13C01B0test_var*
//#UC END# *4C84EE750308_4AAFA13C01B0test_var*
begin
//#UC START# *4C84EE750308_4AAFA13C01B0test_impl*
 aParams.Op.Flag[vcm_ofEnabled] := tvPostings.TreeView.Tree.SelectedCount > 0;
//#UC END# *4C84EE750308_4AAFA13C01B0test_impl*
end;//TPrimPostingsListForm.PostingToolBar_ExportSelected_Test

procedure TPrimPostingsListForm.PostingToolBar_ExportSelected_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C84EE750308_4AAFA13C01B0exec_var*
var
 l_FO : TOpenDialog;
//#UC END# *4C84EE750308_4AAFA13C01B0exec_var*
begin
//#UC START# *4C84EE750308_4AAFA13C01B0exec_impl*
 l_FO := TvtSaveDialog.Create(Self);
 try
  with l_FO do
  begin
   Options := Options + [ofOverwritePrompt, ofPathMustExist];
   Filter := str_PrimeFilter.AsStr;
   Title := str_ExportPrimeTitle.AsStr;
   DefaultExt := vcmConstString(str_XMLFileExtension);
   FilterIndex := 1;
   FileName := '';
  end;
  if l_FO.Execute then
  try
   TnsPostingsTreeSingle.Instance.ExportSelected(tvPostings.TreeView, nsCStr(l_FO.FileName));
  except
   on EUnknownExportError do
    Say(err_ErrorWhileSavePostings);
  end;//try..except
 finally
  FreeAndNil(l_FO);
 end;//try..except
//#UC END# *4C84EE750308_4AAFA13C01B0exec_impl*
end;//TPrimPostingsListForm.PostingToolBar_ExportSelected_Execute

procedure TPrimPostingsListForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_PostingToolBar, nil);
  PublishOp(en_PostingToolBar, op_ptNewTheme, PostingToolBar_ptNewTheme_Execute, PostingToolBar_ptNewTheme_Test, nil, true);
  ShowInContextMenu(en_PostingToolBar, op_ptNewTheme, true, true);
  ShowInToolbar(en_PostingToolBar, op_ptNewTheme, true, true);
  PublishOp(en_PostingToolBar, op_ptEditPosting, PostingToolBar_ptEditPosting_Execute, PostingToolBar_ptEditPosting_Test, nil, true);
  ShowInContextMenu(en_PostingToolBar, op_ptEditPosting, true, true);
  ShowInToolbar(en_PostingToolBar, op_ptEditPosting, false, true);
  PublishOp(en_PostingToolBar, op_ptDeletePosting, PostingToolBar_ptDeletePosting_Execute, PostingToolBar_ptDeletePosting_Test, nil, true);
  ShowInContextMenu(en_PostingToolBar, op_ptDeletePosting, true, true);
  ShowInToolbar(en_PostingToolBar, op_ptDeletePosting, true, true);
  PublishOp(en_PostingToolBar, op_SavePostList, PostingToolBar_SavePostList_Execute, PostingToolBar_SavePostList_Test, nil);
  ShowInContextMenu(en_PostingToolBar, op_SavePostList, true);
  ShowInToolbar(en_PostingToolBar, op_SavePostList, true);
  PublishOp(en_PostingToolBar, op_ExportSelected, PostingToolBar_ExportSelected_Execute, PostingToolBar_ExportSelected_Test, nil);
  ShowInContextMenu(en_PostingToolBar, op_ExportSelected, true);
  ShowInToolbar(en_PostingToolBar, op_ExportSelected, false);
 end;//with Entities.Entities
end;

procedure TPrimPostingsListForm.MakeControls;
begin
 inherited;
 with AddUsertype(MyPostingListName,
  str_MyPostingListCaption,
  str_MyPostingListCaption,
  true,
  145,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccDisable) do
 begin
 end;//with AddUsertype(MyPostingListName
end;

{$IfEnd} //Monitorings AND not Admin

initialization
{$If defined(Monitorings) AND not defined(Admin)}
// Инициализация str_MyPostingListCaption
 str_MyPostingListCaption.Init;
{$IfEnd} //Monitorings AND not Admin
{$If defined(Monitorings) AND not defined(Admin)}
// Инициализация str_PrimeFilter
 str_PrimeFilter.Init;
{$IfEnd} //Monitorings AND not Admin
{$If defined(Monitorings) AND not defined(Admin)}
// Инициализация str_ExportPrimeTitle
 str_ExportPrimeTitle.Init;
{$IfEnd} //Monitorings AND not Admin
{$If defined(Monitorings) AND not defined(Admin)}
// Регистрация Tkw_PrimPostingsList_Control_tvPostings
 Tkw_PrimPostingsList_Control_tvPostings.Register('контрол::tvPostings', TeeTreeView);
{$IfEnd} //Monitorings AND not Admin
{$If defined(Monitorings) AND not defined(Admin)}
// Регистрация Tkw_PrimPostingsList_Control_tvPostings_Push
 Tkw_PrimPostingsList_Control_tvPostings_Push.Register('контрол::tvPostings:push');
{$IfEnd} //Monitorings AND not Admin

end.