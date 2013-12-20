unit ddRTFState;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "dd"
// Модуль: "w:/common/components/rtl/Garant/dd/ddRTFState.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi::dd::RTFSupport::ddRTFState
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

interface

uses
  l3ProtoPersistent,
  l3ProtoPersistentRefList,
  ddBase,
  ddRowProperty,
  RTFtypes,
  ddCharacterProperty,
  ddParagraphProperty,
  Classes
  ;

type
 TddRTFState = class(Tl3ProtoPersistent)
 private
 // private fields
   f_BOP : TddBorder;
    {* Поле для свойства BOP}
   f_CEP : TddCellProperty;
    {* Поле для свойства CEP}
   f_CHP : TddCharacterProperty;
    {* Поле для свойства CHP}
   f_PAP : TddParagraphProperty;
    {* Поле для свойства PAP}
   f_RDS : TRDS;
    {* Поле для свойства RDS}
   f_SEP : TddSectionProperty;
    {* Поле для свойства SEP}
   f_TAP : TddRowProperty;
    {* Поле для свойства TAP}
   f_SkipGroup : Boolean;
    {* Поле для свойства SkipGroup}
 protected
 // property methods
   procedure pm_SetBOP(aValue: TddBorder);
   procedure pm_SetCHP(aValue: TddCharacterProperty);
   procedure pm_SetPAP(aValue: TddParagraphProperty);
   procedure pm_SetSEP(aValue: TddSectionProperty);
   procedure pm_SetTAP(aValue: TddRowProperty);
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
 public
 // overridden public methods
   procedure Assign(Source: TPersistent); override;
 public
 // public methods
   function Clone: TddRTFState;
   constructor Create; reintroduce;
 public
 // public properties
   property BOP: TddBorder
     read f_BOP
     write pm_SetBOP;
   property CEP: TddCellProperty
     read f_CEP
     write f_CEP;
   property CHP: TddCharacterProperty
     read f_CHP
     write pm_SetCHP;
   property PAP: TddParagraphProperty
     read f_PAP
     write pm_SetPAP;
   property RDS: TRDS
     read f_RDS
     write f_RDS;
   property SEP: TddSectionProperty
     read f_SEP
     write pm_SetSEP;
   property TAP: TddRowProperty
     read f_TAP
     write pm_SetTAP;
   property SkipGroup: Boolean
     read f_SkipGroup
     write f_SkipGroup;
 end;//TddRTFState

 TrtfStateStack = class(Tl3ProtoPersistentRefList)
 public
 // public methods
   function Peek: TddRTFState;
   function Pop: TddRTFState;
   procedure Push;
   function PeekPrev: TddRTFState;
 end;//TrtfStateStack

implementation

uses
  SysUtils
  ;

// start class TddRTFState

function TddRTFState.Clone: TddRTFState;
//#UC START# *51DBBF76006A_51D287250128_var*
//#UC END# *51DBBF76006A_51D287250128_var*
begin
//#UC START# *51DBBF76006A_51D287250128_impl*
 Result := TddRTFState.Create;
 Result.Assign(Self);
 Result.PAP.anInherited := True;
//#UC END# *51DBBF76006A_51D287250128_impl*
end;//TddRTFState.Clone

constructor TddRTFState.Create;
//#UC START# *51DBBF960279_51D287250128_var*
//#UC END# *51DBBF960279_51D287250128_var*
begin
//#UC START# *51DBBF960279_51D287250128_impl*
  inherited;
  f_CHP := TddCharacterProperty.Create(nil);
  f_CHP.Reset;
  f_PAP := TddParagraphProperty.Create(nil);
  f_BOP := TddBorder.Create(nil);
  f_BOP.IsFramed := False;
  f_TAP := TddRowProperty.Create(nil);
  f_TAP.Border.isFramed := False;
  f_CEP := TddCellProperty.Create(nil);
  f_CEP.Border.isFramed := False;
  f_SEP := TddSectionProperty.Create(nil);
  f_SkipGroup := False;
  f_RDS := rdsNone;
//#UC END# *51DBBF960279_51D287250128_impl*
end;//TddRTFState.Create

procedure TddRTFState.pm_SetBOP(aValue: TddBorder);
//#UC START# *51DBBCC90082_51D287250128set_var*
//#UC END# *51DBBCC90082_51D287250128set_var*
begin
//#UC START# *51DBBCC90082_51D287250128set_impl*
 f_BOP.Assign(aValue);
//#UC END# *51DBBCC90082_51D287250128set_impl*
end;//TddRTFState.pm_SetBOP

procedure TddRTFState.pm_SetCHP(aValue: TddCharacterProperty);
//#UC START# *51DBBDAB0317_51D287250128set_var*
//#UC END# *51DBBDAB0317_51D287250128set_var*
begin
//#UC START# *51DBBDAB0317_51D287250128set_impl*
 f_CHP.Assign(aValue);
//#UC END# *51DBBDAB0317_51D287250128set_impl*
end;//TddRTFState.pm_SetCHP

