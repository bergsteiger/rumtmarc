unit MainMenuNew_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/MainMenu/Forms/MainMenuNew_Form.pas"
// Начат: 07.10.2009 18:44
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Интерфейсные элементы::MainMenu::View::MainMenu::MainMenu$FP::MainMenuNew
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
  PrimMainMenuNew_Form,
  Common_FormDefinitions_Controls
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  vtPanel
  {$If defined(Nemesis)}
  ,
  nscHideField
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscTreeViewHotTruck
  {$IfEnd} //Nemesis
  ,
  ExtCtrls
  {$If defined(Nemesis)}
  ,
  nscFocusLabel
  {$IfEnd} //Nemesis
  ,
  imageenview,
  vtPngImgList,
  imageenio,
  Classes {a},
  l3InterfacedComponent {a},
  vcmComponent {a},
  vcmBaseEntities {a},
  vcmEntities {a},
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
  Ten_MainMenuNew = {final form} class(TvcmContainerFormRef, MainMenuNewFormDef)
  Entities : TvcmEntities;
  pnlMain: TvtPanel;
  hfLastOpenDocs: TnscHideField;
  tvLastOpenDocs: TnscTreeViewHotTruck;
  ilButtons: TvtNonFixedPngImageList;
  hfReferences: TnscHideField;
  tvReferences: TnscTreeViewHotTruck;
  hfLawNews: TnscHideField;
  tvLawNews: TnscTreeViewHotTruck;
  end;//Ten_MainMenuNew

  TMainMenuNewForm = Ten_MainMenuNew;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$R *.DFM}

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  SysUtils
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

type
   Tkw_Form_MainMenuNew = class(TtfwControlString)
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
   Tkw_MainMenuNew_pnlBaseSearch_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола pnlBaseSearch формы MainMenuNew }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_MainMenuNew_pnlBaseSearch_ControlInstance

// start class Tkw_MainMenuNew_pnlBaseSearch_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainMenuNew_pnlBaseSearch_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_MainMenuNew).pnlBaseSearch);
end;//Tkw_MainMenuNew_pnlBaseSearch_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_MainMenuNew_pnlBaseSearchZone_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола pnlBaseSearchZone формы MainMenuNew }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_MainMenuNew_pnlBaseSearchZone_ControlInstance

// start class Tkw_MainMenuNew_pnlBaseSearchZone_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainMenuNew_pnlBaseSearchZone_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_MainMenuNew).pnlBaseSearchZone);
end;//Tkw_MainMenuNew_pnlBaseSearchZone_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_MainMenuNew_pnlLogo_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола pnlLogo формы MainMenuNew }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_MainMenuNew_pnlLogo_ControlInstance

// start class Tkw_MainMenuNew_pnlLogo_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainMenuNew_pnlLogo_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_MainMenuNew).pnlLogo);
end;//Tkw_MainMenuNew_pnlLogo_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_MainMenuNew_pbLogo_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола pbLogo формы MainMenuNew }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_MainMenuNew_pbLogo_ControlInstance

// start class Tkw_MainMenuNew_pbLogo_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainMenuNew_pbLogo_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_MainMenuNew).pbLogo);
end;//Tkw_MainMenuNew_pbLogo_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_MainMenuNew_pnlSearches_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола pnlSearches формы MainMenuNew }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_MainMenuNew_pnlSearches_ControlInstance

// start class Tkw_MainMenuNew_pnlSearches_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainMenuNew_pnlSearches_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_MainMenuNew).pnlSearches);
end;//Tkw_MainMenuNew_pnlSearches_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_MainMenuNew_flAttributeSearch_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола flAttributeSearch формы MainMenuNew }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_MainMenuNew_flAttributeSearch_ControlInstance

// start class Tkw_MainMenuNew_flAttributeSearch_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainMenuNew_flAttributeSearch_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_MainMenuNew).flAttributeSearch);
end;//Tkw_MainMenuNew_flAttributeSearch_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_MainMenuNew_flSitiationSearch_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола flSitiationSearch формы MainMenuNew }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_MainMenuNew_flSitiationSearch_ControlInstance

