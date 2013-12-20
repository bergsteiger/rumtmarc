unit destPicture;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "dd"
// Модуль: "w:/common/components/rtl/Garant/dd/destPicture.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::dd::RTFSupport::TdestPicture
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

interface

uses
  RTFtypes,
  destNorm,
  ddPicture,
  l3Base,
  ddRTFState,
  ddCustomRTFReader
  ;

type
 TdestPicture = class(TdestNorm)
 private
 // private methods
   procedure ApplyToPicture(aWhat: TIProp;
     aValue: LongInt);
 protected
 // property methods
   function pm_GetPicture: TddPicture; virtual;
 public
 // overridden public methods
   procedure Clear; override;
   procedure AddString(aText: Tl3String;
     aState: TddRTFState); override;
   procedure ApplyProperty(propType: TPropType;
     What: TIProp;
     Value: LongInt;
     aState: TddRTFState); override;
   constructor Create(aRTFReader: TddCustomRTFReader); override;
 public
 // public properties
   property Picture: TddPicture
     read pm_GetPicture;
 end;//TdestPicture

implementation

uses
  SysUtils
  ;

// start class TdestPicture

procedure TdestPicture.ApplyToPicture(aWhat: TIProp;
  aValue: LongInt);
//#UC START# *51E8E82F0299_51E8E771003A_var*
//#UC END# *51E8E82F0299_51E8E771003A_var*
begin
//#UC START# *51E8E82F0299_51E8E771003A_impl*
 case aWhat of
  ipropHeight  : Picture.Height:= aValue;
  ipropWidth   : Picture.Width:= aValue;
  ipropScaleX  : Picture.ScaleX:= aValue;
  ipropScaleY  : Picture.ScaleY:= aValue;
  ipropPicCropL: Picture.CropL:= aValue;
  ipropPicCropR: Picture.CropR:= aValue;
  ipropPicCropT: Picture.CropT:= aValue;
  ipropPicCropB: Picture.CropB:= aValue;
 end;
//#UC END# *51E8E82F0299_51E8E771003A_impl*
end;//TdestPicture.ApplyToPicture

function TdestPicture.pm_GetPicture: TddPicture;
//#UC START# *51E8E7DC003B_51E8E771003Aget_var*
//#UC END# *51E8E7DC003B_51E8E771003Aget_var*
begin
//#UC START# *51E8E7DC003B_51E8E771003Aget_impl*
 Result := TddPicture(LastAtom);
//#UC END# *51E8E7DC003B_51E8E771003Aget_impl*
end;//TdestPicture.pm_GetPicture

procedure TdestPicture.Clear;
//#UC START# *51D27A48038E_51E8E771003A_var*
//#UC END# *51D27A48038E_51E8E771003A_var*
begin
//#UC START# *51D27A48038E_51E8E771003A_impl*
 inherited;
 Picture.Clear;
//#UC END# *51D27A48038E_51E8E771003A_impl*
end;//TdestPicture.Clear

procedure TdestPicture.AddString(aText: Tl3String;
  aState: TddRTFState);
//#UC START# *51D27C3302EC_51E8E771003A_var*
//#UC END# *51D27C3302EC_51E8E771003A_var*
begin
//#UC START# *51D27C3302EC_51E8E771003A_impl*
 Picture.AddText(aText);
//#UC END# *51D27C3302EC_51E8E771003A_impl*
end;//TdestPicture.AddString

procedure TdestPicture.ApplyProperty(propType: TPropType;
  What: TIProp;
  Value: LongInt;
  aState: TddRTFState);
//#UC START# *51D27EC50388_51E8E771003A_var*
//#UC END# *51D27EC50388_51E8E771003A_var*
begin
//#UC START# *51D27EC50388_51E8E771003A_impl*
 if propType = propPict then
  ApplyToPicture(What, Value)
 else
  inherited;
//#UC END# *51D27EC50388_51E8E771003A_impl*
end;//TdestPicture.ApplyProperty

constructor TdestPicture.Create(aRTFReader: TddCustomRTFReader);
//#UC START# *51E7C9DB0213_51E8E771003A_var*
var
 l_P: TddPicture;
//#UC END# *51E7C9DB0213_51E8E771003A_var*
begin
//#UC START# *51E7C9DB0213_51E8E771003A_impl*
 inherited Create(aRTFReader);
 l_P := TddPicture.Create(nil, Self);
 try
  Paragraphs.Add(l_P);
 finally
  FreeAndNil(l_P);
 end;
//#UC END# *51E7C9DB0213_51E8E771003A_impl*
end;//TdestPicture.Create

end.