{$IfNDef Navigator_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "EditorUsers"
// ������: "w:/common/components/rtl/Garant/EditorUsers/Navigator.imp.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Common For Scripts And Tests::EditorUsers::MixIns::Navigator
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define Navigator_imp}
{$If not defined(NoScripts)}
 _Navigator_ = {mixin} class(_Navigator_Parent_)
 protected
 // protected methods
   procedure Navigate(aText: TevCustomEditorWindow;
    const anOp: Il3OpPack); virtual; abstract;
     {* ������������� ������ ��� ��������� }
 end;//_Navigator_
{$IfEnd} //not NoScripts

{$Else Navigator_imp}

{$If not defined(NoScripts)}


{$IfEnd} //not NoScripts

{$EndIf Navigator_imp}
