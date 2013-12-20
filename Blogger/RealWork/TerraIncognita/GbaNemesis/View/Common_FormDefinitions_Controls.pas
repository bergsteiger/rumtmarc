unit Common_FormDefinitions_Controls;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Common_FormDefinitions_Controls.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMControls::Category>> F1 Core::Common::View::FormDefinitions
//
// Описания форм
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
   { TextIDs }
  fm_TextForm : TvcmFormDescriptor = (rFormID : (rName : 'TextForm'; rID : 0); rFactory : nil);
   { Идентификатор формы TTextForm }

type
 TextFormDef = interface(IUnknown)
  {* Текст документа }
   ['{8ACB63E9-6A17-415F-BFE3-8D61511C601D}']
 end;//TextFormDef

const
   { UnderControlIDs }
  fm_enUnderControl : TvcmFormDescriptor = (rFormID : (rName : 'enUnderControl'; rID : 0); rFactory : nil);
   { Идентификатор формы TenUnderControl }

type
 UnderControlFormDef = interface(IUnknown)
   ['{ACD2CD87-6FE5-492F-976F-4348A383BF97}']
 end;//UnderControlFormDef

const
   { FoldersIDs }
  fm_cfFolders : TvcmFormDescriptor = (rFormID : (rName : 'cfFolders'; rID : 0); rFactory : nil);
   { Идентификатор формы TcfFolders }

type
 FoldersFormDef = interface(IUnknown)
   ['{4A1A6578-DBB2-4906-8783-B6A5BCBCA088}']
 end;//FoldersFormDef

const
   { NavigatorIDs }
  fm_en_Navigator : TvcmFormDescriptor = (rFormID : (rName : 'en_Navigator'; rID : 0); rFactory : nil);
   { Идентификатор формы Ten_Navigator }

type
 NavigatorFormDef = interface(IUnknown)
   ['{6388603E-9911-43DF-A22C-CCC3CCB22372}']
 end;//NavigatorFormDef

const
   { TasksPanelIDs }
  fm_en_TasksPanel : TvcmFormDescriptor = (rFormID : (rName : 'en_TasksPanel'; rID : 0); rFactory : nil);
   { Идентификатор формы Ten_TasksPanel }

type
 TasksPanelFormDef = interface(IUnknown)
   ['{887F34C2-8E6D-44F9-9391-507027ECFAF5}']
 end;//TasksPanelFormDef

const
   { CompInfoIDs }
  fm_enCompInfo : TvcmFormDescriptor = (rFormID : (rName : 'enCompInfo'; rID : 0); rFactory : nil);
   { Идентификатор формы TenCompInfo }

type
 CompInfoFormDef = interface(IUnknown)
   ['{86DFC074-D3D0-4F5B-8DDB-B6E8CDFA33AA}']
 end;//CompInfoFormDef

const
   { RubricatorIDs }
  fm_efRubricator : TvcmFormDescriptor = (rFormID : (rName : 'efRubricator'; rID : 0); rFactory : nil);
   { Идентификатор формы TefRubricator }

type
 RubricatorFormDef = interface(IUnknown)
   ['{49FDA55C-09CF-423E-8240-FA97D3B1C207}']
 end;//RubricatorFormDef

const
   { DictionIDs }
  fm_enDiction : TvcmFormDescriptor = (rFormID : (rName : 'enDiction'; rID : 0); rFactory : nil);
   { Идентификатор формы TenDiction }

type
 DictionFormDef = interface(IUnknown)
   ['{60F17E02-B5D1-410D-ACBA-16A367568329}']
 end;//DictionFormDef

const
   { WarningIDs }
  fm_WarningForm : TvcmFormDescriptor = (rFormID : (rName : 'WarningForm'; rID : 0); rFactory : nil);
   { Идентификатор формы TWarningForm }

type
 WarningFormDef = interface(IUnknown)
   ['{0AAB6E3F-20EB-4283-BA08-E1603435DDD6}']
 end;//WarningFormDef

const
   { ListInfoIDs }
  fm_efListInfo : TvcmFormDescriptor = (rFormID : (rName : 'efListInfo'; rID : 0); rFactory : nil);
   { Идентификатор формы TefListInfo }

type
 ListInfoFormDef = interface(IUnknown)
   ['{9A45EE29-E530-4A45-85D6-9675376A12AC}']
 end;//ListInfoFormDef

const
   { CommonDictionIDs }
  fm_en_CommonDiction : TvcmFormDescriptor = (rFormID : (rName : 'en_CommonDiction'; rID : 0); rFactory : nil);
   { Идентификатор формы Ten_CommonDiction }

type
 CommonDictionFormDef = interface(IUnknown)
   ['{EDB1FC7A-DB33-49F5-88EC-15E56B59A0DE}']
 end;//CommonDictionFormDef

