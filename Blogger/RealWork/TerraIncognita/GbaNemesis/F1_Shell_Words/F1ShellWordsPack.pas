unit F1ShellWordsPack;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "F1 Shell Words"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Shell_Words/F1ShellWordsPack.pas"
// �����: 11.05.2011 13:20
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeywordsPack::Class>> F1 ��������� ������::F1 Shell Words::F1 Shell Words::F1ShellWordsPack
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

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