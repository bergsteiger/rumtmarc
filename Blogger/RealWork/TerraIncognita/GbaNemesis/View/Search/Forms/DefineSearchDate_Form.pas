unit DefineSearchDate_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/DefineSearchDate_Form.pas"
// Начат: 22.09.2009 16:49
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Основные прецеденты::Search::View::Search::Search::DefineSearchDate
//
// Дата
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
  
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  PrimDefineSearchDate_Form,
  l3StringIDEx
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  DefineSearchDate_ut_DefineSearchDate_UserType,
  vtPanel,
  vtLabel,
  vtDblClickDateEdit,
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
    { DefineSearchDateIDs }
   fm_en_DefineSearchDate : TvcmFormDescriptor = (rFormID : (rName : 'en_DefineSearchDate'; rID : 0); rFactory : nil);
    { Идентификатор формы Ten_DefineSearchDate }

type
 DefineSearchDateFormDef = interface(IUnknown)
  {* Идентификатор формы DefineSearchDate }
   ['{95B053C2-B5BB-4EE7-9D05-E6333C48DF52}']
 end;//DefineSearchDateFormDef

  Ten_DefineSearchDate = {final form} class(TvcmEntityFormRef, DefineSearchDateFormDef)
   {* Дата }
  Entities : TvcmEntities;
  protected
   procedure MakeControls; override;
  end;//Ten_DefineSearchDate

  TDefineSearchDateForm = Ten_DefineSearchDate;
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
  ,
  l3MessageID
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

var
    { Локализуемые строки ut_DefineSearchDateLocalConstants }
   str_ut_DefineSearchDateCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'ut_DefineSearchDateCaption'; rValue : 'Дата');
    { Заголовок пользовательского типа "Дата" }

type
   Tkw_Form_DefineSearchDate = class(TtfwControlString)
    {* Слово словаря для идентификатора формы DefineSearchDate
----
*Пример использования*:
[code]
'aControl' форма::DefineSearchDate TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_DefineSearchDate

// start class Tkw_Form_DefineSearchDate

{$If not defined(NoScripts)}
function Tkw_Form_DefineSearchDate.GetString: AnsiString;
 {-}
begin
 Result := 'en_DefineSearchDate';
end;//Tkw_Form_DefineSearchDate.GetString
{$IfEnd} //not NoScripts

type
   Tkw_DefineSearchDate_Panel1_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола Panel1 формы DefineSearchDate }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_DefineSearchDate_Panel1_ControlInstance

// start class Tkw_DefineSearchDate_Panel1_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_DefineSearchDate_Panel1_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_DefineSearchDate).Panel1);
end;//Tkw_DefineSearchDate_Panel1_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_DefineSearchDate_ElLabel1_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола ElLabel1 формы DefineSearchDate }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_DefineSearchDate_ElLabel1_ControlInstance

// start class Tkw_DefineSearchDate_ElLabel1_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_DefineSearchDate_ElLabel1_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_DefineSearchDate).ElLabel1);
end;//Tkw_DefineSearchDate_ElLabel1_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_DefineSearchDate_ElLabel2_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола ElLabel2 формы DefineSearchDate }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_DefineSearchDate_ElLabel2_ControlInstance

// start class Tkw_DefineSearchDate_ElLabel2_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_DefineSearchDate_ElLabel2_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_DefineSearchDate).ElLabel2);
end;//Tkw_DefineSearchDate_ElLabel2_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_DefineSearchDate_ElLabel3_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола ElLabel3 формы DefineSearchDate }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_DefineSearchDate_ElLabel3_ControlInstance

// start class Tkw_DefineSearchDate_ElLabel3_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_DefineSearchDate_ElLabel3_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_DefineSearchDate).ElLabel3);
end;//Tkw_DefineSearchDate_ElLabel3_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_DefineSearchDate_dD1EqD2_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола dD1EqD2 формы DefineSearchDate }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_DefineSearchDate_dD1EqD2_ControlInstance

// start class Tkw_DefineSearchDate_dD1EqD2_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_DefineSearchDate_dD1EqD2_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_DefineSearchDate).dD1EqD2);
end;//Tkw_DefineSearchDate_dD1EqD2_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_DefineSearchDate_rbEq_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола rbEq формы DefineSearchDate }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_DefineSearchDate_rbEq_ControlInstance

// start class Tkw_DefineSearchDate_rbEq_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_DefineSearchDate_rbEq_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_DefineSearchDate).rbEq);
end;//Tkw_DefineSearchDate_rbEq_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_DefineSearchDate_rbInt_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола rbInt формы DefineSearchDate }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_DefineSearchDate_rbInt_ControlInstance

