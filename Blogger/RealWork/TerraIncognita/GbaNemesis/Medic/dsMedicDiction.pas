unit dsMedicDiction;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Medic"
// Автор: Лукьянец Р.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/Medic/dsMedicDiction.pas"
// Начат: 2008/03/06 10:02:57
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ViewAreaControllerImp::Class>> F1 Встроенные продукты::Inpharm::Medic::Medic::TdsMedicDiction
//
// Список медицинских терминов
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
  DocumentInterfaces,
  DocumentUnit,
  DynamicTreeUnit,
  l3TreeInterfaces,
  DocumentAndListInterfaces,
  CommonDictionInterfaces,
  l3InternalInterfaces,
  bsInterfaces,
  ExtCtrls,
  TreeInterfaces
  {$If not defined(NoVCM)}
  ,
  vcmInterfaces
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmExternalInterfaces
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmLocalInterfaces
  {$IfEnd} //not NoVCM
  ,
  l3ProtoObjectWithCOMQI,
  l3Interfaces,
  l3NotifyPtrList,
  vcmControllers {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 _FormDataSourceType_ = IdsCommonDiction;
 _InitDataType_ = IdeDocInfo;
 {$Include w:\garant6x\implementation\Garant\GbaNemesis\CommonDiction\dsCommonDiction.imp.pas}
 TdsMedicDiction = {final vac} class(_dsCommonDiction_)
  {* Список медицинских терминов }
 protected
 // realized methods
   function MakeSimpleTree: Il3SimpleTree; override;
     {* Создать данные дерева }
   function MakeDocInfoForCurrentChanged(const aDoc: IDocument): IdeDocInfo; override;
 end;//TdsMedicDiction
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  deMedicDiction,
  nsMedicDictionTree,
  BaseTypesUnit,
  SysUtils,
  l3Base,
  vtUtils,
  vtStdRes,
  nsNewCachableNode,
  Windows,
  l3InterfacesMisc
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

type _Instance_R_ = TdsMedicDiction;

{$Include w:\garant6x\implementation\Garant\GbaNemesis\CommonDiction\dsCommonDiction.imp.pas}

// start class TdsMedicDiction

function TdsMedicDiction.MakeSimpleTree: Il3SimpleTree;
//#UC START# *47F4C2B9014A_4925595900C8_var*
//#UC END# *47F4C2B9014A_4925595900C8_var*
begin
//#UC START# *47F4C2B9014A_4925595900C8_impl*
 Result := TnsMedicDictionTree.Make;
//#UC END# *47F4C2B9014A_4925595900C8_impl*
end;//TdsMedicDiction.MakeSimpleTree

function TdsMedicDiction.MakeDocInfoForCurrentChanged(const aDoc: IDocument): IdeDocInfo;
//#UC START# *49254515003C_4925595900C8_var*
//#UC END# *49254515003C_4925595900C8_var*
begin
//#UC START# *49254515003C_4925595900C8_impl*
 Result := TdeMedicDiction.Make(aDoc);
//#UC END# *49254515003C_4925595900C8_impl*
end;//TdsMedicDiction.MakeDocInfoForCurrentChanged

{$IfEnd} //not Admin AND not Monitorings

end.