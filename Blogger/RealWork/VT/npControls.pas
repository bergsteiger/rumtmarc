unit npControls;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "VT"
// Модуль: "w:/common/components/gui/Garant/VT/npControls.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::VT::vtNavigator::TnpControls
//
// указывает от какого навигатора на форме был отстыкован компонент
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\VT\vtDefine.inc}

interface

uses
  Controls,
  l3ProtoDataContainer,
  vtNavigator,
  l3Types,
  l3Memory,
  l3Interfaces,
  l3Core,
  l3Except,
  Classes
  ;

type
 _ItemType_ = TControl;
 _l3ObjectPtrList_Parent_ = Tl3ProtoDataContainer;
 {$Define l3Items_IsProto}
 {$Include w:\common\components\rtl\Garant\L3\l3ObjectPtrList.imp.pas}
 TnpControls = class(_l3ObjectPtrList_)
  {* указывает от какого навигатора на форме был отстыкован компонент }
 private
 // private fields
   f_Navigator : TvtNavigator;
    {* Поле для свойства Navigator}
 public
 // public methods
   function DeleteControl(aControl: TControl): Boolean;
   constructor Create(aNavigator: TvtNavigator); reintroduce;
 public
 // public properties
   property Navigator: TvtNavigator
     read f_Navigator;
 end;//TnpControls

implementation

uses
  l3Base,
  l3MinMax,
  RTLConsts,
  SysUtils
  ;

type _Instance_R_ = TnpControls;

{$Include w:\common\components\rtl\Garant\L3\l3ObjectPtrList.imp.pas}

// start class TnpControls

function TnpControls.DeleteControl(aControl: TControl): Boolean;
//#UC START# *4F61EDD001B7_4F61DED90246_var*
var
 l_Index : Integer;
//#UC END# *4F61EDD001B7_4F61DED90246_var*
begin
//#UC START# *4F61EDD001B7_4F61DED90246_impl*
 Result := false;
 l_Index := IndexOf(aControl);
 if (l_Index <> -1) then
 begin
  Delete(l_Index);
  Result := true;
 end;//l_Index <> -1
//#UC END# *4F61EDD001B7_4F61DED90246_impl*
end;//TnpControls.DeleteControl

constructor TnpControls.Create(aNavigator: TvtNavigator);
//#UC START# *4F61F57501B6_4F61DED90246_var*
//#UC END# *4F61F57501B6_4F61DED90246_var*
begin
//#UC START# *4F61F57501B6_4F61DED90246_impl*
 inherited Create;
 f_Navigator := aNavigator;
//#UC END# *4F61F57501B6_4F61DED90246_impl*
end;//TnpControls.Create

end.