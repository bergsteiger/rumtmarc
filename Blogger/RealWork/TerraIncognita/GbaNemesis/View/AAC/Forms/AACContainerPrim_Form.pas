unit AACContainerPrim_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/AAC/Forms/AACContainerPrim_Form.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMContainer::Class>> F1 Пользовательские сервисы::AAC::View::AAC::AACContainerPrim
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
  evCustomEditorWindow
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  vtSizeablePanel,
  vtPanel,
  vtProportionalPanel,
  l3StringIDEx
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwBynameControlPush
  {$IfEnd} //not NoScripts
  ,
  AACContainerPrim_AACContainer_UserType,
  Base_Operations_AAC_Controls,
  vtScrollBar
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  AACContainerPrim_AACContentsContainer_UserType,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a},
  vcmContainerForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TAACContainerPrimForm = {form} class(TvcmContainerForm)
 private
 // private fields
   f_pnBack : TvtProportionalPanel;
    {* Поле для свойства pnBack}
   f_pnRightEx : TvtPanel;
    {* Поле для свойства pnRightEx}
   f_pnRightForScroll : TvtPanel;
    {* Поле для свойства pnRightForScroll}
   f_pnRight : TvtPanel;
    {* Поле для свойства pnRight}
   f_pnlRightTop : TvtPanel;
    {* Поле для свойства pnlRightTop}
   f_scrRight : TvtScrollBar;
    {* Поле для свойства scrRight}
   f_pnLeftEx : TvtSizeablePanel;
    {* Поле для свойства pnLeftEx}
   f_pnLeftForScroll : TvtPanel;
    {* Поле для свойства pnLeftForScroll}
   f_pnlLeftTop : TvtPanel;
    {* Поле для свойства pnlLeftTop}
   f_pnLeft : TvtPanel;
    {* Поле для свойства pnLeft}
   f_scrLeft : TvtScrollBar;
    {* Поле для свойства scrLeft}
 protected
  procedure InitEntities; override;
  procedure MakeControls; override;
 protected
 // realized methods
   function AACTextContainer_GetVScrollBar_Execute(aLeft: Boolean): TvtScrollBar;
   procedure AACTextContainer_GetVScrollBar(const aParams: IvcmExecuteParams);
   procedure AACTextContainer_SetJumpTo_Execute(aJumpTo: TevJumpToEvent);
   procedure AACTextContainer_SetJumpTo(const aParams: IvcmExecuteParams);
 protected
 // overridden protected methods
   {$If not defined(NoVCM)}
   procedure InitControls; override;
     {* Процедура инициализации контролов. Для перекрытия в потомках }
   {$IfEnd} //not NoVCM
 protected
 // protected methods
   function DoGetVScrollBar(aLeft: Boolean): TvtScrollBar; virtual;
   procedure DoSetJumpTo(aJumpTo: TevJumpToEvent); virtual;
 public
 // public properties
   property pnBack: TvtProportionalPanel
     read f_pnBack;
   property pnRightEx: TvtPanel
     read f_pnRightEx;
   property pnRightForScroll: TvtPanel
     read f_pnRightForScroll;
   property pnRight: TvtPanel
     read f_pnRight;
   property pnlRightTop: TvtPanel
     read f_pnlRightTop;
   property scrRight: TvtScrollBar
     read f_scrRight;
   property pnLeftEx: TvtSizeablePanel
     read f_pnLeftEx;
   property pnLeftForScroll: TvtPanel
     read f_pnLeftForScroll;
   property pnlLeftTop: TvtPanel
     read f_pnlLeftTop;
   property pnLeft: TvtPanel
     read f_pnLeft;
   property scrLeft: TvtScrollBar
     read f_scrLeft;
 end;//TAACContainerPrimForm

 TvcmContainerFormRef = TAACContainerPrimForm;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  Controls,
  nsConst,
  l3MessageID
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  StdRes {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

var
   { Локализуемые строки AACContainerLocalConstants }
  str_AACContainerCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'AACContainerCaption'; rValue : '');
   { Заголовок пользовательского типа "" }

