unit nsBaseSearchPromptTree;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Лукьянец Р.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/nsBaseSearchPromptTree.pas"
// Начат: 2008/06/25 08:04:46
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Core::Base Operations::View::BaseSearch::TnsBaseSearchPromptTree
//
// Дерево подсказок. Синглетон
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  l3TreeInterfaces,
  nsBaseSearchPromptTreeBase
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TnsBaseSearchPromptTree = class(TnsBaseSearchPromptTreeBase)
  {* Дерево подсказок. Синглетон }
 public
 // public methods
   class function Make: Il3SimpleTree; reintroduce;
     {* Создаёт дерево подсказок }
 end;//TnsBaseSearchPromptTree
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  l3Base {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

// start class TnsBaseSearchPromptTree

var g_TnsBaseSearchPromptTree : Pointer = nil;

procedure TnsBaseSearchPromptTreeFree;
begin
 IUnknown(g_TnsBaseSearchPromptTree) := nil;
end;


class function TnsBaseSearchPromptTree.Make: Il3SimpleTree;
begin
 if (g_TnsBaseSearchPromptTree = nil) then
 begin
  l3System.AddExitProc(TnsBaseSearchPromptTreeFree);
  Il3SimpleTree(g_TnsBaseSearchPromptTree) := inherited Make;
 end;
 Result := Il3SimpleTree(g_TnsBaseSearchPromptTree);
end;

{$IfEnd} //not Admin AND not Monitorings

end.