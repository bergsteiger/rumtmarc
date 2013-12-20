unit ddRowProperty;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "dd"
// Модуль: "w:/common/components/rtl/Garant/dd/ddRowProperty.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::dd::ddCommon::TddRowProperty
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

interface

uses
  ddBase,
  Classes
  ;

type
 TddRowProperty = class(TddPropertyObject)
 private
 // private fields
   f_Gaph : LongInt;
    {* Поле для свойства Gaph}
   f_Left : LongInt;
    {* Поле для свойства Left}
   f_Width : LongInt;
    {* Поле для свойства Width}
   f_AutoFit : Boolean;
    {* Поле для свойства AutoFit}
   f_Border : TddBorder;
    {* Поле для свойства Border}
   f_IsLastRow : Boolean;
    {* Поле для свойства IsLastRow}
   f_RowIndex : LongInt;
    {* Поле для свойства RowIndex}
 protected
 // property methods
   procedure pm_SetAutoFit(aValue: Boolean);
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
 public
 // overridden public methods
   procedure Assign(Source: TPersistent); override;
   constructor Create(anOwner: TObject = nil); override;
     {* конструктор объекта. Возвращает объект, со счетчиком ссылок равным 1. }
   procedure Clear; override;
 public
 // public properties
   property Gaph: LongInt
     read f_Gaph
     write f_Gaph;
   property Left: LongInt
     read f_Left
     write f_Left;
   property Width: LongInt
     read f_Width
     write f_Width;
   property AutoFit: Boolean
     read f_AutoFit
     write pm_SetAutoFit;
   property Border: TddBorder
     read f_Border;
   property IsLastRow: Boolean
     read f_IsLastRow
     write f_IsLastRow;
   property RowIndex: LongInt
     read f_RowIndex
     write f_RowIndex;
 end;//TddRowProperty

implementation

uses
  RTFtypes,
  l3Base
  ;

// start class TddRowProperty

procedure TddRowProperty.pm_SetAutoFit(aValue: Boolean);
//#UC START# *518A11380166_518A10050368set_var*
//#UC END# *518A11380166_518A10050368set_var*
begin
//#UC START# *518A11380166_518A10050368set_impl*
 f_AutoFit := aValue;
//#UC END# *518A11380166_518A10050368set_impl*
end;//TddRowProperty.pm_SetAutoFit

procedure TddRowProperty.Assign(Source: TPersistent);
//#UC START# *478CF34E02CE_518A10050368_var*
var
 i     : Integer;
 C, c1 : TddCellProperty;
//#UC END# *478CF34E02CE_518A10050368_var*
begin
//#UC START# *478CF34E02CE_518A10050368_impl*
 if (Source is TddRowProperty) then
 begin
  Left:= TddRowProperty(Source).Left;
  Gaph:= TddRowProperty(Source).Gaph;
  RowIndex := TddRowProperty(Source).RowIndex;
  IsLastRow := TddRowProperty(Source).IsLastRow;
  f_Border.Assign(TddRowProperty(Source).Border);
 end
 else
  inherited Assign(Source);
//#UC END# *478CF34E02CE_518A10050368_impl*
end;//TddRowProperty.Assign

constructor TddRowProperty.Create(anOwner: TObject = nil);
//#UC START# *47914F960008_518A10050368_var*
//#UC END# *47914F960008_518A10050368_var*
begin
//#UC START# *47914F960008_518A10050368_impl*
 inherited;
 f_RowIndex := -1;
 f_Gaph:= 108;
 f_Left:= -108;
 f_Width:= 0;
 f_IsLastRow := False;
 f_Border:= TddBorder.Create(nil);
 f_Border.isFramed:= True;
 f_Border.BorderOwner:= boRow;
//#UC END# *47914F960008_518A10050368_impl*
end;//TddRowProperty.Create

procedure TddRowProperty.Cleanup;
//#UC START# *479731C50290_518A10050368_var*
//#UC END# *479731C50290_518A10050368_var*
begin
//#UC START# *479731C50290_518A10050368_impl*
 f_IsLastRow := False;
 f_RowIndex := -1;
 l3Free(f_Border);
 inherited;
//#UC END# *479731C50290_518A10050368_impl*
end;//TddRowProperty.Cleanup

procedure TddRowProperty.Clear;
//#UC START# *518A13330058_518A10050368_var*
//#UC END# *518A13330058_518A10050368_var*
begin
//#UC START# *518A13330058_518A10050368_impl*
 f_RowIndex := -1;
 f_IsLastRow := False;
 f_Border.Clear;
 Left := -108;
 Gaph := 108;
//#UC END# *518A13330058_518A10050368_impl*
end;//TddRowProperty.Clear

end.