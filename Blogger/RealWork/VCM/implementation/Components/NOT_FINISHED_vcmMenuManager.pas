unit NOT_FINISHED_vcmMenuManager;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "VCM"
// ������: "w:/common/components/gui/Garant/VCM/implementation/Components/NOT_FINISHED_vcmMenuManager.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi::VCM::Components::vcmMenuManager
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ���� ���� ������������ ������ ��� �������������, � �� ��� ����������. !

{$Include w:\common\components\gui\Garant\VCM\vcmDefine.inc}

interface

{$If not defined(NoVCM)}
uses
  vcmBaseMenuManager
  ;

type
 TvcmCustomMenuManager = class(TvcmBaseMenuManager)
 end;//TvcmCustomMenuManager

 TvcmMenuManager = class(TvcmCustomMenuManager)
 end;//TvcmMenuManager

 TvcmPopupMenu = class
 end;//TvcmPopupMenu
{$IfEnd} //not NoVCM

implementation

{$If not defined(NoVCM)}
uses
  afwDrawing,
  vcmEntitiesDefIteratorForContextMenu
  ;

{$IfEnd} //not NoVCM
end.