const
   { MedicMainMenuIDs }
  fm_en_MedicMainMenu : TvcmFormDescriptor = (rFormID : (rName : 'en_MedicMainMenu'; rID : 0); rFactory : nil);
   { Идентификатор формы Ten_MedicMainMenu }

type
 MedicMainMenuFormDef = interface(IUnknown)
   ['{F50B553F-F92F-4873-82BB-CAA7767E3097}']
 end;//MedicMainMenuFormDef

const
   { MedicFirmList$FormIDs }
  fm_en_MedicFirmList : TvcmFormDescriptor = (rFormID : (rName : 'en_MedicFirmList'; rID : 0); rFactory : nil);
   { Идентификатор формы Ten_MedicFirmList }

type
 MedicFirmListFormDef = interface(IUnknown)
   ['{85A6D8F9-E5D6-45EA-9004-8538F8E513D6}']
 end;//MedicFirmListFormDef

const
   { ListIDs }
  fm_efList : TvcmFormDescriptor = (rFormID : (rName : 'efList'; rID : 0); rFactory : nil);
   { Идентификатор формы TefList }

type
 ListFormDef = interface(IUnknown)
   ['{BF7F18F9-6941-488D-9BE5-371AE1EA472E}']
 end;//ListFormDef

const
   { ConfigurationListIDs }
  fm_en_ConfigurationList : TvcmFormDescriptor = (rFormID : (rName : 'en_ConfigurationList'; rID : 0); rFactory : nil);
   { Идентификатор формы Ten_ConfigurationList }

type
 ConfigurationListFormDef = interface(IUnknown)
   ['{8A34BB41-E03B-45A5-B7C5-7EC04753334A}']
 end;//ConfigurationListFormDef

const
   { MainMenuNewIDs }
  fm_en_MainMenuNew : TvcmFormDescriptor = (rFormID : (rName : 'en_MainMenuNew'; rID : 0); rFactory : nil);
   { Идентификатор формы Ten_MainMenuNew }

type
 MainMenuNewFormDef = interface(IUnknown)
   ['{2E6D908A-C0DB-436F-AE47-89A298BDBBB5}']
 end;//MainMenuNewFormDef

const
   { NewBaseSearchIDs }
  fm_NewBaseSearchForm : TvcmFormDescriptor = (rFormID : (rName : 'NewBaseSearchForm'; rID : 0); rFactory : nil);
   { Идентификатор формы TNewBaseSearchForm }

type
 NewBaseSearchFormDef = interface(IUnknown)
   ['{AB0DFE94-2A12-4B52-80C6-98E46D13768F}']
 end;//NewBaseSearchFormDef

const
   { AttributesIDs }
  fm_AttributesForm : TvcmFormDescriptor = (rFormID : (rName : 'AttributesForm'; rID : 0); rFactory : nil);
   { Идентификатор формы TAttributesForm }

type
 AttributesFormDef = interface(IUnknown)
   ['{9EF0A8D5-9E66-4BFF-AEE0-672270506C0C}']
 end;//AttributesFormDef

const
   { BaseSearchContainerIDs }
  fm_BaseSearchContainerForm : TvcmFormDescriptor = (rFormID : (rName : 'BaseSearchContainerForm'; rID : 0); rFactory : nil);
   { Идентификатор формы TBaseSearchContainerForm }

type
 BaseSearchContainerFormDef = interface(IUnknown)
   ['{B1E54AB6-D337-4D4D-829C-F219D2F39748}']
 end;//BaseSearchContainerFormDef

const
   { DictionContainerIDs }
  fm_DictionContainerForm : TvcmFormDescriptor = (rFormID : (rName : 'DictionContainerForm'; rID : 0); rFactory : nil);
   { Идентификатор формы TDictionContainerForm }

type
 DictionContainerFormDef = interface(IUnknown)
   ['{AD9EF8FF-A856-441F-A8B7-77647FA346D8}']
 end;//DictionContainerFormDef

const
   { FiltersIDs }
  fm_enFilters : TvcmFormDescriptor = (rFormID : (rName : 'enFilters'; rID : 0); rFactory : nil);
   { Идентификатор формы TenFilters }

type
 FiltersFormDef = interface(IUnknown)
   ['{436DC061-D4D1-4456-9A2B-BF7B09A6C172}']
 end;//FiltersFormDef

const
   { TreeAttributeFirstLevelIDs }
  fm_efTreeAttributeFirstLevel : TvcmFormDescriptor = (rFormID : (rName : 'efTreeAttributeFirstLevel'; rID : 0); rFactory : nil);
   { Идентификатор формы TefTreeAttributeFirstLevel }

