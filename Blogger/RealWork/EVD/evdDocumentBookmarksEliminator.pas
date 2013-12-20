unit evdDocumentBookmarksEliminator;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "EVD"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/EVD/evdDocumentBookmarksEliminator.pas"
// �����: 07.09.2011 15:09
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::EVD::Generators::TevdDocumentBookmarksEliminator
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  evdDocumentMarksEliminator,
  k2Interfaces
  ;

type
 TevdDocumentBookmarksEliminator = class(TevdDocumentMarksEliminator)
 protected
 // overridden protected methods
   function NeedWritePara(const aLeaf: Ik2Tag): Boolean; override;
     {* ���������� ����� �� ����������� ���������� ����� }
 end;//TevdDocumentBookmarksEliminator

implementation

uses
  evdTypes,
  k2Tags
  ;

// start class TevdDocumentBookmarksEliminator

function TevdDocumentBookmarksEliminator.NeedWritePara(const aLeaf: Ik2Tag): Boolean;
//#UC START# *49E48829016F_4E6750EF020D_var*
//#UC END# *49E48829016F_4E6750EF020D_var*
begin
//#UC START# *49E48829016F_4E6750EF020D_impl*
 Result := aLeaf.IntA[k2_tiHandle] <> ev_sbtBookmark;
//#UC END# *49E48829016F_4E6750EF020D_impl*
end;//TevdDocumentBookmarksEliminator.NeedWritePara

end.