unit ddCustomDestination;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "dd"
// Модуль: "w:/common/components/rtl/Garant/dd/ddCustomDestination.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::dd::ddCommon::TddCustomDestination
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

interface

uses
  l3ProtoObject,
  rtfListTable,
  ddRTFProperties
  ;

type
 TddCustomDestination = class(Tl3ProtoObject)
 private
 // private fields
   f_LiteVersion : Boolean;
    {* Поле для свойства LiteVersion}
 public
 // public methods
   function GetStyle(aStyleID: Integer): TddStyleEntry; virtual;
   function GetList(aListID: Integer): TrtfList; virtual;
 public
 // public properties
   property LiteVersion: Boolean
     read f_LiteVersion
     write f_LiteVersion;
 end;//TddCustomDestination

implementation

// start class TddCustomDestination

function TddCustomDestination.GetStyle(aStyleID: Integer): TddStyleEntry;
//#UC START# *51E8D73F0187_51E9189F024D_var*
//#UC END# *51E8D73F0187_51E9189F024D_var*
begin
//#UC START# *51E8D73F0187_51E9189F024D_impl*
 Result := nil;
//#UC END# *51E8D73F0187_51E9189F024D_impl*
end;//TddCustomDestination.GetStyle

function TddCustomDestination.GetList(aListID: Integer): TrtfList;
//#UC START# *51E8D6CF03A1_51E9189F024D_var*
//#UC END# *51E8D6CF03A1_51E9189F024D_var*
begin
//#UC START# *51E8D6CF03A1_51E9189F024D_impl*
 Result := nil;
//#UC END# *51E8D6CF03A1_51E9189F024D_impl*
end;//TddCustomDestination.GetList

end.