// start class Tkw_MainMenuNew_flSitiationSearch_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainMenuNew_flSitiationSearch_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_MainMenuNew).flSitiationSearch);
end;//Tkw_MainMenuNew_flSitiationSearch_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_MainMenuNew_flPublishedSourceSearch_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола flPublishedSourceSearch формы MainMenuNew }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_MainMenuNew_flPublishedSourceSearch_ControlInstance

// start class Tkw_MainMenuNew_flPublishedSourceSearch_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainMenuNew_flPublishedSourceSearch_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_MainMenuNew).flPublishedSourceSearch);
end;//Tkw_MainMenuNew_flPublishedSourceSearch_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_MainMenuNew_flDictionSearch_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола flDictionSearch формы MainMenuNew }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_MainMenuNew_flDictionSearch_ControlInstance

// start class Tkw_MainMenuNew_flDictionSearch_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainMenuNew_flDictionSearch_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_MainMenuNew).flDictionSearch);
end;//Tkw_MainMenuNew_flDictionSearch_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_MainMenuNew_pnlExpert_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола pnlExpert формы MainMenuNew }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_MainMenuNew_pnlExpert_ControlInstance

// start class Tkw_MainMenuNew_pnlExpert_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainMenuNew_pnlExpert_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_MainMenuNew).pnlExpert);
end;//Tkw_MainMenuNew_pnlExpert_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_MainMenuNew_pbExpert_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола pbExpert формы MainMenuNew }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_MainMenuNew_pbExpert_ControlInstance

// start class Tkw_MainMenuNew_pbExpert_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainMenuNew_pbExpert_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_MainMenuNew).pbExpert);
end;//Tkw_MainMenuNew_pbExpert_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_MainMenuNew_pnlOnLine_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола pnlOnLine формы MainMenuNew }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_MainMenuNew_pnlOnLine_ControlInstance

// start class Tkw_MainMenuNew_pnlOnLine_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainMenuNew_pnlOnLine_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_MainMenuNew).pnlOnLine);
end;//Tkw_MainMenuNew_pnlOnLine_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_MainMenuNew_pbOnLine_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола pbOnLine формы MainMenuNew }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_MainMenuNew_pbOnLine_ControlInstance

// start class Tkw_MainMenuNew_pbOnLine_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainMenuNew_pbOnLine_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_MainMenuNew).pbOnLine);
end;//Tkw_MainMenuNew_pbOnLine_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_MainMenuNew_pbIntranet_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола pbIntranet формы MainMenuNew }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_MainMenuNew_pbIntranet_ControlInstance

// start class Tkw_MainMenuNew_pbIntranet_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainMenuNew_pbIntranet_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_MainMenuNew).pbIntranet);
end;//Tkw_MainMenuNew_pbIntranet_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_MainMenuNew_pbCourtsOnline_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола pbCourtsOnline формы MainMenuNew }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_MainMenuNew_pbCourtsOnline_ControlInstance

// start class Tkw_MainMenuNew_pbCourtsOnline_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainMenuNew_pbCourtsOnline_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_MainMenuNew).pbCourtsOnline);
end;//Tkw_MainMenuNew_pbCourtsOnline_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_MainMenuNew_hfTaxes_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола hfTaxes формы MainMenuNew }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_MainMenuNew_hfTaxes_ControlInstance

// start class Tkw_MainMenuNew_hfTaxes_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainMenuNew_hfTaxes_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_MainMenuNew).hfTaxes);
end;//Tkw_MainMenuNew_hfTaxes_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_MainMenuNew_tvTaxes_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола tvTaxes формы MainMenuNew }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_MainMenuNew_tvTaxes_ControlInstance

// start class Tkw_MainMenuNew_tvTaxes_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainMenuNew_tvTaxes_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_MainMenuNew).tvTaxes);
end;//Tkw_MainMenuNew_tvTaxes_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_MainMenuNew_pnlBanner_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола pnlBanner формы MainMenuNew }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_MainMenuNew_pnlBanner_ControlInstance

// start class Tkw_MainMenuNew_pnlBanner_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainMenuNew_pnlBanner_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_MainMenuNew).pnlBanner);
end;//Tkw_MainMenuNew_pnlBanner_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_MainMenuNew_ieBanner_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола ieBanner формы MainMenuNew }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_MainMenuNew_ieBanner_ControlInstance