var
   { Локализуемые строки AACContentsContainerLocalConstants }
  str_AACContentsContainerCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'AACContentsContainerCaption'; rValue : '');
   { Заголовок пользовательского типа "" }

type
  Tkw_AACContainerPrim_Control_pnBack = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола pnBack
----
*Пример использования*:
[code]
контрол::pnBack TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_AACContainerPrim_Control_pnBack

// start class Tkw_AACContainerPrim_Control_pnBack

{$If not defined(NoScripts)}
function Tkw_AACContainerPrim_Control_pnBack.GetString: AnsiString;
 {-}
begin
 Result := 'pnBack';
end;//Tkw_AACContainerPrim_Control_pnBack.GetString
{$IfEnd} //not NoScripts

type
  Tkw_AACContainerPrim_Control_pnBack_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола pnBack
----
*Пример использования*:
[code]
контрол::pnBack:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_AACContainerPrim_Control_pnBack_Push

// start class Tkw_AACContainerPrim_Control_pnBack_Push

{$If not defined(NoScripts)}
procedure Tkw_AACContainerPrim_Control_pnBack_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('pnBack');
 inherited;
end;//Tkw_AACContainerPrim_Control_pnBack_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_AACContainerPrim_Control_pnRightEx = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола pnRightEx
----
*Пример использования*:
[code]
контрол::pnRightEx TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_AACContainerPrim_Control_pnRightEx

// start class Tkw_AACContainerPrim_Control_pnRightEx

{$If not defined(NoScripts)}
function Tkw_AACContainerPrim_Control_pnRightEx.GetString: AnsiString;
 {-}
begin
 Result := 'pnRightEx';
end;//Tkw_AACContainerPrim_Control_pnRightEx.GetString
{$IfEnd} //not NoScripts

type
  Tkw_AACContainerPrim_Control_pnRightEx_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола pnRightEx
----
*Пример использования*:
[code]
контрол::pnRightEx:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_AACContainerPrim_Control_pnRightEx_Push

// start class Tkw_AACContainerPrim_Control_pnRightEx_Push

{$If not defined(NoScripts)}
procedure Tkw_AACContainerPrim_Control_pnRightEx_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('pnRightEx');
 inherited;
end;//Tkw_AACContainerPrim_Control_pnRightEx_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_AACContainerPrim_Control_pnRightForScroll = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола pnRightForScroll
----
*Пример использования*:
[code]
контрол::pnRightForScroll TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_AACContainerPrim_Control_pnRightForScroll

// start class Tkw_AACContainerPrim_Control_pnRightForScroll

{$If not defined(NoScripts)}
function Tkw_AACContainerPrim_Control_pnRightForScroll.GetString: AnsiString;
 {-}
begin
 Result := 'pnRightForScroll';
end;//Tkw_AACContainerPrim_Control_pnRightForScroll.GetString
{$IfEnd} //not NoScripts

type
  Tkw_AACContainerPrim_Control_pnRightForScroll_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола pnRightForScroll
----
*Пример использования*:
[code]
контрол::pnRightForScroll:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_AACContainerPrim_Control_pnRightForScroll_Push

// start class Tkw_AACContainerPrim_Control_pnRightForScroll_Push

{$If not defined(NoScripts)}
procedure Tkw_AACContainerPrim_Control_pnRightForScroll_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('pnRightForScroll');
 inherited;
end;//Tkw_AACContainerPrim_Control_pnRightForScroll_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_AACContainerPrim_Control_pnRight = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола pnRight
----
*Пример использования*:
[code]
контрол::pnRight TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_AACContainerPrim_Control_pnRight

// start class Tkw_AACContainerPrim_Control_pnRight

{$If not defined(NoScripts)}
function Tkw_AACContainerPrim_Control_pnRight.GetString: AnsiString;
 {-}
begin
 Result := 'pnRight';
end;//Tkw_AACContainerPrim_Control_pnRight.GetString
{$IfEnd} //not NoScripts

