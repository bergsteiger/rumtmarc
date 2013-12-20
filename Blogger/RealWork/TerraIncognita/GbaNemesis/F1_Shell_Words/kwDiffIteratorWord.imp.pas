{$IfNDef kwDiffIteratorWord_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "F1 Shell Words"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Shell_Words/kwDiffIteratorWord.imp.pas"
// �����: 03.11.2011 13:47
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Impurity::Class>> F1 ��������� ������::F1 Shell Words::F1 Shell Words::kwDiffIteratorWord
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define kwDiffIteratorWord_imp}
 {$Include ..\F1_Shell_Words\kwDiffFormWord.imp.pas}
 _kwDiffIteratorWord_ = {abstract mixin} class(_kwDiffFormWord_)
 protected
 // realized methods
   procedure DoDiffForm(aForm: TDiffForm;
     const aCtx: TtfwContext); override;
 protected
 // protected methods
   procedure DoIterator(const anIterator: IDiffIterator;
     const aCtx: TtfwContext); virtual; abstract;
 end;//_kwDiffIteratorWord_

{$Else kwDiffIteratorWord_imp}

{$IfNDef kwDiffIteratorWord_imp_impl}
{$Define kwDiffIteratorWord_imp_impl}


{$Include ..\F1_Shell_Words\kwDiffFormWord.imp.pas}

// start class _kwDiffIteratorWord_

procedure _kwDiffIteratorWord_.DoDiffForm(aForm: TDiffForm;
  const aCtx: TtfwContext);
//#UC START# *4EB25F0701B5_4EB2632A02DD_var*
//#UC END# *4EB25F0701B5_4EB2632A02DD_var*
begin
//#UC START# *4EB25F0701B5_4EB2632A02DD_impl*
 DoIterator(TDiffFormHack(aForm).CompareEditions.ChangedParas, aCtx);
//#UC END# *4EB25F0701B5_4EB2632A02DD_impl*
end;//_kwDiffIteratorWord_.DoDiffForm

{$Else  kwDiffIteratorWord_imp_impl}
 {$Include ..\F1_Shell_Words\kwDiffFormWord.imp.pas}
{$EndIf kwDiffIteratorWord_imp_impl}
{$EndIf kwDiffIteratorWord_imp}
