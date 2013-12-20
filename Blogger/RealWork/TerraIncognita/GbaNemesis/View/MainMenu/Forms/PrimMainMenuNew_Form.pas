unit PrimMainMenuNew_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/MainMenu/Forms/PrimMainMenuNew_Form.pas"
// �����: 29.12.2008 17:43
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMContainer::Class>> F1 ������������ ��������::MainMenu::View::MainMenu::PrimMainMenuNew
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  IOUnit,
  BaseTypesUnit,
  ExternalObjectUnit,
  Classes,
  Forms,
  ExtCtrls,
  PrimMainMenu_Form
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  vtPanel
  {$If defined(Nemesis)}
  ,
  nscHideField
  {$IfEnd} //Nemesis
  ,
  PrimLegalMainMenu_Form,
  vtPngImgList,
  BannerUnit,
  imageenview,
  imageenio,
  l3StringIDEx
  {$If defined(Nemesis)}
  ,
  nscFocusLabel
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscTreeViewHotTruck
  {$IfEnd} //Nemesis
  ,
  OfficeLike_Tree_Controls,
  PrimMainMenuNew_utMainMenuNew_UserType,
  MainMenuUnit,
  vtHideField
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwBynameControlPush
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  
  {$If defined(Nemesis)}
  ,
  nscInterfaces
  {$IfEnd} //Nemesis
  
  {$If not defined(NoVCM)}
  ,
  vcmInterfaces
  {$IfEnd} //not NoVCM
  ,
  vcmExternalInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TPrimMainMenuNewForm = {abstract form} class(TPrimLegalMainMenuForm)
 private
 // private fields
   f_Banner : IBanner;
   f_CurrentSection : TSectionType;
   f_pnlBaseSearch : TvtPanel;
    {* ���� ��� �������� pnlBaseSearch}
   f_pnlBaseSearchZone : TvtPanel;
    {* ���� ��� �������� pnlBaseSearchZone}
   f_pnlLogo : TvtPanel;
    {* ���� ��� �������� pnlLogo}
   f_pbLogo : TPaintBox;
    {* ���� ��� �������� pbLogo}
   f_pnlSearches : TvtPanel;
    {* ���� ��� �������� pnlSearches}
   f_flAttributeSearch : TnscFocusLabel;
    {* ���� ��� �������� flAttributeSearch}
   f_flSitiationSearch : TnscFocusLabel;
    {* ���� ��� �������� flSitiationSearch}
   f_flPublishedSourceSearch : TnscFocusLabel;
    {* ���� ��� �������� flPublishedSourceSearch}
   f_flDictionSearch : TnscFocusLabel;
    {* ���� ��� �������� flDictionSearch}
   f_pnlExpert : TvtPanel;
    {* ���� ��� �������� pnlExpert}
   f_pbExpert : TPaintBox;
    {* ���� ��� �������� pbExpert}
   f_pnlOnLine : TvtPanel;
    {* ���� ��� �������� pnlOnLine}
   f_pbOnLine : TPaintBox;
    {* ���� ��� �������� pbOnLine}
   f_pbIntranet : TPaintBox;
    {* ���� ��� �������� pbIntranet}
   f_pbCourtsOnline : TPaintBox;
    {* ���� ��� �������� pbCourtsOnline}
   f_hfTaxes : TnscHideField;
    {* ���� ��� �������� hfTaxes}
   f_tvTaxes : TnscTreeViewHotTruck;
    {* ���� ��� �������� tvTaxes}
   f_pnlBanner : TvtPanel;
    {* ���� ��� �������� pnlBanner}
   f_ieBanner : TImageEnView;
    {* ���� ��� �������� ieBanner}
   f_hfLastOpenDocsRightEdge : TvtPanel;
    {* ���� ��� �������� hfLastOpenDocsRightEdge}
   f_ilButtons : TvtNonFixedPngImageList;
    {* ���� ��� �������� ilButtons}
   f_ieIO : TImageEnIO;
    {* ���� ��� �������� ieIO}
 protected
  procedure InitEntities; override;
  procedure MakeControls; override;
 private
 // private methods
   procedure BaseSearchPanelResize(aSender: TObject);
   procedure PaintLogo(aSender: TObject);
   procedure PaintButton(aSender: TObject);
   procedure ExpertClick(aSender: TObject);
   procedure OnLineClick(aSender: TObject);
   procedure SearchClick(aSender: TObject);
   procedure LoadBanner;
   procedure BannerClick(aSender: TObject);
   procedure UpdateBaseSearchFormHeight(aForm: TForm);
   procedure BaseSearchFormResize(aSender: TObject);
   procedure ReferencesResize(aSender: TObject);
   procedure UpdateSearchLabels;
   procedure IntranetClick(aSender: TObject);
   procedure TaxesStateChanged(aSender: TObject;
     var theState: ThfState);
   procedure UpdateTaxesTree;
   procedure TaxesNextTree(aSender: TObject);
   procedure UpdateTaxesTreeCaption;
   procedure UpdateReferencesAndLawNewsCaptions;
   procedure CourtsOnlineClick(aSender: TObject);
 protected
 // property methods
   function pm_GetIlButtons: TvtNonFixedPngImageList;
 protected
 // realized methods
   function DoBuildGrid: InscArrangeGrid; override;
 protected
 // overridden property methods
   function pm_GetContainerForBaseSearch: IvcmContainer; override;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* ������� ������� ����� �������. }
   procedure InitFields; override;
   procedure FinishDataUpdate; override;
   {$If not defined(NoVCM)}
   procedure DoInit(aFromHistory: Boolean); override;
     {* ������������� �����. ��� ���������� � �������� }
   {$IfEnd} //not NoVCM
   {$If not defined(NoVCM)}
   procedure InitControls; override;
     {* ��������� ������������� ���������. ��� ���������� � �������� }
   {$IfEnd} //not NoVCM
   procedure DoInitKeyboardNavigation(const aTable: InscTabTable); override;
   procedure LoadLastOpenDocs; override;
   procedure LoadTrees; override;
   function NewSchool: Boolean; override;
     {* ����������, ��� �������� ���� ���� 2009 - [$164601183] }
   procedure DoRecalcGrid(const aGrid: InscArrangeGrid); override;
   {$If not defined(NoVCM)}
   function InsertForm(const aForm: IvcmEntityForm): Boolean; override;
   {$IfEnd} //not NoVCM
   {$If not defined(NoVCM)}
   procedure SetControlsResources; override;
     {* ���������� ��������� ������� ��� ������������������� }
   {$IfEnd} //not NoVCM
   {$If not defined(NoVCM)}
   procedure RestoreControlSize; override;
   {$IfEnd} //not NoVCM
 public
 // public properties

   property pnlBaseSearch: TvtPanel
     read f_pnlBaseSearch;
   property pnlBaseSearchZone: TvtPanel
     read f_pnlBaseSearchZone;
   property pnlLogo: TvtPanel
     read f_pnlLogo;
   property pbLogo: TPaintBox
     read f_pbLogo;
   property pnlSearches: TvtPanel
     read f_pnlSearches;
   property flAttributeSearch: TnscFocusLabel
     read f_flAttributeSearch;
     {* � �� ���������� }
   property flSitiationSearch: TnscFocusLabel
     read f_flSitiationSearch;
     {* � �� �������� }
   property flPublishedSourceSearch: TnscFocusLabel
     read f_flPublishedSourceSearch;
     {* � �� ��������� ������������� }
   property flDictionSearch: TnscFocusLabel
     read f_flDictionSearch;
     {* � �� ��������� ������� }
   property pnlExpert: TvtPanel
     read f_pnlExpert;
   property pbExpert: TPaintBox
     read f_pbExpert;
   property pnlOnLine: TvtPanel
     read f_pnlOnLine;
   property pbOnLine: TPaintBox
     read f_pbOnLine;
   property pbIntranet: TPaintBox
     read f_pbIntranet;
   property pbCourtsOnline: TPaintBox
     read f_pbCourtsOnline;
     {* ������-����� }
   property hfTaxes: TnscHideField
     read f_hfTaxes;
     {* ������, ������� }
   property tvTaxes: TnscTreeViewHotTruck
     read f_tvTaxes;
   property pnlBanner: TvtPanel
     read f_pnlBanner;
   property ieBanner: TImageEnView
     read f_ieBanner;

   property hfLastOpenDocsRightEdge: TvtPanel
     read f_hfLastOpenDocsRightEdge;
   property ilButtons: TvtNonFixedPngImageList
     read pm_GetIlButtons;
   property ieIO: TImageEnIO
     read f_ieIO;
 end;//TPrimMainMenuNewForm

 TvcmContainerFormRef = TPrimMainMenuNewForm;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  nsUtils
  {$If not defined(NoVCM)}
  ,
  StdRes
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmBase
  {$IfEnd} //not NoVCM
  ,
  lgTypes,
  DataAdapter,
  hyiedefs,
  iemview,
  nsExternalObject,
  SysUtils,
  nsTypes,
  l3String
  {$If defined(Nemesis)}
  ,
  nscArrangeGrid
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscArrangeGridCell
  {$IfEnd} //Nemesis
  ,
  Controls
  {$If defined(Nemesis)}
  ,
  nscFixedHeightControlCell
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscFixedWidthControlCell
  {$IfEnd} //Nemesis
  ,
  nsConst,
  Graphics,
  f1TextStyle_Const,
  nsLastOpenDocTree,
  l3ControlsTypes,
  l3MinMax
  {$If defined(Nemesis)}
  ,
  nscTabTableCell
  {$IfEnd} //Nemesis
  ,
  afwFacade,
  hyieutils,
  afwInterfaces
  {$If defined(Nemesis)}
  ,
  nscTreeView
  {$IfEnd} //Nemesis
  ,
  smChangeableTree,
  DocumentRes,
  StartUnit
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  l3MessageID
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

const
   { SearchLabelsLayout }
  c_SearchLabelDistance = 18;

