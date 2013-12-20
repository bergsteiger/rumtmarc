unit SearchLite_FormDefinitions_Controls;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/SearchLite_FormDefinitions_Controls.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMControls::Category>> F1 ������� ����������� ���������� �������::SearchLite::View::FormDefinitions
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmInterfaces
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoScripts)}
  ,
  tfwString
  {$IfEnd} //not NoScripts
  ,
  vcmExternalInterfaces {a}
  ;

const
   { TreeAttributeSelectIDs }
  fm_efTreeAttributeSelect : TvcmFormDescriptor = (rFormID : (rName : 'efTreeAttributeSelect'; rID : 0); rFactory : nil);
   { ������������� ����� TefTreeAttributeSelect }

type
 TreeAttributeSelectFormDef = interface(IUnknown)
   ['{0933678C-206B-4B91-9452-24D754AB76AB}']
 end;//TreeAttributeSelectFormDef

const
   { SelectedAttributesIDs }
  fm_enSelectedAttributes : TvcmFormDescriptor = (rFormID : (rName : 'enSelectedAttributes'; rID : 0); rFactory : nil);
   { ������������� ����� TenSelectedAttributes }

type
 SelectedAttributesFormDef = interface(IUnknown)
   ['{E67C391C-CA9A-40EF-A203-0AC4A633D327}']
 end;//SelectedAttributesFormDef

const
   { AttributeSelectIDs }
  fm_cfAttributeSelect : TvcmFormDescriptor = (rFormID : (rName : 'cfAttributeSelect'; rID : 0); rFactory : nil);
   { ������������� ����� TcfAttributeSelect }

type
 AttributeSelectFormDef = interface(IUnknown)
   ['{8D3AADC2-E9A4-4383-B8D6-1B1D81711E91}']
 end;//AttributeSelectFormDef

implementation


type
 Tkw_Form_TreeAttributeSelect = class(TtfwString)
  {* ����� ������� ��� �������������� ����� TreeAttributeSelect
----
*������ �������������*:
[code]
'aControl' �����::TreeAttributeSelect TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_TreeAttributeSelect

// start class Tkw_Form_TreeAttributeSelect

{$If not defined(NoScripts)}
function Tkw_Form_TreeAttributeSelect.GetString: AnsiString;
 {-}
begin
 Result := 'efTreeAttributeSelect';
end;//Tkw_Form_TreeAttributeSelect.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_SelectedAttributes = class(TtfwString)
  {* ����� ������� ��� �������������� ����� SelectedAttributes
----
*������ �������������*:
[code]
'aControl' �����::SelectedAttributes TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_SelectedAttributes

// start class Tkw_Form_SelectedAttributes

{$If not defined(NoScripts)}
function Tkw_Form_SelectedAttributes.GetString: AnsiString;
 {-}
begin
 Result := 'enSelectedAttributes';
end;//Tkw_Form_SelectedAttributes.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_AttributeSelect = class(TtfwString)
  {* ����� ������� ��� �������������� ����� AttributeSelect
----
*������ �������������*:
[code]
'aControl' �����::AttributeSelect TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_AttributeSelect

// start class Tkw_Form_AttributeSelect

{$If not defined(NoScripts)}
function Tkw_Form_AttributeSelect.GetString: AnsiString;
 {-}
begin
 Result := 'cfAttributeSelect';
end;//Tkw_Form_AttributeSelect.GetString
{$IfEnd} //not NoScripts

initialization
// ����������� Tkw_Form_TreeAttributeSelect
 Tkw_Form_TreeAttributeSelect.Register('�����::TreeAttributeSelect');
// ����������� Tkw_Form_SelectedAttributes
 Tkw_Form_SelectedAttributes.Register('�����::SelectedAttributes');
// ����������� Tkw_Form_AttributeSelect
 Tkw_Form_AttributeSelect.Register('�����::AttributeSelect');

end.