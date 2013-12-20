unit npControlsList;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "VT"
// Модуль: "w:/common/components/gui/Garant/VT/npControlsList.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::VT::vtNavigator::TnpControlsList
//
// список навигаторов на форме, от которых были отстыкованы компоненты.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\VT\vtDefine.inc}

interface

uses
  npControlsListPrim
  ;

type
 TnpControlsList = class(TnpControlsListPrim)
  {* список навигаторов на форме, от которых были отстыкованы компоненты. }
 public
 // singleton factory method
   class function Instance: TnpControlsList;
    {- возвращает экземпляр синглетона. }
 end;//TnpControlsList

implementation

uses
  l3Base {a}
  ;


// start class TnpControlsList

var g_TnpControlsList : TnpControlsList = nil;

procedure TnpControlsListFree;
begin
 l3Free(g_TnpControlsList);
end;

class function TnpControlsList.Instance: TnpControlsList;
begin
 if (g_TnpControlsList = nil) then
 begin
  l3System.AddExitProc(TnpControlsListFree);
  g_TnpControlsList := Create;
 end;
 Result := g_TnpControlsList;
end;


end.