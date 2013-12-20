unit vtNavigatorRes;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "VT"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/VT/vtNavigatorRes.pas"
// Начат: 02.03.2010 17:58
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi::VT::vtNavigator::vtNavigatorRes
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\VT\vtDefine.inc}

interface

uses
  l3StringIDEx
  ;

var
  { Локализуемые строки TvtNavigatorHints }
 str_vtAutoHideOffHint : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'vtAutoHideOffHint'; rValue : 'Зафиксировать панель навигации');
  { 'Зафиксировать панель навигации' }
 str_vtAutoHideOnHint : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'vtAutoHideOnHint'; rValue : 'Сворачивать панель навигации');
  { 'Сворачивать панель навигации' }
 str_vtMinimazedOnHint : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'vtMinimazedOnHint'; rValue : 'Свернуть');
  { 'Свернуть' }
 str_vtMinimazedOffHint : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'vtMinimazedOffHint'; rValue : 'Развернуть');
  { 'Развернуть' }
 str_vtBtnCloseHint : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'vtBtnCloseHint'; rValue : 'Прикрепить навигатор');
  { 'Прикрепить навигатор' }

implementation

uses
  l3MessageID
  ;


initialization
// Инициализация str_vtAutoHideOffHint
 str_vtAutoHideOffHint.Init;
// Инициализация str_vtAutoHideOnHint
 str_vtAutoHideOnHint.Init;
// Инициализация str_vtMinimazedOnHint
 str_vtMinimazedOnHint.Init;
// Инициализация str_vtMinimazedOffHint
 str_vtMinimazedOffHint.Init;
// Инициализация str_vtBtnCloseHint
 str_vtBtnCloseHint.Init;

end.