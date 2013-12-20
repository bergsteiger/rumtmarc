unit k2BaseStruct;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/K2/k2BaseStruct.pas"
// Начат: 21.07.2009 20:41
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi::K2::k2PrimObjects::k2BaseStruct
//
// Базовые структуры
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
  k2Prim,
  l3DataContainerWithoutIUnknown
  ;

type
 _PropInPrim_ = {$IfDef XE4}record{$Else}object{$EndIf}
 public
   rProp : Tk2CustomPropertyPrim;
   rDeleteMapped : Boolean;
   rVT : Tk2ValueType;
 end;//_PropInPrim_

 _PropIn_ = {$IfDef XE4}record{$Else}object(_PropInPrim_){$EndIf}
 {$IfDef XE4}
 public
  r_PropInPrim_ : _PropInPrim_;
 {$EndIf XE4}
 public
   rOp : Ik2Op;
 end;//_PropIn_

 _PropLoc_ = {$IfDef XE4}record{$Else}object(_PropInPrim_){$EndIf}
 {$IfDef XE4}
 public
  r_PropInPrim_ : _PropInPrim_;
 {$EndIf XE4}
 public
   rOp : Pointer;
 end;//_PropLoc_

 Tk2Values = packed {$IfDef XE4}record{$Else}object{$EndIf}
  {* Структура, содержащая информацию для изменения значения атрибута тега }
 private
   f_New : Pointer;
   f_Tag : Pointer;
   rVT : Tk2ValueType; // Тип значения
   f_Type : Tk2TypePrim;
   f_Prop : Tk2CustomPropertyPrim;
   f_NewTag : Ik2Tag;
 private
    procedure CheckNewTag;
     {* Проверяет, чтобы новое значение было тегом }
 public
   rOld : Ik2Tag;
 public
    procedure Init(const aProp: _PropIn_;
    const aValue;
    const aTag: Ik2Tag); overload; 
     {* Инициализирует структуру }
    procedure Free;
     {* Освобождает структуру }
    function RTag: PIk2Tag;
     {* Тег, у которого меняется значение }
    procedure SetIntRef(out aRef: Integer);
    procedure Init(aProp: Tk2CustomPropertyPrim;
    aValue: PIk2Tag;
    const aTag: Ik2Tag); overload; 
     {* Инициализирует структуру }
    procedure CheckSort;
     {* Проверяет сортировку значения }
    function RNew: PIk2Tag;
    function IsNull: Boolean;
    procedure SetOwner;
     {* Устанавливает новому значению владельца }
    function IsChanged: Boolean;
     {* Значение изменилось }
 end;//Tk2Values
procedure FreeIntRef(aType: Tk2TypePrim;
  var theRef: Integer);
   {* Очищает ссылку на тег }

implementation

uses
  k2Base,
  SysUtils,
  k2Const,
  l3Types,
  l3_String
  ;

type
 Tk2HackString = {final} class(Tl3DataContainerWithoutIUnknown)
 end;//Tk2HackString

// unit methods

procedure FreeIntRef(aType: Tk2TypePrim;
  var theRef: Integer);
//#UC START# *4A67392101CC_4A65EFB60037_var*
//#UC END# *4A67392101CC_4A65EFB60037_var*
begin
//#UC START# *4A67392101CC_4A65EFB60037_impl*
 if aType.IsOrd OR (theRef = k2_TransparentValue) then
  theRef := 0
 else
 if (Tk2Type(aType).AtomClass <> nil) then
  FreeAndNil(theRef)
 else
  IUnknown(theRef) := nil;
//#UC END# *4A67392101CC_4A65EFB60037_impl*
end;//FreeIntRef
// start class Tk2Values

procedure Tk2Values.Init(const aProp: _PropIn_;
  const aValue;
  const aTag: Ik2Tag);
