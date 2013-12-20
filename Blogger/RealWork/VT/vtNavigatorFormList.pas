unit vtNavigatorFormList;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "VT"
// Модуль: "w:/common/components/gui/Garant/VT/vtNavigatorFormList.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::VT::vtNavigator::TvtNavigatorFormList
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\VT\vtDefine.inc}

interface

uses
  vtNavigatorFormListPrim
  ;

type
 TvtNavigatorFormList = class(TvtNavigatorFormListPrim)
 public
 // singleton factory method
   class function Instance: TvtNavigatorFormList;
    {- возвращает экземпляр синглетона. }
 end;//TvtNavigatorFormList

implementation

uses
  l3Base {a}
  ;


// start class TvtNavigatorFormList

var g_TvtNavigatorFormList : TvtNavigatorFormList = nil;

procedure TvtNavigatorFormListFree;
begin
 l3Free(g_TvtNavigatorFormList);
end;

class function TvtNavigatorFormList.Instance: TvtNavigatorFormList;
begin
 if (g_TvtNavigatorFormList = nil) then
 begin
  l3System.AddExitProc(TvtNavigatorFormListFree);
  g_TvtNavigatorFormList := Create;
 end;
 Result := g_TvtNavigatorFormList;
end;


end.