var
   { ������������ ������ utMainMenuNewLocalConstants }
  str_utMainMenuNewCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'utMainMenuNewCaption'; rValue : '�������� ����');
   { ��������� ����������������� ���� "�������� ����" }

type
  Tkw_PrimMainMenuNew_Control_pnlBaseSearch = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� pnlBaseSearch
----
*������ �������������*:
[code]
�������::pnlBaseSearch TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Control_pnlBaseSearch

// start class Tkw_PrimMainMenuNew_Control_pnlBaseSearch

{$If not defined(NoScripts)}
function Tkw_PrimMainMenuNew_Control_pnlBaseSearch.GetString: AnsiString;
 {-}
begin
 Result := 'pnlBaseSearch';
end;//Tkw_PrimMainMenuNew_Control_pnlBaseSearch.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Control_pnlBaseSearch_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� pnlBaseSearch
----
*������ �������������*:
[code]
�������::pnlBaseSearch:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Control_pnlBaseSearch_Push

// start class Tkw_PrimMainMenuNew_Control_pnlBaseSearch_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimMainMenuNew_Control_pnlBaseSearch_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('pnlBaseSearch');
 inherited;
end;//Tkw_PrimMainMenuNew_Control_pnlBaseSearch_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Control_pnlBaseSearchZone = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� pnlBaseSearchZone
----
*������ �������������*:
[code]
�������::pnlBaseSearchZone TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Control_pnlBaseSearchZone

// start class Tkw_PrimMainMenuNew_Control_pnlBaseSearchZone

{$If not defined(NoScripts)}
function Tkw_PrimMainMenuNew_Control_pnlBaseSearchZone.GetString: AnsiString;
 {-}
begin
 Result := 'pnlBaseSearchZone';
end;//Tkw_PrimMainMenuNew_Control_pnlBaseSearchZone.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Control_pnlBaseSearchZone_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� pnlBaseSearchZone
----
*������ �������������*:
[code]
�������::pnlBaseSearchZone:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Control_pnlBaseSearchZone_Push

// start class Tkw_PrimMainMenuNew_Control_pnlBaseSearchZone_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimMainMenuNew_Control_pnlBaseSearchZone_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('pnlBaseSearchZone');
 inherited;
end;//Tkw_PrimMainMenuNew_Control_pnlBaseSearchZone_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Control_pnlLogo = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� pnlLogo
----
*������ �������������*:
[code]
�������::pnlLogo TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Control_pnlLogo

// start class Tkw_PrimMainMenuNew_Control_pnlLogo

{$If not defined(NoScripts)}
function Tkw_PrimMainMenuNew_Control_pnlLogo.GetString: AnsiString;
 {-}
begin
 Result := 'pnlLogo';
end;//Tkw_PrimMainMenuNew_Control_pnlLogo.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Control_pnlLogo_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� pnlLogo
----
*������ �������������*:
[code]
�������::pnlLogo:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Control_pnlLogo_Push

// start class Tkw_PrimMainMenuNew_Control_pnlLogo_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimMainMenuNew_Control_pnlLogo_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('pnlLogo');
 inherited;
end;//Tkw_PrimMainMenuNew_Control_pnlLogo_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Control_pbLogo = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� pbLogo
----
*������ �������������*:
[code]
�������::pbLogo TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Control_pbLogo

// start class Tkw_PrimMainMenuNew_Control_pbLogo

{$If not defined(NoScripts)}
function Tkw_PrimMainMenuNew_Control_pbLogo.GetString: AnsiString;
 {-}
begin
 Result := 'pbLogo';
end;//Tkw_PrimMainMenuNew_Control_pbLogo.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Control_pbLogo_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� pbLogo
----
*������ �������������*:
[code]
�������::pbLogo:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Control_pbLogo_Push

// start class Tkw_PrimMainMenuNew_Control_pbLogo_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimMainMenuNew_Control_pbLogo_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('pbLogo');
 inherited;
end;//Tkw_PrimMainMenuNew_Control_pbLogo_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Control_pnlSearches = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� pnlSearches
----
*������ �������������*:
[code]
�������::pnlSearches TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Control_pnlSearches

// start class Tkw_PrimMainMenuNew_Control_pnlSearches

{$If not defined(NoScripts)}
function Tkw_PrimMainMenuNew_Control_pnlSearches.GetString: AnsiString;
 {-}
begin
 Result := 'pnlSearches';
end;//Tkw_PrimMainMenuNew_Control_pnlSearches.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Control_pnlSearches_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� pnlSearches
----
*������ �������������*:
[code]
�������::pnlSearches:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Control_pnlSearches_Push

// start class Tkw_PrimMainMenuNew_Control_pnlSearches_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimMainMenuNew_Control_pnlSearches_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('pnlSearches');
 inherited;
end;//Tkw_PrimMainMenuNew_Control_pnlSearches_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Control_flAttributeSearch = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� flAttributeSearch
----
*������ �������������*:
[code]
�������::flAttributeSearch TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Control_flAttributeSearch

// start class Tkw_PrimMainMenuNew_Control_flAttributeSearch

{$If not defined(NoScripts)}
function Tkw_PrimMainMenuNew_Control_flAttributeSearch.GetString: AnsiString;
 {-}
begin
 Result := 'flAttributeSearch';
end;//Tkw_PrimMainMenuNew_Control_flAttributeSearch.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Control_flAttributeSearch_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� flAttributeSearch
----
*������ �������������*:
[code]
�������::flAttributeSearch:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Control_flAttributeSearch_Push

// start class Tkw_PrimMainMenuNew_Control_flAttributeSearch_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimMainMenuNew_Control_flAttributeSearch_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('flAttributeSearch');
 inherited;
end;//Tkw_PrimMainMenuNew_Control_flAttributeSearch_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Control_flSitiationSearch = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� flSitiationSearch
----
*������ �������������*:
[code]
�������::flSitiationSearch TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Control_flSitiationSearch

// start class Tkw_PrimMainMenuNew_Control_flSitiationSearch

{$If not defined(NoScripts)}
function Tkw_PrimMainMenuNew_Control_flSitiationSearch.GetString: AnsiString;
 {-}
begin
 Result := 'flSitiationSearch';
end;//Tkw_PrimMainMenuNew_Control_flSitiationSearch.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Control_flSitiationSearch_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� flSitiationSearch
----
*������ �������������*:
[code]
�������::flSitiationSearch:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Control_flSitiationSearch_Push

// start class Tkw_PrimMainMenuNew_Control_flSitiationSearch_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimMainMenuNew_Control_flSitiationSearch_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('flSitiationSearch');
 inherited;
end;//Tkw_PrimMainMenuNew_Control_flSitiationSearch_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Control_flPublishedSourceSearch = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� flPublishedSourceSearch
----
*������ �������������*:
[code]
�������::flPublishedSourceSearch TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Control_flPublishedSourceSearch

// start class Tkw_PrimMainMenuNew_Control_flPublishedSourceSearch

{$If not defined(NoScripts)}
function Tkw_PrimMainMenuNew_Control_flPublishedSourceSearch.GetString: AnsiString;
 {-}
begin
 Result := 'flPublishedSourceSearch';
end;//Tkw_PrimMainMenuNew_Control_flPublishedSourceSearch.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Control_flPublishedSourceSearch_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� flPublishedSourceSearch
----
*������ �������������*:
[code]
�������::flPublishedSourceSearch:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Control_flPublishedSourceSearch_Push

// start class Tkw_PrimMainMenuNew_Control_flPublishedSourceSearch_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimMainMenuNew_Control_flPublishedSourceSearch_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('flPublishedSourceSearch');
 inherited;
end;//Tkw_PrimMainMenuNew_Control_flPublishedSourceSearch_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Control_flDictionSearch = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� flDictionSearch
----
*������ �������������*:
[code]
�������::flDictionSearch TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Control_flDictionSearch

// start class Tkw_PrimMainMenuNew_Control_flDictionSearch

{$If not defined(NoScripts)}
function Tkw_PrimMainMenuNew_Control_flDictionSearch.GetString: AnsiString;
 {-}
begin
 Result := 'flDictionSearch';
end;//Tkw_PrimMainMenuNew_Control_flDictionSearch.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Control_flDictionSearch_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� flDictionSearch
----
*������ �������������*:
[code]
�������::flDictionSearch:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Control_flDictionSearch_Push

// start class Tkw_PrimMainMenuNew_Control_flDictionSearch_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimMainMenuNew_Control_flDictionSearch_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('flDictionSearch');
 inherited;
end;//Tkw_PrimMainMenuNew_Control_flDictionSearch_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Control_pnlExpert = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� pnlExpert
----
*������ �������������*:
[code]
�������::pnlExpert TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Control_pnlExpert

// start class Tkw_PrimMainMenuNew_Control_pnlExpert

{$If not defined(NoScripts)}
function Tkw_PrimMainMenuNew_Control_pnlExpert.GetString: AnsiString;
 {-}
begin
 Result := 'pnlExpert';
end;//Tkw_PrimMainMenuNew_Control_pnlExpert.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Control_pnlExpert_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� pnlExpert
----
*������ �������������*:
[code]
�������::pnlExpert:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Control_pnlExpert_Push

// start class Tkw_PrimMainMenuNew_Control_pnlExpert_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimMainMenuNew_Control_pnlExpert_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('pnlExpert');
 inherited;
end;//Tkw_PrimMainMenuNew_Control_pnlExpert_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Control_pbExpert = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� pbExpert
----
*������ �������������*:
[code]
�������::pbExpert TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Control_pbExpert

// start class Tkw_PrimMainMenuNew_Control_pbExpert

{$If not defined(NoScripts)}
function Tkw_PrimMainMenuNew_Control_pbExpert.GetString: AnsiString;
 {-}
begin
 Result := 'pbExpert';
end;//Tkw_PrimMainMenuNew_Control_pbExpert.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Control_pbExpert_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� pbExpert
----
*������ �������������*:
[code]
�������::pbExpert:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Control_pbExpert_Push

