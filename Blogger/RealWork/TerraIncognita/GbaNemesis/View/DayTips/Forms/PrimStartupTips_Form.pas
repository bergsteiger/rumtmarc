unit PrimStartupTips_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/DayTips/Forms/PrimStartupTips_Form.pas"
// Начат: 01.10.2009 22:27
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Интерфейсные элементы::DayTips::View::DayTips::PrimStartupTips
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
  DayTipsInterfaces,
  eeCheckBox
  {$If not defined(NoScripts)}
  ,
  kwBynameControlPush
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmBase {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TPrimStartupTipsForm = {form} class(TvcmEntityForm)
 private
 // private fields
   f_ShowCheckBox : TeeCheckBox;
    {* Поле для свойства ShowCheckBox}
 protected
 // property methods
   function pm_GetShowCheckBox: TeeCheckBox;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
 protected
 // protected fields
   f_Data : InsStartupTips;
 protected
 // protected methods
   procedure UpdateTip; virtual; abstract;
 public
 // public methods
   class function MakeSingleChild(const aData: InsStartupTips;
    const aCont   : IvcmContainer;
    aZoneType     : TvcmZoneType = vcm_ztAny;
    aUserType     : TvcmEffectiveUserType = 0;
    aDataSource   : IvcmFormDataSource = nil): IvcmEntityForm; reintroduce;
 public
 // public properties
   property ShowCheckBox: TeeCheckBox
     read pm_GetShowCheckBox;
 end;//TPrimStartupTipsForm

 TvcmEntityFormRef = TPrimStartupTipsForm;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  SysUtils
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  StdRes {a},
  l3Base {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

type
  Tkw_PrimStartupTips_Control_ShowCheckBox = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола ShowCheckBox
----
*Пример использования*:
[code]
контрол::ShowCheckBox TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimStartupTips_Control_ShowCheckBox

// start class Tkw_PrimStartupTips_Control_ShowCheckBox

{$If not defined(NoScripts)}
function Tkw_PrimStartupTips_Control_ShowCheckBox.GetString: AnsiString;
 {-}
begin
 Result := 'ShowCheckBox';
end;//Tkw_PrimStartupTips_Control_ShowCheckBox.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimStartupTips_Control_ShowCheckBox_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола ShowCheckBox
----
*Пример использования*:
[code]
контрол::ShowCheckBox:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimStartupTips_Control_ShowCheckBox_Push

// start class Tkw_PrimStartupTips_Control_ShowCheckBox_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimStartupTips_Control_ShowCheckBox_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('ShowCheckBox');
 inherited;
end;//Tkw_PrimStartupTips_Control_ShowCheckBox_Push.DoDoIt
{$IfEnd} //not NoScripts

function TPrimStartupTipsForm.pm_GetShowCheckBox: TeeCheckBox;
begin
 if (f_ShowCheckBox = nil) then
  f_ShowCheckBox := FindComponent('ShowCheckBox') As TeeCheckBox;
 Result := f_ShowCheckBox;
end;

class function TPrimStartupTipsForm.MakeSingleChild(const aData: InsStartupTips;
  const aCont   : IvcmContainer;
  aZoneType     : TvcmZoneType = vcm_ztAny;
  aUserType     : TvcmEffectiveUserType = 0;
  aDataSource   : IvcmFormDataSource = nil): IvcmEntityForm;

 procedure AfterCreate(aForm : TPrimStartupTipsForm);
 begin
  with aForm do
  begin
//#UC START# *4AC4F567002A_4AC4F49F010B_impl*
   f_Data := aData;
   Assert(Assigned(f_Data), 'Invalid params');
   ShowCheckBox.Checked := f_Data.DontShow;
   UpdateTip;
//#UC END# *4AC4F567002A_4AC4F49F010B_impl*
  end;//with aForm
 end;

var
 l_AC : TvcmInitProc;
 l_ACHack : Pointer absolute l_AC;
begin
 l_AC := l3LocalStub(@AfterCreate);
 try
  Result := inherited MakeSingleChild(aCont, vcmMakeParams, aZoneType, aUserType, nil, aDataSource, vcm_utAny, l_AC);
 finally
  l3FreeLocalStub(l_ACHack);
 end;//try..finally
end;

procedure TPrimStartupTipsForm.Cleanup;
//#UC START# *479731C50290_4AC4F49F010B_var*
//#UC END# *479731C50290_4AC4F49F010B_var*
begin
//#UC START# *479731C50290_4AC4F49F010B_impl*
 f_Data := nil;
 inherited;
//#UC END# *479731C50290_4AC4F49F010B_impl*
end;//TPrimStartupTipsForm.Cleanup

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimStartupTips_Control_ShowCheckBox
 Tkw_PrimStartupTips_Control_ShowCheckBox.Register('контрол::ShowCheckBox', TeeCheckBox);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimStartupTips_Control_ShowCheckBox_Push
 Tkw_PrimStartupTips_Control_ShowCheckBox_Push.Register('контрол::ShowCheckBox:push');
{$IfEnd} //not Admin AND not Monitorings

end.