type
 TreeAttributeFirstLevelFormDef = interface(IUnknown)
   ['{E6F1CE94-1C05-438C-A808-992FCD40C689}']
 end;//TreeAttributeFirstLevelFormDef

const
   { WarningBaloonIDs }
  fm_WarningBaloonForm : TvcmFormDescriptor = (rFormID : (rName : 'WarningBaloonForm'; rID : 0); rFactory : nil);
   { Идентификатор формы TWarningBaloonForm }

type
 WarningBaloonFormDef = interface(IUnknown)
   ['{14ECBB1A-A52D-4EB8-9FD3-B472BD01406F}']
 end;//WarningBaloonFormDef

const
   { NewsLineIDs }
  fm_enNewsLine : TvcmFormDescriptor = (rFormID : (rName : 'enNewsLine'; rID : 0); rFactory : nil);
   { Идентификатор формы TenNewsLine }

type
 NewsLineFormDef = interface(IUnknown)
   ['{F1C4DD99-E021-465F-8842-57B439369A4E}']
 end;//NewsLineFormDef

const
   { RedactionsIDs }
  fm_RedactionsForm : TvcmFormDescriptor = (rFormID : (rName : 'RedactionsForm'; rID : 0); rFactory : nil);
   { Идентификатор формы TRedactionsForm }

type
 RedactionsFormDef = interface(IUnknown)
   ['{9E114303-2A58-4B41-A2D1-134991C22BCD}']
 end;//RedactionsFormDef

const
   { SynchroView_WarningBaloonIDs }
  fm_SynchroView_WarningBaloonForm : TvcmFormDescriptor = (rFormID : (rName : 'SynchroView_WarningBaloonForm'; rID : 0); rFactory : nil);
   { Идентификатор формы TSynchroView_WarningBaloonForm }

type
 SynchroView_WarningBaloonFormDef = interface(IUnknown)
   ['{AFD90CF1-37EE-4274-8935-47EC7DED8822}']
 end;//SynchroView_WarningBaloonFormDef

const
   { Translation_WarningBaloonIDs }
  fm_Translation_WarningBaloonForm : TvcmFormDescriptor = (rFormID : (rName : 'Translation_WarningBaloonForm'; rID : 0); rFactory : nil);
   { Идентификатор формы TTranslation_WarningBaloonForm }

type
 Translation_WarningBaloonFormDef = interface(IUnknown)
   ['{C82DF82D-D0F2-4AD3-AA06-3157E24F056C}']
 end;//Translation_WarningBaloonFormDef

const
   { UserCR1_WarningBaloonIDs }
  fm_UserCR1_WarningBaloonForm : TvcmFormDescriptor = (rFormID : (rName : 'UserCR1_WarningBaloonForm'; rID : 0); rFactory : nil);
   { Идентификатор формы TUserCR1_WarningBaloonForm }

type
 UserCR1_WarningBaloonFormDef = interface(IUnknown)
   ['{113639D8-8BC9-4FDF-A50C-843C06A5A53D}']
 end;//UserCR1_WarningBaloonFormDef

const
   { UserCR2_WarningBaloonIDs }
  fm_UserCR2_WarningBaloonForm : TvcmFormDescriptor = (rFormID : (rName : 'UserCR2_WarningBaloonForm'; rID : 0); rFactory : nil);
   { Идентификатор формы TUserCR2_WarningBaloonForm }

type
 UserCR2_WarningBaloonFormDef = interface(IUnknown)
   ['{22D5A010-5992-44A4-A87B-F56E743574F0}']
 end;//UserCR2_WarningBaloonFormDef

const
   { ContentsIDs }
  fm_ContentsForm : TvcmFormDescriptor = (rFormID : (rName : 'ContentsForm'; rID : 0); rFactory : nil);
   { Идентификатор формы TContentsForm }

type
 ContentsFormDef = interface(IUnknown)
   ['{F1E84DA6-7FF6-4A9B-8275-DD06C94E4E93}']
 end;//ContentsFormDef

const
   { FoldersTreeIDs }
  fm_enFoldersTree : TvcmFormDescriptor = (rFormID : (rName : 'enFoldersTree'; rID : 0); rFactory : nil);
   { Идентификатор формы TenFoldersTree }

type
 FoldersTreeFormDef = interface(IUnknown)
   ['{01A0763F-994B-421C-BCBE-5FF656B323F0}']
 end;//FoldersTreeFormDef

const
   { FoldersElementInfoIDs }
  fm_enFoldersElementInfo : TvcmFormDescriptor = (rFormID : (rName : 'enFoldersElementInfo'; rID : 0); rFactory : nil);
   { Идентификатор формы TenFoldersElementInfo }

