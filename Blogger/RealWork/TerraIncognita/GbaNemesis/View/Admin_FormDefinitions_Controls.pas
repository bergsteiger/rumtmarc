unit Admin_FormDefinitions_Controls;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Admin_FormDefinitions_Controls.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMControls::Category>> F1 �������������::Admin::View::FormDefinitions
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If defined(Admin)}
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
   { AdminFormIDs }
  fm_cfAdminForm : TvcmFormDescriptor = (rFormID : (rName : 'cfAdminForm'; rID : 0); rFactory : nil);
   { ������������� ����� TcfAdminForm }

type
 AdminFormFormDef = interface(IUnknown)
   ['{7E787B8C-F566-443C-9C95-6711D628B038}']
 end;//AdminFormFormDef

const
   { GroupListIDs }
  fm_efGroupList : TvcmFormDescriptor = (rFormID : (rName : 'efGroupList'; rID : 0); rFactory : nil);
   { ������������� ����� TefGroupList }

type
 GroupListFormDef = interface(IUnknown)
   ['{427E23A9-B9FD-4256-8312-ED9653D862C6}']
 end;//GroupListFormDef

const
   { UserListIDs }
  fm_efUserList : TvcmFormDescriptor = (rFormID : (rName : 'efUserList'; rID : 0); rFactory : nil);
   { ������������� ����� TefUserList }

type
 UserListFormDef = interface(IUnknown)
   ['{CCC79038-4B92-428C-ADD7-D68C5BCE408C}']
 end;//UserListFormDef

const
   { UserPropertyIDs }
  fm_efUserProperty : TvcmFormDescriptor = (rFormID : (rName : 'efUserProperty'; rID : 0); rFactory : nil);
   { ������������� ����� TefUserProperty }

type
 UserPropertyFormDef = interface(IUnknown)
   ['{5FCF4F0A-B828-487D-9E35-8D8643E02C6C}']
 end;//UserPropertyFormDef
{$IfEnd} //Admin

implementation

{$If defined(Admin)}

type
 Tkw_Form_AdminForm = class(TtfwString)
  {* ����� ������� ��� �������������� ����� AdminForm
----
*������ �������������*:
[code]
'aControl' �����::AdminForm TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_AdminForm

// start class Tkw_Form_AdminForm

{$If not defined(NoScripts)}
function Tkw_Form_AdminForm.GetString: AnsiString;
 {-}
begin
 Result := 'cfAdminForm';
end;//Tkw_Form_AdminForm.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_GroupList = class(TtfwString)
  {* ����� ������� ��� �������������� ����� GroupList
----
*������ �������������*:
[code]
'aControl' �����::GroupList TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_GroupList

// start class Tkw_Form_GroupList

{$If not defined(NoScripts)}
function Tkw_Form_GroupList.GetString: AnsiString;
 {-}
begin
 Result := 'efGroupList';
end;//Tkw_Form_GroupList.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_UserList = class(TtfwString)
  {* ����� ������� ��� �������������� ����� UserList
----
*������ �������������*:
[code]
'aControl' �����::UserList TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_UserList

// start class Tkw_Form_UserList

{$If not defined(NoScripts)}
function Tkw_Form_UserList.GetString: AnsiString;
 {-}
begin
 Result := 'efUserList';
end;//Tkw_Form_UserList.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_UserProperty = class(TtfwString)
  {* ����� ������� ��� �������������� ����� UserProperty
----
*������ �������������*:
[code]
'aControl' �����::UserProperty TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_UserProperty

// start class Tkw_Form_UserProperty

{$If not defined(NoScripts)}
function Tkw_Form_UserProperty.GetString: AnsiString;
 {-}
begin
 Result := 'efUserProperty';
end;//Tkw_Form_UserProperty.GetString
{$IfEnd} //not NoScripts
{$IfEnd} //Admin


initialization
{$If defined(Admin)}
// ����������� Tkw_Form_AdminForm
 Tkw_Form_AdminForm.Register('�����::AdminForm');
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_Form_GroupList
 Tkw_Form_GroupList.Register('�����::GroupList');
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_Form_UserList
 Tkw_Form_UserList.Register('�����::UserList');
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_Form_UserProperty
 Tkw_Form_UserProperty.Register('�����::UserProperty');
{$IfEnd} //Admin

end.