// start class Tkw_PrimMainMenuNew_Control_pbExpert_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimMainMenuNew_Control_pbExpert_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('pbExpert');
 inherited;
end;//Tkw_PrimMainMenuNew_Control_pbExpert_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Control_pnlOnLine = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� pnlOnLine
----
*������ �������������*:
[code]
�������::pnlOnLine TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Control_pnlOnLine

// start class Tkw_PrimMainMenuNew_Control_pnlOnLine

{$If not defined(NoScripts)}
function Tkw_PrimMainMenuNew_Control_pnlOnLine.GetString: AnsiString;
 {-}
begin
 Result := 'pnlOnLine';
end;//Tkw_PrimMainMenuNew_Control_pnlOnLine.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Control_pnlOnLine_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� pnlOnLine
----
*������ �������������*:
[code]
�������::pnlOnLine:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Control_pnlOnLine_Push

// start class Tkw_PrimMainMenuNew_Control_pnlOnLine_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimMainMenuNew_Control_pnlOnLine_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('pnlOnLine');
 inherited;
end;//Tkw_PrimMainMenuNew_Control_pnlOnLine_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Control_pbOnLine = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� pbOnLine
----
*������ �������������*:
[code]
�������::pbOnLine TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Control_pbOnLine

// start class Tkw_PrimMainMenuNew_Control_pbOnLine

{$If not defined(NoScripts)}
function Tkw_PrimMainMenuNew_Control_pbOnLine.GetString: AnsiString;
 {-}
begin
 Result := 'pbOnLine';
end;//Tkw_PrimMainMenuNew_Control_pbOnLine.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Control_pbOnLine_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� pbOnLine
----
*������ �������������*:
[code]
�������::pbOnLine:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Control_pbOnLine_Push

// start class Tkw_PrimMainMenuNew_Control_pbOnLine_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimMainMenuNew_Control_pbOnLine_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('pbOnLine');
 inherited;
end;//Tkw_PrimMainMenuNew_Control_pbOnLine_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Control_pbIntranet = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� pbIntranet
----
*������ �������������*:
[code]
�������::pbIntranet TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Control_pbIntranet

// start class Tkw_PrimMainMenuNew_Control_pbIntranet

{$If not defined(NoScripts)}
function Tkw_PrimMainMenuNew_Control_pbIntranet.GetString: AnsiString;
 {-}
begin
 Result := 'pbIntranet';
end;//Tkw_PrimMainMenuNew_Control_pbIntranet.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Control_pbIntranet_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� pbIntranet
----
*������ �������������*:
[code]
�������::pbIntranet:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Control_pbIntranet_Push

// start class Tkw_PrimMainMenuNew_Control_pbIntranet_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimMainMenuNew_Control_pbIntranet_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('pbIntranet');
 inherited;
end;//Tkw_PrimMainMenuNew_Control_pbIntranet_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Control_pbCourtsOnline = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� pbCourtsOnline
----
*������ �������������*:
[code]
�������::pbCourtsOnline TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Control_pbCourtsOnline

// start class Tkw_PrimMainMenuNew_Control_pbCourtsOnline

{$If not defined(NoScripts)}
function Tkw_PrimMainMenuNew_Control_pbCourtsOnline.GetString: AnsiString;
 {-}
begin
 Result := 'pbCourtsOnline';
end;//Tkw_PrimMainMenuNew_Control_pbCourtsOnline.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Control_pbCourtsOnline_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� pbCourtsOnline
----
*������ �������������*:
[code]
�������::pbCourtsOnline:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Control_pbCourtsOnline_Push

// start class Tkw_PrimMainMenuNew_Control_pbCourtsOnline_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimMainMenuNew_Control_pbCourtsOnline_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('pbCourtsOnline');
 inherited;
end;//Tkw_PrimMainMenuNew_Control_pbCourtsOnline_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Control_hfTaxes = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� hfTaxes
----
*������ �������������*:
[code]
�������::hfTaxes TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Control_hfTaxes

// start class Tkw_PrimMainMenuNew_Control_hfTaxes

{$If not defined(NoScripts)}
function Tkw_PrimMainMenuNew_Control_hfTaxes.GetString: AnsiString;
 {-}
begin
 Result := 'hfTaxes';
end;//Tkw_PrimMainMenuNew_Control_hfTaxes.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Control_hfTaxes_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� hfTaxes
----
*������ �������������*:
[code]
�������::hfTaxes:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Control_hfTaxes_Push

// start class Tkw_PrimMainMenuNew_Control_hfTaxes_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimMainMenuNew_Control_hfTaxes_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('hfTaxes');
 inherited;
end;//Tkw_PrimMainMenuNew_Control_hfTaxes_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Control_tvTaxes = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� tvTaxes
----
*������ �������������*:
[code]
�������::tvTaxes TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Control_tvTaxes

// start class Tkw_PrimMainMenuNew_Control_tvTaxes

{$If not defined(NoScripts)}
function Tkw_PrimMainMenuNew_Control_tvTaxes.GetString: AnsiString;
 {-}
begin
 Result := 'tvTaxes';
end;//Tkw_PrimMainMenuNew_Control_tvTaxes.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Control_tvTaxes_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� tvTaxes
----
*������ �������������*:
[code]
�������::tvTaxes:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Control_tvTaxes_Push

// start class Tkw_PrimMainMenuNew_Control_tvTaxes_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimMainMenuNew_Control_tvTaxes_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('tvTaxes');
 inherited;
end;//Tkw_PrimMainMenuNew_Control_tvTaxes_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Control_pnlBanner = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� pnlBanner
----
*������ �������������*:
[code]
�������::pnlBanner TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Control_pnlBanner

// start class Tkw_PrimMainMenuNew_Control_pnlBanner

{$If not defined(NoScripts)}
function Tkw_PrimMainMenuNew_Control_pnlBanner.GetString: AnsiString;
 {-}
begin
 Result := 'pnlBanner';
end;//Tkw_PrimMainMenuNew_Control_pnlBanner.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Control_pnlBanner_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� pnlBanner
----
*������ �������������*:
[code]
�������::pnlBanner:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Control_pnlBanner_Push

// start class Tkw_PrimMainMenuNew_Control_pnlBanner_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimMainMenuNew_Control_pnlBanner_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('pnlBanner');
 inherited;
end;//Tkw_PrimMainMenuNew_Control_pnlBanner_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Control_ieBanner = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� ieBanner
----
*������ �������������*:
[code]
�������::ieBanner TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Control_ieBanner

// start class Tkw_PrimMainMenuNew_Control_ieBanner

{$If not defined(NoScripts)}
function Tkw_PrimMainMenuNew_Control_ieBanner.GetString: AnsiString;
 {-}
begin
 Result := 'ieBanner';
end;//Tkw_PrimMainMenuNew_Control_ieBanner.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Control_ieBanner_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� ieBanner
----
*������ �������������*:
[code]
�������::ieBanner:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Control_ieBanner_Push

// start class Tkw_PrimMainMenuNew_Control_ieBanner_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimMainMenuNew_Control_ieBanner_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('ieBanner');
 inherited;
end;//Tkw_PrimMainMenuNew_Control_ieBanner_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Control_hfLastOpenDocsRightEdge = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� hfLastOpenDocsRightEdge
----
*������ �������������*:
[code]
�������::hfLastOpenDocsRightEdge TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Control_hfLastOpenDocsRightEdge

// start class Tkw_PrimMainMenuNew_Control_hfLastOpenDocsRightEdge

{$If not defined(NoScripts)}
function Tkw_PrimMainMenuNew_Control_hfLastOpenDocsRightEdge.GetString: AnsiString;
 {-}
begin
 Result := 'hfLastOpenDocsRightEdge';
end;//Tkw_PrimMainMenuNew_Control_hfLastOpenDocsRightEdge.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Control_hfLastOpenDocsRightEdge_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� hfLastOpenDocsRightEdge
----
*������ �������������*:
[code]
�������::hfLastOpenDocsRightEdge:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Control_hfLastOpenDocsRightEdge_Push

// start class Tkw_PrimMainMenuNew_Control_hfLastOpenDocsRightEdge_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimMainMenuNew_Control_hfLastOpenDocsRightEdge_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('hfLastOpenDocsRightEdge');
 inherited;
