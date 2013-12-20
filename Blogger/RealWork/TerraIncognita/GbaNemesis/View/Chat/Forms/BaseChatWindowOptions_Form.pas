unit BaseChatWindowOptions_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Chat/Forms/BaseChatWindowOptions_Form.pas"
// Начат: 06.09.2010 15:07
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMContainer::Class>> F1 Встроенные продукты::Chat::View::Chat::BaseChatWindowOptions
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  OfficeLike_Usual_Controls,
  BaseChatWindow_Form,
  Base_Operations_Chat_Controls,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TBaseChatWindowOptionsForm = {form} class(TBaseChatWindowForm)
 protected
  procedure InitEntities; override;
 protected
 // realized methods
   procedure Chat_History_Execute(const aParams: IvcmExecuteParamsPrim);
 end;//TBaseChatWindowOptionsForm

 TvcmContainerFormRef = TBaseChatWindowOptionsForm;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  StdRes {a},
  OfficeLike_Result_Controls,
  OfficeLike_ResultEx_Controls
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

// start class TBaseChatWindowOptionsForm

procedure TBaseChatWindowOptionsForm.Chat_History_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C84CC2E0253_4C84CB6F0007exec_var*
//#UC END# *4C84CC2E0253_4C84CB6F0007exec_var*
begin
//#UC START# *4C84CC2E0253_4C84CB6F0007exec_impl*
 TdmStdRes.MakeChatDispatcher.OpenChatHistoryByID(UserID);
//#UC END# *4C84CC2E0253_4C84CB6F0007exec_impl*
end;//TBaseChatWindowOptionsForm.Chat_History_Execute

procedure TBaseChatWindowOptionsForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_Edit, nil);
  PublishFormEntity(en_Chat, nil);
  ToolbarAtBottom(en_Chat);
  PublishOp(en_Edit, op_Delete, nil, nil, nil);
  ShowInContextMenu(en_Edit, op_Delete, true);
  ShowInToolbar(en_Edit, op_Delete, false);
  PublishOp(en_Chat, op_History, Chat_History_Execute, nil, nil);
  ShowInContextMenu(en_Chat, op_History, false);
  ShowInToolbar(en_Chat, op_History, true);
  ShowInContextMenu(en_Result, op_Cancel, false);
  ShowInToolbar(en_Result, op_Cancel, true);
  
  ShowInContextMenu(en_Result, op_OkExt, false);
  ShowInToolbar(en_Result, op_OkExt, true);
 end;//with Entities.Entities
end;

{$IfEnd} //not Admin AND not Monitorings

end.