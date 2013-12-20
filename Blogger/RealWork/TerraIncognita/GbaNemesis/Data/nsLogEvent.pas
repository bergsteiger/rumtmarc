unit nsLogEvent;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Data"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/Data/nsLogEvent.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Базовые определения предметной области::LegalDomain::Data::Logging::TnsLogEvent
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

uses
  LoggingUnit,
  l3SimpleObject
  ;

type
 TnsLogEvent = class(Tl3SimpleObject)
 protected
 // protected methods
   class function MakeParamsList: ILogEventData;
   class function GetLogger: ILogManager;
 end;//TnsLogEvent

implementation

uses
  DataAdapter
  ;

// start class TnsLogEvent

class function TnsLogEvent.MakeParamsList: ILogEventData;
//#UC START# *4B0A61540153_4B0A6109010C_var*
//#UC END# *4B0A61540153_4B0A6109010C_var*
begin
//#UC START# *4B0A61540153_4B0A6109010C_impl*
 Result := DefDataAdapter.NativeAdapter.MakeLogEventData;
//#UC END# *4B0A61540153_4B0A6109010C_impl*
end;//TnsLogEvent.MakeParamsList

class function TnsLogEvent.GetLogger: ILogManager;
//#UC START# *4B0A65A302E7_4B0A6109010C_var*
//#UC END# *4B0A65A302E7_4B0A6109010C_var*
begin
//#UC START# *4B0A65A302E7_4B0A6109010C_impl*
 Result := DefDataAdapter.LogManager;
//#UC END# *4B0A65A302E7_4B0A6109010C_impl*
end;//TnsLogEvent.GetLogger

end.