type
  Tkw_AACContainerPrim_Control_pnRight_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола pnRight
----
*Пример использования*:
[code]
контрол::pnRight:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_AACContainerPrim_Control_pnRight_Push

// start class Tkw_AACContainerPrim_Control_pnRight_Push

{$If not defined(NoScripts)}
procedure Tkw_AACContainerPrim_Control_pnRight_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('pnRight');
 inherited;
end;//Tkw_AACContainerPrim_Control_pnRight_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_AACContainerPrim_Control_pnlRightTop = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола pnlRightTop
----
*Пример использования*:
[code]
контрол::pnlRightTop TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_AACContainerPrim_Control_pnlRightTop

// start class Tkw_AACContainerPrim_Control_pnlRightTop

{$If not defined(NoScripts)}
function Tkw_AACContainerPrim_Control_pnlRightTop.GetString: AnsiString;
 {-}
begin
 Result := 'pnlRightTop';
end;//Tkw_AACContainerPrim_Control_pnlRightTop.GetString
{$IfEnd} //not NoScripts

type
  Tkw_AACContainerPrim_Control_pnlRightTop_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола pnlRightTop
----
*Пример использования*:
[code]
контрол::pnlRightTop:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_AACContainerPrim_Control_pnlRightTop_Push

// start class Tkw_AACContainerPrim_Control_pnlRightTop_Push

{$If not defined(NoScripts)}
procedure Tkw_AACContainerPrim_Control_pnlRightTop_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('pnlRightTop');
 inherited;
end;//Tkw_AACContainerPrim_Control_pnlRightTop_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_AACContainerPrim_Control_scrRight = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола scrRight
----
*Пример использования*:
[code]
контрол::scrRight TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_AACContainerPrim_Control_scrRight

// start class Tkw_AACContainerPrim_Control_scrRight

{$If not defined(NoScripts)}
function Tkw_AACContainerPrim_Control_scrRight.GetString: AnsiString;
 {-}
begin
 Result := 'scrRight';
end;//Tkw_AACContainerPrim_Control_scrRight.GetString
{$IfEnd} //not NoScripts

type
  Tkw_AACContainerPrim_Control_scrRight_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола scrRight
----
*Пример использования*:
[code]
контрол::scrRight:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_AACContainerPrim_Control_scrRight_Push

// start class Tkw_AACContainerPrim_Control_scrRight_Push

{$If not defined(NoScripts)}
procedure Tkw_AACContainerPrim_Control_scrRight_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('scrRight');
 inherited;
end;//Tkw_AACContainerPrim_Control_scrRight_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_AACContainerPrim_Control_pnLeftEx = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола pnLeftEx
----
*Пример использования*:
[code]
контрол::pnLeftEx TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_AACContainerPrim_Control_pnLeftEx

// start class Tkw_AACContainerPrim_Control_pnLeftEx

{$If not defined(NoScripts)}
function Tkw_AACContainerPrim_Control_pnLeftEx.GetString: AnsiString;
 {-}
begin
 Result := 'pnLeftEx';
end;//Tkw_AACContainerPrim_Control_pnLeftEx.GetString
{$IfEnd} //not NoScripts

type
  Tkw_AACContainerPrim_Control_pnLeftEx_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола pnLeftEx
----
*Пример использования*:
[code]
контрол::pnLeftEx:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_AACContainerPrim_Control_pnLeftEx_Push

// start class Tkw_AACContainerPrim_Control_pnLeftEx_Push

{$If not defined(NoScripts)}
procedure Tkw_AACContainerPrim_Control_pnLeftEx_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('pnLeftEx');
 inherited;
end;//Tkw_AACContainerPrim_Control_pnLeftEx_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_AACContainerPrim_Control_pnLeftForScroll = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола pnLeftForScroll
----
*Пример использования*:
[code]
контрол::pnLeftForScroll TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_AACContainerPrim_Control_pnLeftForScroll

// start class Tkw_AACContainerPrim_Control_pnLeftForScroll

