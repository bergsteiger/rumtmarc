{$IfNDef l3Dictionary_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "L3"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/L3/l3Dictionary.imp.pas"
// Начат: 01.03.2010 15:52
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Low Level::L3::l3CoreObjects::l3Dictionary
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define l3Dictionary_imp}
 _l3DelphiStringSearcher_Parent_ = _l3Dictionary_Parent_;
 {$Include ..\L3\l3DelphiStringSearcher.imp.pas}
 _l3Dictionary_ = {abstract mixin} class(_l3DelphiStringSearcher_)
 private
 // private fields
   f_IDIndex : Tl3IDIndex;
   f_Default : Tl3PrimString;
    {* Поле для свойства Default}
 protected
 // property methods
   procedure pm_SetDefault(aValue: Tl3PrimString);
   function pm_GetDRByName(const aName: AnsiString): Tl3PrimString; virtual;
   function pm_GetDRByID(anID: Integer): Tl3PrimString;
 protected
 // overridden protected methods
   procedure Release; override;
   procedure InitFields; override;
   procedure DirectInsert(anIndex: Integer;
    const aData: _ItemType_); override;
     {* Непосредственное удаление элемента. Без проверки валидности индекса. }
   {$If not defined(l3Items_NoSort)}
   function DoFindInsertionPlace(const aFindData: _ItemType_;
    out theIndex: Integer): Boolean; override;
     {* Ищет ПОСЛЕДНЕЕ вхождение элемента в список. Если не находит - возвращает место предполагаемой вставки. }
   {$IfEnd} //not l3Items_NoSort
   {$If defined(l3Items_NeedsBeforeFreeItem)}
   procedure BeforeFreeItem(var aPlace: _ItemType_); override;
     {* Нотификация потомкам об освобождении элемента списка }
   {$IfEnd} //l3Items_NeedsBeforeFreeItem
 public
 // overridden public methods
   procedure Clear; override;
   procedure Sort; override;
     {* сортирует хранилище. }
 protected
 // protected methods
   function ControlFindByID: Boolean; virtual;
 public
 // public properties
   property Default: Tl3PrimString
     read f_Default
     write pm_SetDefault;
     {* Элемент по умолчанию }
   property DRByName[const aName: AnsiString]: Tl3PrimString
     read pm_GetDRByName;
     {* Элемент по имени }
   property DRByID[anID: Integer]: Tl3PrimString
     read pm_GetDRByID;
     {* Элемент по идентификатору }
 end;//_l3Dictionary_

{$Else l3Dictionary_imp}


{$Include ..\L3\l3DelphiStringSearcher.imp.pas}

type
  THackIndex = class(Tl3IDIndex)
   {* Хак }
  end;//THackIndex

// start class _l3Dictionary_

procedure _l3Dictionary_.pm_SetDefault(aValue: Tl3PrimString);
//#UC START# *4B8BBA000081_4B8BB87A0089set_var*
//#UC END# *4B8BBA000081_4B8BB87A0089set_var*
begin
//#UC START# *4B8BBA000081_4B8BB87A0089set_impl*
 l3Set(f_Default, aValue);
//#UC END# *4B8BBA000081_4B8BB87A0089set_impl*
end;//_l3Dictionary_.pm_SetDefault

function _l3Dictionary_.pm_GetDRByName(const aName: AnsiString): Tl3PrimString;
//#UC START# *4B8BBA0701CD_4B8BB87A0089get_var*
var
 i : Integer;
//#UC END# *4B8BBA0701CD_4B8BB87A0089get_var*
begin
//#UC START# *4B8BBA0701CD_4B8BB87A0089get_impl*
 if FindData(aName, i, SortIndex) then
  Result := Items[i]
 else
  Result := Default;
//#UC END# *4B8BBA0701CD_4B8BB87A0089get_impl*
end;//_l3Dictionary_.pm_GetDRByName

function _l3Dictionary_.pm_GetDRByID(anID: Integer): Tl3PrimString;
//#UC START# *4B8BBA220048_4B8BB87A0089get_var*
var
 i : Integer;
//#UC END# *4B8BBA220048_4B8BB87A0089get_var*
begin
//#UC START# *4B8BBA220048_4B8BB87A0089get_impl*
 with f_IDIndex do
  if FindData(anID, i, SortIndex) then
   Result := Items[i]
  else
   Result := Self.Default;
//#UC END# *4B8BBA220048_4B8BB87A0089get_impl*
end;//_l3Dictionary_.pm_GetDRByID

function _l3Dictionary_.ControlFindByID: Boolean;
//#UC START# *4B8BBAA800AB_4B8BB87A0089_var*
//#UC END# *4B8BBAA800AB_4B8BB87A0089_var*
begin
//#UC START# *4B8BBAA800AB_4B8BB87A0089_impl*
 Result := false;