// start class Tkw_MainMenuNew_ieBanner_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainMenuNew_ieBanner_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_MainMenuNew).ieBanner);
end;//Tkw_MainMenuNew_ieBanner_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_MainMenuNew_hfLastOpenDocsRightEdge_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола hfLastOpenDocsRightEdge формы MainMenuNew }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_MainMenuNew_hfLastOpenDocsRightEdge_ControlInstance

// start class Tkw_MainMenuNew_hfLastOpenDocsRightEdge_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainMenuNew_hfLastOpenDocsRightEdge_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_MainMenuNew).hfLastOpenDocsRightEdge);
end;//Tkw_MainMenuNew_hfLastOpenDocsRightEdge_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_MainMenuNew_ilButtons_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола ilButtons формы MainMenuNew }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_MainMenuNew_ilButtons_ControlInstance

// start class Tkw_MainMenuNew_ilButtons_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainMenuNew_ilButtons_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_MainMenuNew).ilButtons);
end;//Tkw_MainMenuNew_ilButtons_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_MainMenuNew_ieIO_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола ieIO формы MainMenuNew }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_MainMenuNew_ieIO_ControlInstance

// start class Tkw_MainMenuNew_ieIO_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainMenuNew_ieIO_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_MainMenuNew).ieIO);
end;//Tkw_MainMenuNew_ieIO_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_MainMenuNew_hfReferences_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола hfReferences формы MainMenuNew }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_MainMenuNew_hfReferences_ControlInstance

// start class Tkw_MainMenuNew_hfReferences_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainMenuNew_hfReferences_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_MainMenuNew).hfReferences);
end;//Tkw_MainMenuNew_hfReferences_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_MainMenuNew_tvReferences_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола tvReferences формы MainMenuNew }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_MainMenuNew_tvReferences_ControlInstance

// start class Tkw_MainMenuNew_tvReferences_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainMenuNew_tvReferences_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_MainMenuNew).tvReferences);
end;//Tkw_MainMenuNew_tvReferences_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_MainMenuNew_hfLawNews_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола hfLawNews формы MainMenuNew }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_MainMenuNew_hfLawNews_ControlInstance

// start class Tkw_MainMenuNew_hfLawNews_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainMenuNew_hfLawNews_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_MainMenuNew).hfLawNews);
end;//Tkw_MainMenuNew_hfLawNews_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_MainMenuNew_tvLawNews_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола tvLawNews формы MainMenuNew }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_MainMenuNew_tvLawNews_ControlInstance

// start class Tkw_MainMenuNew_tvLawNews_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainMenuNew_tvLawNews_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_MainMenuNew).tvLawNews);
end;//Tkw_MainMenuNew_tvLawNews_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_MainMenuNew_pnlMain_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола pnlMain формы MainMenuNew }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_MainMenuNew_pnlMain_ControlInstance

// start class Tkw_MainMenuNew_pnlMain_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainMenuNew_pnlMain_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_MainMenuNew).pnlMain);
end;//Tkw_MainMenuNew_pnlMain_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_MainMenuNew_hfLastOpenDocs_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола hfLastOpenDocs формы MainMenuNew }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_MainMenuNew_hfLastOpenDocs_ControlInstance

// start class Tkw_MainMenuNew_hfLastOpenDocs_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainMenuNew_hfLastOpenDocs_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_MainMenuNew).hfLastOpenDocs);
end;//Tkw_MainMenuNew_hfLastOpenDocs_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_MainMenuNew_tvLastOpenDocs_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола tvLastOpenDocs формы MainMenuNew }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_MainMenuNew_tvLastOpenDocs_ControlInstance

