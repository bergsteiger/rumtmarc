unit NOT_FINISHED_nsQueryAttribute;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Search"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/Search/NOT_FINISHED_nsQueryAttribute.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> F1 Базовые определения предметной области::LegalDomain::Search::nsQueryAttribute::nsQueryAttribute
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

uses
  BaseTreeSupportUnit,
  DynamicTreeUnit,
  SearchUnit,
  l3Interfaces,
  l3CacheableBase,
  nsQueryInterfaces,
  evQueryCardInt
  ;

type
 TqaMgrSearch = class( {$If not defined(Admin)}, IqaMgrSearch{$IfEnd} //not Admin
 )
 private
 // private fields
   f_FormName : Il3CString;
   f_Query : IQuery;
 protected
 // realized methods
   {$If not defined(Admin)}
   function Get_Query: IQuery;
   procedure Set_Query(const aValue: IQuery);
   {$IfEnd} //not Admin
 end;//TqaMgrSearch

 TqaReq = class(Tl3CacheableBase {$If not defined(Admin)}, IqaReq{$IfEnd} //not Admin
 )
  {* Реквизит. }
 private
 // private fields
   f_MgrSearch : IqaMgrSearch;
   f_EditorReq : IevReq;
    {* Интерфейс реквизита из редактора.}
 protected
 // realized methods
   {$If not defined(Admin)}
   function Get_EditorReq: IevReq;
   procedure Set_EditorReq(const aValue: IevReq);
   {$IfEnd} //not Admin
   {$If not defined(Admin)}
   function Get_TagCaption: Il3CString;
   procedure Set_TagCaption(const aValue: Il3CString);
   {$IfEnd} //not Admin
   {$If not defined(Admin)}
   function Get_TagName: Il3CString;
   procedure Set_TagName(const aValue: Il3CString);
   {$IfEnd} //not Admin
   function Get_Modified: Boolean;
   procedure Set_Modified(aValue: Boolean);
 protected
 // overridden protected methods
   procedure ClearFields; override;
 end;//TqaReq

 TqaEventReq = class(TqaReq)
  {* Класс создан исключительно ради поддержки интерфейса IevModelListner. }
 end;//TqaEventReq

 TqaReqComboField = class(TqaEventReq)
 end;//TqaReqComboField

 TqaReqContext = class(TqaReqComboField)
 end;//TqaReqContext

 TqaCommonStrReq = class(TqaReqContext)
 end;//TqaCommonStrReq

 TqaReqMemo = class(TqaCommonStrReq)
 end;//TqaReqMemo

 TqaReqStr = class(TqaCommonStrReq)
 end;//TqaReqStr

 TqaReqEMail = class(TqaReqStr)
 end;//TqaReqEMail

 TqaReqAttribute = class(TqaReqComboField {$If not defined(Admin)}, IqaReqAttribute{$IfEnd} //not Admin
 )
 end;//TqaReqAttribute

 TqaReqPhone = class(TqaEventReq {$If not defined(Admin)}, IqaPhoneReq{$IfEnd} //not Admin
 )
 protected
 // realized methods
   {$If not defined(Admin)}
   function Get_Code: Il3CString;
   procedure Set_Code(const aValue: Il3CString);
   {$IfEnd} //not Admin
   {$If not defined(Admin)}
   function Get_Number: Il3CString;
   procedure Set_Number(const aValue: Il3CString);
   {$IfEnd} //not Admin
 end;//TqaReqPhone

 TqaReqDate = class(TqaEventReq {$If not defined(Admin)}, IqaDateReq{$IfEnd} //not Admin
 )
 end;//TqaReqDate

 TqaReqNum = class(TqaReqAttribute)
 end;//TqaReqNum

 TqaAttrInfoList = class
  {* Список описателей атрибутов. }
 end;//TqaAttrInfoList

 TqaAttrInfo = class
  {* Предназначен для сохранения IDictNode и типа операции. }
 private
 // private fields
   f_Node : INodeBase;
   f_Mask : Il3CString;
 end;//TqaAttrInfo

 TqaDateReqDataHolder = class( {$If not defined(Admin)}, IqaDateReqDataHolder{$IfEnd} //not Admin
 )
 private
 // private fields
   f_ReqCaption : Il3CString;
 end;//TqaDateReqDataHolder

 TqaHistory = class( {$If not defined(Admin)}, IqaHistory{$IfEnd} //not Admin
 )
 private
 // private fields
   f_Filter : INode;
 protected
 // realized methods
   {$If not defined(Admin)}
   function Get_Query: IQuery;
   procedure Set_Query(const aValue: IQuery);
   {$IfEnd} //not Admin
   {$If not defined(Admin)}
   function Get_Filter: INode;
   procedure Set_Filter(const aValue: INode);
   {$IfEnd} //not Admin
 public
 // public fields
   f_Query : IQuery;
 end;//TqaHistory

