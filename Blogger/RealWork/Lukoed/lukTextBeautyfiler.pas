unit lukTextBeautyfiler;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Lukoed"
// Модуль: "w:/common/components/rtl/Garant/Lukoed/lukTextBeautyfiler.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi For Archi::Lukoed::Filters::TlukTextBeautyfiler
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

interface

uses
  evdLeafParaFilter,
  k2Interfaces
  ;

type
 TlukTextBeautyfiler = class(TevdLeafParaFilter)
 protected
 // overridden protected methods
   procedure DoWritePara(const aLeaf: Ik2Tag); override;
     {* Запись конкретного абзаца в генератор. Позволяет вносить изменения в содержание абзаца }
 end;//TlukTextBeautyfiler

implementation

uses
  evSearch,
  k2Tags,
  evParaTools,
  nevTools,
  evTypes,
  evParaSplitter
  ;

// start class TlukTextBeautyfiler

procedure TlukTextBeautyfiler.DoWritePara(const aLeaf: Ik2Tag);
//#UC START# *49E4883E0176_4D53D924005F_var*
const
 cOpt = [ev_soNoException, ev_soNoProgress, ev_soReplaceAll];
var
 l_nevPara: InevPara;
 l_Searcher: IevSearcher;
 l_Replacer: IevReplacer;
//#UC END# *49E4883E0176_4D53D924005F_var*
begin
//#UC START# *49E4883E0176_4D53D924005F_impl*
 if aLeaf.Attr[k2_tiText].IsValid then
 begin
  if aLeaf.QT(InevPara, l_nevPara) then
  try
   l_Searcher:= TevBMTextSearcher.Make(#10#160#10#160#160#160#160, cOpt);
   try
    l_Replacer:= TevParaSplitter.Make(Generator, cOpt){TevTextReplacer.Make(#13#10, cOpt)};
    try
     EvReplaceInPara(l_nevPara, l_Searcher, l_Replacer);
    finally
     l_Replacer:= nil;
    end;//try..finally
   finally
    l_Searcher:= nil;
   end;//try..finally
  finally
   l_Nevpara:= nil;
  end;//try..finally
 end;//aLeaf.Attr[k2_tiText].IsValid
 inherited;
//#UC END# *49E4883E0176_4D53D924005F_impl*
end;//TlukTextBeautyfiler.DoWritePara

end.