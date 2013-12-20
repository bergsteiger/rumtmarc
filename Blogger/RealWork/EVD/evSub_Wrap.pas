unit evSub_Wrap;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "EVD"
// Модуль: "w:/common/components/rtl/Garant/EVD/evSub_Wrap.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Wrapper::Class>> Shared Delphi::EVD::Standard::WevSub
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Tag_Wrap,
  Sub_Const,
  k2Interfaces
  ;

type
 WevSub = class(Wk2Tag)
 protected
 // overridden protected methods
   function IntToTag(aValue: Integer): Ik2Tag; override;
 end;//WevSub

implementation

uses
  k2Tags
  ;

// start class WevSub

function WevSub.IntToTag(aValue: Integer): Ik2Tag;
//#UC START# *484D31710018_484F98D00070_var*
var
 Dest : Ik2Tag;
//#UC END# *484D31710018_484F98D00070_var*
begin
//#UC START# *484D31710018_484F98D00070_impl*
 Dest := AtomType.MakeTag;
 try
  Dest.IntA[k2_tiHandle] := aValue;
  Result := Dest;
 finally
  Dest := nil;
 end;{try..finallly}
//#UC END# *484D31710018_484F98D00070_impl*
end;//WevSub.IntToTag

end.