end;//Tkw_PrimMainMenuNew_Control_hfLastOpenDocsRightEdge_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Component_ilButtons = class(TtfwControlString)
   {* ����� ������� ��� �������������� ���������� ilButtons
----
*������ �������������*:
[code]
���������::ilButtons TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Component_ilButtons

// start class Tkw_PrimMainMenuNew_Component_ilButtons

{$If not defined(NoScripts)}
function Tkw_PrimMainMenuNew_Component_ilButtons.GetString: AnsiString;
 {-}
begin
 Result := 'ilButtons';
end;//Tkw_PrimMainMenuNew_Component_ilButtons.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenuNew_Component_ieIO = class(TtfwControlString)
   {* ����� ������� ��� �������������� ���������� ieIO
----
*������ �������������*:
[code]
���������::ieIO TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenuNew_Component_ieIO

// start class Tkw_PrimMainMenuNew_Component_ieIO

{$If not defined(NoScripts)}
function Tkw_PrimMainMenuNew_Component_ieIO.GetString: AnsiString;
 {-}
begin
 Result := 'ieIO';
end;//Tkw_PrimMainMenuNew_Component_ieIO.GetString
{$IfEnd} //not NoScripts

procedure TPrimMainMenuNewForm.BaseSearchPanelResize(aSender: TObject);
//#UC START# *4ACB20380272_4958E1F700C0_var*
//#UC END# *4ACB20380272_4958E1F700C0_var*
begin
//#UC START# *4ACB20380272_4958E1F700C0_impl*
 pnlBaseSearchZone.Height := pnlBaseSearch.Height {- 7{20};
 pnlBaseSearchZone.Width := pnlBaseSearch.Width - 30;
//#UC END# *4ACB20380272_4958E1F700C0_impl*
end;//TPrimMainMenuNewForm.BaseSearchPanelResize

procedure TPrimMainMenuNewForm.PaintLogo(aSender: TObject);
//#UC START# *4ACB3E8A0021_4958E1F700C0_var*
//#UC END# *4ACB3E8A0021_4958E1F700C0_var*
begin
//#UC START# *4ACB3E8A0021_4958E1F700C0_impl*
 nsPaintImage(dmStdRes.ilLogo, pbLogo);
//#UC END# *4ACB3E8A0021_4958E1F700C0_impl*
end;//TPrimMainMenuNewForm.PaintLogo

procedure TPrimMainMenuNewForm.PaintButton(aSender: TObject);
//#UC START# *4ACB4FA400D0_4958E1F700C0_var*
//#UC END# *4ACB4FA400D0_4958E1F700C0_var*
begin
//#UC START# *4ACB4FA400D0_4958E1F700C0_impl*
 if (aSender = pbExpert) then
 begin
  if (afw.Application.LocaleInfo.Language = afw_lngEnglish) then
   nsPaintImage(ilButtons, pbExpert, 2)
  else
   nsPaintImage(ilButtons, pbExpert, 0)
 end//aSender = pbExpert
 else
 if (aSender = pbOnLine) then
 begin
  if (afw.Application.LocaleInfo.Language = afw_lngEnglish) then
  begin
   if defDataAdapter.IsInternetAgentEnabled then
    nsPaintImage(ilButtons, pbOnLine, 3)
   else
    nsPaintImage(ilButtons, pbOnLine, 6);
  end//afw.Application.LocaleInfo.Language = afw_lngEnglish
  else
  begin
   if defDataAdapter.IsInternetAgentEnabled then
    nsPaintImage(ilButtons, pbOnLine, 1)
   else
    nsPaintImage(ilButtons, pbOnLine, 5);
  end;//afw.Application.LocaleInfo.Language = afw_lngEnglish
 end//aSender = pbOnLine
 else
 if (aSender = pbCourtsOnline) then
 begin
  if pbCourtsOnline.Visible then
  begin
   if (afw.Application.LocaleInfo.Language = afw_lngEnglish) then
   begin
    if defDataAdapter.IsInternetAgentEnabled then
     nsPaintImage(ilButtons, pbCourtsOnline, 8)
    else
     nsPaintImage(ilButtons, pbCourtsOnline, 10);
   end//afw.Application.LocaleInfo.Language = afw_lngEnglish
   else
   begin
    if defDataAdapter.IsInternetAgentEnabled then
     nsPaintImage(ilButtons, pbCourtsOnline, 7)
    else
     nsPaintImage(ilButtons, pbCourtsOnline, 9);
   end;//afw.Application.LocaleInfo.Language = afw_lngEnglish
  end;//pbCourtsOnline.Visible
 end//aSender = pbCourtsOnline
 else
 if (aSender = pbIntranet) then
 begin
  if pbIntranet.Visible then
   nsPaintImage(ilButtons, pbIntranet, 4);
 end;//aSender = pbIntranet
//#UC END# *4ACB4FA400D0_4958E1F700C0_impl*
end;//TPrimMainMenuNewForm.PaintButton

procedure TPrimMainMenuNewForm.ExpertClick(aSender: TObject);
//#UC START# *4ACB540E01CC_4958E1F700C0_var*
//#UC END# *4ACB540E01CC_4958E1F700C0_var*
begin
//#UC START# *4ACB540E01CC_4958E1F700C0_impl*
 TdmStdRes.OpenSendConsultation(nil);
//#UC END# *4ACB540E01CC_4958E1F700C0_impl*
end;//TPrimMainMenuNewForm.ExpertClick

procedure TPrimMainMenuNewForm.OnLineClick(aSender: TObject);
//#UC START# *4ACB542C0039_4958E1F700C0_var*
//#UC END# *4ACB542C0039_4958E1F700C0_var*
begin
//#UC START# *4ACB542C0039_4958E1F700C0_impl*
 vcmDispatcher.ModuleOperation(TdmStdRes.mod_opcode_InternetAgent_InternetAgent);
//#UC END# *4ACB542C0039_4958E1F700C0_impl*
end;//TPrimMainMenuNewForm.OnLineClick

procedure TPrimMainMenuNewForm.SearchClick(aSender: TObject);
//#UC START# *4ACB8B7B0192_4958E1F700C0_var*
//#UC END# *4ACB8B7B0192_4958E1F700C0_var*
begin
//#UC START# *4ACB8B7B0192_4958E1F700C0_impl*
 if (aSender = flAttributeSearch) then
  TdmStdRes.OpenQuery(lg_qtAttribute, nil)
 else
 if (aSender = flSitiationSearch) then
  TdmStdRes.OpenQuery(lg_qtKeyWord, nil)
 else
 if (aSender = flPublishedSourceSearch) then
  TdmStdRes.OpenQuery(lg_qtPublishedSource, nil)
 else
 if (aSender = flDictionSearch) then
  TdmStdRes.OpenDictionary(nil, NativeMainForm)
 else
  Assert(false);
//#UC END# *4ACB8B7B0192_4958E1F700C0_impl*
end;//TPrimMainMenuNewForm.SearchClick

procedure TPrimMainMenuNewForm.LoadBanner;
//#UC START# *4ACDC1AE00C1_4958E1F700C0_var*
//#UC END# *4ACDC1AE00C1_4958E1F700C0_var*
var
 l_EO : IExternalObject;
 l_Stream : TStream;
 l_Name : IString;
begin
//#UC START# *4ACDC1AE00C1_4958E1F700C0_impl*
 with ieIO do
 begin
  Background := clWhite;
  AttachedImageEn := ieBanner;
 end;//ieIO
 try
  DefDataAdapter.CommonInterfaces.GetBanner(f_Banner);
 except
  on ECannotFindData do
  begin
   ieBanner.Cursor := crArrow;
   Exit;
  end;//on ECannotFindData
 end;//try..except
 if (f_Banner <> nil) then
 begin
  f_Banner.GetPicture(l_EO);
  if (l_EO <> nil) then
  begin
   l_Stream := TnsExternalObjectStream.Create(l_EO);
   try
    ieIO.LoadFromStream(l_Stream);
    ieBanner.AutoFit := (ieIO.Params.Width <> ieBanner.Width) or
                        (ieIO.Params.Height <> ieBanner.Height);
   finally
    FreeAndNil(l_Stream);
   end;//try..finally
   l_EO.GetName(l_Name);
   if (l_Name <> nil) then
   begin
    ieBanner.Hint := l3Str(nsCStr(l_Name));
    ieBanner.ShowHint := true;
   end//l_Name <> nil
   else
    ieBanner.Hint := '';
  end;//l_EO <> nil
 end;//f_Banner <> nil
//#UC END# *4ACDC1AE00C1_4958E1F700C0_impl*
end;//TPrimMainMenuNewForm.LoadBanner

procedure TPrimMainMenuNewForm.BannerClick(aSender: TObject);
//#UC START# *4ACF0DEC02DE_4958E1F700C0_var*
//#UC END# *4ACF0DEC02DE_4958E1F700C0_var*
var
 l_Link : IExternalLink;
 l_Entity : IEntityBase;
 l_Ref : IUnknown;
begin
//#UC START# *4ACF0DEC02DE_4958E1F700C0_impl*
 if (f_Banner <> nil) then
 begin
  f_Banner.OpenLink(l_Ref);
  if (l_Ref <> nil) then
  begin
   if Supports(l_Ref, IExternalLink, l_Link) then
    try
     nsExecuteExternalLink(l_Link);
    finally
     l_Link := nil;
    end//try..finally
   else
   if Supports(l_Ref, IEntityBase, l_Entity) then
    try
     TdmStdRes.OpenEntityAsDocument(l_Entity, NativeMainForm);
    finally
     l_Entity := nil;
    end//try..finally
  end;//l_Ref <> nil
 end;//f_Banner <> nil
//#UC END# *4ACF0DEC02DE_4958E1F700C0_impl*
end;//TPrimMainMenuNewForm.BannerClick

procedure TPrimMainMenuNewForm.UpdateBaseSearchFormHeight(aForm: TForm);
//#UC START# *4AD59B1E0158_4958E1F700C0_var*
//#UC END# *4AD59B1E0158_4958E1F700C0_var*
begin
//#UC START# *4AD59B1E0158_4958E1F700C0_impl*
 if (Max(80 + 13, aForm.Height) <> pnlBaseSearchZone.Height) then
 begin
  pnlBaseSearchZone.Height := Max(80 + 13, aForm.Height);
  pnlBaseSearch.Height := pnlBaseSearchZone.Height {+ 7{20};
  RecalcGrid;
 end;//aForm.Height <> pnlBaseSearchZone.Height
//#UC END# *4AD59B1E0158_4958E1F700C0_impl*
end;//TPrimMainMenuNewForm.UpdateBaseSearchFormHeight

procedure TPrimMainMenuNewForm.BaseSearchFormResize(aSender: TObject);
//#UC START# *4AD59B4B0223_4958E1F700C0_var*
//#UC END# *4AD59B4B0223_4958E1F700C0_var*
begin
//#UC START# *4AD59B4B0223_4958E1F700C0_impl*
 UpdateBaseSearchFormHeight(aSender As TForm);
//#UC END# *4AD59B4B0223_4958E1F700C0_impl*
end;//TPrimMainMenuNewForm.BaseSearchFormResize

procedure TPrimMainMenuNewForm.ReferencesResize(aSender: TObject);
//#UC START# *4AF972C9034E_4958E1F700C0_var*
//#UC END# *4AF972C9034E_4958E1F700C0_var*
begin
//#UC START# *4AF972C9034E_4958E1F700C0_impl*
 pbExpert.Top := tvReferences.Top + Max(tvReferences.CalcFullHeight - pbExpert.Height, 0); 
//#UC END# *4AF972C9034E_4958E1F700C0_impl*
end;//TPrimMainMenuNewForm.ReferencesResize

procedure TPrimMainMenuNewForm.UpdateSearchLabels;
//#UC START# *4B716B8502F1_4958E1F700C0_var*
//#UC END# *4B716B8502F1_4958E1F700C0_var*
begin
//#UC START# *4B716B8502F1_4958E1F700C0_impl*
 flSitiationSearch.Visible := Assigned(defDataAdapter) and defDataAdapter.IsExists_KeyWordTag;
 with flPublishedSourceSearch do
 begin
  if flSitiationSearch.Visible then
   Left := c_SearchLabelDistance + flSitiationSearch.Left + flSitiationSearch.Width
  else
   Left := c_SearchLabelDistance + flAttributeSearch.Left + flAttributeSearch.Width;
  Visible := Assigned(defDataAdapter) and defDataAdapter.IsExists_PublishSourceTag;
 end;//flPublishedSourceSearch
 with flDictionSearch do
 begin
  if flPublishedSourceSearch.Visible then
   Left := c_SearchLabelDistance + flPublishedSourceSearch.Left + flPublishedSourceSearch.Width
  else
   if flSitiationSearch.Visible then
    Left := c_SearchLabelDistance + flSitiationSearch.Left + flSitiationSearch.Width
   else
    Left := c_SearchLabelDistance + flAttributeSearch.Left + flAttributeSearch.Width;
  Visible := Assigned(defDataAdapter) and DefDataAdapter.IsExplanatoryExists;
 end;//flDictionSearch
//#UC END# *4B716B8502F1_4958E1F700C0_impl*
end;//TPrimMainMenuNewForm.UpdateSearchLabels

procedure TPrimMainMenuNewForm.IntranetClick(aSender: TObject);
//#UC START# *4BF242E40213_4958E1F700C0_var*
//#UC END# *4BF242E40213_4958E1F700C0_var*
begin
//#UC START# *4BF242E40213_4958E1F700C0_impl*
 vcmDispatcher.ModuleOperation(TdmStdRes.mod_opcode_Common_OpenIntranet);
//#UC END# *4BF242E40213_4958E1F700C0_impl*
end;//TPrimMainMenuNewForm.IntranetClick

procedure TPrimMainMenuNewForm.TaxesStateChanged(aSender: TObject;
  var theState: ThfState);
//#UC START# *4E733318014A_4958E1F700C0_var*
//#UC END# *4E733318014A_4958E1F700C0_var*
begin
//#UC START# *4E733318014A_4958E1F700C0_impl*
 theState := hfsShow;
 TaxesNextTree(aSender);
//#UC END# *4E733318014A_4958E1F700C0_impl*
end;//TPrimMainMenuNewForm.TaxesStateChanged

procedure TPrimMainMenuNewForm.UpdateTaxesTree;
//#UC START# *4E73342B0318_4958E1F700C0_var*
//#UC END# *4E73342B0318_4958E1F700C0_var*
begin
//#UC START# *4E73342B0318_4958E1F700C0_impl*
 UpdateTaxesTreeCaption;
 tvTaxes.TreeStruct := TsmChangeableTree.Make(f_CurrentSection);
//#UC END# *4E73342B0318_4958E1F700C0_impl*
end;//TPrimMainMenuNewForm.UpdateTaxesTree

procedure TPrimMainMenuNewForm.TaxesNextTree(aSender: TObject);
//#UC START# *4E73346C032A_4958E1F700C0_var*
//#UC END# *4E73346C032A_4958E1F700C0_var*
begin
//#UC START# *4E73346C032A_4958E1F700C0_impl*
 Inc(f_CurrentSection);
 if (f_CurrentSection = Pred(High(f_CurrentSection))) then
  f_CurrentSection := Low(f_CurrentSection);
 TdmStdRes.WriteMainMenuChangeableMainMenuTypeSetting(Ord(f_CurrentSection));
 UpdateTaxesTree;
//#UC END# *4E73346C032A_4958E1F700C0_impl*
end;//TPrimMainMenuNewForm.TaxesNextTree

procedure TPrimMainMenuNewForm.UpdateTaxesTreeCaption;
//#UC START# *4E73634801A2_4958E1F700C0_var*
var
 l_Sect : ISection;
 l_S : IString;
//#UC END# *4E73634801A2_4958E1F700C0_var*
begin
//#UC START# *4E73634801A2_4958E1F700C0_impl*
 DefDataAdapter.NativeAdapter.MakeMainMenu.GetSection(f_CurrentSection, l_Sect);
 Assert(l_Sect <> nil);
 l_Sect.GetCaption(l_S);
 Assert(l_S <> nil);
 hfTaxes.Caption := l3Str(nsCStr(l_S));
//#UC END# *4E73634801A2_4958E1F700C0_impl*
end;//TPrimMainMenuNewForm.UpdateTaxesTreeCaption

procedure TPrimMainMenuNewForm.UpdateReferencesAndLawNewsCaptions;
//#UC START# *4EA008B300DF_4958E1F700C0_var*
var
 l_Sect : ISection;
 l_S : IString;
//#UC END# *4EA008B300DF_4958E1F700C0_var*
begin
//#UC START# *4EA008B300DF_4958E1F700C0_impl*
 // begin http://mdp.garant.ru/pages/viewpage.action?pageId=294590319&focusedCommentId=294596544#comment-294596544
 DefDataAdapter.NativeAdapter.MakeMainMenu.GetSection(ST_BUSINESS_REFERENCES, l_Sect);
 Assert(l_Sect <> nil);
 try
  l_Sect.GetCaption(l_S);
 finally
  l_Sect := nil
 end;//try..finally
 Assert(l_S <> nil);
 try
  hfReferences.Caption := l3Str(nsCStr(l_S));
 finally
  l_S := nil;
 end;//try..finally

 DefDataAdapter.NativeAdapter.MakeMainMenu.GetSection(ST_CHANGES_IN_LEGISLATION, l_Sect);
 Assert(l_Sect <> nil);
 try
  l_Sect.GetCaption(l_S);
 finally
  l_Sect := nil
 end;//try..finally
 Assert(l_S <> nil);
 try
  hfLawNews.Caption := l3Str(nsCStr(l_S));
 finally
  l_S := nil;
 end;//try..finally
 // end http://mdp.garant.ru/pages/viewpage.action?pageId=294590319&focusedCommentId=294596544#comment-294596544
//#UC END# *4EA008B300DF_4958E1F700C0_impl*
end;//TPrimMainMenuNewForm.UpdateReferencesAndLawNewsCaptions

procedure TPrimMainMenuNewForm.CourtsOnlineClick(aSender: TObject);
//#UC START# *4F7451F501DB_4958E1F700C0_var*
var
 l_IS : IString;
//#UC END# *4F7451F501DB_4958E1F700C0_var*
begin
//#UC START# *4F7451F501DB_4958E1F700C0_impl*
 if defDataAdapter.IsInternetAgentEnabled then
 begin
  DefDataAdapter.NativeAdapter.MakeDecisionsArchiveSupport.GetArchiveUrl(l_IS);
  nsDoShellExecute(nsCStr(l_IS),
                   false, nil, true
                   // http://mdp.garant.ru/pages/viewpage.action?pageId=360023614
                  );
 end;
//#UC END# *4F7451F501DB_4958E1F700C0_impl*
end;//TPrimMainMenuNewForm.CourtsOnlineClick

function TPrimMainMenuNewForm.pm_GetIlButtons: TvtNonFixedPngImageList;
begin
 if (f_ilButtons = nil) then
  f_ilButtons := FindComponent('ilButtons') As TvtNonFixedPngImageList;
 Result := f_ilButtons;
end;

function TPrimMainMenuNewForm.DoBuildGrid: InscArrangeGrid;
//#UC START# *4AC9B6D00250_4958E1F700C0_var*
//#UC END# *4AC9B6D00250_4958E1F700C0_var*
begin
//#UC START# *4AC9B6D00250_4958E1F700C0_impl*
 Result := TnscArrangeGrid.Make(false{true}, true);
 with Result do
 begin
  AddColumn.FixedWidth := pnlLogo.Width;
  AddColumn;
  AddColumn;
  AddRow;
  AddRow;
  AddRow;
  AddRow;
  Cell[0, 1] := TnscHideFieldCell.Make(hfLawNews, true);
  Cell[0, 2] := TnscFixedHeightControlCell.Make(pnlBanner);
  Cell[1, 0] := TnscFixedWidthControlCell.Make(pnlLogo);
  Cell[3, 0] := TnscFixedWidthControlCell.Make(pnlExpert);
  Cell[3, 1] := TnscHideFieldCell.Make(hfReferences, true);
  Cell[3, 2] := TnscHideFieldCell.Make(hfTaxes, true);
  Cell[4, 0] := TnscFixedWidthControlCell.Make(pnlOnLine);
  MergeCells(1, 1, 2, TnscFixedHeightControlCell.Make(pnlBaseSearch));
  MergeCells(2, 1, 2, TnscFixedHeightControlCell.Make(pnlSearches));
  MergeCells(4, 1, 2, TnscHideFieldCell.Make(hfLastOpenDocs, true));
 end;//with Result do
//#UC END# *4AC9B6D00250_4958E1F700C0_impl*
end;//TPrimMainMenuNewForm.DoBuildGrid

procedure TPrimMainMenuNewForm.Cleanup;
//#UC START# *479731C50290_4958E1F700C0_var*
//#UC END# *479731C50290_4958E1F700C0_var*
begin
//#UC START# *479731C50290_4958E1F700C0_impl*
 f_Banner := nil;
 inherited;
//#UC END# *479731C50290_4958E1F700C0_impl*
end;//TPrimMainMenuNewForm.Cleanup

procedure TPrimMainMenuNewForm.InitFields;
//#UC START# *47A042E100E2_4958E1F700C0_var*
//#UC END# *47A042E100E2_4958E1F700C0_var*
begin
//#UC START# *47A042E100E2_4958E1F700C0_impl*
 inherited;
//#UC END# *47A042E100E2_4958E1F700C0_impl*
end;//TPrimMainMenuNewForm.InitFields

procedure TPrimMainMenuNewForm.FinishDataUpdate;
//#UC START# *47EA4E9002C6_4958E1F700C0_var*
//#UC END# *47EA4E9002C6_4958E1F700C0_var*
begin
//#UC START# *47EA4E9002C6_4958E1F700C0_impl*
 inherited;
 UpdateSearchLabels;
 UpdateReferencesAndLawNewsCaptions;
 UpdateTaxesTreeCaption;
//#UC END# *47EA4E9002C6_4958E1F700C0_impl*
end;//TPrimMainMenuNewForm.FinishDataUpdate

{$If not defined(NoVCM)}
procedure TPrimMainMenuNewForm.DoInit(aFromHistory: Boolean);
//#UC START# *49803F5503AA_4958E1F700C0_var*
//#UC END# *49803F5503AA_4958E1F700C0_var*
begin
//#UC START# *49803F5503AA_4958E1F700C0_impl*
 f_CurrentSection := TSectionType(TdmStdRes.MainMenuChangeableMainMenuTypeSetting);
 UpdateTaxesTreeCaption;
 inherited;
 LoadBanner;
//#UC END# *49803F5503AA_4958E1F700C0_impl*
end;//TPrimMainMenuNewForm.DoInit
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
procedure TPrimMainMenuNewForm.InitControls;
//#UC START# *4A8E8F2E0195_4958E1F700C0_var*
var
 l_Index : Integer;
//#UC END# *4A8E8F2E0195_4958E1F700C0_var*
begin
//#UC START# *4A8E8F2E0195_4958E1F700C0_impl*
 inherited;
 for l_Index := 0 to Pred(ComponentCount) do
  if (Components[l_Index] is TnscHideField) then
  begin
   TnscHideField(Components[l_Index]).StyleId := f1_saNewSchoolMainMenuHeader;
   TnscHideField(Components[l_Index]).HeaderImage := -1;
   TnscHideField(Components[l_Index]).TabStop := false;
  end//Components[l_Index] is TnscHideField
  else
  if (Components[l_Index] is TnscTreeView) then
  begin
   TnscTreeView(Components[l_Index]).TreatDefaultColorAsWindowColor := False;
   TnscTreeView(Components[l_Index]).StyleID := f1_saNewSchoolMainMenuConstPath;
   TnscTreeView(Components[l_Index]).Color := clWhite;
  end;
 with pnlBaseSearch do
 begin
  Height := 100;
  BevelInner := bvNone;
  BevelOuter := bvNone;
  OnResize := BaseSearchPanelResize;
  Color := clWhite;
 end;//with pnlBaseSearch
 with pnlBaseSearchZone do
 begin
  Top := 10;
  Left := 15;
  BevelInner := bvNone;
  BevelOuter := bvNone;
  Color := clWhite;
 end;//with pnlBaseSearchZone
 with pnlSearches do
 begin
  Height := 20;
  BevelInner := bvNone;
  BevelOuter := bvNone;
  Color := clWhite;
 end;//with pnlSearches
 with pnlLogo do
 begin
  Height := 100;
  Width := 235;
  BevelInner := bvNone;
  BevelOuter := bvNone;
  Color := clWhite;
 end;//with pnlLogo
 with pbLogo do
 begin
  Top := 0;
  Left := 15;
  Width := pnlLogo.Width - 30;
  Height := pnlLogo.Height;
  OnPaint := Self.PaintLogo;
 end;//with pbLogo
 with hfLawNews do
 begin
  Height := 140;
  Width := 390;
  TopHeaderIndent := 20;
 end;//with hfLawNews
 with hfReferences do
 begin
  Height := 150;
  Width := hfLawNews.Width;
  TopHeaderIndent := 20;
 end;//with hfReferences
 with hfTaxes do
 begin
  Height := hfReferences.Height;
  Width := 380;
  ClientIndent := 15;
  LeftHeaderIndent := 15;
  TopHeaderIndent := 20;
  ClientControl := tvTaxes;
  //Options := [];
  Options := [hfoCanHide, hfoHyperlink];
  ButtonImageList := nsDocumentRes.MainMenuImageList{CommentsImageList};
  if afw.Application.LocaleInfo.Language = afw_lngEnglish then
  begin
   ButtonOpenImage := 1;
   ButtonCloseImage := 1;
  end else
  begin
   ButtonOpenImage := 0;
   ButtonCloseImage := 0;
  end;
  OnValidateStateChanged := TaxesStateChanged;
  OnHyperlinkClick := TaxesNextTree;
 end;//with hfTaxes
 with tvTaxes do
 begin
  Width := 380;
  Align := alClient;
  BorderStyle := bsNone;
  MultiStrokeItem := True;
  ActionElementMode := l3_amSingleClick;
  ViewOptions := [voShowIcons, voShowExpandable, voWithoutImages];
  ClearTreeStructOnSaveState := False;
  AllowTrucking := True;
 end;//with tvTaxes
 with hfLastOpenDocs do
 begin
  TopHeaderIndent := 30;
  ClientControl := tvLastOpenDocs;
 end;//hfLastOpenDocs
 with pnlExpert do
 begin
  Height := hfReferences.Height;
  Width := pnlLogo.Width;
  BevelInner := bvNone;
  BevelOuter := bvNone;
  Color := clWhite;
 end;//pnlExpert
 with pnlOnLine do
 begin
  Height := hfLastOpenDocs.Height;
  Width := pnlLogo.Width;
  BevelInner := bvNone;
  BevelOuter := bvNone;
  Color := clWhite;
 end;//pnlOnLine
 with pbExpert do
 begin
  Left := 20;
  Top := 70;
  Height := ilButtons.Height + 1;
  Width := Parent.Width - 40;
  OnPaint := Self.PaintButton;
  OnClick := ExpertClick;
  Cursor := crHandPoint;
 end;//with pbExpert
 with pbOnLine do
 begin
  Left := 20;
  Top := 35;
  Height := ilButtons.Height + 1;
  Width := Parent.Width - 40;
  OnPaint := Self.PaintButton;
  OnClick := OnLineClick;
  Cursor := crHandPoint;
 end;//with pbOnLine
 with pbCourtsOnline do
  //if true then
  if Assigned(defDataAdapter) and
     DefDataAdapter.NativeAdapter.MakeDecisionsArchiveSupport.ArchiveAvailable then
  //if Assigned(defDataAdapter) and defDataAdapter.RevisionCheckEnabled then
  begin
   Left := 20;
   Top := 35 + pbOnLine.Top + pbOnLine.Height;
   Height := ilButtons.Height + 1;
   pnlOnLine.Height := Max(pnlOnLine.Height, Top + Height);
   Width := Parent.Width - 40;                                           
   OnPaint := Self.PaintButton;
   OnClick := CourtsOnlineClick;
   Cursor := crHandPoint;
  end//Assigned(defDataAdapter) and defDataAdapter.RevisionCheckEnabled
  else
  begin
   Left := 0;
   Top := 0;
   Height := 0;
   Width := 0;
   Visible := False;
  end;//with pbCourtsOnline
 with pbIntranet do
  if Assigned(defDataAdapter) and
     defDataAdapter.RevisionCheckEnabled and
     (DefDataAdapter.CommonInterfaces.GetProductType = PT_SUPERMOBILE) then
  begin
   Left := 20;
   if pbCourtsOnline.Visible then
    Top := 35 + pbCourtsOnline.Top + pbCourtsOnline.Height
   else
    Top := 35 + pbOnline.Top + pbOnline.Height;
   Height := ilButtons.Height + 1;
   pnlOnLine.Height := Max(pnlOnLine.Height, Top + Height);
   Width := Parent.Width - 40;
   OnPaint := Self.PaintButton;
   OnClick := IntranetClick;
   Cursor := crHandPoint;
  end//Assigned(defDataAdapter) and defDataAdapter.RevisionCheckEnabled
  else
  begin
   Left := 0;
   Top := 0;
   Height := 0;
   Width := 0;
   Visible := False;
  end;//Assigned(defDataAdapter) and defDataAdapter.RevisionCheckEnabled
 with flAttributeSearch do
 begin
  Left := 15;
  AutoWidth := true;
  AllowTrucking := true;
  HighlightColor := c_MainMenuColor;
  TextColor := c_MainMenuColor;
  Cursor := crHandPoint;
  OnClick := SearchClick;
 end;//flAttributeSearch
 with flSitiationSearch do
 begin
  Left := c_SearchLabelDistance + flAttributeSearch.Left + flAttributeSearch.Width;
  AutoWidth := true;
  AllowTrucking := true;
  HighlightColor := c_MainMenuColor;
  TextColor := c_MainMenuColor;
  Cursor := crHandPoint;
  OnClick := SearchClick;
 end;//flSitiationSearch
 with flPublishedSourceSearch do
 begin
  Left := c_SearchLabelDistance + flSitiationSearch.Left + flSitiationSearch.Width;
  AutoWidth := true;
  AllowTrucking := true;
  HighlightColor := c_MainMenuColor;
  TextColor := c_MainMenuColor;
  Cursor := crHandPoint;
  OnClick := SearchClick;
 end;//flPublishedSourceSearch
 with flDictionSearch do
 begin
  Left := c_SearchLabelDistance + flPublishedSourceSearch.Left + flPublishedSourceSearch.Width;
  AutoWidth := true;
  AllowTrucking := true;
  HighlightColor := c_MainMenuColor;
  TextColor := c_MainMenuColor;
  Cursor := crHandPoint;
  OnClick := SearchClick;
 end;//flDictionSearch
 UpdateSearchLabels;
 with pnlBanner do
 begin
  Height := hfLawNews.Height;
  BevelInner := bvNone;
  BevelOuter := bvNone;
  Color := clWhite;
 end;//pnlBanner
 with ieBanner do
 begin
  Top := 20;
  Left := 10;
  Width := 310;
  Height := 90;
  Cursor := crHandPoint;
  BorderStyle := bsNone;
  LegacyBitmap := False;
  ZoomFilter := rfLanczos3;
  MouseInteract := [miScroll];
  DelayZoomFilter := True;
  AutoFit := false;
  OnClick := BannerClick;
  MouseWheelParams.Action := iemwNone;
 end;//ieBanner
 with hfLastOpenDocsRightEdge do
 begin
  BevelInner := bvNone;
  BevelOuter := bvNone;
  Color := clWhite;
  Align := alRight;
  Width := 80;
 end;//with hfLastOpenDocsRightEdge
 with tvReferences do
 begin
  OnResize := ReferencesResize;
  AllowTrucking := true;
 end;
 tvLawNews.AllowTrucking := true;
 tvLastOpenDocs.AllowTrucking := true;
//#UC END# *4A8E8F2E0195_4958E1F700C0_impl*
end;//TPrimMainMenuNewForm.InitControls
{$IfEnd} //not NoVCM

procedure TPrimMainMenuNewForm.DoInitKeyboardNavigation(const aTable: InscTabTable);
//#UC START# *4AC9CB8B01D3_4958E1F700C0_var*
//#UC END# *4AC9CB8B01D3_4958E1F700C0_var*
begin
//#UC START# *4AC9CB8B01D3_4958E1F700C0_impl*
 hfLawNews.TabOrder := 0;
 pnlBaseSearch.TabOrder := 1;
 pnlSearches.TabOrder := 2;
 hfReferences.TabOrder := 3;
 hfTaxes.TabOrder := 4;
 hfLastOpenDocs.TabOrder := 5;
 with aTable.AddColumn do
 begin
  AddItem(TnscTreeViewTabCell.Make(tvLawNews));
  AddItem(TnscTreeViewTabCell.Make(tvReferences));
  AddItem(TnscTreeViewTabCell.Make(tvLastOpenDocs));
 end;//with aTable.AddItem do
 with aTable.AddColumn do
 begin
  AddItem(TnscTreeViewTabCell.Make(tvTaxes));
 end;//with aTable.AddItem do
//#UC END# *4AC9CB8B01D3_4958E1F700C0_impl*
end;//TPrimMainMenuNewForm.DoInitKeyboardNavigation

procedure TPrimMainMenuNewForm.LoadLastOpenDocs;
//#UC START# *4AC9D12600E0_4958E1F700C0_var*
//#UC END# *4AC9D12600E0_4958E1F700C0_var*
begin
//#UC START# *4AC9D12600E0_4958E1F700C0_impl*
 tvLastOpenDocs.TreeStruct := TnsLastOpenDocTree.Make(
  afw.Settings.LoadInteger(pi_RecentlyOpenDocumentsCount, dv_RecentlyOpenDocumentsCount),
  False, true);
//#UC END# *4AC9D12600E0_4958E1F700C0_impl*
end;//TPrimMainMenuNewForm.LoadLastOpenDocs

procedure TPrimMainMenuNewForm.LoadTrees;
//#UC START# *4AC9E9EC0064_4958E1F700C0_var*
//#UC END# *4AC9E9EC0064_4958E1F700C0_var*
begin
//#UC START# *4AC9E9EC0064_4958E1F700C0_impl*
 inherited;
 //tvTaxes.TreeStruct := TsmTaxes.Make;
 UpdateTaxesTree;
 UpdateReferencesAndLawNewsCaptions;
//#UC END# *4AC9E9EC0064_4958E1F700C0_impl*
end;//TPrimMainMenuNewForm.LoadTrees

function TPrimMainMenuNewForm.pm_GetContainerForBaseSearch: IvcmContainer;
//#UC START# *4ACA197F0147_4958E1F700C0get_var*
//#UC END# *4ACA197F0147_4958E1F700C0get_var*
begin
//#UC START# *4ACA197F0147_4958E1F700C0get_impl*
 Result := Self;
//#UC END# *4ACA197F0147_4958E1F700C0get_impl*
end;//TPrimMainMenuNewForm.pm_GetContainerForBaseSearch

function TPrimMainMenuNewForm.NewSchool: Boolean;
//#UC START# *4ACB2F98002B_4958E1F700C0_var*
//#UC END# *4ACB2F98002B_4958E1F700C0_var*
begin
//#UC START# *4ACB2F98002B_4958E1F700C0_impl*
 Result := true;
//#UC END# *4ACB2F98002B_4958E1F700C0_impl*
end;//TPrimMainMenuNewForm.NewSchool

procedure TPrimMainMenuNewForm.DoRecalcGrid(const aGrid: InscArrangeGrid);
//#UC START# *4AD3468102DB_4958E1F700C0_var*
//#UC END# *4AD3468102DB_4958E1F700C0_var*
begin
//#UC START# *4AD3468102DB_4958E1F700C0_impl*
 inherited;
 with aGrid do
 begin
  Cell[0, 2].MinHeight := Max(140, ieBanner.Top * 2 + ieBanner.Height);
  Row[1].FixedHeight := pnlBaseSearch.Height;
  Row[2].FixedHeight := pnlSearches.Height;
  Cell[2, 0].MinHeight := 100;
  Cell[2, 1].MinWidth := (flDictionSearch.Left + flDictionSearch.Width) - {150}47;
  Cell[3, 0].MinHeight := 150;
  Cell[4, 0].MinHeight := pnlOnLine.Height + 10;
(*  if Assigned(defDataAdapter) and defDataAdapter.RevisionCheckEnabled then
   Cell[4, 0].MinHeight := 200
  else
   Cell[4, 0].MinHeight := 175;*)
 end;//with aGrid
//#UC END# *4AD3468102DB_4958E1F700C0_impl*
end;//TPrimMainMenuNewForm.DoRecalcGrid

{$If not defined(NoVCM)}
function TPrimMainMenuNewForm.InsertForm(const aForm: IvcmEntityForm): Boolean;
//#UC START# *4AD44CA20001_4958E1F700C0_var*
//#UC END# *4AD44CA20001_4958E1F700C0_var*
begin
//#UC START# *4AD44CA20001_4958E1F700C0_impl*
 Result := inherited InsertForm(aForm);
 if Result AND (aForm.ZoneType = vcm_ztMain) then
 begin
  (aForm.VCLWinControl As TForm).OnResize := BaseSearchFormResize;
  UpdateBaseSearchFormHeight(aForm.VCLWinControl As TForm);
 end;//Result..
//#UC END# *4AD44CA20001_4958E1F700C0_impl*
end;//TPrimMainMenuNewForm.InsertForm
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
procedure TPrimMainMenuNewForm.SetControlsResources;
//#UC START# *4B62D10B031B_4958E1F700C0_var*
//#UC END# *4B62D10B031B_4958E1F700C0_var*
begin
//#UC START# *4B62D10B031B_4958E1F700C0_impl*
 inherited;
 flAttributeSearch.Hint := '������� �������� ������ �� ����������';
 flSitiationSearch.Hint := '������� ������������ ��������';
 flPublishedSourceSearch.Hint := '������� ����� �� ��������� �������������';
 flDictionSearch.Hint := '������� �������� ������� �������� � ���������� ��������';

 flAttributeSearch.ShowHint := true;
 flSitiationSearch.ShowHint := true;
 flPublishedSourceSearch.ShowHint := true;
 flDictionSearch.ShowHint := true;
//#UC END# *4B62D10B031B_4958E1F700C0_impl*
end;//TPrimMainMenuNewForm.SetControlsResources
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
procedure TPrimMainMenuNewForm.RestoreControlSize;
//#UC START# *4C934E5F0035_4958E1F700C0_var*
//#UC END# *4C934E5F0035_4958E1F700C0_var*
begin
//#UC START# *4C934E5F0035_4958E1F700C0_impl*
 inherited;
 BaseSearchPanelResize(pnlBaseSearch);
//#UC END# *4C934E5F0035_4958E1F700C0_impl*
end;//TPrimMainMenuNewForm.RestoreControlSize
{$IfEnd} //not NoVCM

procedure TPrimMainMenuNewForm.InitEntities;
begin
 inherited;
 AddUserTypeExclude(utMainMenuNewName, en_Tree, op_ExpandAll, false);
 AddUserTypeExclude(utMainMenuNewName, en_Tree, op_CollapseAll, false);
 AddUserTypeExclude(utMainMenuNewName, en_Tree, op_Wrap, false);
end;

procedure TPrimMainMenuNewForm.MakeControls;
begin
 inherited;
 f_pnlBaseSearch := TvtPanel.Create(Self);
 f_pnlBaseSearch.Name := 'pnlBaseSearch';
 f_pnlBaseSearch.Parent := pnlMain;
 f_pnlBaseSearchZone := TvtPanel.Create(Self);
 f_pnlBaseSearchZone.Name := 'pnlBaseSearchZone';
 f_pnlBaseSearchZone.Parent := pnlBaseSearch;
 with DefineZone(vcm_ztMain, f_pnlBaseSearchZone) do
 begin
 end;//with DefineZone(vcm_ztMain, f_pnlBaseSearchZone)
 f_pnlLogo := TvtPanel.Create(Self);
 f_pnlLogo.Name := 'pnlLogo';
 f_pnlLogo.Parent := pnlMain;
 f_pbLogo := TPaintBox.Create(Self);
 f_pbLogo.Name := 'pbLogo';
 f_pbLogo.Parent := pnlLogo;
 f_pnlSearches := TvtPanel.Create(Self);
 f_pnlSearches.Name := 'pnlSearches';
 f_pnlSearches.Parent := pnlMain;
 f_flAttributeSearch := TnscFocusLabel.Create(Self);
 f_flAttributeSearch.Name := 'flAttributeSearch';
 f_flAttributeSearch.Parent := pnlSearches;
 f_flAttributeSearch.Caption := '� �� ����������';
 f_flSitiationSearch := TnscFocusLabel.Create(Self);
 f_flSitiationSearch.Name := 'flSitiationSearch';
 f_flSitiationSearch.Parent := pnlSearches;
 f_flSitiationSearch.Caption := '� �� ��������';
 f_flPublishedSourceSearch := TnscFocusLabel.Create(Self);
 f_flPublishedSourceSearch.Name := 'flPublishedSourceSearch';
 f_flPublishedSourceSearch.Parent := pnlSearches;
 f_flPublishedSourceSearch.Caption := '� �� ��������� �������������';
 f_flDictionSearch := TnscFocusLabel.Create(Self);
 f_flDictionSearch.Name := 'flDictionSearch';
 f_flDictionSearch.Parent := pnlSearches;
 f_flDictionSearch.Caption := '� �� ��������� �������';
 f_pnlExpert := TvtPanel.Create(Self);
 f_pnlExpert.Name := 'pnlExpert';
 f_pnlExpert.Parent := pnlMain;
 f_pbExpert := TPaintBox.Create(Self);
 f_pbExpert.Name := 'pbExpert';
 f_pbExpert.Parent := pnlExpert;
 f_pnlOnLine := TvtPanel.Create(Self);
 f_pnlOnLine.Name := 'pnlOnLine';
 f_pnlOnLine.Parent := pnlMain;
 f_pbOnLine := TPaintBox.Create(Self);
 f_pbOnLine.Name := 'pbOnLine';
 f_pbOnLine.Parent := pnlOnLine;
 f_pbIntranet := TPaintBox.Create(Self);
 f_pbIntranet.Name := 'pbIntranet';
 f_pbIntranet.Parent := pnlOnLine;
 f_pbCourtsOnline := TPaintBox.Create(Self);
 f_pbCourtsOnline.Name := 'pbCourtsOnline';
 f_pbCourtsOnline.Parent := pnlOnLine;
 f_hfTaxes := TnscHideField.Create(Self);
 f_hfTaxes.Name := 'hfTaxes';
 f_hfTaxes.Parent := pnlMain;
 f_hfTaxes.Caption := '������, �������';
 f_tvTaxes := TnscTreeViewHotTruck.Create(Self);
 f_tvTaxes.Name := 'tvTaxes';
 f_tvTaxes.Parent := hfTaxes;
 f_pnlBanner := TvtPanel.Create(Self);
 f_pnlBanner.Name := 'pnlBanner';
 f_pnlBanner.Parent := pnlMain;
 f_ieBanner := TImageEnView.Create(Self);
 f_ieBanner.Name := 'ieBanner';
 f_ieBanner.Parent := pnlBanner;
 f_hfLastOpenDocsRightEdge := TvtPanel.Create(Self);
 f_hfLastOpenDocsRightEdge.Name := 'hfLastOpenDocsRightEdge';
 f_hfLastOpenDocsRightEdge.Parent := hfLastOpenDocs;
 f_ieIO := TImageEnIO.Create(Self);
 f_ieIO.Name := 'ieIO';
 with AddUsertype(utMainMenuNewName,
  str_utMainMenuNewCaption,
  str_utMainMenuNewCaption,
  false,
  44,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(utMainMenuNewName
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Control_pnlBaseSearch
 Tkw_PrimMainMenuNew_Control_pnlBaseSearch.Register('�������::pnlBaseSearch', TvtPanel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Control_pnlBaseSearch_Push
 Tkw_PrimMainMenuNew_Control_pnlBaseSearch_Push.Register('�������::pnlBaseSearch:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Control_pnlBaseSearchZone
 Tkw_PrimMainMenuNew_Control_pnlBaseSearchZone.Register('�������::pnlBaseSearchZone', TvtPanel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Control_pnlBaseSearchZone_Push
 Tkw_PrimMainMenuNew_Control_pnlBaseSearchZone_Push.Register('�������::pnlBaseSearchZone:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Control_pnlLogo
 Tkw_PrimMainMenuNew_Control_pnlLogo.Register('�������::pnlLogo', TvtPanel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Control_pnlLogo_Push
 Tkw_PrimMainMenuNew_Control_pnlLogo_Push.Register('�������::pnlLogo:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Control_pbLogo
 Tkw_PrimMainMenuNew_Control_pbLogo.Register('�������::pbLogo', TPaintBox);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Control_pbLogo_Push
 Tkw_PrimMainMenuNew_Control_pbLogo_Push.Register('�������::pbLogo:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Control_pnlSearches
 Tkw_PrimMainMenuNew_Control_pnlSearches.Register('�������::pnlSearches', TvtPanel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Control_pnlSearches_Push
 Tkw_PrimMainMenuNew_Control_pnlSearches_Push.Register('�������::pnlSearches:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Control_flAttributeSearch
 Tkw_PrimMainMenuNew_Control_flAttributeSearch.Register('�������::flAttributeSearch', TnscFocusLabel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Control_flAttributeSearch_Push
 Tkw_PrimMainMenuNew_Control_flAttributeSearch_Push.Register('�������::flAttributeSearch:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Control_flSitiationSearch
 Tkw_PrimMainMenuNew_Control_flSitiationSearch.Register('�������::flSitiationSearch', TnscFocusLabel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Control_flSitiationSearch_Push
 Tkw_PrimMainMenuNew_Control_flSitiationSearch_Push.Register('�������::flSitiationSearch:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Control_flPublishedSourceSearch
 Tkw_PrimMainMenuNew_Control_flPublishedSourceSearch.Register('�������::flPublishedSourceSearch', TnscFocusLabel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Control_flPublishedSourceSearch_Push
 Tkw_PrimMainMenuNew_Control_flPublishedSourceSearch_Push.Register('�������::flPublishedSourceSearch:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Control_flDictionSearch
 Tkw_PrimMainMenuNew_Control_flDictionSearch.Register('�������::flDictionSearch', TnscFocusLabel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Control_flDictionSearch_Push
 Tkw_PrimMainMenuNew_Control_flDictionSearch_Push.Register('�������::flDictionSearch:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Control_pnlExpert
 Tkw_PrimMainMenuNew_Control_pnlExpert.Register('�������::pnlExpert', TvtPanel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Control_pnlExpert_Push
 Tkw_PrimMainMenuNew_Control_pnlExpert_Push.Register('�������::pnlExpert:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Control_pbExpert
 Tkw_PrimMainMenuNew_Control_pbExpert.Register('�������::pbExpert', TPaintBox);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Control_pbExpert_Push
 Tkw_PrimMainMenuNew_Control_pbExpert_Push.Register('�������::pbExpert:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Control_pnlOnLine
 Tkw_PrimMainMenuNew_Control_pnlOnLine.Register('�������::pnlOnLine', TvtPanel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Control_pnlOnLine_Push
 Tkw_PrimMainMenuNew_Control_pnlOnLine_Push.Register('�������::pnlOnLine:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Control_pbOnLine
 Tkw_PrimMainMenuNew_Control_pbOnLine.Register('�������::pbOnLine', TPaintBox);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Control_pbOnLine_Push
 Tkw_PrimMainMenuNew_Control_pbOnLine_Push.Register('�������::pbOnLine:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Control_pbIntranet
 Tkw_PrimMainMenuNew_Control_pbIntranet.Register('�������::pbIntranet', TPaintBox);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Control_pbIntranet_Push
 Tkw_PrimMainMenuNew_Control_pbIntranet_Push.Register('�������::pbIntranet:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Control_pbCourtsOnline
 Tkw_PrimMainMenuNew_Control_pbCourtsOnline.Register('�������::pbCourtsOnline', TPaintBox);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Control_pbCourtsOnline_Push
 Tkw_PrimMainMenuNew_Control_pbCourtsOnline_Push.Register('�������::pbCourtsOnline:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Control_hfTaxes
 Tkw_PrimMainMenuNew_Control_hfTaxes.Register('�������::hfTaxes', TnscHideField);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Control_hfTaxes_Push
 Tkw_PrimMainMenuNew_Control_hfTaxes_Push.Register('�������::hfTaxes:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Control_tvTaxes
 Tkw_PrimMainMenuNew_Control_tvTaxes.Register('�������::tvTaxes', TnscTreeViewHotTruck);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Control_tvTaxes_Push
 Tkw_PrimMainMenuNew_Control_tvTaxes_Push.Register('�������::tvTaxes:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Control_pnlBanner
 Tkw_PrimMainMenuNew_Control_pnlBanner.Register('�������::pnlBanner', TvtPanel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Control_pnlBanner_Push
 Tkw_PrimMainMenuNew_Control_pnlBanner_Push.Register('�������::pnlBanner:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Control_ieBanner
 Tkw_PrimMainMenuNew_Control_ieBanner.Register('�������::ieBanner', TImageEnView);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Control_ieBanner_Push
 Tkw_PrimMainMenuNew_Control_ieBanner_Push.Register('�������::ieBanner:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Control_hfLastOpenDocsRightEdge
 Tkw_PrimMainMenuNew_Control_hfLastOpenDocsRightEdge.Register('�������::hfLastOpenDocsRightEdge', TvtPanel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Control_hfLastOpenDocsRightEdge_Push
 Tkw_PrimMainMenuNew_Control_hfLastOpenDocsRightEdge_Push.Register('�������::hfLastOpenDocsRightEdge:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Component_ilButtons
 Tkw_PrimMainMenuNew_Component_ilButtons.Register('���������::ilButtons', TvtNonFixedPngImageList);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenuNew_Component_ieIO
 Tkw_PrimMainMenuNew_Component_ieIO.Register('���������::ieIO', TImageEnIO);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ������������� str_utMainMenuNewCaption
 str_utMainMenuNewCaption.Init;
{$IfEnd} //not Admin AND not Monitorings

end.