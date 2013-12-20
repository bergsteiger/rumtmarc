unit tstNSRCGenerator;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "DailyTest"
// Модуль: "w:/common/components/rtl/Garant/Daily/tstNSRCGenerator.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Tests::DailyTest::NSRCUtils::TtstNSRCGenerator
//
// Обертка над TddGenerator для чтения данных о внешних файлах и запоминания их в тесте для
// последующей проверки.
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
  ddNSRCGenerator
  ;
{$IfEnd} //nsTest AND not NoScripts

{$If defined(nsTest) AND not defined(NoScripts)}
type
 ItstNSRCListner = interface(IUnknown)
   ['{A89ABBCC-F4DD-4B5B-8AA4-50EA93C9907A}']
   procedure ExtractFileEvent(const aFileName: AnsiString);
     {* Событие выливки внешнего файла. }
 end;//ItstNSRCListner

 TtstNSRCGenerator = class(TddNSRCGenerator)
  {* Обертка над TddGenerator для чтения данных о внешних файлах и запоминания их в тесте для последующей проверки. }
 private
 // private fields
   f_Listner : ItstNSRCListner;
 protected
 // overridden protected methods
   procedure SaveObjFileName(const aFileName: AnsiString); override;
 public
 // public methods
   procedure LinkNSRCListner(const aListner: ItstNSRCListner);
   procedure UnLinkNSRCListner(const aListner: ItstNSRCListner);
 end;//TtstNSRCGenerator
{$IfEnd} //nsTest AND not NoScripts

implementation

{$If defined(nsTest) AND not defined(NoScripts)}

// start class TtstNSRCGenerator

procedure TtstNSRCGenerator.LinkNSRCListner(const aListner: ItstNSRCListner);
//#UC START# *4D70B25B0190_4D70B17C001C_var*
//#UC END# *4D70B25B0190_4D70B17C001C_var*
begin
//#UC START# *4D70B25B0190_4D70B17C001C_impl*
 Assert(f_Listner = nil);
 f_Listner := aListner;
//#UC END# *4D70B25B0190_4D70B17C001C_impl*
end;//TtstNSRCGenerator.LinkNSRCListner

procedure TtstNSRCGenerator.UnLinkNSRCListner(const aListner: ItstNSRCListner);
//#UC START# *4D70B2A203B9_4D70B17C001C_var*
//#UC END# *4D70B2A203B9_4D70B17C001C_var*
begin
//#UC START# *4D70B2A203B9_4D70B17C001C_impl*
 Assert(f_Listner = aListner);
 f_Listner := nil;
//#UC END# *4D70B2A203B9_4D70B17C001C_impl*
end;//TtstNSRCGenerator.UnLinkNSRCListner

procedure TtstNSRCGenerator.SaveObjFileName(const aFileName: AnsiString);
//#UC START# *4D70C8250128_4D70B17C001C_var*
//#UC END# *4D70C8250128_4D70B17C001C_var*
begin
//#UC START# *4D70C8250128_4D70B17C001C_impl*
  f_Listner.ExtractFileEvent(aFileName);
//#UC END# *4D70C8250128_4D70B17C001C_impl*
end;//TtstNSRCGenerator.SaveObjFileName

{$IfEnd} //nsTest AND not NoScripts

end.