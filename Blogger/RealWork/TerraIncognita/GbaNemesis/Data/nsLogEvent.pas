unit nsLogEvent;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Data"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/Data/nsLogEvent.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 ������� ����������� ���������� �������::LegalDomain::Data::Logging::TnsLogEvent
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

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