{$If not defined(NoScripts)}
function Tkw_AACContainerPrim_Control_pnLeftForScroll.GetString: AnsiString;
 {-}
begin
 Result := 'pnLeftForScroll';
end;//Tkw_AACContainerPrim_Control_pnLeftForScroll.GetString
{$IfEnd} //not NoScripts

type
  Tkw_AACContainerPrim_Control_pnLeftForScroll_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола pnLeftForScroll
----
*Пример использования*:
[code]
контрол::pnLeftForScroll:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_AACContainerPrim_Control_pnLeftForScroll_Push

// start class Tkw_AACContainerPrim_Control_pnLeftForScroll_Push

{$If not defined(NoScripts)}
procedure Tkw_AACContainerPrim_Control_pnLeftForScroll_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('pnLeftForScroll');
 inherited;
end;//Tkw_AACContainerPrim_Control_pnLeftForScroll_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_AACContainerPrim_Control_pnlLeftTop = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола pnlLeftTop
----
*Пример использования*:
[code]
контрол::pnlLeftTop TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_AACContainerPrim_Control_pnlLeftTop

// start class Tkw_AACContainerPrim_Control_pnlLeftTop

{$If not defined(NoScripts)}
function Tkw_AACContainerPrim_Control_pnlLeftTop.GetString: AnsiString;
 {-}
begin
 Result := 'pnlLeftTop';
end;//Tkw_AACContainerPrim_Control_pnlLeftTop.GetString
{$IfEnd} //not NoScripts

type
  Tkw_AACContainerPrim_Control_pnlLeftTop_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола pnlLeftTop
----
*Пример использования*:
[code]
контрол::pnlLeftTop:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_AACContainerPrim_Control_pnlLeftTop_Push

// start class Tkw_AACContainerPrim_Control_pnlLeftTop_Push

{$If not defined(NoScripts)}
procedure Tkw_AACContainerPrim_Control_pnlLeftTop_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('pnlLeftTop');
 inherited;
end;//Tkw_AACContainerPrim_Control_pnlLeftTop_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_AACContainerPrim_Control_pnLeft = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола pnLeft
----
*Пример использования*:
[code]
контрол::pnLeft TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_AACContainerPrim_Control_pnLeft

// start class Tkw_AACContainerPrim_Control_pnLeft

{$If not defined(NoScripts)}
function Tkw_AACContainerPrim_Control_pnLeft.GetString: AnsiString;
 {-}
begin
 Result := 'pnLeft';
end;//Tkw_AACContainerPrim_Control_pnLeft.GetString
{$IfEnd} //not NoScripts

type
  Tkw_AACContainerPrim_Control_pnLeft_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола pnLeft
----
*Пример использования*:
[code]
контрол::pnLeft:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_AACContainerPrim_Control_pnLeft_Push

// start class Tkw_AACContainerPrim_Control_pnLeft_Push

{$If not defined(NoScripts)}
procedure Tkw_AACContainerPrim_Control_pnLeft_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('pnLeft');
 inherited;
end;//Tkw_AACContainerPrim_Control_pnLeft_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_AACContainerPrim_Control_scrLeft = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола scrLeft
----
*Пример использования*:
[code]
контрол::scrLeft TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_AACContainerPrim_Control_scrLeft

// start class Tkw_AACContainerPrim_Control_scrLeft

{$If not defined(NoScripts)}
function Tkw_AACContainerPrim_Control_scrLeft.GetString: AnsiString;
 {-}
begin
 Result := 'scrLeft';
end;//Tkw_AACContainerPrim_Control_scrLeft.GetString
{$IfEnd} //not NoScripts

type
  Tkw_AACContainerPrim_Control_scrLeft_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола scrLeft
----
*Пример использования*:
[code]
контрол::scrLeft:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_AACContainerPrim_Control_scrLeft_Push

// start class Tkw_AACContainerPrim_Control_scrLeft_Push

{$If not defined(NoScripts)}
procedure Tkw_AACContainerPrim_Control_scrLeft_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('scrLeft');
 inherited;
