unit evQueryCardCursor;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Everest/evQueryCardCursor.pas"
// �����: 2008/04/14 13:46:35
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::ParaList Cursors::TevQueryCardCursor
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  evDocumentCursor
  ;

type
 TevQueryCardCursor = class(TevDocumentCursor)
 protected
 // overridden protected methods
   function CanInsertParaOnMove: Boolean; override;
 end;//TevQueryCardCursor

implementation

// start class TevQueryCardCursor

function TevQueryCardCursor.CanInsertParaOnMove: Boolean;
//#UC START# *4BFFD9C80181_4BFFD963014E_var*
//#UC END# *4BFFD9C80181_4BFFD963014E_var*
begin
//#UC START# *4BFFD9C80181_4BFFD963014E_impl*
 {$IfDef Nemesis}
 Result := false;
 {$Else  Nemesis}
 Result := inherited CanInsertParaOnMove;
 {$EndIf Nemesis}
//#UC END# *4BFFD9C80181_4BFFD963014E_impl*
end;//TevQueryCardCursor.CanInsertParaOnMove

end.