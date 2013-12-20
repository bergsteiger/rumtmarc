unit NOT_FINISHED_LongProcess_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/PrimCommon/Forms/NOT_FINISHED_LongProcess_Form.pas"
// Начат: 21.08.2009 20:15
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Базовые определения предметной области::F1 Application Template::View::PrimCommon::PrimCommon::LongProcess
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  PrimLongProcess_Form,
  l3StringIDEx
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  LongProcess_ut_LongProcess_UserType,
  l3InterfacedComponent {a},
  vcmComponent {a},
  vcmBaseEntities {a},
  vcmEntities {a},
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;

type
  TLongProcessForm = {final form} class(TvcmEntityFormRef)
  Entities : TvcmEntities;
  protected
   procedure MakeControls; override;
  protected
  // realized methods
   procedure Prepare; override;
  end;//TLongProcessForm

implementation

{$R *.DFM}

uses
  l3MessageID
  ;

var
    { Локализуемые строки ut_LongProcessLocalConstants }
   str_ut_LongProcessCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'ut_LongProcessCaption'; rValue : 'LongProcess');
    { Заголовок пользовательского типа "LongProcess" }

// start class TLongProcessForm

procedure TLongProcessForm.Prepare;
//#UC START# *4AC5FF7100F2_4A93DDCC03E3_var*
//#UC END# *4AC5FF7100F2_4A93DDCC03E3_var*
begin
//#UC START# *4AC5FF7100F2_4A93DDCC03E3_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AC5FF7100F2_4A93DDCC03E3_impl*
end;//TLongProcessForm.Prepare

procedure TLongProcessForm.MakeControls;
begin
 inherited;
 with AddUsertype(ut_LongProcessName,
  str_ut_LongProcessCaption,
  str_ut_LongProcessCaption,
  false,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(ut_LongProcessName
end;

initialization
// Инициализация str_ut_LongProcessCaption
 str_ut_LongProcessCaption.Init;

end.