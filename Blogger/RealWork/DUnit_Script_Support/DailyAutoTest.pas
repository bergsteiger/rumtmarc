unit DailyAutoTest;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "DUnit Script Support"
// Модуль: "w:/common/components/rtl/Garant/DUnit_Script_Support/DailyAutoTest.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi DUnit Scripting::DUnit Script Support::DUnitKeyWordsSupport::TDailyAutoTest
//
// Автотест с поддержкой создаваемых форм.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\DUnit_Script_Support\dsDefine.inc}

interface

uses
  DailyScriptTest
  ;

type
 TDailyAutoTest = {abstract} class(TDailyScriptTest)
  {* Автотест с поддержкой создаваемых форм. }
 protected
 // overridden protected methods
   {$If defined(nsTest)}
   function GetFolder: AnsiString; override;
     {* Папка в которую входит тест }
   {$IfEnd} //nsTest
    {$If not defined(NoScripts)}
   function ResolveScriptFilePath(const aFileName: AnsiString): AnsiString; override;
    {$IfEnd} //not NoScripts
   {$If defined(nsTest)}
   class function IsScript: Boolean; override;
     {* Хак для конструктора - из-за хитрой иерархии и кучи конструкторов в TTestSuite. }
   {$IfEnd} //nsTest
 public
 // overridden public methods
   {$If defined(nsTest)}
   constructor Create(const aMethodName: AnsiString;
    const aFolder: AnsiString); override;
   {$IfEnd} //nsTest
 end;//TDailyAutoTest

implementation

uses
  SysUtils
  ;

// start class TDailyAutoTest

{$If defined(nsTest)}
function TDailyAutoTest.GetFolder: AnsiString;
//#UC START# *4C937013031D_4E297BC401BE_var*
//#UC END# *4C937013031D_4E297BC401BE_var*
begin
//#UC START# *4C937013031D_4E297BC401BE_impl*
 Result := 'Scripts';
//#UC END# *4C937013031D_4E297BC401BE_impl*
end;//TDailyAutoTest.GetFolder
{$IfEnd} //nsTest

{$If not defined(NoScripts)}
function TDailyAutoTest.ResolveScriptFilePath(const aFileName: AnsiString): AnsiString;
//#UC START# *4DB03121022B_4E297BC401BE_var*
//#UC END# *4DB03121022B_4E297BC401BE_var*
begin
//#UC START# *4DB03121022B_4E297BC401BE_impl*
 if (ExtractFilePath(aFileName) <> '') then
  Result := aFileName
 else
  Result := FileFromCurrent('Auto') + '\'+ aFileName;
//#UC END# *4DB03121022B_4E297BC401BE_impl*
end;//TDailyAutoTest.ResolveScriptFilePath
{$IfEnd} //not NoScripts

{$If defined(nsTest)}
class function TDailyAutoTest.IsScript: Boolean;
//#UC START# *4DC395670274_4E297BC401BE_var*
//#UC END# *4DC395670274_4E297BC401BE_var*
begin
//#UC START# *4DC395670274_4E297BC401BE_impl*
 Result := True;
//#UC END# *4DC395670274_4E297BC401BE_impl*
end;//TDailyAutoTest.IsScript
{$IfEnd} //nsTest

{$If defined(nsTest)}
constructor TDailyAutoTest.Create(const aMethodName: AnsiString;
  const aFolder: AnsiString);
//#UC START# *4DC399CA00BC_4E297BC401BE_var*
//#UC END# *4DC399CA00BC_4E297BC401BE_var*
begin
//#UC START# *4DC399CA00BC_4E297BC401BE_impl*
 inherited Create(aMethodName, aFolder);
 FMethod := Self.DoIt;
//#UC END# *4DC399CA00BC_4E297BC401BE_impl*
end;//TDailyAutoTest.Create
{$IfEnd} //nsTest

end.