unit F1ShellWordsPack;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "F1 Shell Words"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Shell_Words/F1ShellWordsPack.pas"
// Начат: 11.05.2011 13:20
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeywordsPack::Class>> F1 Поддержка тестов::F1 Shell Words::F1 Shell Words::F1ShellWordsPack
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
  kwDocumentSetBookmark
  {$If defined(nsTest)}
  ,
  kwF1WasBeep
  {$IfEnd} //nsTest
  ,
  kwF1ImportConsultation,
  kwConfigRestore,
  kwStyleTableRestore,
  kwDiffIteratorHasNext,
  kwDiffIteratorNext,
  kwDiffIteratorHasPrev,
  kwDiffIteratorPrev
  {$If defined(nsTest)}
  ,
  kwTextFormSetNeedShowIntranetWarning
  {$IfEnd} //nsTest
  ,
  kwTextFormGetDocumentID,
  kwOpenSituationCard,
  kwOpenOldSituationCard,
  kwQueryCardSetCanSaveState,
  kwDocumentLikeState,
  kwBrowse,
  kwGetEncryptedComplectId
  ;

end.