unit AACContainer_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/AAC/Forms/AACContainer_Form.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalContainer::Class>> F1 Пользовательские сервисы::AAC::View::AAC::AACPrim::AACContainer
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
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  AACTextContainerPrim_Form
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  vtProportionalPanel,
  vtPanel,
  vtScrollBar,
  vtSizeablePanel,
  nscSimpleEditorForDialogs,
  vtLabel,
  ExtCtrls,
  l3InterfacedComponent {a},
  vcmComponent {a},
  vcmBaseEntities {a},
  vcmEntities {a},
  vcmExternalInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
const
    { AACContainerIDs }
   fm_AACContainerForm : TvcmFormDescriptor = (rFormID : (rName : 'AACContainerForm'; rID : 0); rFactory : nil);
    { Идентификатор формы TAACContainerForm }

type
 AACContainerFormDef = interface(IUnknown)
  {* Идентификатор формы AACContainer }
   ['{548CB0E3-A19F-4AD8-A785-C6FB8E70BF73}']
 end;//AACContainerFormDef

  TAACContainerForm = {final form} class(TvcmContainerFormRef, AACContainerFormDef)
  Entities : TvcmEntities;
  end;//TAACContainerForm
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
   Tkw_Form_AACContainer = class(TtfwControlString)
    {* Слово словаря для идентификатора формы AACContainer
----
*Пример использования*:
[code]
'aControl' форма::AACContainer TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_AACContainer

// start class Tkw_Form_AACContainer

{$If not defined(NoScripts)}
function Tkw_Form_AACContainer.GetString: AnsiString;
 {-}
begin
 Result := 'AACContainerForm';
end;//Tkw_Form_AACContainer.GetString
{$IfEnd} //not NoScripts

type
   Tkw_AACContainer_pnWriteToUs_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола pnWriteToUs формы AACContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_AACContainer_pnWriteToUs_ControlInstance

// start class Tkw_AACContainer_pnWriteToUs_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AACContainer_pnWriteToUs_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TAACContainerForm).pnWriteToUs);
end;//Tkw_AACContainer_pnWriteToUs_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_AACContainer_edWriteToUs_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола edWriteToUs формы AACContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_AACContainer_edWriteToUs_ControlInstance

// start class Tkw_AACContainer_edWriteToUs_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AACContainer_edWriteToUs_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TAACContainerForm).edWriteToUs);
end;//Tkw_AACContainer_edWriteToUs_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_AACContainer_pnSeeAlso_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола pnSeeAlso формы AACContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_AACContainer_pnSeeAlso_ControlInstance

// start class Tkw_AACContainer_pnSeeAlso_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AACContainer_pnSeeAlso_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TAACContainerForm).pnSeeAlso);
end;//Tkw_AACContainer_pnSeeAlso_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_AACContainer_lblSeeAlso_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола lblSeeAlso формы AACContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_AACContainer_lblSeeAlso_ControlInstance

// start class Tkw_AACContainer_lblSeeAlso_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AACContainer_lblSeeAlso_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TAACContainerForm).lblSeeAlso);
end;//Tkw_AACContainer_lblSeeAlso_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_AACContainer_pnLinkToContent_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола pnLinkToContent формы AACContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_AACContainer_pnLinkToContent_ControlInstance

// start class Tkw_AACContainer_pnLinkToContent_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AACContainer_pnLinkToContent_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TAACContainerForm).pnLinkToContent);
end;//Tkw_AACContainer_pnLinkToContent_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_AACContainer_pbLinkToContent_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола pbLinkToContent формы AACContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_AACContainer_pbLinkToContent_ControlInstance

// start class Tkw_AACContainer_pbLinkToContent_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AACContainer_pbLinkToContent_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TAACContainerForm).pbLinkToContent);
end;//Tkw_AACContainer_pbLinkToContent_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_AACContainer_pnBack_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола pnBack формы AACContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_AACContainer_pnBack_ControlInstance

// start class Tkw_AACContainer_pnBack_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AACContainer_pnBack_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TAACContainerForm).pnBack);
end;//Tkw_AACContainer_pnBack_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_AACContainer_pnRightEx_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола pnRightEx формы AACContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_AACContainer_pnRightEx_ControlInstance

// start class Tkw_AACContainer_pnRightEx_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AACContainer_pnRightEx_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TAACContainerForm).pnRightEx);
end;//Tkw_AACContainer_pnRightEx_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_AACContainer_pnRightForScroll_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола pnRightForScroll формы AACContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_AACContainer_pnRightForScroll_ControlInstance

// start class Tkw_AACContainer_pnRightForScroll_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AACContainer_pnRightForScroll_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TAACContainerForm).pnRightForScroll);
end;//Tkw_AACContainer_pnRightForScroll_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_AACContainer_pnRight_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола pnRight формы AACContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_AACContainer_pnRight_ControlInstance

// start class Tkw_AACContainer_pnRight_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AACContainer_pnRight_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TAACContainerForm).pnRight);
end;//Tkw_AACContainer_pnRight_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_AACContainer_pnlRightTop_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола pnlRightTop формы AACContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_AACContainer_pnlRightTop_ControlInstance

// start class Tkw_AACContainer_pnlRightTop_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AACContainer_pnlRightTop_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TAACContainerForm).pnlRightTop);
end;//Tkw_AACContainer_pnlRightTop_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_AACContainer_scrRight_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола scrRight формы AACContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_AACContainer_scrRight_ControlInstance

// start class Tkw_AACContainer_scrRight_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AACContainer_scrRight_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TAACContainerForm).scrRight);
end;//Tkw_AACContainer_scrRight_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_AACContainer_pnLeftEx_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола pnLeftEx формы AACContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_AACContainer_pnLeftEx_ControlInstance

// start class Tkw_AACContainer_pnLeftEx_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AACContainer_pnLeftEx_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TAACContainerForm).pnLeftEx);
end;//Tkw_AACContainer_pnLeftEx_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_AACContainer_pnLeftForScroll_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола pnLeftForScroll формы AACContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_AACContainer_pnLeftForScroll_ControlInstance

// start class Tkw_AACContainer_pnLeftForScroll_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AACContainer_pnLeftForScroll_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TAACContainerForm).pnLeftForScroll);
end;//Tkw_AACContainer_pnLeftForScroll_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_AACContainer_pnlLeftTop_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола pnlLeftTop формы AACContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_AACContainer_pnlLeftTop_ControlInstance

// start class Tkw_AACContainer_pnlLeftTop_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AACContainer_pnlLeftTop_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TAACContainerForm).pnlLeftTop);
end;//Tkw_AACContainer_pnlLeftTop_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_AACContainer_pnLeft_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола pnLeft формы AACContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_AACContainer_pnLeft_ControlInstance

// start class Tkw_AACContainer_pnLeft_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AACContainer_pnLeft_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TAACContainerForm).pnLeft);
end;//Tkw_AACContainer_pnLeft_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_AACContainer_scrLeft_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола scrLeft формы AACContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_AACContainer_scrLeft_ControlInstance

// start class Tkw_AACContainer_scrLeft_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AACContainer_scrLeft_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TAACContainerForm).scrLeft);
end;//Tkw_AACContainer_scrLeft_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация фабрики формы AACContainer
 fm_AACContainerForm.SetFactory(TAACContainerForm.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_AACContainer
 Tkw_Form_AACContainer.Register('форма::AACContainer', TAACContainerForm);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_AACContainer_pnWriteToUs_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TAACContainerForm.pnWriteToUs', Tkw_AACContainer_pnWriteToUs_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_AACContainer_edWriteToUs_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TAACContainerForm.edWriteToUs', Tkw_AACContainer_edWriteToUs_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_AACContainer_pnSeeAlso_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TAACContainerForm.pnSeeAlso', Tkw_AACContainer_pnSeeAlso_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_AACContainer_lblSeeAlso_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TAACContainerForm.lblSeeAlso', Tkw_AACContainer_lblSeeAlso_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_AACContainer_pnLinkToContent_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TAACContainerForm.pnLinkToContent', Tkw_AACContainer_pnLinkToContent_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_AACContainer_pbLinkToContent_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TAACContainerForm.pbLinkToContent', Tkw_AACContainer_pbLinkToContent_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_AACContainer_pnBack_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TAACContainerForm.pnBack', Tkw_AACContainer_pnBack_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_AACContainer_pnRightEx_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TAACContainerForm.pnRightEx', Tkw_AACContainer_pnRightEx_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_AACContainer_pnRightForScroll_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TAACContainerForm.pnRightForScroll', Tkw_AACContainer_pnRightForScroll_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_AACContainer_pnRight_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TAACContainerForm.pnRight', Tkw_AACContainer_pnRight_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_AACContainer_pnlRightTop_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TAACContainerForm.pnlRightTop', Tkw_AACContainer_pnlRightTop_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_AACContainer_scrRight_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TAACContainerForm.scrRight', Tkw_AACContainer_scrRight_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_AACContainer_pnLeftEx_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TAACContainerForm.pnLeftEx', Tkw_AACContainer_pnLeftEx_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_AACContainer_pnLeftForScroll_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TAACContainerForm.pnLeftForScroll', Tkw_AACContainer_pnLeftForScroll_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_AACContainer_pnlLeftTop_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TAACContainerForm.pnlLeftTop', Tkw_AACContainer_pnlLeftTop_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_AACContainer_pnLeft_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TAACContainerForm.pnLeft', Tkw_AACContainer_pnLeft_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_AACContainer_scrLeft_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TAACContainerForm.scrLeft', Tkw_AACContainer_scrLeft_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.