//#UC START# *4A66CDFD01D5_4761470401C1_var*
//#UC END# *4A66CDFD01D5_4761470401C1_var*
begin
//#UC START# *4A66CDFD01D5_4761470401C1_impl*
 FillChar(Self, SizeOf(Self), 0);
 rVT := aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rVT;
 f_Prop := aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp;
 f_Type := Tk2TypePrim(f_Prop.AtomType);
 f_New := @aValue;
 f_Tag := Pointer(aTag);
//#UC END# *4A66CDFD01D5_4761470401C1_impl*
end;//Tk2Values.Init

procedure Tk2Values.Free;
//#UC START# *4A66CE450382_4761470401C1_var*
//#UC END# *4A66CE450382_4761470401C1_var*
begin
//#UC START# *4A66CE450382_4761470401C1_impl*
 f_Tag := nil;
 f_NewTag := nil;
 f_New := nil;
 rOld := nil;
//#UC END# *4A66CE450382_4761470401C1_impl*
end;//Tk2Values.Free

function Tk2Values.RTag: PIk2Tag;
//#UC START# *4A66CE690051_4761470401C1_var*
//#UC END# *4A66CE690051_4761470401C1_var*
begin
//#UC START# *4A66CE690051_4761470401C1_impl*
 Result := @f_Tag;
//#UC END# *4A66CE690051_4761470401C1_impl*
end;//Tk2Values.RTag

procedure Tk2Values.SetIntRef(out aRef: Integer);
//#UC START# *4A66D08A002D_4761470401C1_var*
//#UC END# *4A66D08A002D_4761470401C1_var*
begin
//#UC START# *4A66D08A002D_4761470401C1_impl*
 if (rVT = vtTag) then
 begin
  if (PIk2Tag(f_New)^ = nil) then
   aRef := 0
  else
   PIk2Tag(f_New)^.SetIntRef(aRef);
 end//rVT = vtTag
 else
 if f_Type.IsOrd then
 begin
  Case rVT of
   vtInt:
    aRef := PInteger(f_New)^;
   vtBool:
    aRef := Ord(PBoolean(f_New)^);
   else
    rNew.SetIntRef(aRef);
  end;//Case rVT
 end//f_Type.IsOrd
 else
 if (rVT = vtObj) AND (PObject(f_New)^ Is Tl3DataContainerWithoutIUnknown) then
  aRef := Integer(Tl3DataContainerWithoutIUnknown(PObject(f_New)^).Use)
 else
  rNew.SetIntRef(aRef);
//#UC END# *4A66D08A002D_4761470401C1_impl*
end;//Tk2Values.SetIntRef

procedure Tk2Values.Init(aProp: Tk2CustomPropertyPrim;
  aValue: PIk2Tag;
  const aTag: Ik2Tag);
//#UC START# *4A66D19E00D9_4761470401C1_var*
//#UC END# *4A66D19E00D9_4761470401C1_var*
begin
//#UC START# *4A66D19E00D9_4761470401C1_impl*
 FillChar(Self, SizeOf(Self), 0);
 rVT := vtTag;
 f_Prop := aProp;
 f_Type := Tk2TypePrim(f_Prop.AtomType);
 f_New := aValue;
 f_Tag := Pointer(aTag);
//#UC END# *4A66D19E00D9_4761470401C1_impl*
end;//Tk2Values.Init

procedure Tk2Values.CheckSort;
//#UC START# *4A66D64202A4_4761470401C1_var*
var
 l_CProp : Tk2ArrayPropertyPrim;
 l_New   : PIk2Tag;
//#UC END# *4A66D64202A4_4761470401C1_var*
begin
//#UC START# *4A66D64202A4_4761470401C1_impl*
 if not f_Type.IsOrd then
 begin
  if Tk2CustomProperty(f_Prop).IsThisArray(l_CProp) then
  begin
   l_New := rNew;
   if (l_New^ <> nil) then
    try
     l_New.CheckSort(l_CProp);
    finally
     l_CProp := nil;
    end;//try..finally
  end;//Tk2CustomProperty(f_Prop).IsThisArray(l_CProp)
 end;//not f_Type.IsOrd
//#UC END# *4A66D64202A4_4761470401C1_impl*
end;//Tk2Values.CheckSort