end;//Tkw_AACContainerPrim_Control_scrLeft_Push.DoDoIt
{$IfEnd} //not NoScripts

function TAACContainerPrimForm.DoGetVScrollBar(aLeft: Boolean): TvtScrollBar;
//#UC START# *503CE2E2021B_4FF2E935019A_var*
//#UC END# *503CE2E2021B_4FF2E935019A_var*
begin
//#UC START# *503CE2E2021B_4FF2E935019A_impl*
 if aLeft
  then Result := scrLeft
  else Result := scrRight;
//#UC END# *503CE2E2021B_4FF2E935019A_impl*
end;//TAACContainerPrimForm.DoGetVScrollBar

procedure TAACContainerPrimForm.DoSetJumpTo(aJumpTo: TevJumpToEvent);
//#UC START# *503CE3500038_4FF2E935019A_var*
//#UC END# *503CE3500038_4FF2E935019A_var*
begin
//#UC START# *503CE3500038_4FF2E935019A_impl*
 Assert(False, 'Мы сюда не должны были прийти');
//#UC END# *503CE3500038_4FF2E935019A_impl*
end;//TAACContainerPrimForm.DoSetJumpTo

function TAACContainerPrimForm.AACTextContainer_GetVScrollBar_Execute(aLeft: Boolean): TvtScrollBar;
//#UC START# *5005237D0210_4FF2E935019Aexec_var*
//#UC END# *5005237D0210_4FF2E935019Aexec_var*
begin
//#UC START# *5005237D0210_4FF2E935019Aexec_impl*
 Result := DoGetVScrollBar(aLeft);
//#UC END# *5005237D0210_4FF2E935019Aexec_impl*
end;//TAACContainerPrimForm.AACTextContainer_GetVScrollBar_Execute

procedure TAACContainerPrimForm.AACTextContainer_GetVScrollBar(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IAACTextContainer_GetVScrollBar_Params) do
  ResultValue := AACTextContainer_GetVScrollBar_Execute(Left);
end;

procedure TAACContainerPrimForm.AACTextContainer_SetJumpTo_Execute(aJumpTo: TevJumpToEvent);
//#UC START# *5006ED2300F9_4FF2E935019Aexec_var*
//#UC END# *5006ED2300F9_4FF2E935019Aexec_var*
begin
//#UC START# *5006ED2300F9_4FF2E935019Aexec_impl*
 DoSetJumpTo(aJumpTo);
//#UC END# *5006ED2300F9_4FF2E935019Aexec_impl*
end;//TAACContainerPrimForm.AACTextContainer_SetJumpTo_Execute

procedure TAACContainerPrimForm.AACTextContainer_SetJumpTo(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IAACTextContainer_SetJumpTo_Params) do
  AACTextContainer_SetJumpTo_Execute(JumpTo);
end;

{$If not defined(NoVCM)}
procedure TAACContainerPrimForm.InitControls;
//#UC START# *4A8E8F2E0195_4FF2E935019A_var*
//#UC END# *4A8E8F2E0195_4FF2E935019A_var*
begin
//#UC START# *4A8E8F2E0195_4FF2E935019A_impl*
 with pnBack do
 begin
  BevelOuter := bvNone;
 end;
 with pnLeftEx do
 begin
  Width := Self.ClientWidth div 2;
  SizeableSides := [szRight];
  SplitterBevel := bvRaised;
  TabOrder := 0;
  Align := alLeft;
  BevelOuter := bvNone;
  Constraints.MinWidth := 200;
  OuterConstraints.MinWidth := 200;
 end;
 with scrLeft do
  Align := sbalRight;
 with pnLeftForScroll do
 begin
  Align := alClient;
  BevelOuter := bvNone;
 end;
 with pnLeft do
 begin
  TabOrder := 0;
  Align := alClient;
  BevelOuter := bvNone;
 end;//with pnLeft
 with pnlLeftTop do
 begin
  Align := alTop;   // http://mdp.garant.ru/pages/viewpage.action?pageId=388860126
  Height := 55;
  Color := cAACContentsBackColor;
  BevelOuter := bvNone;
 end;
 with pnRightEx do
 begin
  Width := Self.ClientWidth div 2;
  TabOrder := 1;
  Align := alClient;
  BevelOuter := bvNone;
  //Constraints.MinWidth := 200;
 end;
 with scrRight do
  Align := sbalRight;
 with pnRightForScroll do
 begin
  Align := alClient;
  BevelOuter := bvNone;
 end;
 with pnRight do
 begin
  Width := Self.ClientWidth div 2;
  TabOrder := 0;
  Align := alClient;
  BevelOuter := bvNone;
 end;//with pnRight
 with pnlRightTop do
 begin
  Align := alTop;   // http://mdp.garant.ru/pages/viewpage.action?pageId=388860126
  Height := 45;
  Color := $00FFFFFF; // clWhite
  BevelOuter := bvNone;
 end;
 Self.ActiveControl := pnRight;
 inherited;
