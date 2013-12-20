{$IfNDef HyperlinkOperations_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/HyperlinkOperations.imp.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Core::Base Operations::View::Navigation::HyperlinkOperations
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define HyperlinkOperations_imp}
{$If not defined(Admin) AND not defined(Monitorings)}
 _HyperlinkOperations_ = {abstract form} class(_HyperlinkOperations_Parent_)
 protected
  procedure InitEntities; override;
 protected
 // realized methods
   procedure HyperLink_Delete_Test(const aParams: IvcmTestParamsPrim);
   procedure HyperLink_Delete_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure HyperLink_Open_Test(const aParams: IvcmTestParamsPrim);
   procedure HyperLink_Open_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure HyperLink_OpenNewWindow_Test(const aParams: IvcmTestParamsPrim);
   procedure HyperLink_OpenNewWindow_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure HyperLink_NextHyperLink_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure HyperLink_PrevHyperLink_Execute(const aParams: IvcmExecuteParamsPrim);
 protected
 // protected methods
   procedure OpenHyperLink; virtual;
     {* Открывает текущую ссылку на которой стоит выделение }
 end;//_HyperlinkOperations_
{$IfEnd} //not Admin AND not Monitorings

{$Else HyperlinkOperations_imp}

{$If not defined(Admin) AND not defined(Monitorings)}

// start class _HyperlinkOperations_

procedure _HyperlinkOperations_.OpenHyperLink;
//#UC START# *502D447F03D5_4F1044DD0281_var*
var
 l_HyperLink: IevHyperLink;
//#UC END# *502D447F03D5_4F1044DD0281_var*
begin
//#UC START# *502D447F03D5_4F1044DD0281_impl*
 if Supports(Text.Selection, IevHyperlink, l_HyperLink) then
  nsProcessHyperLink(l_HyperLink, False, Self, Aggregate, _Instance_R_(Self).Document);
//#UC END# *502D447F03D5_4F1044DD0281_impl*
end;//_HyperlinkOperations_.OpenHyperLink

procedure _HyperlinkOperations_.HyperLink_Delete_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C3C758C0183_4F1044DD0281test_var*
var
 l_Hyperlink : IevHyperlink;
 l_TempPara  : IeePara;
 l_TextPara  : IeeTextPara;
 l_Selection : InevSelection;
//#UC END# *4C3C758C0183_4F1044DD0281test_var*
begin
//#UC START# *4C3C758C0183_4F1044DD0281test_impl*
 if (aParams.Control Is TevCustomEditor) then
 begin
  l_Selection := TevCustomEditor(aParams.Control).Selection;
  if (l_Selection <> nil) then
  begin
   if Supports(l_Selection, IevHyperlink, l_Hyperlink) and l_Hyperlink.Exists then
    try
     l_TempPara := TeePara.Make(l_Hyperlink.Para, aParams.Control As IeeDocumentEx);
     try
      if Supports(l_TempPara, IeeTextPara, l_TextPara) then
       try
        if not l_TextPara.IsUserComment then
         aParams.Op.Flag[vcm_ofEnabled] := false;
       finally
        l_TextPara := nil;
       end//try..finally
      else
       aParams.Op.Flag[vcm_ofEnabled] := false;
     finally
      l_TempPara := nil;
     end;
   finally
    l_Hyperlink := nil;
   end//try..finally
   else
    aParams.Op.Flag[vcm_ofEnabled] := false;
  end
  else
   aParams.Op.Flag[vcm_ofEnabled] := false;
 end//aParams.Control Is TevCustomEditor
 else
  aParams.Op.Flag[vcm_ofEnabled] := false;
//#UC END# *4C3C758C0183_4F1044DD0281test_impl*
end;//_HyperlinkOperations_.HyperLink_Delete_Test

procedure _HyperlinkOperations_.HyperLink_Delete_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C3C758C0183_4F1044DD0281exec_var*
var
 l_HyperLink: IevHyperLink;
//#UC END# *4C3C758C0183_4F1044DD0281exec_var*
begin
//#UC START# *4C3C758C0183_4F1044DD0281exec_impl*
 if Supports(Text.Selection, IevHyperlink, l_HyperLink) then
  l_HyperLink.Delete;
//#UC END# *4C3C758C0183_4F1044DD0281exec_impl*
end;//_HyperlinkOperations_.HyperLink_Delete_Execute

procedure _HyperlinkOperations_.HyperLink_Open_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C7F8B870162_4F1044DD0281test_var*
var
 l_HyperLink: IevHyperLink;
