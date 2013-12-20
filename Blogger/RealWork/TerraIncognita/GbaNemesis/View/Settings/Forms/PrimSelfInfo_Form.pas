unit PrimSelfInfo_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Settings/Forms/PrimSelfInfo_Form.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Основные прецеденты::Settings::View::Settings::PrimSelfInfo
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
  AdminDomainInterfaces,
  vcmExternalInterfaces {a},
  vcmInterfaces {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TPrimSelfInfoForm = {form} class(TvcmEntityForm)
 private
 // private fields
   f_Info : InsUserProperty;
    {* Поле для свойства Info}
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   {$If not defined(NoVCM)}
   procedure InitControls; override;
     {* Процедура инициализации контролов. Для перекрытия в потомках }
   {$IfEnd} //not NoVCM
   procedure ClearFields; override;
 public
 // public properties
   property Info: InsUserProperty
     read f_Info;
 end;//TPrimSelfInfoForm

 TvcmEntityFormRef = TPrimSelfInfoForm;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  nsUserProperty,
  DataAdapter,
  SecurityUnit,
  StdRes {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

// start class TPrimSelfInfoForm

procedure TPrimSelfInfoForm.Cleanup;
//#UC START# *479731C50290_4B5430390380_var*
//#UC END# *479731C50290_4B5430390380_var*
begin
//#UC START# *479731C50290_4B5430390380_impl*
 f_Info := nil;
 inherited Cleanup;
//#UC END# *479731C50290_4B5430390380_impl*
end;//TPrimSelfInfoForm.Cleanup

{$If not defined(NoVCM)}
procedure TPrimSelfInfoForm.InitControls;
//#UC START# *4A8E8F2E0195_4B5430390380_var*
var
 lProfile: IUserProfile;
//#UC END# *4A8E8F2E0195_4B5430390380_var*
begin
//#UC START# *4A8E8F2E0195_4B5430390380_impl*
 if (ZoneType <> vcm_ztForToolbarsInfo) then
 begin
  defDataAdapter.NativeAdapter.MakeUserManager.GetSelfProfile(lProfile);
  f_Info := TnsUserProperty.Make(lProfile);
 end; 
 inherited InitControls;
//#UC END# *4A8E8F2E0195_4B5430390380_impl*
end;//TPrimSelfInfoForm.InitControls
{$IfEnd} //not NoVCM

procedure TPrimSelfInfoForm.ClearFields;
 {-}
begin
 f_Info := nil;
 inherited;
end;//TPrimSelfInfoForm.ClearFields

{$IfEnd} //not Admin AND not Monitorings

end.