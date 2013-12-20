unit nsPrimeNode;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View$For F1 and Monitorings"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/nsPrimeNode.pas"
// Начат: 21.10.2009 19:48
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Common For Shell And Monitoring::Search::View$For F1 and Monitorings::Search$Presentation for F1 and Monitorings::TnsPrimeNode
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
  l3Tree_TLB,
  PrimeUnit,
  nsWrapperNode,
  PrimeDomainInterfaces
  ;
{$IfEnd} //Monitorings AND not Admin

{$If defined(Monitorings) AND not defined(Admin)}
type
 TnsPrimeNode = class(TnsWrapperNode, InsPrimeNode)
 private
 // private fields
   f_Prime : IPrime;
 protected
 // realized methods
   function pm_GetData: IPrime;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
 public
 // public methods
   constructor Create(const aPrime: IPrime); reintroduce;
   class function Make(const aPrime: IPrime): Il3Node; reintroduce;
 end;//TnsPrimeNode
{$IfEnd} //Monitorings AND not Admin

implementation

{$If defined(Monitorings) AND not defined(Admin)}
uses
  IOUnit,
  nsTypes
  ;
{$IfEnd} //Monitorings AND not Admin

{$If defined(Monitorings) AND not defined(Admin)}

// start class TnsPrimeNode

constructor TnsPrimeNode.Create(const aPrime: IPrime);
//#UC START# *4ADF2D5D01FC_4AC21C8401A8_var*
var
 l_Name: IString;
//#UC END# *4ADF2D5D01FC_4AC21C8401A8_var*
begin
//#UC START# *4ADF2D5D01FC_4AC21C8401A8_impl*
 inherited Create;
 f_Prime := aPrime;
 f_Prime.GetName(l_Name);
 try
  pm_SetName(nsWStr(l_Name));
 finally
  l_Name := nil;
 end;//try..finally
//#UC END# *4ADF2D5D01FC_4AC21C8401A8_impl*
end;//TnsPrimeNode.Create

class function TnsPrimeNode.Make(const aPrime: IPrime): Il3Node;
var
 l_Inst : TnsPrimeNode;
begin
 l_Inst := Create(aPrime);
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

function TnsPrimeNode.pm_GetData: IPrime;
//#UC START# *499032D40064_4AC21C8401A8get_var*
//#UC END# *499032D40064_4AC21C8401A8get_var*
begin
//#UC START# *499032D40064_4AC21C8401A8get_impl*
 Result := f_Prime;
//#UC END# *499032D40064_4AC21C8401A8get_impl*
end;//TnsPrimeNode.pm_GetData

procedure TnsPrimeNode.Cleanup;
//#UC START# *479731C50290_4AC21C8401A8_var*
//#UC END# *479731C50290_4AC21C8401A8_var*
begin
//#UC START# *479731C50290_4AC21C8401A8_impl*
 f_Prime := nil;
 inherited;
//#UC END# *479731C50290_4AC21C8401A8_impl*
end;//TnsPrimeNode.Cleanup

{$IfEnd} //Monitorings AND not Admin

end.