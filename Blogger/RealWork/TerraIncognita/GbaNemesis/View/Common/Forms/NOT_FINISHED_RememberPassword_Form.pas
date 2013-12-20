unit NOT_FINISHED_RememberPassword_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Common/Forms/NOT_FINISHED_RememberPassword_Form.pas"
// Начат: 24.08.2009 20:35
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Core::Common::View::Common::PrimF1Common::RememberPassword
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  PrimRememberPassword_Form,
  l3StringIDEx
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  RememberPassword_ut_RememberPassword_UserType,
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
  TRememberPasswordForm = {final form} class(TvcmEntityFormRef)
  Entities : TvcmEntities;
  protected
   procedure MakeControls; override;
  end;//TRememberPasswordForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$R *.DFM}

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  l3MessageID
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

var
    { Локализуемые строки ut_RememberPasswordLocalConstants }
   str_ut_RememberPasswordCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'ut_RememberPasswordCaption'; rValue : 'RememberPassword');
    { Заголовок пользовательского типа "RememberPassword" }

// start class TRememberPasswordForm

procedure TRememberPasswordForm.MakeControls;
begin
 inherited;
 with AddUsertype(ut_RememberPasswordName,
  str_ut_RememberPasswordCaption,
  str_ut_RememberPasswordCaption,
  false,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(ut_RememberPasswordName
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_ut_RememberPasswordCaption
 str_ut_RememberPasswordCaption.Init;
{$IfEnd} //not Admin AND not Monitorings

end.