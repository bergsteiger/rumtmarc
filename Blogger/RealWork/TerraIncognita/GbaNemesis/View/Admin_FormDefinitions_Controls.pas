unit Admin_FormDefinitions_Controls;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Admin_FormDefinitions_Controls.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMControls::Category>> F1 Администратор::Admin::View::FormDefinitions
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

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
   { Идентификатор формы TcfAdminForm }

type
 AdminFormFormDef = interface(IUnknown)
   ['{7E787B8C-F566-443C-9C95-6711D628B038}']
 end;//AdminFormFormDef

const
   { GroupListIDs }
  fm_efGroupList : TvcmFormDescriptor = (rFormID : (rName : 'efGroupList'; rID : 0); rFactory : nil);
   { Идентификатор формы TefGroupList }

type
 GroupListFormDef = interface(IUnknown)
   ['{427E23A9-B9FD-4256-8312-ED9653D862C6}']
 end;//GroupListFormDef

const
   { UserListIDs }
  fm_efUserList : TvcmFormDescriptor = (rFormID : (rName : 'efUserList'; rID : 0); rFactory : nil);
   { Идентификатор формы TefUserList }

type
 UserListFormDef = interface(IUnknown)
   ['{CCC79038-4B92-428C-ADD7-D68C5BCE408C}']
 end;//UserListFormDef

const
   { UserPropertyIDs }
  fm_efUserProperty : TvcmFormDescriptor = (rFormID : (rName : 'efUserProperty'; rID : 0); rFactory : nil);
   { Идентификатор формы TefUserProperty }

type
 UserPropertyFormDef = interface(IUnknown)
   ['{5FCF4F0A-B828-487D-9E35-8D8643E02C6C}']
 end;//UserPropertyFormDef
{$IfEnd} //Admin

implementation

{$If defined(Admin)}

type
 Tkw_Form_AdminForm = class(TtfwString)
  {* Слово словаря для идентификатора формы AdminForm
----
*Пример использования*:
[code]
'aControl' форма::AdminForm TryFocus ASSERT
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
  {* Слово словаря для идентификатора формы GroupList
----
*Пример использования*:
[code]
'aControl' форма::GroupList TryFocus ASSERT
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
  {* Слово словаря для идентификатора формы UserList
----
*Пример использования*:
[code]
'aControl' форма::UserList TryFocus ASSERT
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
  {* Слово словаря для идентификатора формы UserProperty
----
*Пример использования*:
[code]
'aControl' форма::UserProperty TryFocus ASSERT
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
// Регистрация Tkw_Form_AdminForm
 Tkw_Form_AdminForm.Register('форма::AdminForm');
{$IfEnd} //Admin
{$If defined(Admin)}
// Регистрация Tkw_Form_GroupList
 Tkw_Form_GroupList.Register('форма::GroupList');
{$IfEnd} //Admin
{$If defined(Admin)}
// Регистрация Tkw_Form_UserList
 Tkw_Form_UserList.Register('форма::UserList');
{$IfEnd} //Admin
{$If defined(Admin)}
// Регистрация Tkw_Form_UserProperty
 Tkw_Form_UserProperty.Register('форма::UserProperty');
{$IfEnd} //Admin

end.