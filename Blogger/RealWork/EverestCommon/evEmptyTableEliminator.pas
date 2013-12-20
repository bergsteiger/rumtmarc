unit evEmptyTableEliminator;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "EverestCommon"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/EverestCommon/evEmptyTableEliminator.pas"
// Начат: 02.12.2010 18:12
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::EverestCommon::Generators::TevEmptyTableEliminator
//
// Фильтр, выкидывающий пустые таблицы
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\EverestCommon\evDefine.inc}

interface

uses
  evdBufferedFilter,
  k2Interfaces
  ;

type
 TevEmptyTableEliminator = class(TevdBufferedFilter)
  {* Фильтр, выкидывающий пустые таблицы }
 private
 // private fields
   f_WasSomeLeaf : Boolean;
 protected
 // overridden protected methods
   procedure StartChild(TypeID: Integer); override;
   procedure OpenStream; override;
     {* вызывается один раз при начале генерации. Для перекрытия в потомках. }
   procedure DoStartChild(TypeID: Integer); override;
   function NeedStartBuffering(aID: Integer): Boolean; override;
   function NeedFlushBuffer(const aLeaf: Ik2Tag;
     aTagId: Integer): Boolean; override;
   procedure DoFlushBuffer(const aLeaf: Ik2Tag;
     aTagId: Integer;
     aNeedCloseBracket: Boolean); override;
 end;//TevEmptyTableEliminator

implementation

uses
  LeafPara_Const,
  Table_Const,
  SBS_Const,
  k2Facade,
  ParaList_Const,
  TableCell_Const
  ;

// start class TevEmptyTableEliminator

procedure TevEmptyTableEliminator.StartChild(TypeID: Integer);
//#UC START# *4836D4650177_4CF7B733015E_var*
//#UC END# *4836D4650177_4CF7B733015E_var*
begin
//#UC START# *4836D4650177_4CF7B733015E_impl*
 if (SkipLevel > 0) then
 begin
  if not f_WasSomeLeaf then
  begin
   if k2.TypeTable[TypeID].InheritsFrom(k2_idLeafPara) then
    f_WasSomeLeaf := true;
  end//not f_WasSomeLeaf
  else
  if (SkipLevel = 2) then
  begin
   StopBufferingAndFlush(False, TopObject[0], False);
   f_WasSomeLeaf := false;
  end;//SkipLevel = 2
 end;//SkipLevel > 0 
 inherited;
//#UC END# *4836D4650177_4CF7B733015E_impl*
end;//TevEmptyTableEliminator.StartChild

procedure TevEmptyTableEliminator.OpenStream;
//#UC START# *4836D49800CA_4CF7B733015E_var*
//#UC END# *4836D49800CA_4CF7B733015E_var*
begin
//#UC START# *4836D49800CA_4CF7B733015E_impl*
 inherited;
 f_WasSomeLeaf := false;
//#UC END# *4836D49800CA_4CF7B733015E_impl*
end;//TevEmptyTableEliminator.OpenStream

procedure TevEmptyTableEliminator.DoStartChild(TypeID: Integer);
//#UC START# *4A2D1217037A_4CF7B733015E_var*
//#UC END# *4A2D1217037A_4CF7B733015E_var*
begin
//#UC START# *4A2D1217037A_4CF7B733015E_impl*
 inherited;
//#UC END# *4A2D1217037A_4CF7B733015E_impl*
end;//TevEmptyTableEliminator.DoStartChild

function TevEmptyTableEliminator.NeedStartBuffering(aID: Integer): Boolean;
//#UC START# *4C56D54B002A_4CF7B733015E_var*
//#UC END# *4C56D54B002A_4CF7B733015E_var*
begin
//#UC START# *4C56D54B002A_4CF7B733015E_impl*
 Result := (aID = -k2_idTable) OR (aID = -k2_idSBS);
 if Result then
  f_WasSomeLeaf := false;
//#UC END# *4C56D54B002A_4CF7B733015E_impl*
end;//TevEmptyTableEliminator.NeedStartBuffering

function TevEmptyTableEliminator.NeedFlushBuffer(const aLeaf: Ik2Tag;
  aTagId: Integer): Boolean;
//#UC START# *4CF7BC520161_4CF7B733015E_var*

 procedure CheckEmptyLists(const aList : Ik2Tag);
 var
  l_Index : Integer;
  l_Child : Ik2Tag;
 begin//CheckEmptyLists
  l_Index := 0;
  while (l_Index < aList.ChildrenCount) do
  begin
   l_Child := aList.Child[l_Index];
   if l_Child.InheritsFrom(k2_idParaList) then
   begin
    CheckEmptyLists(l_Child);
    if (l_Child.ChildrenCount = 0) then
    begin
     if not l_Child.InheritsFrom(k2_idTableCell) then
     begin
      aList.DeleteChild(l_Index);
      continue;
     end;//not l_Child.InheritsFrom(k2_idTableCell)
    end;//l_Child.ChildrenCount = 0
   end;//l_Child.InheritsFrom(k2_idParaList)
   Inc(l_Index);
  end;//l_Index < aList.ChildrenCount
 end;//CheckEmptyLists

//#UC END# *4CF7BC520161_4CF7B733015E_var*
begin
//#UC START# *4CF7BC520161_4CF7B733015E_impl*
 Result := f_WasSomeLeaf;
 if Result then
  CheckEmptyLists(aLeaf);
//#UC END# *4CF7BC520161_4CF7B733015E_impl*
end;//TevEmptyTableEliminator.NeedFlushBuffer

procedure TevEmptyTableEliminator.DoFlushBuffer(const aLeaf: Ik2Tag;
  aTagId: Integer;
  aNeedCloseBracket: Boolean);
//#UC START# *4CF7BEC40130_4CF7B733015E_var*
//#UC END# *4CF7BEC40130_4CF7B733015E_var*
begin
//#UC START# *4CF7BEC40130_4CF7B733015E_impl*
 inherited;
 f_WasSomeLeaf := false;
//#UC END# *4CF7BEC40130_4CF7B733015E_impl*
end;//TevEmptyTableEliminator.DoFlushBuffer

end.