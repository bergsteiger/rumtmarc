unit PrimLongProcess_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/PrimCommon/Forms/PrimLongProcess_Form.pas"
// Начат: 25.08.2009 16:50
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Базовые определения предметной области::F1 Application Template::View::PrimCommon::PrimLongProcess
//
// Индикатор длительного процесса
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

uses
  l3Interfaces
  {$If not defined(NoVCM)}
  ,
  vcmEntityForm
  {$IfEnd} //not NoVCM
  ,
  nsTypes,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmBase {a}
  ;

type
 TnsLongProcessData = {$IfDef XE4}record{$Else}object{$EndIf}
 public
   rMessage : Il3CString;
   rMessageType : TnsLongProcessType;
   rIconName : PAnsiChar;
 end;//TnsLongProcessData

 TPrimLongProcessForm = {form} class(TvcmEntityForm)
  {* Индикатор длительного процесса }
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
 protected
 // protected fields
   f_Data : TnsLongProcessData;
 protected
 // protected methods
   procedure Prepare; virtual; abstract;
 public
 // public methods
   class function Make(const aData: TnsLongProcessData;
    const aParams : IvcmMakeParams = nil;
    aZoneType     : TvcmZoneType = vcm_ztAny;
    aUserType     : TvcmEffectiveUserType = 0;
    aDataSource   : IvcmFormDataSource = nil): IvcmEntityForm; reintroduce;
 end;//TPrimLongProcessForm

 TvcmEntityFormRef = TPrimLongProcessForm;

function TnsLongProcessData_C(const aMessage: Il3CString;
    aMessageType: TnsLongProcessType;
    anIconName: PAnsiChar): TnsLongProcessData;

implementation

uses
  StdRes {a},
  l3Base {a}
  ;


function TnsLongProcessData_C(const aMessage: Il3CString;
        aMessageType: TnsLongProcessType;
        anIconName: PAnsiChar): TnsLongProcessData;
//#UC START# *4B17B6FA024F_498C7D4301A5_var*
//#UC END# *4B17B6FA024F_498C7D4301A5_var*
begin
 System.FillChar(Result, SizeOf(Result), 0);
//#UC START# *4B17B6FA024F_498C7D4301A5_impl*
 Result.rMessage := aMessage;
 Result.rMessageType := aMessageType;
 Result.rIconName := anIconName;
//#UC END# *4B17B6FA024F_498C7D4301A5_impl*
end;//TnsLongProcessData.C

// start class TPrimLongProcessForm

class function TPrimLongProcessForm.Make(const aData: TnsLongProcessData;
  const aParams : IvcmMakeParams = nil;
  aZoneType     : TvcmZoneType = vcm_ztAny;
  aUserType     : TvcmEffectiveUserType = 0;
  aDataSource   : IvcmFormDataSource = nil): IvcmEntityForm;

 procedure AfterCreate(aForm : TPrimLongProcessForm);
 begin
  with aForm do
  begin
//#UC START# *4AC4E25E0258_4A93DDAE0396_impl*
   f_Data := aData;
   //Assert(f_Data <> nil);
   Prepare;
//#UC END# *4AC4E25E0258_4A93DDAE0396_impl*
  end;//with aForm
 end;

var
 l_AC : TvcmInitProc;
 l_ACHack : Pointer absolute l_AC;
begin
 l_AC := l3LocalStub(@AfterCreate);
 try
  Result := inherited Make(aParams, aZoneType, aUserType, nil, aDataSource, vcm_utAny, l_AC);
 finally
  l3FreeLocalStub(l_ACHack);
 end;//try..finally
end;

procedure TPrimLongProcessForm.Cleanup;
//#UC START# *479731C50290_4A93DDAE0396_var*
//#UC END# *479731C50290_4A93DDAE0396_var*
begin
//#UC START# *479731C50290_4A93DDAE0396_impl*
 Finalize(f_Data);
 inherited;
//#UC END# *479731C50290_4A93DDAE0396_impl*
end;//TPrimLongProcessForm.Cleanup

end.