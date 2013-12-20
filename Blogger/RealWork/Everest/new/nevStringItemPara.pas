unit nevStringItemPara;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/new/nevStringItemPara.pas"
// Начат: 25.09.2001 17:21
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::ParagraphsImplementation::TnevStringItemPara
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\common\components\gui\Garant\Everest\evDefine.inc}

interface

uses
  nevBase,
  nevTools,
  nevTextPara
  ;

type
 TnevStringItemPara = class(TnevTextPara)
 private
 // private fields
   f_StrID : Integer;
    {* Ссылка на номер строки в списке}
 protected
 // overridden protected methods
   function GetPID: TnevParaIndex; override;
 public
 // public methods
   constructor Create(const aTag: InevTag;
    anIndex: Integer); reintroduce;
   class function Make(const aTag: InevTag;
    anIndex: Integer): InevTextPara; reintroduce;
 end;//TnevStringItemPara

implementation

// start class TnevStringItemPara

constructor TnevStringItemPara.Create(const aTag: InevTag;
  anIndex: Integer);
//#UC START# *48D118B5038A_48D1184C02B9_var*
//#UC END# *48D118B5038A_48D1184C02B9_var*
begin
//#UC START# *48D118B5038A_48D1184C02B9_impl*
 inherited Create(aTag);
 f_StrID := anIndex;
//#UC END# *48D118B5038A_48D1184C02B9_impl*
end;//TnevStringItemPara.Create

class function TnevStringItemPara.Make(const aTag: InevTag;
  anIndex: Integer): InevTextPara;
var
 l_Inst : TnevStringItemPara;
begin
 l_Inst := Create(aTag, anIndex);
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

function TnevStringItemPara.GetPID: TnevParaIndex;
//#UC START# *48CFB61F01FA_48D1184C02B9_var*
//#UC END# *48CFB61F01FA_48D1184C02B9_var*
begin
//#UC START# *48CFB61F01FA_48D1184C02B9_impl*
 Result := f_StrID;
//#UC END# *48CFB61F01FA_48D1184C02B9_impl*
end;//TnevStringItemPara.GetPID

end.