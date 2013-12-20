unit evdHyperlinkEliminator;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "EVD"
// Модуль: "w:/common/components/rtl/Garant/EVD/evdHyperlinkEliminator.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::EVD::Generators::TevdHyperlinkEliminator
//
// Фильтр, удаляющий все гиперссылки в документе
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  evdLeafParaFilter,
  k2Interfaces
  ;

type
 TevdHyperlinkEliminator = class(TevdLeafParaFilter)
  {* Фильтр, удаляющий все гиперссылки в документе }
 protected
 // overridden protected methods
   function ParaTypeForFiltering: Integer; override;
     {* Функция, определяющая тип абзацев, для которых будет выполняться фильтрация }
   function NeedWritePara(const aLeaf: Ik2Tag): Boolean; override;
     {* Определяет нужно ли фильтровать переданный абзац }
 end;//TevdHyperlinkEliminator

implementation

uses
  HyperLink_Const
  ;

// start class TevdHyperlinkEliminator

function TevdHyperlinkEliminator.ParaTypeForFiltering: Integer;
//#UC START# *49E488070386_4E9FD8340247_var*
//#UC END# *49E488070386_4E9FD8340247_var*
begin
//#UC START# *49E488070386_4E9FD8340247_impl*
 Result := k2_idHyperLink;
//#UC END# *49E488070386_4E9FD8340247_impl*
end;//TevdHyperlinkEliminator.ParaTypeForFiltering

function TevdHyperlinkEliminator.NeedWritePara(const aLeaf: Ik2Tag): Boolean;
//#UC START# *49E48829016F_4E9FD8340247_var*
//#UC END# *49E48829016F_4E9FD8340247_var*
begin
//#UC START# *49E48829016F_4E9FD8340247_impl*
 Result := False;
//#UC END# *49E48829016F_4E9FD8340247_impl*
end;//TevdHyperlinkEliminator.NeedWritePara

end.