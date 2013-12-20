unit nsEntitiesTreeDataObject;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Nemesis"
// Модуль: "w:/common/components/gui/Garant/Nemesis/Tree/nsEntitiesTreeDataObject.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi For F1::Nemesis::TreeDataObjects::TnsEntitiesTreeDataObject
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\common\components\gui\Garant\Nemesis\nscDefine.inc}

interface

{$If defined(Nemesis) AND not defined(DesignTimeLibrary)}
uses
  evNodeData,
  l3Interfaces
  ;
{$IfEnd} //Nemesis AND not DesignTimeLibrary

{$If defined(Nemesis) AND not defined(DesignTimeLibrary)}
type
 TnsEntitiesTreeDataObject = class(TevNodeData)
 protected
 // overridden protected methods
   function DoGetData(const aFormatEtcIn: TFormatEtc;
    var medium: Tl3StoragePlace): HResult; override;
   function DoGetDataHere(const aFormatEtcIn: TFormatEtc;
    const medium: Tl3StoragePlace): HResult; override;
   function DoQueryGetData(const aFormatEtc: TFormatEtc): HResult; override;
   function ExtDataClass: RDataClass; override;
 end;//TnsEntitiesTreeDataObject
{$IfEnd} //Nemesis AND not DesignTimeLibrary

implementation

{$If defined(Nemesis) AND not defined(DesignTimeLibrary)}
uses
  nsNodeDataObject,
  Windows,
  BaseTypesUnit
  ;
{$IfEnd} //Nemesis AND not DesignTimeLibrary

{$If defined(Nemesis) AND not defined(DesignTimeLibrary)}

// start class TnsEntitiesTreeDataObject

function TnsEntitiesTreeDataObject.DoGetData(const aFormatEtcIn: TFormatEtc;
  var medium: Tl3StoragePlace): HResult;
//#UC START# *48F3495D0398_48F73BBD02B3_var*
//#UC END# *48F3495D0398_48F73BBD02B3_var*
begin
//#UC START# *48F3495D0398_48F73BBD02B3_impl*
 try
  Result := inherited DoGetData(aFormatEtcIn, medium);
 except
  on ECanNotFindData do
   Result := E_Fail;
 end;
//#UC END# *48F3495D0398_48F73BBD02B3_impl*
end;//TnsEntitiesTreeDataObject.DoGetData

function TnsEntitiesTreeDataObject.DoGetDataHere(const aFormatEtcIn: TFormatEtc;
  const medium: Tl3StoragePlace): HResult;
//#UC START# *48F349AE00F1_48F73BBD02B3_var*
//#UC END# *48F349AE00F1_48F73BBD02B3_var*
begin
//#UC START# *48F349AE00F1_48F73BBD02B3_impl*
 try
  Result := inherited DoGetDataHere(aFormatEtcIn, medium);
 except
  on ECanNotFindData do
   Result := E_Fail;
 end;
//#UC END# *48F349AE00F1_48F73BBD02B3_impl*
end;//TnsEntitiesTreeDataObject.DoGetDataHere

function TnsEntitiesTreeDataObject.DoQueryGetData(const aFormatEtc: TFormatEtc): HResult;
//#UC START# *48F359680368_48F73BBD02B3_var*
//#UC END# *48F359680368_48F73BBD02B3_var*
begin
//#UC START# *48F359680368_48F73BBD02B3_impl*
 try
  Result := inherited DoQueryGetData(aFormatEtc);
 except
  on ECanNotFindData do
   Result := E_Fail;
 end;
//#UC END# *48F359680368_48F73BBD02B3_impl*
end;//TnsEntitiesTreeDataObject.DoQueryGetData

function TnsEntitiesTreeDataObject.ExtDataClass: RDataClass;
//#UC START# *48F8D47302FD_48F73BBD02B3_var*
//#UC END# *48F8D47302FD_48F73BBD02B3_var*
begin
//#UC START# *48F8D47302FD_48F73BBD02B3_impl*
 Result := TnsNodeDataObject;
//#UC END# *48F8D47302FD_48F73BBD02B3_impl*
end;//TnsEntitiesTreeDataObject.ExtDataClass

{$IfEnd} //Nemesis AND not DesignTimeLibrary

end.