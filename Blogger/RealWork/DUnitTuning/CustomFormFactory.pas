unit CustomFormFactory;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "DUnitTuning"
// ������: "w:/common/components/rtl/Garant/DUnitTuning/CustomFormFactory.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi TFW::DUnitTuning::VCM_TFW::CustomFormFactory
//
// ������� ������� ���� ��� ������.
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\DUnitTuning\tfwDefine.inc}

interface

{$If defined(nsTest) AND not defined(NoScripts) AND not defined(NotTunedDUnit)}
uses
  Forms
  ;

type
 TCustomFormFactory = class
  {* ������� ������� ��� �������� ����. }
 protected
 // protected methods
   class function GetFormName(const aName: AnsiString): AnsiString;
     {* �������� �������� ������ ����� �� ������������������� �����. }
 public
 // public methods
   class function MakeFormByClassName(const aName: AnsiString): TCustomForm; virtual; abstract;
   class procedure Load(const aForm: TCustomForm;
     const aFileName: AnsiString;
     const aStr: AnsiString = 'Load'); virtual; abstract;
     {* ��������� �� �����. }
 end;//TCustomFormFactory

 RFactoryFormClass = class of TCustomFormFactory;
{$IfEnd} //nsTest AND not NoScripts AND not NotTunedDUnit

implementation

{$If defined(nsTest) AND not defined(NoScripts) AND not defined(NotTunedDUnit)}
// start class TCustomFormFactory

class function TCustomFormFactory.GetFormName(const aName: AnsiString): AnsiString;
//#UC START# *4E2D254A0364_4E2E96F40343_var*
const
 csClassPref = 'TT';
//#UC END# *4E2D254A0364_4E2E96F40343_var*
begin
//#UC START# *4E2D254A0364_4E2E96F40343_impl*
 Result := aName;
 if Pos(csClassPref, aName) = 0 then
  Result := 'T' + Result;
//#UC END# *4E2D254A0364_4E2E96F40343_impl*
end;//TCustomFormFactory.GetFormName
{$IfEnd} //nsTest AND not NoScripts AND not NotTunedDUnit

end.