//#UC END# *4A8E8F2E0195_4FF2E935019A_impl*
end;//TAACContainerPrimForm.InitControls
{$IfEnd} //not NoVCM

procedure TAACContainerPrimForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_AACTextContainer, nil);
  PublishOpWithResult(en_AACTextContainer, op_GetVScrollBar, AACTextContainer_GetVScrollBar, nil, nil);
  PublishOpWithResult(en_AACTextContainer, op_SetJumpTo, AACTextContainer_SetJumpTo, nil, nil);
 end;//with Entities.Entities
end;

procedure TAACContainerPrimForm.MakeControls;
begin
 inherited;
 with AddUsertype(AACContainerName,
  str_AACContainerCaption,
  str_AACContainerCaption,
  true,
  21,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(AACContainerName
 f_pnBack := TvtProportionalPanel.Create(Self);
 f_pnBack.Name := 'pnBack';
 f_pnBack.Parent := Self;
 f_pnRightEx := TvtPanel.Create(Self);
 f_pnRightEx.Name := 'pnRightEx';
 f_pnRightEx.Parent := pnBack;
 f_pnRightForScroll := TvtPanel.Create(Self);
 f_pnRightForScroll.Name := 'pnRightForScroll';
 f_pnRightForScroll.Parent := pnRightEx;
 f_pnRight := TvtPanel.Create(Self);
 f_pnRight.Name := 'pnRight';
 f_pnRight.Parent := pnRightForScroll;
 with DefineZone(vcm_ztMain, f_pnRight) do
 begin
 end;//with DefineZone(vcm_ztMain, f_pnRight)
 f_pnlRightTop := TvtPanel.Create(Self);
 f_pnlRightTop.Name := 'pnlRightTop';
 f_pnlRightTop.Parent := pnRightForScroll;
 f_scrRight := TvtScrollBar.Create(Self);
 f_scrRight.Name := 'scrRight';
 f_scrRight.Parent := pnRightEx;
 f_pnLeftEx := TvtSizeablePanel.Create(Self);
 f_pnLeftEx.Name := 'pnLeftEx';
 f_pnLeftEx.Parent := pnBack;
 f_pnLeftForScroll := TvtPanel.Create(Self);
 f_pnLeftForScroll.Name := 'pnLeftForScroll';
 f_pnLeftForScroll.Parent := pnLeftEx;
 f_pnlLeftTop := TvtPanel.Create(Self);
 f_pnlLeftTop.Name := 'pnlLeftTop';
 f_pnlLeftTop.Parent := pnLeftForScroll;
 f_pnLeft := TvtPanel.Create(Self);
 f_pnLeft.Name := 'pnLeft';
 f_pnLeft.Parent := pnLeftForScroll;
 with DefineZone(vcm_ztChild, f_pnLeft) do
 begin
 end;//with DefineZone(vcm_ztChild, f_pnLeft)
 f_scrLeft := TvtScrollBar.Create(Self);
 f_scrLeft.Name := 'scrLeft';
 f_scrLeft.Parent := pnLeftEx;
 with AddUsertype(AACContentsContainerName,
  str_AACContentsContainerCaption,
  str_AACContentsContainerCaption,
  true,
  21,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(AACContentsContainerName
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_AACContainerCaption
 str_AACContainerCaption.Init;
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_AACContainerPrim_Control_pnBack
 Tkw_AACContainerPrim_Control_pnBack.Register('контрол::pnBack', TvtProportionalPanel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_AACContainerPrim_Control_pnBack_Push
 Tkw_AACContainerPrim_Control_pnBack_Push.Register('контрол::pnBack:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_AACContainerPrim_Control_pnRightEx
 Tkw_AACContainerPrim_Control_pnRightEx.Register('контрол::pnRightEx', TvtPanel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_AACContainerPrim_Control_pnRightEx_Push
 Tkw_AACContainerPrim_Control_pnRightEx_Push.Register('контрол::pnRightEx:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_AACContainerPrim_Control_pnRightForScroll
 Tkw_AACContainerPrim_Control_pnRightForScroll.Register('контрол::pnRightForScroll', TvtPanel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_AACContainerPrim_Control_pnRightForScroll_Push
 Tkw_AACContainerPrim_Control_pnRightForScroll_Push.Register('контрол::pnRightForScroll:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_AACContainerPrim_Control_pnRight
 Tkw_AACContainerPrim_Control_pnRight.Register('контрол::pnRight', TvtPanel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_AACContainerPrim_Control_pnRight_Push
 Tkw_AACContainerPrim_Control_pnRight_Push.Register('контрол::pnRight:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_AACContainerPrim_Control_pnlRightTop
 Tkw_AACContainerPrim_Control_pnlRightTop.Register('контрол::pnlRightTop', TvtPanel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_AACContainerPrim_Control_pnlRightTop_Push
 Tkw_AACContainerPrim_Control_pnlRightTop_Push.Register('контрол::pnlRightTop:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_AACContainerPrim_Control_scrRight
 Tkw_AACContainerPrim_Control_scrRight.Register('контрол::scrRight', TvtScrollBar);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_AACContainerPrim_Control_scrRight_Push
 Tkw_AACContainerPrim_Control_scrRight_Push.Register('контрол::scrRight:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_AACContainerPrim_Control_pnLeftEx
 Tkw_AACContainerPrim_Control_pnLeftEx.Register('контрол::pnLeftEx', TvtSizeablePanel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_AACContainerPrim_Control_pnLeftEx_Push
 Tkw_AACContainerPrim_Control_pnLeftEx_Push.Register('контрол::pnLeftEx:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_AACContainerPrim_Control_pnLeftForScroll
 Tkw_AACContainerPrim_Control_pnLeftForScroll.Register('контрол::pnLeftForScroll', TvtPanel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_AACContainerPrim_Control_pnLeftForScroll_Push
 Tkw_AACContainerPrim_Control_pnLeftForScroll_Push.Register('контрол::pnLeftForScroll:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_AACContainerPrim_Control_pnlLeftTop
 Tkw_AACContainerPrim_Control_pnlLeftTop.Register('контрол::pnlLeftTop', TvtPanel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_AACContainerPrim_Control_pnlLeftTop_Push
 Tkw_AACContainerPrim_Control_pnlLeftTop_Push.Register('контрол::pnlLeftTop:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_AACContainerPrim_Control_pnLeft
 Tkw_AACContainerPrim_Control_pnLeft.Register('контрол::pnLeft', TvtPanel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_AACContainerPrim_Control_pnLeft_Push
 Tkw_AACContainerPrim_Control_pnLeft_Push.Register('контрол::pnLeft:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_AACContainerPrim_Control_scrLeft
 Tkw_AACContainerPrim_Control_scrLeft.Register('контрол::scrLeft', TvtScrollBar);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_AACContainerPrim_Control_scrLeft_Push
 Tkw_AACContainerPrim_Control_scrLeft_Push.Register('контрол::scrLeft:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_AACContentsContainerCaption
 str_AACContentsContainerCaption.Init;
{$IfEnd} //not Admin AND not Monitorings

end.