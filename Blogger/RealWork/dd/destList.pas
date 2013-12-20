unit destList;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "dd"
// Модуль: "w:/common/components/rtl/Garant/dd/destList.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::dd::RTFSupport::TdestList
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
  destListLevel,
  RTFtypes,
  ddRTFState,
  ddCustomRTFReader
  ;

type
 TdestList = class(TddRTFDestination)
 private
 // private fields
   f_List : TrtfList;
    {* Поле для свойства List}
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
 // public methods
   procedure AddLevel(aLevel: TdestListLevel);
 public
 // public properties
   property List: TrtfList
     read f_List;
 end;//TdestList

implementation

uses
  SysUtils
  ;

// start class TdestList

procedure TdestList.AddLevel(aLevel: TdestListLevel);
//#UC START# *51DD4E0C009F_51DD4CCF004F_var*
//#UC END# *51DD4E0C009F_51DD4CCF004F_var*
begin
//#UC START# *51DD4E0C009F_51DD4CCF004F_impl*
 List.AddLevel(aLevel.Level);
//#UC END# *51DD4E0C009F_51DD4CCF004F_impl*
end;//TdestList.AddLevel

procedure TdestList.Cleanup;
//#UC START# *479731C50290_51DD4CCF004F_var*
//#UC END# *479731C50290_51DD4CCF004F_var*
begin
//#UC START# *479731C50290_51DD4CCF004F_impl*
 inherited Cleanup;
 FreeAndNil(f_List);
//#UC END# *479731C50290_51DD4CCF004F_impl*
end;//TdestList.Cleanup

procedure TdestList.Clear;
//#UC START# *51D27A48038E_51DD4CCF004F_var*
//#UC END# *51D27A48038E_51DD4CCF004F_var*
begin
//#UC START# *51D27A48038E_51DD4CCF004F_impl*
 f_List.Clear;
 f_List.ID:= 0;
 f_List.ListName:= '';
 f_LIst.TemplateID:= 0;
//#UC END# *51D27A48038E_51DD4CCF004F_impl*
end;//TdestList.Clear

procedure TdestList.ApplyProperty(propType: TPropType;
  What: TIProp;
  Value: LongInt;
  aState: TddRTFState);
//#UC START# *51D27EC50388_51DD4CCF004F_var*
//#UC END# *51D27EC50388_51DD4CCF004F_var*
begin
//#UC START# *51D27EC50388_51DD4CCF004F_impl*
 case What of
  iproplistid: List.ID:= Value;
  iproplistTemplateID: List.TemplateID:= Value;
 end;
//#UC END# *51D27EC50388_51DD4CCF004F_impl*
end;//TdestList.ApplyProperty

constructor TdestList.Create(aRTFReader: TddCustomRTFReader);
//#UC START# *51E7C9DB0213_51DD4CCF004F_var*
//#UC END# *51E7C9DB0213_51DD4CCF004F_var*
begin
//#UC START# *51E7C9DB0213_51DD4CCF004F_impl*
 inherited Create(aRTFReader);
 f_List := TrtfList.Create();
//#UC END# *51E7C9DB0213_51DD4CCF004F_impl*
end;//TdestList.Create

end.