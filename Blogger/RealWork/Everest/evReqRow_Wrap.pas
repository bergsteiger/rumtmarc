unit evReqRow_Wrap;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Модуль: "w:/common/components/gui/Garant/Everest/evReqRow_Wrap.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Wrapper::Class>> Shared Delphi::Everest::Standard::WevReqRow
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  evPara_Wrap,
  ReqRow_Const,
  k2Interfaces,
  k2Base
  ;

type
 WevReqRow = class(WevPara)
 protected
 // overridden protected methods
   function GetAtomData(const AE: Ik2Tag;
    aProp: Tk2CustomProperty;
    out Data: Integer): Boolean; override;
 end;//WevReqRow

implementation

uses
  k2Tags,
  nevTools
  ;

// start class WevReqRow

function WevReqRow.GetAtomData(const AE: Ik2Tag;
  aProp: Tk2CustomProperty;
  out Data: Integer): Boolean;
//#UC START# *4857A995029E_4857EB02013C_var*
var
 l_RR : InevPara;
 l_R  : Integer;
//#UC END# *4857A995029E_4857EB02013C_var*
begin
//#UC START# *4857A995029E_4857EB02013C_impl*
 Result := inherited GetAtomData(AE, aProp, Data);
 if not Result then
 begin
  if (aProp.TagIndex = k2_tiModelControl) then
  begin
   if not AE.QT(InevPara, l_RR) then
    Assert(false);
   l_RR := l_RR.Prev;
   while (l_RR <> nil) AND l_RR.IsValid do
   begin
    l_R := l_RR.IntA[k2_tiModelControl];
    if (l_R <> 0) then
    begin
     Result := true;
     Data := l_R;
     AE.IntA[k2_tiModelControl] := l_R;
     break;
    end;//l_R <> 0
    l_RR := l_RR.Prev;
   end;//while (l_RR <> nil)
   // - берем реквизит от предыдущей строки таблицы
  end;//aProp.TagIndex = k2_tiModelControl
 end;//not Result
//#UC END# *4857A995029E_4857EB02013C_impl*
end;//WevReqRow.GetAtomData

end.