unit NOT_FINISHED_eeTreeView;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest Engine"
// ������: "w:/common/components/gui/Garant/Everest_Engine/NOT_FINISHED_eeTreeView.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<GuiControl::Class>> Shared Delphi For F1::Everest Engine::Tree::TeeTreeView
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ���� ���� ������������ ������ ��� �������������, � �� ��� ����������. !

{$Include ..\Everest_Engine\eeDefine.inc}

interface

uses
  l3TreeInterfaces,
  eeCustomTreeView
  ;

type
 TeeCurrentChanged = procedure (aSender: TObject;
  aNewCurrent: Integer;
  aOldCurrent: Integer);

 TeeNewCharPressed = procedure (aChar: AnsiChar) of object;

 TeeMakeTreeSource = procedure (out theTree: Il3SimpleTree) of object;

 TeeTreeView = class(TeeCustomTreeView)
 end;//TeeTreeView

implementation

end.