type
 FoldersElementInfoFormDef = interface(IUnknown)
   ['{490FF980-A825-424A-8262-EC4000273F43}']
 end;//FoldersElementInfoFormDef

const
   { DocumentWithFlashIDs }
  fm_DocumentWithFlashForm : TvcmFormDescriptor = (rFormID : (rName : 'DocumentWithFlashForm'; rID : 0); rFactory : nil);
   { Идентификатор формы TDocumentWithFlashForm }

type
 DocumentWithFlashFormDef = interface(IUnknown)
   ['{E7A6A10F-696D-4C58-8E40-E9AFBA8BAF09}']
 end;//DocumentWithFlashFormDef

const
   { ConsultationMarkIDs }
  fm_en_ConsultationMark : TvcmFormDescriptor = (rFormID : (rName : 'en_ConsultationMark'; rID : 0); rFactory : nil);
   { Идентификатор формы Ten_ConsultationMark }

type
 ConsultationMarkFormDef = interface(IUnknown)
   ['{9815E072-8A98-4376-A3A9-DD632649188A}']
 end;//ConsultationMarkFormDef

const
   { MedicListSynchroViewIDs }
  fm_en_MedicListSynchroView : TvcmFormDescriptor = (rFormID : (rName : 'en_MedicListSynchroView'; rID : 0); rFactory : nil);
   { Идентификатор формы Ten_MedicListSynchroView }

type
 MedicListSynchroViewFormDef = interface(IUnknown)
   ['{5D662DCD-C0B2-4A9B-80F4-A1DC3FAB673B}']
 end;//MedicListSynchroViewFormDef

const
   { SynchroViewIDs }
  fm_fcSynchroView : TvcmFormDescriptor = (rFormID : (rName : 'fcSynchroView'; rID : 0); rFactory : nil);
   { Идентификатор формы TfcSynchroView }

type
 SynchroViewFormDef = interface(IUnknown)
   ['{0BC86C4B-C105-40F7-ADB5-A5A24C3E9F45}']
 end;//SynchroViewFormDef

const
   { ListAnalizeIDs }
  fm_ListAnalizeForm : TvcmFormDescriptor = (rFormID : (rName : 'ListAnalizeForm'; rID : 0); rFactory : nil);
   { Идентификатор формы TListAnalizeForm }

type
 ListAnalizeFormDef = interface(IUnknown)
   ['{C7F290D3-3BBE-4F07-9748-231F70CB5C22}']
 end;//ListAnalizeFormDef
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}

