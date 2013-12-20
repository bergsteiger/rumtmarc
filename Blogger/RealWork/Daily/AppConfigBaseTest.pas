unit AppConfigBaseTest;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "DailyTest"
// Модуль: "w:/common/components/rtl/Garant/Daily/AppConfigBaseTest.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<TestCase::Class>> Shared Delphi Tests::DailyTest::AppConfig::TAppConfigBaseTest
//
// Тесты на работу конфигурации
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Daily\TestDefine.inc.pas}

interface

{$If defined(nsTest) AND not defined(NoScripts)}
uses
  ddAppConfigTypes
  {$If defined(nsTest) AND not defined(NoVCM)}
  ,
  EmptyFormTest
  {$IfEnd} //nsTest AND not NoVCM
  ,
  ddConfigStorages,
  Types
  ;
{$IfEnd} //nsTest AND not NoScripts

{$If defined(nsTest) AND not defined(NoScripts)}
type
 TAppConfigBaseTest = {abstract} class(TEmptyFormTest)
  {* Тесты на работу конфигурации }
 private
 // private fields
   f_Config : TddAppConfigNode;
   f_ConfigStorage : IddConfigStorage;
 protected
 // overridden protected methods
   procedure Cleanup; override;
   {$If defined(nsTest) AND not defined(NoVCM)}
   function FormExtent: TPoint; override;
     {* Размеры формы }
   {$IfEnd} //nsTest AND not NoVCM
   {$If defined(nsTest) AND not defined(NoVCM)}
   procedure FormMade(const aForm: _FormClass_); override;
   {$IfEnd} //nsTest AND not NoVCM
   function GetFolder: AnsiString; override;
     {* Папка в которую входит тест }
   function GetModelElementGUID: AnsiString; override;
     {* Идентификатор элемента модели, который описывает тест }
    {$If defined(nsTest) AND not defined(NoVCM)}
   procedure CheckControl; override;
    {$IfEnd} //nsTest AND not NoVCM
 end;//TAppConfigBaseTest
{$IfEnd} //nsTest AND not NoScripts

implementation

{$If defined(nsTest) AND not defined(NoScripts)}
uses
  SysUtils,
  ddAppConfigUtils,
  ConfigStorageStub,
  Windows,
  Messages,
  vtCheckBox,
  TestFrameWork,
  ddAppConfigTypesModelPart
  ;
{$IfEnd} //nsTest AND not NoScripts

{$If defined(nsTest) AND not defined(NoScripts)}

// start class TAppConfigBaseTest

procedure TAppConfigBaseTest.Cleanup;
//#UC START# *4B2F40FD0088_51D52B6301DD_var*
//#UC END# *4B2F40FD0088_51D52B6301DD_var*
begin
//#UC START# *4B2F40FD0088_51D52B6301DD_impl*
 FreeAndNil(f_Config);
 f_ConfigStorage := nil;
 inherited;
//#UC END# *4B2F40FD0088_51D52B6301DD_impl*
end;//TAppConfigBaseTest.Cleanup

{$If defined(nsTest) AND not defined(NoVCM)}
function TAppConfigBaseTest.FormExtent: TPoint;
//#UC START# *4C08CF700318_51D52B6301DD_var*
//#UC END# *4C08CF700318_51D52B6301DD_var*
begin
//#UC START# *4C08CF700318_51D52B6301DD_impl*
 Result.X := 400;
 Result.Y := 200;
//#UC END# *4C08CF700318_51D52B6301DD_impl*
end;//TAppConfigBaseTest.FormExtent
{$IfEnd} //nsTest AND not NoVCM

{$If defined(nsTest) AND not defined(NoVCM)}
procedure TAppConfigBaseTest.FormMade(const aForm: _FormClass_);
//#UC START# *4C08D61F0231_51D52B6301DD_var*
//#UC END# *4C08D61F0231_51D52B6301DD_var*
begin
//#UC START# *4C08D61F0231_51D52B6301DD_impl*
 inherited;
 f_ConfigStorage := TConfigStorageStub.Make;
 f_Config := MakeNode('Config', 'Настройки', False,
              MakeBoolean('CheckBoolean', 'Проверочное булевское значение', False,
              nil));
 f_Config.LabelTop := False;
 IddConfigNode(f_Config).CreateFrame(aForm.WorkSpace, 0);
 f_Config.Load(f_ConfigStorage);
 IddConfigNode(f_Config).SetControlValues(False);
//#UC END# *4C08D61F0231_51D52B6301DD_impl*
end;//TAppConfigBaseTest.FormMade
{$IfEnd} //nsTest AND not NoVCM

function TAppConfigBaseTest.GetFolder: AnsiString;
 {-}
begin
 Result := 'AppConfig';
end;//TAppConfigBaseTest.GetFolder

function TAppConfigBaseTest.GetModelElementGUID: AnsiString;
 {-}
begin
 Result := '51D52B6301DD';
end;//TAppConfigBaseTest.GetModelElementGUID

{$If defined(nsTest) AND not defined(NoVCM)}
procedure TAppConfigBaseTest.CheckControl;
//#UC START# *51D5464D033C_51D52B6301DD_var*
var
 l_CheckBox: TvtCheckBox;
//#UC END# *51D5464D033C_51D52B6301DD_var*
begin
//#UC START# *51D5464D033C_51D52B6301DD_impl*
 l_CheckBox := (f_Config.Items[0].Control as TvtCheckBox);
 Check(SendMessage(l_CheckBox.Handle, BM_GETCHECK, 0, 0) = BST_CHECKED);
//#UC END# *51D5464D033C_51D52B6301DD_impl*
end;//TAppConfigBaseTest.CheckControl
{$IfEnd} //nsTest AND not NoVCM

{$IfEnd} //nsTest AND not NoScripts

end.