unit nsLangToContextMap;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Diction"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/Diction/nsLangToContextMap.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Встроенные продукты::Diction::Diction::Diction$Unit::TnsLangToContextMap
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
  l3CacheableBase,
  l3TreeInterfaces,
  bsTypes
  {$If defined(Nemesis)}
  ,
  nscNewInterfaces
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  InscContextFilterStateList
  {$IfEnd} //Nemesis
  ,
  nsLangList
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TnsLangToContextMap = class(Tl3CacheableBase, Il3ContextFilterNotifier)
 private
 // private fields
   f_Langs : TnsLangList;
   f_Contexts : TInscContextFilterStateList;
   f_NotifySource : Il3ContextFilterNotifySource;
 private
 // private methods
   function Add(aLang: TbsLanguage;
    const aContextState: InscContextFilterState): Integer;
 protected
 // property methods
   function pm_GetByLang(aLang: TbsLanguage): InscContextFilterState; virtual;
   procedure pm_SetByLang(aLang: TbsLanguage; const aValue: InscContextFilterState); virtual;
 protected
 // realized methods
   procedure RequestReapply;
     {* Желательно переприменить фильтр. }
   procedure RequestClearAndTurnOff;
     {* Дерево выключило на себе фильтр. }
   procedure RequestCheckValid;
     {* Дерево поменялось - нужно проверить валидность фильтра. }
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
 public
 // public methods
   constructor Create(const aNotifySource: Il3ContextFilterNotifySource); reintroduce;
 public
 // public properties
   property ByLang[aLang: TbsLanguage]: InscContextFilterState
     read pm_GetByLang
     write pm_SetByLang;
     default;
 end;//TnsLangToContextMap
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  SysUtils
  {$If defined(Nemesis)}
  ,
  nscContextFilterState
  {$IfEnd} //Nemesis
  
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

// start class TnsLangToContextMap

function TnsLangToContextMap.pm_GetByLang(aLang: TbsLanguage): InscContextFilterState;
//#UC START# *490844030320_490837B901D4get_var*
var
 l_Index : Integer;
//#UC END# *490844030320_490837B901D4get_var*
begin
//#UC START# *490844030320_490837B901D4get_impl*
 l_Index := f_Langs.IndexOf(aLang);
 if l_Index = -1 then
  l_Index := Add(aLang, TnscContextFilterState.Make(False, nil, 0));
 Result := f_Contexts[l_Index];
//#UC END# *490844030320_490837B901D4get_impl*
end;//TnsLangToContextMap.pm_GetByLang

procedure TnsLangToContextMap.pm_SetByLang(aLang: TbsLanguage; const aValue: InscContextFilterState);
//#UC START# *490844030320_490837B901D4set_var*
var
 l_Index : Integer;
//#UC END# *490844030320_490837B901D4set_var*
begin
//#UC START# *490844030320_490837B901D4set_impl*
 l_Index := f_Langs.IndexOf(aLang);
 if l_Index = -1 then
  Add(aLang, aValue)
 else
  f_Contexts[l_Index] := aValue;
//#UC END# *490844030320_490837B901D4set_impl*
end;//TnsLangToContextMap.pm_SetByLang

constructor TnsLangToContextMap.Create(const aNotifySource: Il3ContextFilterNotifySource);
//#UC START# *490843AA003A_490837B901D4_var*
//#UC END# *490843AA003A_490837B901D4_var*
begin
//#UC START# *490843AA003A_490837B901D4_impl*
 inherited Create;
 f_Langs := TnsLangList.Create;
 f_Contexts := TInscContextFilterStateList.Make;
 f_NotifySource := aNotifySource;
 if Assigned(f_NotifySource) then
  f_NotifySource.SubscribeToContextFilter(Self);
//#UC END# *490843AA003A_490837B901D4_impl*
end;//TnsLangToContextMap.Create

function TnsLangToContextMap.Add(aLang: TbsLanguage;
  const aContextState: InscContextFilterState): Integer;
//#UC START# *490844660228_490837B901D4_var*
//#UC END# *490844660228_490837B901D4_var*
begin
//#UC START# *490844660228_490837B901D4_impl*
 Result := f_Langs.IndexOf(aLang);
 if Result = -1 then
 begin
  Result := f_Langs.Add(aLang);
  f_Contexts.Add(aContextState);
 end;//if f_Langs.IndexOf(aLang) = -1 then
//#UC END# *490844660228_490837B901D4_impl*
end;//TnsLangToContextMap.Add

procedure TnsLangToContextMap.RequestReapply;
//#UC START# *477250FC0040_490837B901D4_var*
//#UC END# *477250FC0040_490837B901D4_var*
begin
//#UC START# *477250FC0040_490837B901D4_impl*
 // DoNothing
//#UC END# *477250FC0040_490837B901D4_impl*
end;//TnsLangToContextMap.RequestReapply

procedure TnsLangToContextMap.RequestClearAndTurnOff;
//#UC START# *4772510D0043_490837B901D4_var*
var
 l_IDX: Integer;
//#UC END# *4772510D0043_490837B901D4_var*
begin
//#UC START# *4772510D0043_490837B901D4_impl*
 for l_IDX := 0 to f_Contexts.Count - 1 do
  if Assigned(f_Contexts.Items[l_IDX]) then
   //with InscContextFilterState(f_Contexts.Items[l_IDX]) do
   f_Contexts.Items[l_IDX] := TnscContextFilterState.Make(False, nil, 0);
//#UC END# *4772510D0043_490837B901D4_impl*
end;//TnsLangToContextMap.RequestClearAndTurnOff

procedure TnsLangToContextMap.RequestCheckValid;
//#UC START# *4772511D0316_490837B901D4_var*
//#UC END# *4772511D0316_490837B901D4_var*
begin
//#UC START# *4772511D0316_490837B901D4_impl*
 // DoNothing
//#UC END# *4772511D0316_490837B901D4_impl*
end;//TnsLangToContextMap.RequestCheckValid

procedure TnsLangToContextMap.Cleanup;
//#UC START# *479731C50290_490837B901D4_var*
//#UC END# *479731C50290_490837B901D4_var*
begin
//#UC START# *479731C50290_490837B901D4_impl*
 if Assigned(f_NotifySource) then
  f_NotifySource.UnSubscribeFromContextFilter(Self);
 f_NotifySource := nil;
 FreeAndNil(f_Langs);
 FreeAndNil(f_Contexts);
 inherited;
//#UC END# *479731C50290_490837B901D4_impl*
end;//TnsLangToContextMap.Cleanup

{$IfEnd} //not Admin AND not Monitorings

end.