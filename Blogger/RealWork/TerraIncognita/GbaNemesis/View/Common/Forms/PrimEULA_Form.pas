unit PrimEULA_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Common/Forms/PrimEULA_Form.pas"
// Начат: 25.08.2009 18:55
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Core::Common::View::Common::PrimEULA
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
  vcmEntityForm
  {$IfEnd} //not NoVCM
  ,
  eeMemoWithEditOperations,
  vtLabel,
  l3StringIDEx
  {$If not defined(NoScripts)}
  ,
  kwBynameControlPush
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  vtButton,
  vcmExternalInterfaces {a},
  vcmInterfaces {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TPrimEULAForm = {form} class(TvcmEntityForm)
 private
 // private fields
   f_ShellCaptionLabel : TvtLabel;
    {* Поле для свойства ShellCaptionLabel}
   f_OkButton : TvtButton;
    {* Поле для свойства OkButton}
   f_eeMemoWithEditOperations1 : TeeMemoWithEditOperations;
    {* Поле для свойства eeMemoWithEditOperations1}
 protected
  procedure MakeControls; override;
 private
 // private methods
   procedure OkButtonClick(Sender: TObject);
     {* TNotifyEvent is used for events that do not require parameters. }
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
 public
 // public properties
   property ShellCaptionLabel: TvtLabel
     read f_ShellCaptionLabel;
     {* Прочтите внимательно }
   property OkButton: TvtButton
     read f_OkButton;
     {* Ок }
   property eeMemoWithEditOperations1: TeeMemoWithEditOperations
     read f_eeMemoWithEditOperations1;
 end;//TPrimEULAForm

 TvcmEntityFormRef = TPrimEULAForm;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  Controls,
  Forms
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  l3MessageID,
  StdRes {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

var
   { Локализуемые строки EULA Local Const }
  str_EULAText : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'EULAText'; rValue : 'Правомерное владение экземпляром версии Электронного периодического справочника ' +
'"Система ГАРАНТ" возможно только на основании и на условиях договора с лицами, ' +
'указанными на сайте www.garant.ru'#13#10#13#10'ВНИМАНИЕ! НЕСОБЛЮДЕНИЕ ' +
'УКАЗАННОГО ВЫШЕ УСЛОВИЯ ЯВЛЯЕТСЯ НАРУШЕНИЕМ ЗАКОНОДАТЕЛЬСТВА РОССИЙСКОЙ ' +
'ФЕДЕРАЦИИ И ПРЕСЛЕДУЕТСЯ ПО ЗАКОНУ.');
   { 'Правомерное владение экземпляром версии Электронного периодического справочника ' +
'"Система ГАРАНТ" возможно только на основании и на условиях договора с лицами, ' +
'указанными на сайте www.garant.ru'#13#10#13#10'ВНИМАНИЕ! НЕСОБЛЮДЕНИЕ ' +
'УКАЗАННОГО ВЫШЕ УСЛОВИЯ ЯВЛЯЕТСЯ НАРУШЕНИЕМ ЗАКОНОДАТЕЛЬСТВА РОССИЙСКОЙ ' +
'ФЕДЕРАЦИИ И ПРЕСЛЕДУЕТСЯ ПО ЗАКОНУ.' }

type
  Tkw_PrimEULA_Control_ShellCaptionLabel = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола ShellCaptionLabel
----
*Пример использования*:
[code]
контрол::ShellCaptionLabel TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimEULA_Control_ShellCaptionLabel

// start class Tkw_PrimEULA_Control_ShellCaptionLabel

{$If not defined(NoScripts)}
function Tkw_PrimEULA_Control_ShellCaptionLabel.GetString: AnsiString;
 {-}
begin
 Result := 'ShellCaptionLabel';
end;//Tkw_PrimEULA_Control_ShellCaptionLabel.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimEULA_Control_ShellCaptionLabel_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола ShellCaptionLabel
----
*Пример использования*:
[code]
контрол::ShellCaptionLabel:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimEULA_Control_ShellCaptionLabel_Push

// start class Tkw_PrimEULA_Control_ShellCaptionLabel_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimEULA_Control_ShellCaptionLabel_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('ShellCaptionLabel');
 inherited;
end;//Tkw_PrimEULA_Control_ShellCaptionLabel_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimEULA_Control_OkButton = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола OkButton
----
*Пример использования*:
[code]
контрол::OkButton TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimEULA_Control_OkButton

// start class Tkw_PrimEULA_Control_OkButton

{$If not defined(NoScripts)}
function Tkw_PrimEULA_Control_OkButton.GetString: AnsiString;
 {-}
begin
 Result := 'OkButton';
end;//Tkw_PrimEULA_Control_OkButton.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimEULA_Control_OkButton_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола OkButton
----
*Пример использования*:
[code]
контрол::OkButton:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimEULA_Control_OkButton_Push

// start class Tkw_PrimEULA_Control_OkButton_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimEULA_Control_OkButton_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('OkButton');
 inherited;
end;//Tkw_PrimEULA_Control_OkButton_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimEULA_Control_eeMemoWithEditOperations1 = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола eeMemoWithEditOperations1
----
*Пример использования*:
[code]
контрол::eeMemoWithEditOperations1 TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimEULA_Control_eeMemoWithEditOperations1

// start class Tkw_PrimEULA_Control_eeMemoWithEditOperations1

{$If not defined(NoScripts)}
function Tkw_PrimEULA_Control_eeMemoWithEditOperations1.GetString: AnsiString;
 {-}
begin
 Result := 'eeMemoWithEditOperations1';
end;//Tkw_PrimEULA_Control_eeMemoWithEditOperations1.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimEULA_Control_eeMemoWithEditOperations1_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола eeMemoWithEditOperations1
----
*Пример использования*:
[code]
контрол::eeMemoWithEditOperations1:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimEULA_Control_eeMemoWithEditOperations1_Push

// start class Tkw_PrimEULA_Control_eeMemoWithEditOperations1_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimEULA_Control_eeMemoWithEditOperations1_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('eeMemoWithEditOperations1');
 inherited;
end;//Tkw_PrimEULA_Control_eeMemoWithEditOperations1_Push.DoDoIt
{$IfEnd} //not NoScripts

procedure TPrimEULAForm.OkButtonClick(Sender: TObject);
//#UC START# *51BAD500014C_4A93FB6B018F_var*
//#UC END# *51BAD500014C_4A93FB6B018F_var*
begin
//#UC START# *51BAD500014C_4A93FB6B018F_impl*
 ModalResult := mrOk;
//#UC END# *51BAD500014C_4A93FB6B018F_impl*
end;//TPrimEULAForm.OkButtonClick

{$If not defined(NoVCM)}
procedure TPrimEULAForm.DoInit(aFromHistory: Boolean);
//#UC START# *49803F5503AA_4A93FB6B018F_var*
//#UC END# *49803F5503AA_4A93FB6B018F_var*
begin
//#UC START# *49803F5503AA_4A93FB6B018F_impl*
 inherited;
 Position := poScreenCenter;
//#UC END# *49803F5503AA_4A93FB6B018F_impl*
end;//TPrimEULAForm.DoInit
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
procedure TPrimEULAForm.InitControls;
//#UC START# *4A8E8F2E0195_4A93FB6B018F_var*
//#UC END# *4A8E8F2E0195_4A93FB6B018F_var*
begin
//#UC START# *4A8E8F2E0195_4A93FB6B018F_impl*
 inherited;
 BorderStyle := bsSingle;
 BorderIcons := [biSystemMenu];
 ClientHeight := 250;
 ClientWidth := 386;

 with ShellCaptionLabel do
 begin
  Left := 10;
  Top := 8;
  Caption := 'Прочтите внимательно';
  Transparent := True;
 end;

 with OkButton do
 begin
  Left := 161;
  Top := 216;
  Width := 75;
  Height := 25;
  Cancel := True;
  Caption := 'Ок';
  Default := True;
  OnClick := OkButtonClick;
 end;

 with eeMemoWithEditOperations1 do
 begin
  Left := 12;
  Top := 28;
  Width := 361;
  Height := 175;
  Text := str_EULAText.AsStr;
  TextSource.ReadOnly := True;
  BevelInner := bvLowered;
  BorderStyle := bsSingle;
  ParentColor := True;
  ReadOnly := True;
  TabStop := True;
 end;
//#UC END# *4A8E8F2E0195_4A93FB6B018F_impl*
end;//TPrimEULAForm.InitControls
{$IfEnd} //not NoVCM

procedure TPrimEULAForm.MakeControls;
begin
 inherited;
 f_ShellCaptionLabel := TvtLabel.Create(Self);
 f_ShellCaptionLabel.Name := 'ShellCaptionLabel';
 f_ShellCaptionLabel.Parent := Self;
 f_ShellCaptionLabel.Caption := 'Прочтите внимательно';
 f_OkButton := TvtButton.Create(Self);
 f_OkButton.Name := 'OkButton';
 f_OkButton.Parent := Self;
 f_OkButton.Caption := 'Ок';
 f_eeMemoWithEditOperations1 := TeeMemoWithEditOperations.Create(Self);
 f_eeMemoWithEditOperations1.Name := 'eeMemoWithEditOperations1';
 f_eeMemoWithEditOperations1.Parent := Self;
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimEULA_Control_ShellCaptionLabel
 Tkw_PrimEULA_Control_ShellCaptionLabel.Register('контрол::ShellCaptionLabel', TvtLabel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimEULA_Control_ShellCaptionLabel_Push
 Tkw_PrimEULA_Control_ShellCaptionLabel_Push.Register('контрол::ShellCaptionLabel:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimEULA_Control_OkButton
 Tkw_PrimEULA_Control_OkButton.Register('контрол::OkButton', TvtButton);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimEULA_Control_OkButton_Push
 Tkw_PrimEULA_Control_OkButton_Push.Register('контрол::OkButton:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimEULA_Control_eeMemoWithEditOperations1
 Tkw_PrimEULA_Control_eeMemoWithEditOperations1.Register('контрол::eeMemoWithEditOperations1', TeeMemoWithEditOperations);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimEULA_Control_eeMemoWithEditOperations1_Push
 Tkw_PrimEULA_Control_eeMemoWithEditOperations1_Push.Register('контрол::eeMemoWithEditOperations1:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_EULAText
 str_EULAText.Init;
{$IfEnd} //not Admin AND not Monitorings

end.