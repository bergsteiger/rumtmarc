unit PrimTextLoad_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Forms"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Daily/Forms/PrimTextLoad_Form.pas"
// �����: 23.09.2010 13:40
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> Shared Delphi Operations For Tests::TestForms::Forms::Everest::PrimTextLoad
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

interface

{$If defined(nsTest) AND not defined(NoVCM)}
uses
  evCustomEditor,
  evCustomTextSource,
  vcmEntityForm,
  evLoadDocumentManager
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  vcmExternalInterfaces {a},
  vcmInterfaces {a}
  ;
{$IfEnd} //nsTest AND not NoVCM

{$If defined(nsTest) AND not defined(NoVCM)}
type
 TPrimTextLoadForm = {form} class(TvcmEntityForm)
 private
 // private fields
   f_LoadManager : TevLoadDocumentManager;
    {* ���� ��� �������� LoadManager}
 protected
  procedure MakeControls; override;
 protected
 // property methods
   function pm_GetTextSource: TevCustomTextSource; virtual; abstract;
   function pm_GetText: TevCustomEditor; virtual; abstract;
 protected
 // overridden protected methods
   procedure InitControls; override;
     {* ��������� ������������� ���������. ��� ���������� � �������� }
 public
 // public methods
   procedure AfterLoad; virtual;
 public
 // public properties
   property LoadManager: TevLoadDocumentManager
     read f_LoadManager;
   property TextSource: TevCustomTextSource
     read pm_GetTextSource;
   property Text: TevCustomEditor
     read pm_GetText;
 end;//TPrimTextLoadForm

 TvcmEntityFormRef = TPrimTextLoadForm;
{$IfEnd} //nsTest AND not NoVCM

implementation

{$If defined(nsTest) AND not defined(NoVCM)}
uses
  Forms,
  Controls,
  StdRes {a}
  ;
{$IfEnd} //nsTest AND not NoVCM

{$If defined(nsTest) AND not defined(NoVCM)}

type
  Tkw_PrimTextLoad_Component_LoadManager = class(TtfwControlString)
   {* ����� ������� ��� �������������� ���������� LoadManager
----
*������ �������������*:
[code]
���������::LoadManager TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimTextLoad_Component_LoadManager

// start class Tkw_PrimTextLoad_Component_LoadManager

{$If not defined(NoScripts)}
function Tkw_PrimTextLoad_Component_LoadManager.GetString: AnsiString;
 {-}
begin
 Result := 'LoadManager';
end;//Tkw_PrimTextLoad_Component_LoadManager.GetString
{$IfEnd} //not NoScripts

procedure TPrimTextLoadForm.AfterLoad;
//#UC START# *4F15435202B5_4C9B20790302_var*
//#UC END# *4F15435202B5_4C9B20790302_var*
begin
//#UC START# *4F15435202B5_4C9B20790302_impl*
 
//#UC END# *4F15435202B5_4C9B20790302_impl*
end;//TPrimTextLoadForm.AfterLoad

procedure TPrimTextLoadForm.InitControls;
//#UC START# *4A8E8F2E0195_4C9B20790302_var*
//#UC END# *4A8E8F2E0195_4C9B20790302_var*
begin
//#UC START# *4A8E8F2E0195_4C9B20790302_impl*
 inherited;
 WindowState := wsMaximized;
 Text.Align := alClient;
 Text.WebStyle := true;
 Text.TextSource := Self.TextSource;
//#UC END# *4A8E8F2E0195_4C9B20790302_impl*
end;//TPrimTextLoadForm.InitControls

procedure TPrimTextLoadForm.MakeControls;
begin
 inherited;
 f_LoadManager := TevLoadDocumentManager.Create(Self);
 f_LoadManager.Name := 'LoadManager';
end;

{$IfEnd} //nsTest AND not NoVCM

initialization
{$If defined(nsTest) AND not defined(NoVCM)}
// ����������� Tkw_PrimTextLoad_Component_LoadManager
 Tkw_PrimTextLoad_Component_LoadManager.Register('���������::LoadManager', TevLoadDocumentManager);
{$IfEnd} //nsTest AND not NoVCM

end.