// start class Tkw_DefineSearchDate_rbInt_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_DefineSearchDate_rbInt_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_DefineSearchDate).rbInt);
end;//Tkw_DefineSearchDate_rbInt_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_DefineSearchDate_rbD2Only_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола rbD2Only формы DefineSearchDate }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_DefineSearchDate_rbD2Only_ControlInstance

// start class Tkw_DefineSearchDate_rbD2Only_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_DefineSearchDate_rbD2Only_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_DefineSearchDate).rbD2Only);
end;//Tkw_DefineSearchDate_rbD2Only_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_DefineSearchDate_dD1Only_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола dD1Only формы DefineSearchDate }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_DefineSearchDate_dD1Only_ControlInstance

// start class Tkw_DefineSearchDate_dD1Only_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_DefineSearchDate_dD1Only_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_DefineSearchDate).dD1Only);
end;//Tkw_DefineSearchDate_dD1Only_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_DefineSearchDate_dD2Only_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола dD2Only формы DefineSearchDate }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_DefineSearchDate_dD2Only_ControlInstance

// start class Tkw_DefineSearchDate_dD2Only_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_DefineSearchDate_dD2Only_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_DefineSearchDate).dD2Only);
end;//Tkw_DefineSearchDate_dD2Only_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_DefineSearchDate_dD1_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола dD1 формы DefineSearchDate }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_DefineSearchDate_dD1_ControlInstance

// start class Tkw_DefineSearchDate_dD1_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_DefineSearchDate_dD1_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_DefineSearchDate).dD1);
end;//Tkw_DefineSearchDate_dD1_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_DefineSearchDate_rbD1Only_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола rbD1Only формы DefineSearchDate }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_DefineSearchDate_rbD1Only_ControlInstance

// start class Tkw_DefineSearchDate_rbD1Only_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_DefineSearchDate_rbD1Only_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_DefineSearchDate).rbD1Only);
end;//Tkw_DefineSearchDate_rbD1Only_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_DefineSearchDate_dD2_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола dD2 формы DefineSearchDate }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_DefineSearchDate_dD2_ControlInstance

// start class Tkw_DefineSearchDate_dD2_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_DefineSearchDate_dD2_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_DefineSearchDate).dD2);
end;//Tkw_DefineSearchDate_dD2_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

procedure Ten_DefineSearchDate.MakeControls;
begin
 inherited;
 with AddUsertype(ut_DefineSearchDateName,
  str_ut_DefineSearchDateCaption,
  str_ut_DefineSearchDateCaption,
  false,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(ut_DefineSearchDateName
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_DefineSearchDate
 Tkw_Form_DefineSearchDate.Register('форма::DefineSearchDate', Ten_DefineSearchDate);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_DefineSearchDate_Panel1_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_DefineSearchDate.Panel1', Tkw_DefineSearchDate_Panel1_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_DefineSearchDate_ElLabel1_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_DefineSearchDate.ElLabel1', Tkw_DefineSearchDate_ElLabel1_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_DefineSearchDate_ElLabel2_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_DefineSearchDate.ElLabel2', Tkw_DefineSearchDate_ElLabel2_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_DefineSearchDate_ElLabel3_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_DefineSearchDate.ElLabel3', Tkw_DefineSearchDate_ElLabel3_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_DefineSearchDate_dD1EqD2_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_DefineSearchDate.dD1EqD2', Tkw_DefineSearchDate_dD1EqD2_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_DefineSearchDate_rbEq_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_DefineSearchDate.rbEq', Tkw_DefineSearchDate_rbEq_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_DefineSearchDate_rbInt_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_DefineSearchDate.rbInt', Tkw_DefineSearchDate_rbInt_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_DefineSearchDate_rbD2Only_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_DefineSearchDate.rbD2Only', Tkw_DefineSearchDate_rbD2Only_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_DefineSearchDate_dD1Only_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_DefineSearchDate.dD1Only', Tkw_DefineSearchDate_dD1Only_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_DefineSearchDate_dD2Only_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_DefineSearchDate.dD2Only', Tkw_DefineSearchDate_dD2Only_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_DefineSearchDate_dD1_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_DefineSearchDate.dD1', Tkw_DefineSearchDate_dD1_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_DefineSearchDate_rbD1Only_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_DefineSearchDate.rbD1Only', Tkw_DefineSearchDate_rbD1Only_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_DefineSearchDate_dD2_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_DefineSearchDate.dD2', Tkw_DefineSearchDate_dD2_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_ut_DefineSearchDateCaption
 str_ut_DefineSearchDateCaption.Init;
{$IfEnd} //not Admin AND not Monitorings

end.