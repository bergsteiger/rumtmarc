unit nsDictCache;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Diction"
// Автор: Тучнин Д.А.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/Diction/nsDictCache.pas"
// Начат: 2004/02/20 08:36:17
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Встроенные продукты::Diction::Diction::Diction$Unit::TnsDictCache
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
  DynamicTreeUnit,
  l3CacheableBase,
  bsTypes,
  nsLangList,
  afwInterfaces
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 _afwApplicationDataUpdate_Parent_ = Tl3CacheableBase;
 {$Include w:\common\components\gui\Garant\AFW\implementation\afwApplicationDataUpdate.imp.pas}
 TnsDictCache = class(_afwApplicationDataUpdate_)
 private
 // private fields
   f_AvailableLangs : TnsLangList;
   f_IsRootReceived : Boolean;
    {* Поле для свойства IsRootReceived}
   f_Root : INodeBase;
    {* Поле для свойства Root}
 protected
 // property methods
   function pm_GetRoot: INodeBase; virtual;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   procedure FinishDataUpdate; override;
   procedure ClearFields; override;
 public
 // public methods
   procedure ClearCache;
   function ContainsLang(aLang: TbsLanguage): Boolean;
 protected
 // protected properties
   property IsRootReceived: Boolean
     read f_IsRootReceived
     write f_IsRootReceived;
     {* определяет получали ли мы корень дерева толкования с адаптера. Для
           случая, когда обновились на базу без толкового словаря и для кнопок
           панели иснтрументов спрашиваем доступные языки, это позволит
           избавится от большого количества серверных вызоов }
 public
 // public properties
   property Root: INodeBase
     read pm_GetRoot;
 public
 // singleton factory method
   class function Instance: TnsDictCache;
    {- возвращает экземпляр синглетона. }
 end;//TnsDictCache
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  l3Base {a},
  bsConvert,
  DataAdapter,
  nsTypes,
  afwFacade
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}


// start class TnsDictCache

var g_TnsDictCache : TnsDictCache = nil;

procedure TnsDictCacheFree;
begin
 l3Free(g_TnsDictCache);
end;

class function TnsDictCache.Instance: TnsDictCache;
begin
 if (g_TnsDictCache = nil) then
 begin
  l3System.AddExitProc(TnsDictCacheFree);
  g_TnsDictCache := Create;
 end;
 Result := g_TnsDictCache;
end;


{$Include w:\common\components\gui\Garant\AFW\implementation\afwApplicationDataUpdate.imp.pas}

// start class TnsDictCache

function TnsDictCache.pm_GetRoot: INodeBase;
//#UC START# *490819DA005E_4908190C017Cget_var*
//#UC END# *490819DA005E_4908190C017Cget_var*
begin
//#UC START# *490819DA005E_4908190C017Cget_impl*
 if not IsRootReceived then
 begin
  try
   f_Root := DefDataAdapter.NativeAdapter.MakeNodeBase(nsAStr(c_Diction_NodeClass));
  except
   f_Root := nil;
   // - сюда попадаем например когда толковый словарь пропал
  end;//try..except
  IsRootReceived := True;
 end;//if not IsRootReceived then
 Result := f_Root;
//#UC END# *490819DA005E_4908190C017Cget_impl*
end;//TnsDictCache.pm_GetRoot

procedure TnsDictCache.ClearCache;
//#UC START# *49081A3A00AC_4908190C017C_var*
//#UC END# *49081A3A00AC_4908190C017C_var*
begin
//#UC START# *49081A3A00AC_4908190C017C_impl*
 f_Root := nil;
 IsRootReceived := False;
 l3Free(f_AvailableLangs);
//#UC END# *49081A3A00AC_4908190C017C_impl*
end;//TnsDictCache.ClearCache

function TnsDictCache.ContainsLang(aLang: TbsLanguage): Boolean;
//#UC START# *49081A4F001E_4908190C017C_var*
var
 l_Layers : ILayerIdList;
 l_Index  : Integer;
 l_PLayer : TLayerId;
//#UC END# *49081A4F001E_4908190C017C_var*
begin
//#UC START# *49081A4F001E_4908190C017C_impl*
 Result := False;
 if not Assigned(f_AvailableLangs) and Assigned(Root) then
 begin
  f_AvailableLangs := TnsLangList.Create;
  Root.GetAvailableLayers(l_Layers);
  if l_Layers <> nil then
   for l_Index :=0 to l_Layers.Count - 1 do
   begin
    l_PLayer := l_Layers[l_Index];
    f_AvailableLangs.Add(bsAdapterToBusiness(l_PLayer));
   end;//for l_Index :=0 to l_Layers.GetCount - 1 do
 end;//if Root <> nil then
 // Проверим наличие языков, они могут быть не созданы в случае открытия
 // толкового словаря, потом обновления базой без толкового словаря
 if Assigned(f_AvailableLangs) then
  Result := f_AvailableLangs.IndexOf(aLang) >= 0;
//#UC END# *49081A4F001E_4908190C017C_impl*
end;//TnsDictCache.ContainsLang

procedure TnsDictCache.Cleanup;
//#UC START# *479731C50290_4908190C017C_var*
//#UC END# *479731C50290_4908190C017C_var*
begin
//#UC START# *479731C50290_4908190C017C_impl*
 l3Free(f_AvailableLangs);
 inherited;
//#UC END# *479731C50290_4908190C017C_impl*
end;//TnsDictCache.Cleanup

procedure TnsDictCache.FinishDataUpdate;
//#UC START# *47EA4E9002C6_4908190C017C_var*
//#UC END# *47EA4E9002C6_4908190C017C_var*
begin
//#UC START# *47EA4E9002C6_4908190C017C_impl*
 inherited;
 ClearCache;
//#UC END# *47EA4E9002C6_4908190C017C_impl*
end;//TnsDictCache.FinishDataUpdate

procedure TnsDictCache.ClearFields;
 {-}
begin
 f_Root := nil;
 inherited;
end;//TnsDictCache.ClearFields

{$IfEnd} //not Admin AND not Monitorings

end.