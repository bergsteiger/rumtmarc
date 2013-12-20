unit destListOverrideTable;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "dd"
// Модуль: "w:/common/components/rtl/Garant/dd/destListOverrideTable.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::dd::RTFSupport::TdestListOverrideTable
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

interface

uses
  ddRTFdestination,
  rtfListTable,
  destListoverride,
  ddCustomRTFReader
  ;

type
 TdestListOverrideTable = class(TddRTFDestination)
 private
 // private fields
   f_ListOverrideTable : TrtfListOverrideTable;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
 public
 // overridden public methods
   constructor Create(aRTFReader: TddCustomRTFReader); override;
 public
 // public methods
   procedure AddListOverride(aListOverride: TdestListoverride);
   function LS2ListID(aLS: Integer): Integer;
 end;//TdestListOverrideTable

implementation

uses
  SysUtils,
  ddBase
  ;

// start class TdestListOverrideTable

procedure TdestListOverrideTable.AddListOverride(aListOverride: TdestListoverride);
//#UC START# *51DD5870005A_51DD4D00025B_var*
var
 l_LO: TrtfListOverride;
//#UC END# *51DD5870005A_51DD4D00025B_var*
begin
//#UC START# *51DD5870005A_51DD4D00025B_impl*
 l_LO:= TrtfListOverride.Create;
 try
  l_LO.ListID:= aListOverride.ListOverride.ListID;
  l_LO.ListOverrideCount:= aListOverride.ListOverride.ListOverrideCount;
  l_LO.LS:= aListOverride.ListOverride.LS;
  f_ListOverrideTable.Add(l_LO);
 finally
  FreeAndNil(l_LO);
 end;
//#UC END# *51DD5870005A_51DD4D00025B_impl*
end;//TdestListOverrideTable.AddListOverride

function TdestListOverrideTable.LS2ListID(aLS: Integer): Integer;
//#UC START# *51DD58890154_51DD4D00025B_var*
var
 i: Integer;
//#UC END# *51DD58890154_51DD4D00025B_var*
begin
//#UC START# *51DD58890154_51DD4D00025B_impl*
 Result := propUndefined;
 for i:= 0 to f_ListOverrideTable.Hi do
 begin
  if TrtfListOverride(f_ListOverrideTable[i]).LS = aLS then
  begin
   Result:= TrtfListOverride(f_ListOverrideTable[i]).ListID;
   Break;
  end;
 end;
//#UC END# *51DD58890154_51DD4D00025B_impl*
end;//TdestListOverrideTable.LS2ListID

procedure TdestListOverrideTable.Cleanup;
//#UC START# *479731C50290_51DD4D00025B_var*
//#UC END# *479731C50290_51DD4D00025B_var*
begin
//#UC START# *479731C50290_51DD4D00025B_impl*
 inherited;
 FreeAndNil(f_ListOverrideTable);
//#UC END# *479731C50290_51DD4D00025B_impl*
end;//TdestListOverrideTable.Cleanup

constructor TdestListOverrideTable.Create(aRTFReader: TddCustomRTFReader);
//#UC START# *51E7C9DB0213_51DD4D00025B_var*
//#UC END# *51E7C9DB0213_51DD4D00025B_var*
begin
//#UC START# *51E7C9DB0213_51DD4D00025B_impl*
 inherited Create(aRTFReader);
 f_ListOverrideTable := TrtfListOverrideTable.Create();
//#UC END# *51E7C9DB0213_51DD4D00025B_impl*
end;//TdestListOverrideTable.Create

end.