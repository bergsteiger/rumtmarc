unit TestNameList;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "DUnitTuning"
// Автор: Инишев Д.А.
// Модуль: "w:/common/components/rtl/Garant/DUnitTuning/TestNameList.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi TFW::DUnitTuning::Source::TTestNameList
//
// Список тестов для  запуска.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\DUnitTuning\tfwDefine.inc}

interface

{$If defined(nsTest) AND not defined(NotTunedDUnit)}
uses
  l3StringList,
  l3Base
  ;
{$IfEnd} //nsTest AND not NotTunedDUnit

{$If defined(nsTest) AND not defined(NotTunedDUnit)}
type
 TTestNameList = class(Tl3StringList)
  {* Список тестов для  запуска. }
 protected
 // overridden protected methods
   function StringItemClass: Rl3String; override;
 public
 // public methods
   class function Exists: Boolean;
 public
 // singleton factory method
   class function Instance: TTestNameList;
    {- возвращает экземпляр синглетона. }
 end;//TTestNameList
{$IfEnd} //nsTest AND not NotTunedDUnit

implementation

{$If defined(nsTest) AND not defined(NotTunedDUnit)}
uses
  TestNameString
  ;
{$IfEnd} //nsTest AND not NotTunedDUnit

{$If defined(nsTest) AND not defined(NotTunedDUnit)}


// start class TTestNameList

var g_TTestNameList : TTestNameList = nil;

procedure TTestNameListFree;
begin
 l3Free(g_TTestNameList);
end;

class function TTestNameList.Instance: TTestNameList;
begin
 if (g_TTestNameList = nil) then
 begin
  l3System.AddExitProc(TTestNameListFree);
  g_TTestNameList := Create;
 end;
 Result := g_TTestNameList;
end;


class function TTestNameList.Exists: Boolean;
//#UC START# *4D2EE63E0318_4D1AEAC80371_var*
//#UC END# *4D2EE63E0318_4D1AEAC80371_var*
begin
//#UC START# *4D2EE63E0318_4D1AEAC80371_impl*
 Result := g_TTestNameList <> nil;
//#UC END# *4D2EE63E0318_4D1AEAC80371_impl*
end;//TTestNameList.Exists

function TTestNameList.StringItemClass: Rl3String;
//#UC START# *47B1E5230151_4D1AEAC80371_var*
//#UC END# *47B1E5230151_4D1AEAC80371_var*
begin
//#UC START# *47B1E5230151_4D1AEAC80371_impl*
 Result := TTestNameString;
//#UC END# *47B1E5230151_4D1AEAC80371_impl*
end;//TTestNameList.StringItemClass

{$IfEnd} //nsTest AND not NotTunedDUnit

end.