unit eeEditorExportModelPart;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest Engine"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Everest_Engine/eeEditorExportModelPart.pas"
// �����: 26.02.2010 11:02
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<GuiControl::Class>> Shared Delphi For F1::Everest Engine::Editor::TeeEditorExportModelPart
//
// ����� TeeEditorExport ������������ �� ������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\Everest_Engine\eeDefine.inc}

interface

uses
  evTunedEditor,
  evCustomEditorModelPart
  ;

type
 TeeEditorExportModelPart = class(TevTunedEditor)
  {* ����� TeeEditorExport ������������ �� ������ }
 protected
 // overridden property methods
   function pm_GetAllowParaType: TevAllowParaTypes; override;
 end;//TeeEditorExportModelPart

implementation

// start class TeeEditorExportModelPart

function TeeEditorExportModelPart.pm_GetAllowParaType: TevAllowParaTypes;
//#UC START# *4B877E7B0330_4B877FE00340get_var*
//#UC END# *4B877E7B0330_4B877FE00340get_var*
begin
//#UC START# *4B877E7B0330_4B877FE00340get_impl*
 Result := [Low(TevAllowParaType) .. High(TevAllowParaType)] - [ev_aptSBS];
//#UC END# *4B877E7B0330_4B877FE00340get_impl*
end;//TeeEditorExportModelPart.pm_GetAllowParaType

end.