// start class Tkw_MainMenuNew_tvLastOpenDocs_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainMenuNew_tvLastOpenDocs_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_MainMenuNew).tvLastOpenDocs);
end;//Tkw_MainMenuNew_tvLastOpenDocs_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация фабрики формы MainMenuNew
 fm_en_MainMenuNew.SetFactory(Ten_MainMenuNew.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_MainMenuNew
 Tkw_Form_MainMenuNew.Register('форма::MainMenuNew', Ten_MainMenuNew);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainMenuNew_pnlBaseSearch_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_MainMenuNew.pnlBaseSearch', Tkw_MainMenuNew_pnlBaseSearch_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainMenuNew_pnlBaseSearchZone_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_MainMenuNew.pnlBaseSearchZone', Tkw_MainMenuNew_pnlBaseSearchZone_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainMenuNew_pnlLogo_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_MainMenuNew.pnlLogo', Tkw_MainMenuNew_pnlLogo_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainMenuNew_pbLogo_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_MainMenuNew.pbLogo', Tkw_MainMenuNew_pbLogo_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainMenuNew_pnlSearches_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_MainMenuNew.pnlSearches', Tkw_MainMenuNew_pnlSearches_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainMenuNew_flAttributeSearch_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_MainMenuNew.flAttributeSearch', Tkw_MainMenuNew_flAttributeSearch_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainMenuNew_flSitiationSearch_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_MainMenuNew.flSitiationSearch', Tkw_MainMenuNew_flSitiationSearch_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainMenuNew_flPublishedSourceSearch_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_MainMenuNew.flPublishedSourceSearch', Tkw_MainMenuNew_flPublishedSourceSearch_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainMenuNew_flDictionSearch_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_MainMenuNew.flDictionSearch', Tkw_MainMenuNew_flDictionSearch_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainMenuNew_pnlExpert_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_MainMenuNew.pnlExpert', Tkw_MainMenuNew_pnlExpert_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainMenuNew_pbExpert_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_MainMenuNew.pbExpert', Tkw_MainMenuNew_pbExpert_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainMenuNew_pnlOnLine_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_MainMenuNew.pnlOnLine', Tkw_MainMenuNew_pnlOnLine_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainMenuNew_pbOnLine_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_MainMenuNew.pbOnLine', Tkw_MainMenuNew_pbOnLine_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainMenuNew_pbIntranet_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_MainMenuNew.pbIntranet', Tkw_MainMenuNew_pbIntranet_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainMenuNew_pbCourtsOnline_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_MainMenuNew.pbCourtsOnline', Tkw_MainMenuNew_pbCourtsOnline_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainMenuNew_hfTaxes_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_MainMenuNew.hfTaxes', Tkw_MainMenuNew_hfTaxes_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainMenuNew_tvTaxes_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_MainMenuNew.tvTaxes', Tkw_MainMenuNew_tvTaxes_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainMenuNew_pnlBanner_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_MainMenuNew.pnlBanner', Tkw_MainMenuNew_pnlBanner_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainMenuNew_ieBanner_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_MainMenuNew.ieBanner', Tkw_MainMenuNew_ieBanner_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainMenuNew_hfLastOpenDocsRightEdge_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_MainMenuNew.hfLastOpenDocsRightEdge', Tkw_MainMenuNew_hfLastOpenDocsRightEdge_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainMenuNew_ilButtons_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_MainMenuNew.ilButtons', Tkw_MainMenuNew_ilButtons_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainMenuNew_ieIO_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_MainMenuNew.ieIO', Tkw_MainMenuNew_ieIO_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainMenuNew_hfReferences_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_MainMenuNew.hfReferences', Tkw_MainMenuNew_hfReferences_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainMenuNew_tvReferences_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_MainMenuNew.tvReferences', Tkw_MainMenuNew_tvReferences_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainMenuNew_hfLawNews_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_MainMenuNew.hfLawNews', Tkw_MainMenuNew_hfLawNews_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainMenuNew_tvLawNews_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_MainMenuNew.tvLawNews', Tkw_MainMenuNew_tvLawNews_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainMenuNew_pnlMain_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_MainMenuNew.pnlMain', Tkw_MainMenuNew_pnlMain_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainMenuNew_hfLastOpenDocs_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_MainMenuNew.hfLastOpenDocs', Tkw_MainMenuNew_hfLastOpenDocs_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainMenuNew_tvLastOpenDocs_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_MainMenuNew.tvLastOpenDocs', Tkw_MainMenuNew_tvLastOpenDocs_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.