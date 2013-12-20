unit k2DictRec_Wrap;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/K2/k2DictRec_Wrap.pas"
// Начат: 07.09.1998 12:46
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Wrapper::Class>> Shared Delphi::K2::Standard::Wk2DictRec
//
// Обёртка для словарных записей
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\K2\k2Define.inc}

interface

uses
  k2Interfaces,
  Persistent_Wrap,
  k2Base,
  k2Prim
  ;

type
 TLastRec = record
  {* Предыдущий элемент, к которому обращались }
   rID : Integer; // Идентификатор элемента
   rTag : Ik2Tag; // Собственно элемент
 end;//TLastRec

 Wk2DictRec = class(WPersistent)
  {* Обёртка для словарных записей }
 private
 // private fields
   f_LastRec : TLastRec;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   function AsString(const A: Ik2Tag): AnsiString; override;
   function StrToTag(const aValue: AnsiString): Ik2Tag; override;
   function New(aType: Tk2Type): Ik2Tag; override;
     {* создает атом данного типа. }
   function ObjToTag(aValue: TObject): Ik2Tag; override;
   function AsLong(const A: Ik2Tag): Integer; override;
   function IntToTag(aValue: Integer): Ik2Tag; override;
   procedure DoFire(const anEvent: Tk2Event;
    const anOp: Ik2Op); override;
 protected
 // protected methods
   function AddItemIfNotExists: Boolean; virtual;
 end;//Wk2DictRec

implementation

uses
  SysUtils,
  k2DictRec,
  k2Tags,
  l3PrimString,
  l3Dict,
  l3CustomString
  ;

// start class Wk2DictRec

function Wk2DictRec.AddItemIfNotExists: Boolean;
//#UC START# *4E96F8CD0223_484D10530133_var*
//#UC END# *4E96F8CD0223_484D10530133_var*
begin
//#UC START# *4E96F8CD0223_484D10530133_impl*
 Result := false;
//#UC END# *4E96F8CD0223_484D10530133_impl*
end;//Wk2DictRec.AddItemIfNotExists

procedure Wk2DictRec.Cleanup;
//#UC START# *479731C50290_484D10530133_var*
//#UC END# *479731C50290_484D10530133_var*
begin
//#UC START# *479731C50290_484D10530133_impl*
 f_LastRec.rTag := nil;
 inherited;
//#UC END# *479731C50290_484D10530133_impl*
end;//Wk2DictRec.Cleanup

function Wk2DictRec.AsString(const A: Ik2Tag): AnsiString;
//#UC START# *484CCE970073_484D10530133_var*
//#UC END# *484CCE970073_484D10530133_var*
begin
//#UC START# *484CCE970073_484D10530133_impl*
 Result := A.StrA[k2_tiName];
//#UC END# *484CCE970073_484D10530133_impl*
end;//Wk2DictRec.AsString

function Wk2DictRec.StrToTag(const aValue: AnsiString): Ik2Tag;
//#UC START# *484CCEBC00DC_484D10530133_var*
var
 VT : Tl3Dictionary;
 ST : Tl3PrimString;
//#UC END# *484CCEBC00DC_484D10530133_var*
begin
//#UC START# *484CCEBC00DC_484D10530133_impl*
 VT := AtomType.ValueTable;
 if (VT <> nil) then begin
  ST := VT.DRByName[aValue];
  if (ST <> nil) then
  begin
   Result := AtomType.TagFromIntRef(Integer(St));
   Exit;
  end;//ST <> nil
 end;{VT <> nil}
 Result := inherited StrToTag(aValue);
//#UC END# *484CCEBC00DC_484D10530133_impl*
end;//Wk2DictRec.StrToTag

function Wk2DictRec.New(aType: Tk2Type): Ik2Tag;
//#UC START# *484CEAAF03C5_484D10530133_var*
type
 Rk2DictRec = class of Tk2DictRec;  
