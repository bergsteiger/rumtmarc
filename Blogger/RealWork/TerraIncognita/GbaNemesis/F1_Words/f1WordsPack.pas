unit f1WordsPack;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "F1 Words"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Words/f1WordsPack.pas"
// Начат: 27.04.2011 14:53
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeywordsPack::Class>> F1 Поддержка тестов::F1 Words::Words::f1WordsPack
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\GbaNemesis\nsDefine.inc}

interface


implementation

uses
  kwDocumentsCacheClear,
  kwTimeMachineSetDate
  {$If not defined(NoScripts)}
  ,
  kwPopEditorHasComment
  {$IfEnd} //not NoScripts
  ,
  kwExportHelp,
  kwFiltersList,
  kwF1BaseDate,
  kwAttributeSearch,
  kwOk,
  kwMainMenu,
  kwF1ComplectName,
  kwF1ComplectOwner
  ;

end.