function Tk2Values.RNew: PIk2Tag;
//#UC START# *4A66E6890392_4761470401C1_var*
//#UC END# *4A66E6890392_4761470401C1_var*
begin
//#UC START# *4A66E6890392_4761470401C1_impl*
 CheckNewTag;
 Result := PIk2Tag(f_New);
//#UC END# *4A66E6890392_4761470401C1_impl*
end;//Tk2Values.RNew

procedure Tk2Values.CheckNewTag;
//#UC START# *4A66E77903A5_4761470401C1_var*
//#UC END# *4A66E77903A5_4761470401C1_var*
begin
//#UC START# *4A66E77903A5_4761470401C1_impl*
 Case rVT of
  vtInt:
   f_NewTag := Tk2Type(f_Type).IntToTag(PInteger(f_New)^);
  vtBool:
   f_NewTag := Tk2Type(f_Type).BoolToTag(PBoolean(f_New)^);
  vtStr:
   f_NewTag := Tk2Type(f_Type).StrToTag(PAnsiString(f_New)^);
  vtObj:
   f_NewTag := Tk2Type(f_Type).ObjToTag(PObject(f_New)^);
  vtTag:
   Exit;
  else
   Assert(false); 
 end;//Case rVT
 f_New := @f_NewTag;
 rVT := vtTag;
//#UC END# *4A66E77903A5_4761470401C1_impl*
end;//Tk2Values.CheckNewTag

function Tk2Values.IsNull: Boolean;
//#UC START# *4A66EE0B0274_4761470401C1_var*
//#UC END# *4A66EE0B0274_4761470401C1_var*
begin
//#UC START# *4A66EE0B0274_4761470401C1_impl*
 Case rVT of
  vtInt:
   if f_Type.IsOrd then
    Result := false
   else
   begin
    CheckNewTag;
    Result := (PIk2Tag(f_New)^ = nil) OR PIk2Tag(f_New).IsNull;
   end;//f_TagType.IsOrd
  vtBool:
   Result := false;
  vtStr:
   Result := (PAnsiString(f_New)^ = '');
  vtObj:
   Result := (PObject(f_New)^ = nil);
  vtTag:
   Result := (PIk2Tag(f_New)^ = nil) OR PIk2Tag(f_New).IsNull;
  else
  begin
   Result := true;
   Assert(false);
  end;//else
 end;//Case rVT
//#UC END# *4A66EE0B0274_4761470401C1_impl*
end;//Tk2Values.IsNull

procedure Tk2Values.SetOwner;
//#UC START# *4A66F06E0292_4761470401C1_var*
//#UC END# *4A66F06E0292_4761470401C1_var*
begin
//#UC START# *4A66F06E0292_4761470401C1_impl*
 if not f_Prop.Shared then
  if not f_Type.IsOrd then
  begin
   if (rVT = vtObj) AND (PObject(f_New)^ Is Tl3DataContainerWithoutIUnknown) then
   begin
    Tk2HackString(PObject(f_New)^).DoSetOwner(Ik2Tag(f_Tag).AsObject);
   end//rVT = vtObj..
   else
   begin
    CheckNewTag;
    if (PIk2Tag(rNew)^ <> nil) then
     PIk2Tag(rNew)^.Owner := Ik2Tag(f_Tag);
   end;//rVT = vtObj..
  end;//not f_Type.IsOrd
//#UC END# *4A66F06E0292_4761470401C1_impl*
end;//Tk2Values.SetOwner

function Tk2Values.IsChanged: Boolean;
//#UC START# *4A66F68F03AC_4761470401C1_var*
//#UC END# *4A66F68F03AC_4761470401C1_var*
begin
//#UC START# *4A66F68F03AC_4761470401C1_impl*
 Result := true;
(* if (V.rOld <> V.rNew^) AND
    ((V.rOld = nil) OR not V.rOld.IsSame(V.rNew^)) then*)
//#UC END# *4A66F68F03AC_4761470401C1_impl*
end;//Tk2Values.IsChanged

end.