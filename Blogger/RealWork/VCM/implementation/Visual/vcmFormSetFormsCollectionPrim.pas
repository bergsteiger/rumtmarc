unit vcmFormSetFormsCollectionPrim;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "VCM$Visual"
// Модуль: "w:/common/components/gui/Garant/VCM/implementation/Visual/vcmFormSetFormsCollectionPrim.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::VCM$Visual::FormSets::TvcmFormSetFormsCollectionPrim
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
  vcmFormSetFormsCollectionItemModelPart,
  vcmFormSetFormsCollectionPrimPrim
  ;
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
type
 TvcmFormSetFormsCollectionPrim = class(TvcmFormSetFormsCollectionPrimPrim)
 public
 // public methods
   function AddZone(const aName: AnsiString;
     aZoneType: TvcmZoneType;
     const aFormDescriptor: TvcmFormDescriptor): TvcmFormSetFormsCollectionItemModelPart;
 end;//TvcmFormSetFormsCollectionPrim
{$IfEnd} //not NoVCM

implementation

{$If not defined(NoVCM)}
uses
  SysUtils,
  vcmFormSetFormsCollectionItem
  ;
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}

// start class TvcmFormSetFormsCollectionPrim

function TvcmFormSetFormsCollectionPrim.AddZone(const aName: AnsiString;
  aZoneType: TvcmZoneType;
  const aFormDescriptor: TvcmFormDescriptor): TvcmFormSetFormsCollectionItemModelPart;
//#UC START# *4FFC4D6E00E1_4FFC4CD30122_var*
var
 l_Item : TvcmFormSetFormsCollectionItemModelPart;
//#UC END# *4FFC4D6E00E1_4FFC4CD30122_var*
begin
//#UC START# *4FFC4D6E00E1_4FFC4CD30122_impl*
 l_Item := TvcmFormSetFormsCollectionItemModelPart.Create;
 try
  Add(l_Item);
  Result := l_Item;
 finally
  FreeAndNil(l_Item);
 end;//try..finally
 Result.Name := aName;
 Result.FormDescriptor := @aFormDescriptor;
 //Result.FormName := aFormDescriptor.rName;
 Result.ZoneType := aZoneType;
//#UC END# *4FFC4D6E00E1_4FFC4CD30122_impl*
end;//TvcmFormSetFormsCollectionPrim.AddZone

{$IfEnd} //not NoVCM

end.