implementation

uses
  SearchRes
  ;

// start class TqaMgrSearch

{$If not defined(Admin)}
function TqaMgrSearch.Get_Query: IQuery;
//#UC START# *468395DE02D4_4683A4A90094get_var*
//#UC END# *468395DE02D4_4683A4A90094get_var*
begin
//#UC START# *468395DE02D4_4683A4A90094get_impl*
 !!! Needs to be implemented !!!
//#UC END# *468395DE02D4_4683A4A90094get_impl*
end;//TqaMgrSearch.Get_Query
{$IfEnd} //not Admin

{$If not defined(Admin)}
procedure TqaMgrSearch.Set_Query(const aValue: IQuery);
//#UC START# *468395DE02D4_4683A4A90094set_var*
//#UC END# *468395DE02D4_4683A4A90094set_var*
begin
//#UC START# *468395DE02D4_4683A4A90094set_impl*
 !!! Needs to be implemented !!!
//#UC END# *468395DE02D4_4683A4A90094set_impl*
end;//TqaMgrSearch.Set_Query
{$IfEnd} //not Admin
// start class TqaReq

{$If not defined(Admin)}
function TqaReq.Get_EditorReq: IevReq;
//#UC START# *46837AD603C1_46839C340218get_var*
//#UC END# *46837AD603C1_46839C340218get_var*
begin
//#UC START# *46837AD603C1_46839C340218get_impl*
 !!! Needs to be implemented !!!
//#UC END# *46837AD603C1_46839C340218get_impl*
end;//TqaReq.Get_EditorReq
{$IfEnd} //not Admin

{$If not defined(Admin)}
procedure TqaReq.Set_EditorReq(const aValue: IevReq);
//#UC START# *46837AD603C1_46839C340218set_var*
//#UC END# *46837AD603C1_46839C340218set_var*
begin
//#UC START# *46837AD603C1_46839C340218set_impl*
 !!! Needs to be implemented !!!
//#UC END# *46837AD603C1_46839C340218set_impl*
end;//TqaReq.Set_EditorReq
{$IfEnd} //not Admin

{$If not defined(Admin)}
function TqaReq.Get_TagCaption: Il3CString;
//#UC START# *46837B020021_46839C340218get_var*
//#UC END# *46837B020021_46839C340218get_var*
begin
//#UC START# *46837B020021_46839C340218get_impl*
 !!! Needs to be implemented !!!
//#UC END# *46837B020021_46839C340218get_impl*
end;//TqaReq.Get_TagCaption
{$IfEnd} //not Admin

{$If not defined(Admin)}
procedure TqaReq.Set_TagCaption(const aValue: Il3CString);
//#UC START# *46837B020021_46839C340218set_var*
//#UC END# *46837B020021_46839C340218set_var*
begin
//#UC START# *46837B020021_46839C340218set_impl*
 !!! Needs to be implemented !!!
//#UC END# *46837B020021_46839C340218set_impl*
end;//TqaReq.Set_TagCaption
{$IfEnd} //not Admin

{$If not defined(Admin)}
function TqaReq.Get_TagName: Il3CString;
//#UC START# *46837B1D02AB_46839C340218get_var*
//#UC END# *46837B1D02AB_46839C340218get_var*
begin
//#UC START# *46837B1D02AB_46839C340218get_impl*
 !!! Needs to be implemented !!!
//#UC END# *46837B1D02AB_46839C340218get_impl*
end;//TqaReq.Get_TagName
{$IfEnd} //not Admin

{$If not defined(Admin)}
procedure TqaReq.Set_TagName(const aValue: Il3CString);
//#UC START# *46837B1D02AB_46839C340218set_var*
//#UC END# *46837B1D02AB_46839C340218set_var*
begin
//#UC START# *46837B1D02AB_46839C340218set_impl*
 !!! Needs to be implemented !!!
//#UC END# *46837B1D02AB_46839C340218set_impl*
end;//TqaReq.Set_TagName
{$IfEnd} //not Admin

function TqaReq.Get_Modified: Boolean;
//#UC START# *4CD0181A0355_46839C340218get_var*
//#UC END# *4CD0181A0355_46839C340218get_var*
begin
//#UC START# *4CD0181A0355_46839C340218get_impl*
 !!! Needs to be implemented !!!
//#UC END# *4CD0181A0355_46839C340218get_impl*
end;//TqaReq.Get_Modified