//#UC END# *484CEAAF03C5_484D10530133_var*
begin
//#UC START# *484CEAAF03C5_484D10530133_impl*
 Result := nil;
 // - очищаем предыдущий интерфейс, т.к. оказалось, что Delphi это не делает.
 Pointer(Result) := Pointer(Ik2Tag(Rk2DictRec(aType.MakeClass).Create(aType)));
//#UC END# *484CEAAF03C5_484D10530133_impl*
end;//Wk2DictRec.New

function Wk2DictRec.ObjToTag(aValue: TObject): Ik2Tag;
//#UC START# *484CEAD301AE_484D10530133_var*
//#UC END# *484CEAD301AE_484D10530133_var*
begin
//#UC START# *484CEAD301AE_484D10530133_impl*
 if (aValue Is Tl3CustomString) then
  Result := AtomType.StrToTag(Tl3CustomString(aValue).AsString)
 else
  Result := inherited ObjToTag(aValue);
//#UC END# *484CEAD301AE_484D10530133_impl*
end;//Wk2DictRec.ObjToTag

function Wk2DictRec.AsLong(const A: Ik2Tag): Integer;
//#UC START# *484D314401B6_484D10530133_var*
//#UC END# *484D314401B6_484D10530133_var*
begin
//#UC START# *484D314401B6_484D10530133_impl*
 Result := A.IntA[k2_tiHandle];
//#UC END# *484D314401B6_484D10530133_impl*
end;//Wk2DictRec.AsLong

function Wk2DictRec.IntToTag(aValue: Integer): Ik2Tag;
//#UC START# *484D31710018_484D10530133_var*
var
 VT : Tl3Dictionary;
 St : Pointer;
//#UC END# *484D31710018_484D10530133_var*
begin
//#UC START# *484D31710018_484D10530133_impl*
 if (f_LastRec.rTag <> nil) AND (f_LastRec.rID = aValue) then
  Result := f_LastRec.rTag
 else
 begin
  VT := AtomType.ValueTable;
  if (VT <> nil) then
  begin
   St := VT.DRByID[aValue];
   if (St <> nil) then
   begin
    Result := AtomType.TagFromIntRef(Integer(St));
    if (Result <> nil) AND
       (Result.IntA[k2_tiHandle] = aValue) then
    begin
     f_LastRec.rTag := Result;
     f_LastRec.rID := aValue;
    end//Result.IntA[k2_tiHandle] = aValue
    else
    if AddItemIfNotExists then
    begin
     Result := AtomType.MakeTag;
     Result.IntA[k2_tiHandle] := aValue;
     Result.StrA[k2_tiName] := 'Элемент №' + IntToStr(aValue);
     Result.BoolA[k2_tiVisibleToUser] := False; // Он не нужен пользователю! См. http://mdp.garant.ru/pages/viewpage.action?pageId=259890927&focusedCommentId=259890934#comment-259890934 
     VT.Add(Result.AsObject As Tl3PrimString);
     Assert(Result.IntA[k2_tiHandle] = aValue);
     f_LastRec.rTag := Result;
     f_LastRec.rID := aValue;
    end;//AddItemIfNotExists
    Exit;
   end;//St <> nil
  end;//VT <> nil
  Result := k2NullTag;
 end;//f_LastRec.rTag <> nil
//#UC END# *484D31710018_484D10530133_impl*
end;//Wk2DictRec.IntToTag

procedure Wk2DictRec.DoFire(const anEvent: Tk2Event;
  const anOp: Ik2Op);
//#UC START# *484D31850186_484D10530133_var*
//#UC END# *484D31850186_484D10530133_var*
begin
//#UC START# *484D31850186_484D10530133_impl*
 inherited;
 if (anEvent.ID = k2_eidTypeTableWillBeDestroyed) then
  f_LastRec.rTag := nil;
//#UC END# *484D31850186_484D10530133_impl*
end;//Wk2DictRec.DoFire

end.