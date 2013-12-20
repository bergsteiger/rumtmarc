unit destListoverride;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "dd"
// Модуль: "w:/common/components/rtl/Garant/dd/destListoverride.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::dd::RTFSupport::TdestListoverride
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
  RTFtypes,
  ddRTFState,
  ddCustomRTFReader
  ;

type
 TdestListoverride = class(TddRTFDestination)
 private
 // private fields
   f_ListOverride : TrtfListOverride;
    {* Поле для свойства ListOverride}
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
 public
 // overridden public methods
   procedure Clear; override;
   procedure ApplyProperty(propType: TPropType;
     What: TIProp;
     Value: LongInt;
     aState: TddRTFState); override;
   constructor Create(aRTFReader: TddCustomRTFReader); override;
 public
 // public properties
   property ListOverride: TrtfListOverride
     read f_ListOverride
     write f_ListOverride;
 end;//TdestListoverride

implementation

uses
  SysUtils
  ;

// start class TdestListoverride

procedure TdestListoverride.Cleanup;
//#UC START# *479731C50290_51DD4D0E00D8_var*
//#UC END# *479731C50290_51DD4D0E00D8_var*
begin
//#UC START# *479731C50290_51DD4D0E00D8_impl*
 inherited;
 FreeAndNil(f_ListOverride);
//#UC END# *479731C50290_51DD4D0E00D8_impl*
end;//TdestListoverride.Cleanup

procedure TdestListoverride.Clear;
//#UC START# *51D27A48038E_51DD4D0E00D8_var*
//#UC END# *51D27A48038E_51DD4D0E00D8_var*
begin
//#UC START# *51D27A48038E_51DD4D0E00D8_impl*
 with f_ListOverride do
 begin
  ListID:= 0;
  ListOverrideCount:= 0;
  LS:= -1;
 end; // with f_ListOverride
//#UC END# *51D27A48038E_51DD4D0E00D8_impl*
end;//TdestListoverride.Clear

procedure TdestListoverride.ApplyProperty(propType: TPropType;
  What: TIProp;
  Value: LongInt;
  aState: TddRTFState);
//#UC START# *51D27EC50388_51DD4D0E00D8_var*
//#UC END# *51D27EC50388_51DD4D0E00D8_var*
begin
//#UC START# *51D27EC50388_51DD4D0E00D8_impl*
 case What of
  ipropLS: ListOverride.LS:= Value;
  iproplistid: ListOverride.ListID:= Value;
  iproplistoverridecount: ListOverride.ListOverrideCount:= Value;
 end;
//#UC END# *51D27EC50388_51DD4D0E00D8_impl*
end;//TdestListoverride.ApplyProperty

constructor TdestListoverride.Create(aRTFReader: TddCustomRTFReader);
//#UC START# *51E7C9DB0213_51DD4D0E00D8_var*
//#UC END# *51E7C9DB0213_51DD4D0E00D8_var*
begin
//#UC START# *51E7C9DB0213_51DD4D0E00D8_impl*
 inherited Create(aRTFReader);
 f_ListOverride := TrtfListOverride.Create();
//#UC END# *51E7C9DB0213_51DD4D0E00D8_impl*
end;//TdestListoverride.Create

end.