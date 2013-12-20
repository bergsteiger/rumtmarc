{$IfNDef ExTextFormWord_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "F1 Shell Words"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Shell_Words/ExTextFormWord.imp.pas"
// �����: 11.05.2011 13:45
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Impurity::Class>> F1 ��������� ������::F1 Shell Words::F1 Shell Words::ExTextFormWord
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define ExTextFormWord_imp}
 {$Include w:\common\components\rtl\Garant\ScriptEngine\kwFormFromControlWord.imp.pas}
 _ExTextFormWord_ = {abstract mixin} class(_kwFormFromControlWord_)
 protected
 // realized methods
    {$If not defined(NoScripts)}
   procedure DoForm(aForm: TForm;
     const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
 protected
 // protected methods
   procedure DoTextForm(aForm: TExTextForm;
     const aCtx: TtfwContext); virtual; abstract;
 end;//_ExTextFormWord_

{$Else ExTextFormWord_imp}

{$IfNDef ExTextFormWord_imp_impl}
{$Define ExTextFormWord_imp_impl}


{$Include w:\common\components\rtl\Garant\ScriptEngine\kwFormFromControlWord.imp.pas}

type
  TExTextFormHack = class(TExTextForm)
  end;//TExTextFormHack

// start class _ExTextFormWord_

{$If not defined(NoScripts)}
procedure _ExTextFormWord_.DoForm(aForm: TForm;
  const aCtx: TtfwContext);
//#UC START# *4EB25DE00396_4DCA5A94013D_var*
//#UC END# *4EB25DE00396_4DCA5A94013D_var*
begin
//#UC START# *4EB25DE00396_4DCA5A94013D_impl*
 Assert(aForm Is TExTextForm, Format('����� %s �� ���������� � %s',
                                   [aForm.ClassName, TExTextForm.ClassName]));
 DoTextForm(aForm As TExTextForm, aCtx);
//#UC END# *4EB25DE00396_4DCA5A94013D_impl*
end;//_ExTextFormWord_.DoForm
{$IfEnd} //not NoScripts

{$Else  ExTextFormWord_imp_impl}
 {$Include w:\common\components\rtl\Garant\ScriptEngine\kwFormFromControlWord.imp.pas}
{$EndIf ExTextFormWord_imp_impl}
{$EndIf ExTextFormWord_imp}
