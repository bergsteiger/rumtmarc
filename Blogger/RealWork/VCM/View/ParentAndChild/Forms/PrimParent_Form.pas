unit PrimParent_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/common/components/gui/Garant/VCM/View/ParentAndChild/Forms/PrimParent_Form.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMContainer::Class>> Shared Delphi F1 Like Application::F1Like::View::ParentAndChild::PrimParent
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\common\components\gui\f1LikeAppDefine.inc}

interface

uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmContainerForm
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  vtPanel,
  l3StringIDEx
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
  ,
  PrimParent_utHistory_UserType
  {$If not defined(NoVCM)}
  ,
  vcmInterfaces
  {$IfEnd} //not NoVCM
  ,
  vcmExternalInterfaces {a},
  vcmEntityForm {a}
  ;

type
 TPrimParentForm = {form} class(TvcmContainerForm)
 private
 // private fields
   f_ParentZone : TvtPanel;
    {* Поле для свойства ParentZone}
 protected
  procedure MakeControls; override;
 protected
 // overridden protected methods
   {$If not defined(NoVCM)}
   procedure DoInit(aFromHistory: Boolean); override;
     {* Инициализация формы. Для перекрытия в потомках }
   {$IfEnd} //not NoVCM
   {$If not defined(NoVCM)}
   procedure InitControls; override;
     {* Процедура инициализации контролов. Для перекрытия в потомках }
   {$IfEnd} //not NoVCM
    {$If not defined(NoVCM)}
   procedure FocusIsSetToUs; override;
    {$IfEnd} //not NoVCM
    {$If not defined(NoVCM)}
   procedure AfterInsertForm(const aForm: IvcmEntityForm); override;
    {$IfEnd} //not NoVCM
 public
 // public properties
   property ParentZone: TvtPanel
     read f_ParentZone;
 end;//TPrimParentForm

 TvcmContainerFormRef = TPrimParentForm;

implementation

uses
  Windows,
  Graphics,
  SysUtils,
  Forms,
  Controls
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  l3MessageID,
  StdRes {a}
  ;

var
   { Локализуемые строки utHistoryLocalConstants }
  str_utHistoryCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'utHistoryCaption'; rValue : 'История навигации');
   { Заголовок пользовательского типа "История навигации" }

type
  Tkw_PrimParent_Control_ParentZone = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола ParentZone
----
*Пример использования*:
[code]
контрол::ParentZone TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimParent_Control_ParentZone

// start class Tkw_PrimParent_Control_ParentZone

{$If not defined(NoScripts)}
function Tkw_PrimParent_Control_ParentZone.GetString: AnsiString;
 {-}
begin
 Result := 'ParentZone';
end;//Tkw_PrimParent_Control_ParentZone.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimParent_Control_ParentZone_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола ParentZone
----
*Пример использования*:
[code]
контрол::ParentZone:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimParent_Control_ParentZone_Push

// start class Tkw_PrimParent_Control_ParentZone_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimParent_Control_ParentZone_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('ParentZone');
 inherited;
end;//Tkw_PrimParent_Control_ParentZone_Push.DoDoIt
{$IfEnd} //not NoScripts

{$If not defined(NoVCM)}
procedure TPrimParentForm.DoInit(aFromHistory: Boolean);
//#UC START# *49803F5503AA_4F6B665B0143_var*
//#UC END# *49803F5503AA_4F6B665B0143_var*
begin
//#UC START# *49803F5503AA_4F6B665B0143_impl*
 inherited;
//#UC END# *49803F5503AA_4F6B665B0143_impl*
end;//TPrimParentForm.DoInit
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
procedure TPrimParentForm.InitControls;
//#UC START# *4A8E8F2E0195_4F6B665B0143_var*
//#UC END# *4A8E8F2E0195_4F6B665B0143_var*
begin
//#UC START# *4A8E8F2E0195_4F6B665B0143_impl*
 inherited;
 ActiveControl := ParentZone;
 with ParentZone do
 begin
   Left := 0;
   Top := 0;
   Width := 483;
   Height := 253;
   Align := alClient;
   BevelOuter := bvNone;
   Color := clWhite;
   TabOrder := 0;
 end;//with ParentZone
//#UC END# *4A8E8F2E0195_4F6B665B0143_impl*
end;//TPrimParentForm.InitControls
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
procedure TPrimParentForm.FocusIsSetToUs;
//#UC START# *4F7C6D6801F4_4F6B665B0143_var*
//#UC END# *4F7C6D6801F4_4F6B665B0143_var*
begin
//#UC START# *4F7C6D6801F4_4F6B665B0143_impl*
 inherited;
//#UC END# *4F7C6D6801F4_4F6B665B0143_impl*
end;//TPrimParentForm.FocusIsSetToUs
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
procedure TPrimParentForm.AfterInsertForm(const aForm: IvcmEntityForm);
//#UC START# *4F7C6DFE00DE_4F6B665B0143_var*
//#UC END# *4F7C6DFE00DE_4F6B665B0143_var*
begin
//#UC START# *4F7C6DFE00DE_4F6B665B0143_impl*
 inherited;
//#UC END# *4F7C6DFE00DE_4F6B665B0143_impl*
end;//TPrimParentForm.AfterInsertForm
{$IfEnd} //not NoVCM

procedure TPrimParentForm.MakeControls;
begin
 inherited;
 f_ParentZone := TvtPanel.Create(Self);
 f_ParentZone.Name := 'ParentZone';
 f_ParentZone.Parent := Self;
 with DefineZone(vcm_ztParent, f_ParentZone) do
 begin
 end;//with DefineZone(vcm_ztParent, f_ParentZone)
 with AddUsertype(utHistoryName,
  str_utHistoryCaption,
  str_utHistoryCaption,
  true,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(utHistoryName
end;

initialization
// Регистрация Tkw_PrimParent_Control_ParentZone
 Tkw_PrimParent_Control_ParentZone.Register('контрол::ParentZone', TvtPanel);
// Регистрация Tkw_PrimParent_Control_ParentZone_Push
 Tkw_PrimParent_Control_ParentZone_Push.Register('контрол::ParentZone:push');
// Инициализация str_utHistoryCaption
 str_utHistoryCaption.Init;

end.