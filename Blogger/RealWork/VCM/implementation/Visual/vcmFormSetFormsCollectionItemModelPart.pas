unit vcmFormSetFormsCollectionItemModelPart;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "VCM$Visual"
// Модуль: "w:/common/components/gui/Garant/VCM/implementation/Visual/vcmFormSetFormsCollectionItemModelPart.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::VCM$Visual::FormSets::TvcmFormSetFormsCollectionItemModelPart
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\common\components\gui\Garant\VCM\vcmDefine.inc}

interface

{$If not defined(NoVCM)}
uses
  vcmInterfaces,
  vcmFormSetFormsCollectionItem
  ;
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
type
 TvcmFormSetFormsCollectionItemModelPart = class(TvcmFormSetFormsCollectionItem)
 public
 // public methods
   function AddZone(const aName: AnsiString;
     aZoneType: TvcmZoneType;
     const aFormDescriptor: TvcmFormDescriptor): TvcmFormSetFormsCollectionItemModelPart;
 end;//TvcmFormSetFormsCollectionItemModelPart
{$IfEnd} //not NoVCM

implementation

{$If not defined(NoVCM)}
uses
  vcmFormSetFormsCollectionPrim
  ;
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}

// start class TvcmFormSetFormsCollectionItemModelPart

function TvcmFormSetFormsCollectionItemModelPart.AddZone(const aName: AnsiString;
  aZoneType: TvcmZoneType;
  const aFormDescriptor: TvcmFormDescriptor): TvcmFormSetFormsCollectionItemModelPart;
//#UC START# *4FFC4EDE01B9_4FFC4EA6004A_var*
//#UC END# *4FFC4EDE01B9_4FFC4EA6004A_var*
begin
//#UC START# *4FFC4EDE01B9_4FFC4EA6004A_impl*
 CheckChilds;
 Result := TvcmFormSetFormsCollectionPrim(Childs).AddZone(aName, aZoneType, aFormDescriptor);
//#UC END# *4FFC4EDE01B9_4FFC4EA6004A_impl*
end;//TvcmFormSetFormsCollectionItemModelPart.AddZone

{$IfEnd} //not NoVCM

end.