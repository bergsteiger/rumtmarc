unit evTextParaPainter;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/evTextParaPainter.pas"
// Начат: 14.03.1997 10:07
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::LeafPara Painters::TevTextParaPainter
//
// Рисователь текстового параграфа
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  evTextParaPainterPrim,
  l3Types,
  nevBase,
  l3Units,
  l3CustomString
  ;

type
 _AACSpaceDrawing_Parent_ = TevTextParaPainterPrim;
 {$Include ..\Everest\AACSpaceDrawing.imp.pas}
 _nevStringCache_Parent_ = _AACSpaceDrawing_;
 {$Include ..\Everest\nevStringCache.imp.pas}
 TevTextParaPainter = class(_nevStringCache_)
  {* Рисователь текстового параграфа }
 protected
 // realized methods
   function NeedCalcSpace: Boolean; override;
     {* Проверка для срабатывания примеси. }
   function HeaderOwnSpace: Boolean; override;
   function GetSpaceTop(anInc: Boolean): Integer; override;
 protected
 // overridden protected methods
   {$If not defined(DesignTimeLibrary)}
   class function IsCacheable: Boolean; override;
     {* функция класса, определяющая могут ли объекты данного класса попадать в кэш повторного использования. }
   {$IfEnd} //not DesignTimeLibrary
 end;//TevTextParaPainter

implementation

uses
  evParaTools,
  k2Tags,
  l3MinMax,
  l3String,
  l3Chars,
  l3Const,
  evParaString,
  SysUtils
  ;

{$Include ..\Everest\AACSpaceDrawing.imp.pas}

{$Include ..\Everest\nevStringCache.imp.pas}

// start class TevTextParaPainter

function TevTextParaPainter.NeedCalcSpace: Boolean;
//#UC START# *5062C0650076_4804CC1E0349_var*
//#UC END# *5062C0650076_4804CC1E0349_var*
begin
//#UC START# *5062C0650076_4804CC1E0349_impl*
 Result := EvHasAACStyle(ParaX);
//#UC END# *5062C0650076_4804CC1E0349_impl*
end;//TevTextParaPainter.NeedCalcSpace

function TevTextParaPainter.HeaderOwnSpace: Boolean;
//#UC START# *51FF6BC10266_4804CC1E0349_var*
//#UC END# *51FF6BC10266_4804CC1E0349_var*
begin
//#UC START# *51FF6BC10266_4804CC1E0349_impl*
 Result := ParaX.Attr[k2_tiStyle].BoolA[k2_tiHeaderHasOwnSpace];
//#UC END# *51FF6BC10266_4804CC1E0349_impl*
end;//TevTextParaPainter.HeaderOwnSpace

function TevTextParaPainter.GetSpaceTop(anInc: Boolean): Integer;
//#UC START# *5208B63400C1_4804CC1E0349_var*
//#UC END# *5208B63400C1_4804CC1E0349_var*
begin
//#UC START# *5208B63400C1_4804CC1E0349_impl*
 Result := Spaces.Top;
//#UC END# *5208B63400C1_4804CC1E0349_impl*
end;//TevTextParaPainter.GetSpaceTop

{$If not defined(DesignTimeLibrary)}
class function TevTextParaPainter.IsCacheable: Boolean;
//#UC START# *47A6FEE600FC_4804CC1E0349_var*
//#UC END# *47A6FEE600FC_4804CC1E0349_var*
begin
//#UC START# *47A6FEE600FC_4804CC1E0349_impl*
 Result := true;
//#UC END# *47A6FEE600FC_4804CC1E0349_impl*
end;//TevTextParaPainter.IsCacheable
{$IfEnd} //not DesignTimeLibrary

end.