type
 Tkw_Form_Text = class(TtfwString)
  {* Слово словаря для идентификатора формы Text
----
*Пример использования*:
[code]
'aControl' форма::Text TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_Text

// start class Tkw_Form_Text

{$If not defined(NoScripts)}
function Tkw_Form_Text.GetString: AnsiString;
 {-}
begin
 Result := 'TextForm';
end;//Tkw_Form_Text.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_UnderControl = class(TtfwString)
  {* Слово словаря для идентификатора формы UnderControl
----
*Пример использования*:
[code]
'aControl' форма::UnderControl TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_UnderControl

// start class Tkw_Form_UnderControl

{$If not defined(NoScripts)}
function Tkw_Form_UnderControl.GetString: AnsiString;
 {-}
begin
 Result := 'enUnderControl';
end;//Tkw_Form_UnderControl.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_Folders = class(TtfwString)
  {* Слово словаря для идентификатора формы Folders
----
*Пример использования*:
[code]
'aControl' форма::Folders TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_Folders

// start class Tkw_Form_Folders

{$If not defined(NoScripts)}
function Tkw_Form_Folders.GetString: AnsiString;
 {-}
begin
 Result := 'cfFolders';
end;//Tkw_Form_Folders.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_Navigator = class(TtfwString)
  {* Слово словаря для идентификатора формы Navigator
----
*Пример использования*:
[code]
'aControl' форма::Navigator TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_Navigator

// start class Tkw_Form_Navigator

{$If not defined(NoScripts)}
function Tkw_Form_Navigator.GetString: AnsiString;
 {-}
begin
 Result := 'en_Navigator';
end;//Tkw_Form_Navigator.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_TasksPanel = class(TtfwString)
  {* Слово словаря для идентификатора формы TasksPanel
----
*Пример использования*:
[code]
'aControl' форма::TasksPanel TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_TasksPanel

// start class Tkw_Form_TasksPanel

{$If not defined(NoScripts)}
function Tkw_Form_TasksPanel.GetString: AnsiString;
 {-}
begin
 Result := 'en_TasksPanel';
end;//Tkw_Form_TasksPanel.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_CompInfo = class(TtfwString)
  {* Слово словаря для идентификатора формы CompInfo
----
*Пример использования*:
[code]
'aControl' форма::CompInfo TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_CompInfo

// start class Tkw_Form_CompInfo

{$If not defined(NoScripts)}
function Tkw_Form_CompInfo.GetString: AnsiString;
 {-}
begin
 Result := 'enCompInfo';
end;//Tkw_Form_CompInfo.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_Rubricator = class(TtfwString)
  {* Слово словаря для идентификатора формы Rubricator
----
*Пример использования*:
[code]
'aControl' форма::Rubricator TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_Rubricator

// start class Tkw_Form_Rubricator

{$If not defined(NoScripts)}
function Tkw_Form_Rubricator.GetString: AnsiString;
 {-}
begin
 Result := 'efRubricator';
end;//Tkw_Form_Rubricator.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_Diction = class(TtfwString)
  {* Слово словаря для идентификатора формы Diction
----
*Пример использования*:
[code]
'aControl' форма::Diction TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_Diction

// start class Tkw_Form_Diction

{$If not defined(NoScripts)}
function Tkw_Form_Diction.GetString: AnsiString;
 {-}
begin
 Result := 'enDiction';
end;//Tkw_Form_Diction.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_Warning = class(TtfwString)
  {* Слово словаря для идентификатора формы Warning
----
*Пример использования*:
[code]
'aControl' форма::Warning TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_Warning

// start class Tkw_Form_Warning

{$If not defined(NoScripts)}
function Tkw_Form_Warning.GetString: AnsiString;
 {-}
begin
 Result := 'WarningForm';
end;//Tkw_Form_Warning.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_ListInfo = class(TtfwString)
  {* Слово словаря для идентификатора формы ListInfo
----
*Пример использования*:
[code]
'aControl' форма::ListInfo TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_ListInfo

// start class Tkw_Form_ListInfo

{$If not defined(NoScripts)}
function Tkw_Form_ListInfo.GetString: AnsiString;
 {-}
begin
 Result := 'efListInfo';
end;//Tkw_Form_ListInfo.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_CommonDiction = class(TtfwString)
  {* Слово словаря для идентификатора формы CommonDiction
----
*Пример использования*:
[code]
'aControl' форма::CommonDiction TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_CommonDiction

// start class Tkw_Form_CommonDiction

{$If not defined(NoScripts)}
function Tkw_Form_CommonDiction.GetString: AnsiString;
 {-}
begin
 Result := 'en_CommonDiction';
end;//Tkw_Form_CommonDiction.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_MedicMainMenu = class(TtfwString)
  {* Слово словаря для идентификатора формы MedicMainMenu
----
*Пример использования*:
[code]
'aControl' форма::MedicMainMenu TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_MedicMainMenu

// start class Tkw_Form_MedicMainMenu

{$If not defined(NoScripts)}
function Tkw_Form_MedicMainMenu.GetString: AnsiString;
 {-}
begin
 Result := 'en_MedicMainMenu';
end;//Tkw_Form_MedicMainMenu.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_MedicFirmList = class(TtfwString)
  {* Слово словаря для идентификатора формы MedicFirmList
----
*Пример использования*:
[code]
'aControl' форма::MedicFirmList TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_MedicFirmList

// start class Tkw_Form_MedicFirmList

{$If not defined(NoScripts)}
function Tkw_Form_MedicFirmList.GetString: AnsiString;
 {-}
begin
 Result := 'en_MedicFirmList';
end;//Tkw_Form_MedicFirmList.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_List = class(TtfwString)
  {* Слово словаря для идентификатора формы List
----
*Пример использования*:
[code]
'aControl' форма::List TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_List

// start class Tkw_Form_List

{$If not defined(NoScripts)}
function Tkw_Form_List.GetString: AnsiString;
 {-}
begin
 Result := 'efList';
end;//Tkw_Form_List.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_ConfigurationList = class(TtfwString)
  {* Слово словаря для идентификатора формы ConfigurationList
----
*Пример использования*:
[code]
'aControl' форма::ConfigurationList TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_ConfigurationList

// start class Tkw_Form_ConfigurationList

{$If not defined(NoScripts)}
function Tkw_Form_ConfigurationList.GetString: AnsiString;
 {-}
begin
 Result := 'en_ConfigurationList';
end;//Tkw_Form_ConfigurationList.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_MainMenuNew = class(TtfwString)
  {* Слово словаря для идентификатора формы MainMenuNew
----
*Пример использования*:
[code]
'aControl' форма::MainMenuNew TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_MainMenuNew

// start class Tkw_Form_MainMenuNew

{$If not defined(NoScripts)}
function Tkw_Form_MainMenuNew.GetString: AnsiString;
 {-}
begin
 Result := 'en_MainMenuNew';
end;//Tkw_Form_MainMenuNew.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_NewBaseSearch = class(TtfwString)
  {* Слово словаря для идентификатора формы NewBaseSearch
----
*Пример использования*:
[code]
'aControl' форма::NewBaseSearch TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_NewBaseSearch

// start class Tkw_Form_NewBaseSearch

{$If not defined(NoScripts)}
function Tkw_Form_NewBaseSearch.GetString: AnsiString;
 {-}
begin
 Result := 'NewBaseSearchForm';
end;//Tkw_Form_NewBaseSearch.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_Attributes = class(TtfwString)
  {* Слово словаря для идентификатора формы Attributes
----
*Пример использования*:
[code]
'aControl' форма::Attributes TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_Attributes

// start class Tkw_Form_Attributes

{$If not defined(NoScripts)}
function Tkw_Form_Attributes.GetString: AnsiString;
 {-}
begin
 Result := 'AttributesForm';
end;//Tkw_Form_Attributes.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_BaseSearchContainer = class(TtfwString)
  {* Слово словаря для идентификатора формы BaseSearchContainer
----
*Пример использования*:
[code]
'aControl' форма::BaseSearchContainer TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_BaseSearchContainer

// start class Tkw_Form_BaseSearchContainer

{$If not defined(NoScripts)}
function Tkw_Form_BaseSearchContainer.GetString: AnsiString;
 {-}
begin
 Result := 'BaseSearchContainerForm';
end;//Tkw_Form_BaseSearchContainer.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_DictionContainer = class(TtfwString)
  {* Слово словаря для идентификатора формы DictionContainer
----
*Пример использования*:
[code]
'aControl' форма::DictionContainer TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_DictionContainer

// start class Tkw_Form_DictionContainer

{$If not defined(NoScripts)}
function Tkw_Form_DictionContainer.GetString: AnsiString;
 {-}
begin
 Result := 'DictionContainerForm';
end;//Tkw_Form_DictionContainer.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_Filters = class(TtfwString)
  {* Слово словаря для идентификатора формы Filters
----
*Пример использования*:
[code]
'aControl' форма::Filters TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_Filters

// start class Tkw_Form_Filters

{$If not defined(NoScripts)}
function Tkw_Form_Filters.GetString: AnsiString;
 {-}
begin
 Result := 'enFilters';
end;//Tkw_Form_Filters.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_TreeAttributeFirstLevel = class(TtfwString)
  {* Слово словаря для идентификатора формы TreeAttributeFirstLevel
----
*Пример использования*:
[code]
'aControl' форма::TreeAttributeFirstLevel TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_TreeAttributeFirstLevel

// start class Tkw_Form_TreeAttributeFirstLevel

{$If not defined(NoScripts)}
function Tkw_Form_TreeAttributeFirstLevel.GetString: AnsiString;
 {-}
begin
 Result := 'efTreeAttributeFirstLevel';
end;//Tkw_Form_TreeAttributeFirstLevel.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_WarningBaloon = class(TtfwString)
  {* Слово словаря для идентификатора формы WarningBaloon
----
*Пример использования*:
[code]
'aControl' форма::WarningBaloon TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_WarningBaloon

// start class Tkw_Form_WarningBaloon

{$If not defined(NoScripts)}
function Tkw_Form_WarningBaloon.GetString: AnsiString;
 {-}
begin
 Result := 'WarningBaloonForm';
end;//Tkw_Form_WarningBaloon.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_NewsLine = class(TtfwString)
  {* Слово словаря для идентификатора формы NewsLine
----
*Пример использования*:
[code]
'aControl' форма::NewsLine TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_NewsLine

// start class Tkw_Form_NewsLine

{$If not defined(NoScripts)}
function Tkw_Form_NewsLine.GetString: AnsiString;
 {-}
begin
 Result := 'enNewsLine';
end;//Tkw_Form_NewsLine.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_Redactions = class(TtfwString)
  {* Слово словаря для идентификатора формы Redactions
----
*Пример использования*:
[code]
'aControl' форма::Redactions TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_Redactions

// start class Tkw_Form_Redactions

{$If not defined(NoScripts)}
function Tkw_Form_Redactions.GetString: AnsiString;
 {-}
begin
 Result := 'RedactionsForm';
end;//Tkw_Form_Redactions.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_SynchroView_WarningBaloon = class(TtfwString)
  {* Слово словаря для идентификатора формы SynchroView_WarningBaloon
----
*Пример использования*:
[code]
'aControl' форма::SynchroView_WarningBaloon TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_SynchroView_WarningBaloon

// start class Tkw_Form_SynchroView_WarningBaloon

{$If not defined(NoScripts)}
function Tkw_Form_SynchroView_WarningBaloon.GetString: AnsiString;
 {-}
begin
 Result := 'SynchroView_WarningBaloonForm';
end;//Tkw_Form_SynchroView_WarningBaloon.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_Translation_WarningBaloon = class(TtfwString)
  {* Слово словаря для идентификатора формы Translation_WarningBaloon
----
*Пример использования*:
[code]
'aControl' форма::Translation_WarningBaloon TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_Translation_WarningBaloon

// start class Tkw_Form_Translation_WarningBaloon

{$If not defined(NoScripts)}
function Tkw_Form_Translation_WarningBaloon.GetString: AnsiString;
 {-}
begin
 Result := 'Translation_WarningBaloonForm';
end;//Tkw_Form_Translation_WarningBaloon.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_UserCR1_WarningBaloon = class(TtfwString)
  {* Слово словаря для идентификатора формы UserCR1_WarningBaloon
----
*Пример использования*:
[code]
'aControl' форма::UserCR1_WarningBaloon TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_UserCR1_WarningBaloon

// start class Tkw_Form_UserCR1_WarningBaloon

{$If not defined(NoScripts)}
function Tkw_Form_UserCR1_WarningBaloon.GetString: AnsiString;
 {-}
begin
 Result := 'UserCR1_WarningBaloonForm';
end;//Tkw_Form_UserCR1_WarningBaloon.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_UserCR2_WarningBaloon = class(TtfwString)
  {* Слово словаря для идентификатора формы UserCR2_WarningBaloon
----
*Пример использования*:
[code]
'aControl' форма::UserCR2_WarningBaloon TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_UserCR2_WarningBaloon

// start class Tkw_Form_UserCR2_WarningBaloon

{$If not defined(NoScripts)}
function Tkw_Form_UserCR2_WarningBaloon.GetString: AnsiString;
 {-}
begin
 Result := 'UserCR2_WarningBaloonForm';
end;//Tkw_Form_UserCR2_WarningBaloon.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_Contents = class(TtfwString)
  {* Слово словаря для идентификатора формы Contents
----
*Пример использования*:
[code]
'aControl' форма::Contents TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_Contents

// start class Tkw_Form_Contents

{$If not defined(NoScripts)}
function Tkw_Form_Contents.GetString: AnsiString;
 {-}
begin
 Result := 'ContentsForm';
end;//Tkw_Form_Contents.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_FoldersTree = class(TtfwString)
  {* Слово словаря для идентификатора формы FoldersTree
----
*Пример использования*:
[code]
'aControl' форма::FoldersTree TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_FoldersTree

// start class Tkw_Form_FoldersTree

{$If not defined(NoScripts)}
function Tkw_Form_FoldersTree.GetString: AnsiString;
 {-}
begin
 Result := 'enFoldersTree';
end;//Tkw_Form_FoldersTree.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_FoldersElementInfo = class(TtfwString)
  {* Слово словаря для идентификатора формы FoldersElementInfo
----
*Пример использования*:
[code]
'aControl' форма::FoldersElementInfo TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_FoldersElementInfo

// start class Tkw_Form_FoldersElementInfo

{$If not defined(NoScripts)}
function Tkw_Form_FoldersElementInfo.GetString: AnsiString;
 {-}
begin
 Result := 'enFoldersElementInfo';
end;//Tkw_Form_FoldersElementInfo.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_DocumentWithFlash = class(TtfwString)
  {* Слово словаря для идентификатора формы DocumentWithFlash
----
*Пример использования*:
[code]
'aControl' форма::DocumentWithFlash TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_DocumentWithFlash

// start class Tkw_Form_DocumentWithFlash

{$If not defined(NoScripts)}
function Tkw_Form_DocumentWithFlash.GetString: AnsiString;
 {-}
begin
 Result := 'DocumentWithFlashForm';
end;//Tkw_Form_DocumentWithFlash.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_ConsultationMark = class(TtfwString)
  {* Слово словаря для идентификатора формы ConsultationMark
----
*Пример использования*:
[code]
'aControl' форма::ConsultationMark TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_ConsultationMark

// start class Tkw_Form_ConsultationMark

{$If not defined(NoScripts)}
function Tkw_Form_ConsultationMark.GetString: AnsiString;
 {-}
begin
 Result := 'en_ConsultationMark';
end;//Tkw_Form_ConsultationMark.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_MedicListSynchroView = class(TtfwString)
  {* Слово словаря для идентификатора формы MedicListSynchroView
----
*Пример использования*:
[code]
'aControl' форма::MedicListSynchroView TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_MedicListSynchroView

// start class Tkw_Form_MedicListSynchroView

{$If not defined(NoScripts)}
function Tkw_Form_MedicListSynchroView.GetString: AnsiString;
 {-}
begin
 Result := 'en_MedicListSynchroView';
end;//Tkw_Form_MedicListSynchroView.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_SynchroView = class(TtfwString)
  {* Слово словаря для идентификатора формы SynchroView
----
*Пример использования*:
[code]
'aControl' форма::SynchroView TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_SynchroView

// start class Tkw_Form_SynchroView

{$If not defined(NoScripts)}
function Tkw_Form_SynchroView.GetString: AnsiString;
 {-}
begin
 Result := 'fcSynchroView';
end;//Tkw_Form_SynchroView.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_ListAnalize = class(TtfwString)
  {* Слово словаря для идентификатора формы ListAnalize
----
*Пример использования*:
[code]
'aControl' форма::ListAnalize TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_ListAnalize

// start class Tkw_Form_ListAnalize

{$If not defined(NoScripts)}
function Tkw_Form_ListAnalize.GetString: AnsiString;
 {-}
begin
 Result := 'ListAnalizeForm';
end;//Tkw_Form_ListAnalize.GetString
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings


initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_Text
 Tkw_Form_Text.Register('форма::Text');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_UnderControl
 Tkw_Form_UnderControl.Register('форма::UnderControl');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_Folders
 Tkw_Form_Folders.Register('форма::Folders');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_Navigator
 Tkw_Form_Navigator.Register('форма::Navigator');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_TasksPanel
 Tkw_Form_TasksPanel.Register('форма::TasksPanel');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_CompInfo
 Tkw_Form_CompInfo.Register('форма::CompInfo');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_Rubricator
 Tkw_Form_Rubricator.Register('форма::Rubricator');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_Diction
 Tkw_Form_Diction.Register('форма::Diction');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_Warning
 Tkw_Form_Warning.Register('форма::Warning');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_ListInfo
 Tkw_Form_ListInfo.Register('форма::ListInfo');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_CommonDiction
 Tkw_Form_CommonDiction.Register('форма::CommonDiction');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_MedicMainMenu
 Tkw_Form_MedicMainMenu.Register('форма::MedicMainMenu');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_MedicFirmList
 Tkw_Form_MedicFirmList.Register('форма::MedicFirmList');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_List
 Tkw_Form_List.Register('форма::List');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_ConfigurationList
 Tkw_Form_ConfigurationList.Register('форма::ConfigurationList');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_MainMenuNew
 Tkw_Form_MainMenuNew.Register('форма::MainMenuNew');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_NewBaseSearch
 Tkw_Form_NewBaseSearch.Register('форма::NewBaseSearch');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_Attributes
 Tkw_Form_Attributes.Register('форма::Attributes');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_BaseSearchContainer
 Tkw_Form_BaseSearchContainer.Register('форма::BaseSearchContainer');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_DictionContainer
 Tkw_Form_DictionContainer.Register('форма::DictionContainer');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_Filters
 Tkw_Form_Filters.Register('форма::Filters');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_TreeAttributeFirstLevel
 Tkw_Form_TreeAttributeFirstLevel.Register('форма::TreeAttributeFirstLevel');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_WarningBaloon
 Tkw_Form_WarningBaloon.Register('форма::WarningBaloon');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_NewsLine
 Tkw_Form_NewsLine.Register('форма::NewsLine');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_Redactions
 Tkw_Form_Redactions.Register('форма::Redactions');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_SynchroView_WarningBaloon
 Tkw_Form_SynchroView_WarningBaloon.Register('форма::SynchroView_WarningBaloon');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_Translation_WarningBaloon
 Tkw_Form_Translation_WarningBaloon.Register('форма::Translation_WarningBaloon');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_UserCR1_WarningBaloon
 Tkw_Form_UserCR1_WarningBaloon.Register('форма::UserCR1_WarningBaloon');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_UserCR2_WarningBaloon
 Tkw_Form_UserCR2_WarningBaloon.Register('форма::UserCR2_WarningBaloon');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_Contents
 Tkw_Form_Contents.Register('форма::Contents');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_FoldersTree
 Tkw_Form_FoldersTree.Register('форма::FoldersTree');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_FoldersElementInfo
 Tkw_Form_FoldersElementInfo.Register('форма::FoldersElementInfo');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_DocumentWithFlash
 Tkw_Form_DocumentWithFlash.Register('форма::DocumentWithFlash');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_ConsultationMark
 Tkw_Form_ConsultationMark.Register('форма::ConsultationMark');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_MedicListSynchroView
 Tkw_Form_MedicListSynchroView.Register('форма::MedicListSynchroView');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_SynchroView
 Tkw_Form_SynchroView.Register('форма::SynchroView');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_ListAnalize
 Tkw_Form_ListAnalize.Register('форма::ListAnalize');
{$IfEnd} //not Admin AND not Monitorings

end.