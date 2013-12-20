unit Search_FormDefinitions_Controls;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View$For F1 and Monitorings"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search_FormDefinitions_Controls.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMControls::Category>> F1 Common For Shell And Monitoring::Search::View$For F1 and Monitorings::FormDefinitions
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin)}
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
   { QueryCardIDs }
  fm_enQueryCard : TvcmFormDescriptor = (rFormID : (rName : 'enQueryCard'; rID : 0); rFactory : nil);
   { Идентификатор формы TenQueryCard }

type
 QueryCardFormDef = interface(IUnknown)
   ['{5BDE6F09-5CC9-41E0-9B14-B0F2D62D4D46}']
 end;//QueryCardFormDef

const
   { PreviewFormIDs }
  fm_efPreviewForm : TvcmFormDescriptor = (rFormID : (rName : 'efPreviewForm'; rID : 0); rFactory : nil);
   { Идентификатор формы TefPreviewForm }

type
 PreviewFormDef = interface(IUnknown)
   ['{C817C51B-CC87-4935-94AC-50A78B3E7C66}']
 end;//PreviewFormDef

const
   { SaveLoadIDs }
  fm_cfSaveLoad : TvcmFormDescriptor = (rFormID : (rName : 'cfSaveLoad'; rID : 0); rFactory : nil);
   { Идентификатор формы TcfSaveLoad }

type
 SaveLoadFormDef = interface(IUnknown)
   ['{24C35E19-224B-474C-B34F-32E5FFB04B34}']
 end;//SaveLoadFormDef
{$IfEnd} //not Admin

implementation

{$If not defined(Admin)}

type
 Tkw_Form_QueryCard = class(TtfwString)
  {* Слово словаря для идентификатора формы QueryCard
----
*Пример использования*:
[code]
'aControl' форма::QueryCard TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_QueryCard

// start class Tkw_Form_QueryCard

{$If not defined(NoScripts)}
function Tkw_Form_QueryCard.GetString: AnsiString;
 {-}
begin
 Result := 'enQueryCard';
end;//Tkw_Form_QueryCard.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_Preview = class(TtfwString)
  {* Слово словаря для идентификатора формы Preview
----
*Пример использования*:
[code]
'aControl' форма::Preview TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_Preview

// start class Tkw_Form_Preview

{$If not defined(NoScripts)}
function Tkw_Form_Preview.GetString: AnsiString;
 {-}
begin
 Result := 'efPreviewForm';
end;//Tkw_Form_Preview.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_SaveLoad = class(TtfwString)
  {* Слово словаря для идентификатора формы SaveLoad
----
*Пример использования*:
[code]
'aControl' форма::SaveLoad TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_SaveLoad

// start class Tkw_Form_SaveLoad

{$If not defined(NoScripts)}
function Tkw_Form_SaveLoad.GetString: AnsiString;
 {-}
begin
 Result := 'cfSaveLoad';
end;//Tkw_Form_SaveLoad.GetString
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin


initialization
{$If not defined(Admin)}
// Регистрация Tkw_Form_QueryCard
 Tkw_Form_QueryCard.Register('форма::QueryCard');
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_Form_Preview
 Tkw_Form_Preview.Register('форма::Preview');
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_Form_SaveLoad
 Tkw_Form_SaveLoad.Register('форма::SaveLoad');
{$IfEnd} //not Admin

end.