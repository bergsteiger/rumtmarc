unit tfwArray;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/tfwArray.pas"
// Начат: 12.05.2011 21:22
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TtfwArray
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  tfwScriptingInterfaces,
  tfwValueList,
  l3PureMixIns
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TtfwArray = class(TtfwValueList, ItfwValueList)
 protected
 // realized methods
   function pm_GetFirst: TtfwStackValue;
   function pm_GetLast: TtfwStackValue;
   function pm_GetItems(anIndex: Integer): TtfwStackValue;
   function pm_GetEmpty: Boolean;
   function pm_GetCount: Integer;
   procedure Insert(anIndex: Integer;
    const anItem: TtfwStackValue);
   procedure Clear;
 public
 // realized methods
   function IndexOf(const anItem: TtfwStackValue): Integer;
   function Add(const anItem: TtfwStackValue): Integer;
 public
 // public methods
   constructor Create; reintroduce;
   class function Make: ItfwValueList; reintroduce;
     {* Сигнатура фабрики TtfwArray.Make }
 end;//TtfwArray
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}

// start class TtfwArray

constructor TtfwArray.Create;
//#UC START# *4DCC1E58031B_4DCC173A026C_var*
//#UC END# *4DCC1E58031B_4DCC173A026C_var*
begin
//#UC START# *4DCC1E58031B_4DCC173A026C_impl*
 inherited Create;
//#UC END# *4DCC1E58031B_4DCC173A026C_impl*
end;//TtfwArray.Create

class function TtfwArray.Make: ItfwValueList;
var
 l_Inst : TtfwArray;
begin
 l_Inst := Create;
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

function TtfwArray.pm_GetFirst: TtfwStackValue;
//#UC START# *47D8233603DD_4DCC173A026Cget_var*
//#UC END# *47D8233603DD_4DCC173A026Cget_var*
begin
//#UC START# *47D8233603DD_4DCC173A026Cget_impl*
 Result := inherited pm_GetFirst;
//#UC END# *47D8233603DD_4DCC173A026Cget_impl*
end;//TtfwArray.pm_GetFirst

function TtfwArray.pm_GetLast: TtfwStackValue;
//#UC START# *47D823570315_4DCC173A026Cget_var*
//#UC END# *47D823570315_4DCC173A026Cget_var*
begin
//#UC START# *47D823570315_4DCC173A026Cget_impl*
 Result := inherited pm_GetLast;
//#UC END# *47D823570315_4DCC173A026Cget_impl*
end;//TtfwArray.pm_GetLast

function TtfwArray.pm_GetItems(anIndex: Integer): TtfwStackValue;
//#UC START# *47D8248802AD_4DCC173A026Cget_var*
//#UC END# *47D8248802AD_4DCC173A026Cget_var*
begin
//#UC START# *47D8248802AD_4DCC173A026Cget_impl*
 Result := inherited pm_GetItems(anIndex);
//#UC END# *47D8248802AD_4DCC173A026Cget_impl*
end;//TtfwArray.pm_GetItems

function TtfwArray.pm_GetEmpty: Boolean;
//#UC START# *47E381E203D2_4DCC173A026Cget_var*
//#UC END# *47E381E203D2_4DCC173A026Cget_var*
begin
//#UC START# *47E381E203D2_4DCC173A026Cget_impl*
 Result := inherited pm_GetEmpty;
//#UC END# *47E381E203D2_4DCC173A026Cget_impl*
end;//TtfwArray.pm_GetEmpty

function TtfwArray.IndexOf(const anItem: TtfwStackValue): Integer;
//#UC START# *482955910076_4DCC173A026C_var*
//#UC END# *482955910076_4DCC173A026C_var*
begin
//#UC START# *482955910076_4DCC173A026C_impl*
 Result := inherited IndexOf(anItem);
//#UC END# *482955910076_4DCC173A026C_impl*
end;//TtfwArray.IndexOf

function TtfwArray.Add(const anItem: TtfwStackValue): Integer;
//#UC START# *482958A203D0_4DCC173A026C_var*
//#UC END# *482958A203D0_4DCC173A026C_var*
begin
//#UC START# *482958A203D0_4DCC173A026C_impl*
 Result := inherited Add(anItem);
//#UC END# *482958A203D0_4DCC173A026C_impl*
end;//TtfwArray.Add

function TtfwArray.pm_GetCount: Integer;
//#UC START# *4BB08B8902F2_4DCC173A026Cget_var*
//#UC END# *4BB08B8902F2_4DCC173A026Cget_var*
begin
//#UC START# *4BB08B8902F2_4DCC173A026Cget_impl*
 Result := inherited Count;
//#UC END# *4BB08B8902F2_4DCC173A026Cget_impl*
end;//TtfwArray.pm_GetCount

procedure TtfwArray.Insert(anIndex: Integer;
  const anItem: TtfwStackValue);
//#UC START# *4ED7B5450396_4DCC173A026C_var*
//#UC END# *4ED7B5450396_4DCC173A026C_var*
begin
//#UC START# *4ED7B5450396_4DCC173A026C_impl*
 inherited Insert(anIndex, anItem);
//#UC END# *4ED7B5450396_4DCC173A026C_impl*
end;//TtfwArray.Insert

procedure TtfwArray.Clear;
//#UC START# *4F62FF5D0327_4DCC173A026C_var*
//#UC END# *4F62FF5D0327_4DCC173A026C_var*
begin
//#UC START# *4F62FF5D0327_4DCC173A026C_impl*
 inherited Clear;
//#UC END# *4F62FF5D0327_4DCC173A026C_impl*
end;//TtfwArray.Clear

{$IfEnd} //not NoScripts

end.