//#UC END# *4B8BBAA800AB_4B8BB87A0089_impl*
end;//_l3Dictionary_.ControlFindByID

procedure _l3Dictionary_.Release;
//#UC START# *479F2AFB0397_4B8BB87A0089_var*
//#UC END# *479F2AFB0397_4B8BB87A0089_var*
begin
//#UC START# *479F2AFB0397_4B8BB87A0089_impl*
 FreeAndNil(f_IDIndex);
 Default := nil;
 inherited;
//#UC END# *479F2AFB0397_4B8BB87A0089_impl*
end;//_l3Dictionary_.Release

procedure _l3Dictionary_.InitFields;
//#UC START# *47A042E100E2_4B8BB87A0089_var*
//#UC END# *47A042E100E2_4B8BB87A0089_var*
begin
//#UC START# *47A042E100E2_4B8BB87A0089_impl*
 inherited;
 f_IDIndex := Tl3IDIndex.MakeSorted;
 Sorted := true;
//#UC END# *47A042E100E2_4B8BB87A0089_impl*
end;//_l3Dictionary_.InitFields

procedure _l3Dictionary_.Clear;
//#UC START# *47B1C16D0188_4B8BB87A0089_var*
//#UC END# *47B1C16D0188_4B8BB87A0089_var*
begin
//#UC START# *47B1C16D0188_4B8BB87A0089_impl*
 if (f_IDIndex <> nil) then
  f_IDIndex.Clear;
 inherited;
//#UC END# *47B1C16D0188_4B8BB87A0089_impl*
end;//_l3Dictionary_.Clear

procedure _l3Dictionary_.DirectInsert(anIndex: Integer;
  const aData: _ItemType_);
//#UC START# *47B49EC50034_4B8BB87A0089_var*
//#UC END# *47B49EC50034_4B8BB87A0089_var*
begin
//#UC START# *47B49EC50034_4B8BB87A0089_impl*
 inherited;
 f_IDIndex.Add(aData);
//#UC END# *47B49EC50034_4B8BB87A0089_impl*
end;//_l3Dictionary_.DirectInsert

procedure _l3Dictionary_.Sort;
//#UC START# *47B5AE6B0294_4B8BB87A0089_var*
//#UC END# *47B5AE6B0294_4B8BB87A0089_var*
begin
//#UC START# *47B5AE6B0294_4B8BB87A0089_impl*
 inherited;
 if (f_IDIndex <> nil) then
  f_IDIndex.Sort;
//#UC END# *47B5AE6B0294_4B8BB87A0089_impl*
end;//_l3Dictionary_.Sort

{$If not defined(l3Items_NoSort)}
function _l3Dictionary_.DoFindInsertionPlace(const aFindData: _ItemType_;
  out theIndex: Integer): Boolean;
//#UC START# *47B98F7E03A7_4B8BB87A0089_var*
var
 l_Index : Integer;
//#UC END# *47B98F7E03A7_4B8BB87A0089_var*
begin
//#UC START# *47B98F7E03A7_4B8BB87A0089_impl*
 Result := inherited DoFindInsertionPlace(aFindData, theIndex);
 if {not Result AND }ControlFindByID then
 begin
  if (f_IDIndex <> nil) then
   with f_IDIndex do
   begin
    if (Count > 0) then
    begin
     if THackIndex(f_IDIndex).DoFindInsertionPlace(aFindData, l_Index) then
     begin
      l_Index := Self.IndexOf(Items[l_Index]);
      if (l_Index >= 0) then
      begin
       theIndex := l_Index;
       Result := true;
      end;//l_Index >= 0
     end;//DoFindInsertionPlace..l_Index
    end;//Count > 0
   end;//f_IDIndex
 end;//not Result
//#UC END# *47B98F7E03A7_4B8BB87A0089_impl*
end;//_l3Dictionary_.DoFindInsertionPlace
{$IfEnd} //not l3Items_NoSort

{$If defined(l3Items_NeedsBeforeFreeItem)}
procedure _l3Dictionary_.BeforeFreeItem(var aPlace: _ItemType_);
//#UC START# *4B87FCF8038B_4B8BB87A0089_var*
//#UC END# *4B87FCF8038B_4B8BB87A0089_var*
begin
//#UC START# *4B87FCF8038B_4B8BB87A0089_impl*
 if (f_IDIndex <> nil) then
  f_IDIndex.Remove(aPlace);
 inherited;
//#UC END# *4B87FCF8038B_4B8BB87A0089_impl*
end;//_l3Dictionary_.BeforeFreeItem
{$IfEnd} //l3Items_NeedsBeforeFreeItem

{$EndIf l3Dictionary_imp}
