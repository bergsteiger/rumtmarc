unit destListLevel;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "dd"
// Модуль: "w:/common/components/rtl/Garant/dd/destListLevel.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::dd::RTFSupport::TdestListLevel
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
 TdestListLevel = class(TddRTFDestination)
 private
 // private fields
   f_Level : TrtfListLevel;
    {* Поле для свойства Level}
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
   property Level: TrtfListLevel
     read f_Level;
 end;//TdestListLevel

implementation

uses
  SysUtils
  ;

// start class TdestListLevel

procedure TdestListLevel.Cleanup;
//#UC START# *479731C50290_51DD4CAB0089_var*
//#UC END# *479731C50290_51DD4CAB0089_var*
begin
//#UC START# *479731C50290_51DD4CAB0089_impl*
 inherited Cleanup;
 FreeAndNil(f_Level);
//#UC END# *479731C50290_51DD4CAB0089_impl*
end;//TdestListLevel.Cleanup

procedure TdestListLevel.Clear;
//#UC START# *51D27A48038E_51DD4CAB0089_var*
//#UC END# *51D27A48038E_51DD4CAB0089_var*
begin
//#UC START# *51D27A48038E_51DD4CAB0089_impl*
 with f_Level do
 begin
  CHP.Clear;
  Follow:= 0;
  Justify:= 0;
  LevelJC:= 0;
  LevelJCN:= 0;
  LevelNFC:= 0;
  LevelNFCN:= 0;
  Numbers:= '';
  NumberType:= 0;
  StartAt:= 1;
  Text:= '';
 end;
//#UC END# *51D27A48038E_51DD4CAB0089_impl*
end;//TdestListLevel.Clear

procedure TdestListLevel.ApplyProperty(propType: TPropType;
  What: TIProp;
  Value: LongInt;
  aState: TddRTFState);
//#UC START# *51D27EC50388_51DD4CAB0089_var*
//#UC END# *51D27EC50388_51DD4CAB0089_var*
begin
//#UC START# *51D27EC50388_51DD4CAB0089_impl*
 case What of
  iproplevelfollow: Level.Follow:= Value;
  ipropLeveljc: Level.LevelJC:= Value;
  ipropleveljcn: Level.LevelJcn:= Value;
  iproplevelnfc: Level.LevelNFC:= Value;
  iproplevelnfcn: Level.LevelNFCN:= Value;
  iproplevelstartat: Level.StartAt:= Value;
 end;
//#UC END# *51D27EC50388_51DD4CAB0089_impl*
end;//TdestListLevel.ApplyProperty

constructor TdestListLevel.Create(aRTFReader: TddCustomRTFReader);
//#UC START# *51E7C9DB0213_51DD4CAB0089_var*
//#UC END# *51E7C9DB0213_51DD4CAB0089_var*
begin
//#UC START# *51E7C9DB0213_51DD4CAB0089_impl*
 inherited Create(aRTFReader);
 f_Level := TrtfListLevel.Create();
//#UC END# *51E7C9DB0213_51DD4CAB0089_impl*
end;//TdestListLevel.Create

end.