unit CompareEditions_FormDefinitions_Controls;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/CompareEditions_FormDefinitions_Controls.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMControls::Category>> F1 Пользовательские сервисы::CompareEditions::View::FormDefinitions
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
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
   { LeftEditionIDs }
  fm_LeftEditionForm : TvcmFormDescriptor = (rFormID : (rName : 'LeftEditionForm'; rID : 0); rFactory : nil);
   { Идентификатор формы TLeftEditionForm }

type
 LeftEditionFormDef = interface(IUnknown)
   ['{A9A78553-D6D6-41FE-8759-46E9B97592B8}']
 end;//LeftEditionFormDef

const
   { RightEditionIDs }
  fm_RightEditionForm : TvcmFormDescriptor = (rFormID : (rName : 'RightEditionForm'; rID : 0); rFactory : nil);
   { Идентификатор формы TRightEditionForm }

type
 RightEditionFormDef = interface(IUnknown)
   ['{8C64309E-56E0-427B-B77E-E76372E73FA7}']
 end;//RightEditionFormDef

const
   { EditionsContainerIDs }
  fm_EditionsContainerForm : TvcmFormDescriptor = (rFormID : (rName : 'EditionsContainerForm'; rID : 0); rFactory : nil);
   { Идентификатор формы TEditionsContainerForm }

type
 EditionsContainerFormDef = interface(IUnknown)
   ['{9E38EC35-34E1-49E2-B2C9-6D12062610C7}']
 end;//EditionsContainerFormDef
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}

type
 Tkw_Form_LeftEdition = class(TtfwString)
  {* Слово словаря для идентификатора формы LeftEdition
----
*Пример использования*:
[code]
'aControl' форма::LeftEdition TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_LeftEdition

// start class Tkw_Form_LeftEdition

{$If not defined(NoScripts)}
function Tkw_Form_LeftEdition.GetString: AnsiString;
 {-}
begin
 Result := 'LeftEditionForm';
end;//Tkw_Form_LeftEdition.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_RightEdition = class(TtfwString)
  {* Слово словаря для идентификатора формы RightEdition
----
*Пример использования*:
[code]
'aControl' форма::RightEdition TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_RightEdition

// start class Tkw_Form_RightEdition

{$If not defined(NoScripts)}
function Tkw_Form_RightEdition.GetString: AnsiString;
 {-}
begin
 Result := 'RightEditionForm';
end;//Tkw_Form_RightEdition.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_EditionsContainer = class(TtfwString)
  {* Слово словаря для идентификатора формы EditionsContainer
----
*Пример использования*:
[code]
'aControl' форма::EditionsContainer TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_EditionsContainer

// start class Tkw_Form_EditionsContainer

{$If not defined(NoScripts)}
function Tkw_Form_EditionsContainer.GetString: AnsiString;
 {-}
begin
 Result := 'EditionsContainerForm';
end;//Tkw_Form_EditionsContainer.GetString
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings


initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_LeftEdition
 Tkw_Form_LeftEdition.Register('форма::LeftEdition');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_RightEdition
 Tkw_Form_RightEdition.Register('форма::RightEdition');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_EditionsContainer
 Tkw_Form_EditionsContainer.Register('форма::EditionsContainer');
{$IfEnd} //not Admin AND not Monitorings

end.