procedure TddRTFState.pm_SetPAP(aValue: TddParagraphProperty);
//#UC START# *51DBBDEB02B1_51D287250128set_var*
//#UC END# *51DBBDEB02B1_51D287250128set_var*
begin
//#UC START# *51DBBDEB02B1_51D287250128set_impl*
 f_PAP.Assign(aValue);
//#UC END# *51DBBDEB02B1_51D287250128set_impl*
end;//TddRTFState.pm_SetPAP

procedure TddRTFState.pm_SetSEP(aValue: TddSectionProperty);
//#UC START# *51DBBEBC0085_51D287250128set_var*
//#UC END# *51DBBEBC0085_51D287250128set_var*
begin
//#UC START# *51DBBEBC0085_51D287250128set_impl*
 f_SEP.Assign(aValue);
//#UC END# *51DBBEBC0085_51D287250128set_impl*
end;//TddRTFState.pm_SetSEP

procedure TddRTFState.pm_SetTAP(aValue: TddRowProperty);
//#UC START# *51DBBF08003A_51D287250128set_var*
//#UC END# *51DBBF08003A_51D287250128set_var*
begin
//#UC START# *51DBBF08003A_51D287250128set_impl*
 f_TAP.Assign(aValue);
//#UC END# *51DBBF08003A_51D287250128set_impl*
end;//TddRTFState.pm_SetTAP

procedure TddRTFState.Assign(Source: TPersistent);
//#UC START# *478CF34E02CE_51D287250128_var*
var
 aState: TddRTFState absolute Source;
//#UC END# *478CF34E02CE_51D287250128_var*
begin
//#UC START# *478CF34E02CE_51D287250128_impl*
 if (Source Is TddRTFState) then
 begin
  f_PAP.Assign(aState.PAP);
  f_CHP.Assign(aState.CHP);
  f_BOP.Assign(aState.BOP);
  f_TAP.Assign(aState.TAP);
  f_Cep.Assign(aState.CEP);
  f_SkipGroup:= aState.SkipGroup;
  f_RDS:= aState.RDS;
  f_SEP.Assign(aState.SEP);
 end
 else
  inherited Assign(Source);
//#UC END# *478CF34E02CE_51D287250128_impl*
end;//TddRTFState.Assign

procedure TddRTFState.Cleanup;
//#UC START# *479731C50290_51D287250128_var*
//#UC END# *479731C50290_51D287250128_var*
begin
//#UC START# *479731C50290_51D287250128_impl*
 FreeAndNil(f_CHP);
 FreeAndNil(f_PAP);
 FreeAndNil(f_BOP);
 FreeAndNil(f_TAP);
 FreeAndNil(f_CEP);
 FreeAndNil(f_SEP);
 inherited ;
//#UC END# *479731C50290_51D287250128_impl*
end;//TddRTFState.Cleanup
// start class TrtfStateStack

function TrtfStateStack.Peek: TddRTFState;
//#UC START# *51DBC0660357_51DBBFFD0351_var*
//#UC END# *51DBC0660357_51DBBFFD0351_var*
begin
//#UC START# *51DBC0660357_51DBBFFD0351_impl*
 if Count = 0 then
  Result := nil
 else
  Result := TddRTFState(Last);
//#UC END# *51DBC0660357_51DBBFFD0351_impl*
end;//TrtfStateStack.Peek

function TrtfStateStack.Pop: TddRTFState;
//#UC START# *51DBC08B031C_51DBBFFD0351_var*
//#UC END# *51DBC08B031C_51DBBFFD0351_var*
begin
//#UC START# *51DBC08B031C_51DBBFFD0351_impl*
 Result := Peek;
 DeleteLast;
//#UC END# *51DBC08B031C_51DBBFFD0351_impl*
end;//TrtfStateStack.Pop

procedure TrtfStateStack.Push;
//#UC START# *51DBC0AA0101_51DBBFFD0351_var*
var
 l_State: TddRTFState;
//#UC END# *51DBC0AA0101_51DBBFFD0351_var*
begin
//#UC START# *51DBC0AA0101_51DBBFFD0351_impl*
 if Count = 0 then
  l_State := TddRTFState.Create
 else
  l_State := Peek.Clone;
 try
  Add(l_State);
 finally
  FreeAndNil(l_State);
 end;
//#UC END# *51DBC0AA0101_51DBBFFD0351_impl*
end;//TrtfStateStack.Push

function TrtfStateStack.PeekPrev: TddRTFState;
//#UC START# *51DD394E0093_51DBBFFD0351_var*
var
 l_Count: Integer;
//#UC END# *51DD394E0093_51DBBFFD0351_var*
begin
//#UC START# *51DD394E0093_51DBBFFD0351_impl*
 l_Count := Count;
 Dec(l_Count, 2);
 if l_Count < 0 then
  Result := nil
 else
  Result := TddRTFState(Items[l_Count]);
//#UC END# *51DD394E0093_51DBBFFD0351_impl*
end;//TrtfStateStack.PeekPrev

end.