//#UC END# *4C7F8B870162_4F1044DD0281test_var*
begin
//#UC START# *4C7F8B870162_4F1044DD0281test_impl*
 aParams.Op.Flag[vcm_ofEnabled] := Supports(Text.Selection, IevHyperlink, l_HyperLink)
  and l_HyperLink.Exists;
//#UC END# *4C7F8B870162_4F1044DD0281test_impl*
end;//_HyperlinkOperations_.HyperLink_Open_Test

procedure _HyperlinkOperations_.HyperLink_Open_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C7F8B870162_4F1044DD0281exec_var*
//#UC END# *4C7F8B870162_4F1044DD0281exec_var*
begin
//#UC START# *4C7F8B870162_4F1044DD0281exec_impl*
 OpenHyperLink;
//#UC END# *4C7F8B870162_4F1044DD0281exec_impl*
end;//_HyperlinkOperations_.HyperLink_Open_Execute

procedure _HyperlinkOperations_.HyperLink_OpenNewWindow_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C7F8BBB01B2_4F1044DD0281test_var*
var
 l_Hyperlink: IevHyperlink;
//#UC END# *4C7F8BBB01B2_4F1044DD0281test_var*
begin
//#UC START# *4C7F8BBB01B2_4F1044DD0281test_impl*
 aParams.Op.Flag[vcm_ofEnabled] := Supports(Text.Selection, IevHyperlink, l_HyperLink)
  and l_HyperLink.Exists and (l_HyperLink.Address{$IfDef XE4}.rTafwAddress{$EndIf}.TypeID <> CI_ExternalOperation);
//#UC END# *4C7F8BBB01B2_4F1044DD0281test_impl*
end;//_HyperlinkOperations_.HyperLink_OpenNewWindow_Test

procedure _HyperlinkOperations_.HyperLink_OpenNewWindow_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C7F8BBB01B2_4F1044DD0281exec_var*
var
 l_HyperLink: IevHyperLink;
//#UC END# *4C7F8BBB01B2_4F1044DD0281exec_var*
begin
//#UC START# *4C7F8BBB01B2_4F1044DD0281exec_impl*
 if Supports(Text.Selection, IevHyperlink, l_HyperLink) then
  nsProcessHyperLink(l_HyperLink, True, Self, Aggregate, _Instance_R_(Self).Document);
//#UC END# *4C7F8BBB01B2_4F1044DD0281exec_impl*
end;//_HyperlinkOperations_.HyperLink_OpenNewWindow_Execute

procedure _HyperlinkOperations_.HyperLink_NextHyperLink_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C7F8BD80114_4F1044DD0281exec_var*
//#UC END# *4C7F8BD80114_4F1044DD0281exec_var*
begin
//#UC START# *4C7F8BD80114_4F1044DD0281exec_impl*
 Text.NextHyperlink;
//#UC END# *4C7F8BD80114_4F1044DD0281exec_impl*
end;//_HyperlinkOperations_.HyperLink_NextHyperLink_Execute

procedure _HyperlinkOperations_.HyperLink_PrevHyperLink_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C7F8BEA01B2_4F1044DD0281exec_var*
//#UC END# *4C7F8BEA01B2_4F1044DD0281exec_var*
begin
//#UC START# *4C7F8BEA01B2_4F1044DD0281exec_impl*
 Text.PrevHyperlink;
//#UC END# *4C7F8BEA01B2_4F1044DD0281exec_impl*
end;//_HyperlinkOperations_.HyperLink_PrevHyperLink_Execute

procedure _HyperlinkOperations_.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_HyperLink, nil);
  PublishOp(en_HyperLink, op_Delete, HyperLink_Delete_Execute, HyperLink_Delete_Test, nil, true);
  ShowInToolbar(en_HyperLink, op_Delete, false, true);
  PublishOp(en_HyperLink, op_Open, HyperLink_Open_Execute, HyperLink_Open_Test, nil);
  ShowInContextMenu(en_HyperLink, op_Open, true);
  ShowInToolbar(en_HyperLink, op_Open, false);
  PublishOp(en_HyperLink, op_OpenNewWindow, HyperLink_OpenNewWindow_Execute, HyperLink_OpenNewWindow_Test, nil);
  ShowInContextMenu(en_HyperLink, op_OpenNewWindow, true);
  ShowInToolbar(en_HyperLink, op_OpenNewWindow, false);
  PublishOp(en_HyperLink, op_NextHyperLink, HyperLink_NextHyperLink_Execute, nil, nil);
  PublishOp(en_HyperLink, op_PrevHyperLink, HyperLink_PrevHyperLink_Execute, nil, nil);
 end;//with Entities.Entities
end;

{$IfEnd} //not Admin AND not Monitorings

{$EndIf HyperlinkOperations_imp}
