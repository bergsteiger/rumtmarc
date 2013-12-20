unit NOT_FINISHED_nsNodes;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Data"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/Data/Tree/NOT_FINISHED_nsNodes.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> F1 Базовые определения предметной области::LegalDomain::Data::OldTree::nsNodes
//
// Узлы деревьев проекта.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

uses
  Classes
  {$If not defined(Admin)}
  ,
  nsWrapperNode
  {$IfEnd} //not Admin
  ,
  nsBaseNode
  ;

type
 RnsCacheableNode = class of TnsCacheableNode;

 TnsCacheableNode = class(TnsBaseNode)
 end;//TnsCacheableNode

 TnsRootNode = nsWrapperNode.TnsWrapperNode;

procedure NsGetCaption; overload; 
   {* Получить название адаптерного узла. }
procedure NsMakeTreeLevel;
   {* Сигнатура метода nsMakeTreeLevel }
procedure NsGetCaption; overload; 
   {* Сигнатура метода nsGetCaption }
procedure NsGetHint;
   {* Сигнатура метода nsGetHint }

implementation

// unit methods

procedure NsMakeTreeLevel;
//#UC START# *4ABB8B1B031D_47F60E8E019C_var*
//#UC END# *4ABB8B1B031D_47F60E8E019C_var*
begin
//#UC START# *4ABB8B1B031D_47F60E8E019C_impl*
 !!! Needs to be implemented !!!
//#UC END# *4ABB8B1B031D_47F60E8E019C_impl*
end;//NsMakeTreeLevel
// unit methods

procedure NsGetCaption;
//#UC START# *4ADDF529018F_47F60E8E019C_var*
//#UC END# *4ADDF529018F_47F60E8E019C_var*
begin
//#UC START# *4ADDF529018F_47F60E8E019C_impl*
 !!! Needs to be implemented !!!
//#UC END# *4ADDF529018F_47F60E8E019C_impl*
end;//NsGetCaption

procedure NsGetHint;
//#UC START# *4ADDF53403CA_47F60E8E019C_var*
//#UC END# *4ADDF53403CA_47F60E8E019C_var*
begin
//#UC START# *4ADDF53403CA_47F60E8E019C_impl*
 !!! Needs to be implemented !!!
//#UC END# *4ADDF53403CA_47F60E8E019C_impl*
end;//NsGetHint

procedure NsGetCaption;
//#UC START# *47F60EC50128_47F60E8E019C_var*
//#UC END# *47F60EC50128_47F60E8E019C_var*
begin
//#UC START# *47F60EC50128_47F60E8E019C_impl*
 !!! Needs to be implemented !!!
//#UC END# *47F60EC50128_47F60E8E019C_impl*
end;//NsGetCaption

end.