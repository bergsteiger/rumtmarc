unit l3ListUtils;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "L3"
// Модуль: "w:/common/components/rtl/Garant/L3/l3ListUtils.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi Low Level::L3::Pretty Things::l3ListUtils
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\L3\l3Define.inc}

interface

uses
  l3LongintList
  ;

function l3IsIdenticalLists(aL1: Tl3LongintList
  {* первый список};
  aL2: Tl3LongintList
  {* второй список};
  aOrderIsImportant: Boolean = false
  {* нужно ли учитывать порядок расположения элементов списков}): Boolean;
   {* Проверка идентичности списков с *уникальными* неповторяющимися значениями }

implementation

// unit methods

function l3IsIdenticalLists(aL1: Tl3LongintList
  {* первый список};
  aL2: Tl3LongintList
  {* второй список};
  aOrderIsImportant: Boolean = false
  {* нужно ли учитывать порядок расположения элементов списков}): Boolean;
//#UC START# *4E92F1190105_4E92F0D00100_var*
var
 I: Integer;
//#UC END# *4E92F1190105_4E92F0D00100_var*
begin
//#UC START# *4E92F1190105_4E92F0D00100_impl*
 Result := (Pointer(aL1) = Pointer(aL2));
 if not Result then
 begin
  if (aL1 = nil) or (aL2 = nil) then
   Exit;
  if aL1.Count = aL2.Count then
  begin
   if aOrderIsImportant then
   begin
    for I := 0 to Pred(aL1.Count) do
    begin
     Result := aL1.Items[I] = aL2.Items[I];
     if not Result then
      Exit;
    end;
   end
   else
   begin
    for I := 0 to Pred(aL1.Count) do
    begin
     Result := aL1.IndexOf(aL2.Items[I]) >= 0;
     if not Result then
      Exit;
    end;
   end;
  end;
 end;
//#UC END# *4E92F1190105_4E92F0D00100_impl*
end;//l3IsIdenticalLists

end.