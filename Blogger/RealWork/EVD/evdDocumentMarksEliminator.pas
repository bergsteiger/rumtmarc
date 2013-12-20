unit evdDocumentMarksEliminator;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "EVD"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/EVD/evdDocumentMarksEliminator.pas"
// �����: 06.09.2011 20:40
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::EVD::Generators::TevdDocumentMarksEliminator
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  evdLeafParaFilter,
  k2Interfaces
  ;

type
 TevdDocumentMarksEliminator = class(TevdLeafParaFilter)
 protected
 // overridden protected methods
   function ParaTypeForFiltering: Integer; override;
     {* �������, ������������ ��� �������, ��� ������� ����� ����������� ���������� }
   function NeedWritePara(const aLeaf: Ik2Tag): Boolean; override;
     {* ���������� ����� �� ����������� ���������� ����� }
 end;//TevdDocumentMarksEliminator

implementation

uses
  DocSubLayer_Const,
  evdTypes,
  k2Tags
  ;

// start class TevdDocumentMarksEliminator

function TevdDocumentMarksEliminator.ParaTypeForFiltering: Integer;
//#UC START# *49E488070386_4E664CB30360_var*
//#UC END# *49E488070386_4E664CB30360_var*
begin
//#UC START# *49E488070386_4E664CB30360_impl*
 Result := k2_idDocSubLayer;
//#UC END# *49E488070386_4E664CB30360_impl*
end;//TevdDocumentMarksEliminator.ParaTypeForFiltering

function TevdDocumentMarksEliminator.NeedWritePara(const aLeaf: Ik2Tag): Boolean;
//#UC START# *49E48829016F_4E664CB30360_var*
//#UC END# *49E48829016F_4E664CB30360_var*
begin
//#UC START# *49E48829016F_4E664CB30360_impl*
 Result := aLeaf.IntA[k2_tiHandle] <> ev_sbtMark;
//#UC END# *49E48829016F_4E664CB30360_impl*
end;//TevdDocumentMarksEliminator.NeedWritePara

end.