procedure TqaReq.Set_Modified(aValue: Boolean);
//#UC START# *4CD0181A0355_46839C340218set_var*
//#UC END# *4CD0181A0355_46839C340218set_var*
begin
//#UC START# *4CD0181A0355_46839C340218set_impl*
 !!! Needs to be implemented !!!
//#UC END# *4CD0181A0355_46839C340218set_impl*
end;//TqaReq.Set_Modified

procedure TqaReq.ClearFields;
 {-}
begin
 f_MgrSearch := nil;
 f_EditorReq := nil;
 inherited;
end;//TqaReq.ClearFields
// start class TqaReqPhone

{$If not defined(Admin)}
function TqaReqPhone.Get_Code: Il3CString;
//#UC START# *468395A20036_4683A447009Eget_var*
//#UC END# *468395A20036_4683A447009Eget_var*
begin
//#UC START# *468395A20036_4683A447009Eget_impl*
 !!! Needs to be implemented !!!
//#UC END# *468395A20036_4683A447009Eget_impl*
end;//TqaReqPhone.Get_Code
{$IfEnd} //not Admin

{$If not defined(Admin)}
procedure TqaReqPhone.Set_Code(const aValue: Il3CString);
//#UC START# *468395A20036_4683A447009Eset_var*
//#UC END# *468395A20036_4683A447009Eset_var*
begin
//#UC START# *468395A20036_4683A447009Eset_impl*
 !!! Needs to be implemented !!!
//#UC END# *468395A20036_4683A447009Eset_impl*
end;//TqaReqPhone.Set_Code
{$IfEnd} //not Admin

{$If not defined(Admin)}
function TqaReqPhone.Get_Number: Il3CString;
//#UC START# *468395AD02B5_4683A447009Eget_var*
//#UC END# *468395AD02B5_4683A447009Eget_var*
begin
//#UC START# *468395AD02B5_4683A447009Eget_impl*
 !!! Needs to be implemented !!!
//#UC END# *468395AD02B5_4683A447009Eget_impl*
end;//TqaReqPhone.Get_Number
{$IfEnd} //not Admin

{$If not defined(Admin)}
procedure TqaReqPhone.Set_Number(const aValue: Il3CString);
//#UC START# *468395AD02B5_4683A447009Eset_var*
//#UC END# *468395AD02B5_4683A447009Eset_var*
begin
//#UC START# *468395AD02B5_4683A447009Eset_impl*
 !!! Needs to be implemented !!!
//#UC END# *468395AD02B5_4683A447009Eset_impl*
end;//TqaReqPhone.Set_Number
{$IfEnd} //not Admin
// start class TqaHistory

{$If not defined(Admin)}
function TqaHistory.Get_Query: IQuery;
//#UC START# *468396BC0323_4683A6A4010Cget_var*
//#UC END# *468396BC0323_4683A6A4010Cget_var*
begin
//#UC START# *468396BC0323_4683A6A4010Cget_impl*
 !!! Needs to be implemented !!!
//#UC END# *468396BC0323_4683A6A4010Cget_impl*
end;//TqaHistory.Get_Query
{$IfEnd} //not Admin

{$If not defined(Admin)}
procedure TqaHistory.Set_Query(const aValue: IQuery);
//#UC START# *468396BC0323_4683A6A4010Cset_var*
//#UC END# *468396BC0323_4683A6A4010Cset_var*
begin
//#UC START# *468396BC0323_4683A6A4010Cset_impl*
 !!! Needs to be implemented !!!
//#UC END# *468396BC0323_4683A6A4010Cset_impl*
end;//TqaHistory.Set_Query
{$IfEnd} //not Admin

{$If not defined(Admin)}
function TqaHistory.Get_Filter: INode;
//#UC START# *468397930156_4683A6A4010Cget_var*
//#UC END# *468397930156_4683A6A4010Cget_var*
begin
//#UC START# *468397930156_4683A6A4010Cget_impl*
 !!! Needs to be implemented !!!
//#UC END# *468397930156_4683A6A4010Cget_impl*
end;//TqaHistory.Get_Filter
{$IfEnd} //not Admin

{$If not defined(Admin)}
procedure TqaHistory.Set_Filter(const aValue: INode);
//#UC START# *468397930156_4683A6A4010Cset_var*
//#UC END# *468397930156_4683A6A4010Cset_var*
begin
//#UC START# *468397930156_4683A6A4010Cset_impl*
 !!! Needs to be implemented !!!
//#UC END# *468397930156_4683A6A4010Cset_impl*
end;//TqaHistory.Set_Filter
{$IfEnd} //not Admin

end.