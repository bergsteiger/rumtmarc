unit evCommentsEliminator;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/evCommentsEliminator.pas"
// Начат: 2004/11/26 12:04:08
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::Generators::TevCommentsEliminator
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  evdLeafParaFilter,
  k2TagFilter,
  k2Interfaces
  ;

type
 TevFullCommentsEliminator = class(TevdLeafParaFilter)
 protected
 // overridden protected methods
   function ParaTypeForFiltering: Integer; override;
     {* Функция, определяющая тип абзацев, для которых будет выполняться фильтрация }
   function NeedWritePara(const aLeaf: Ik2Tag): Boolean; override;
     {* Определяет нужно ли фильтровать переданный абзац }
 end;//TevFullCommentsEliminator

 TevCommentsEliminator = class(Tk2TagFilter)
 protected
 // overridden protected methods
   function NeedTranslateChildToNext: Boolean; override;
 end;//TevCommentsEliminator

implementation

uses
  CommentPara_Const
  ;

// start class TevFullCommentsEliminator

function TevFullCommentsEliminator.ParaTypeForFiltering: Integer;
//#UC START# *49E488070386_4D6CD6890200_var*
//#UC END# *49E488070386_4D6CD6890200_var*
begin
//#UC START# *49E488070386_4D6CD6890200_impl*
 Result := k2_idCommentPara;
//#UC END# *49E488070386_4D6CD6890200_impl*
end;//TevFullCommentsEliminator.ParaTypeForFiltering

function TevFullCommentsEliminator.NeedWritePara(const aLeaf: Ik2Tag): Boolean;
//#UC START# *49E48829016F_4D6CD6890200_var*
//#UC END# *49E48829016F_4D6CD6890200_var*
begin
//#UC START# *49E48829016F_4D6CD6890200_impl*
 Result := false;
//#UC END# *49E48829016F_4D6CD6890200_impl*
end;//TevFullCommentsEliminator.NeedWritePara

function TevCommentsEliminator.NeedTranslateChildToNext: Boolean;
//#UC START# *4CA3006302BC_4D6CD66C0391_var*
//#UC END# *4CA3006302BC_4D6CD66C0391_var*
begin
//#UC START# *4CA3006302BC_4D6CD66C0391_impl*
 with CurrentType do
  Result := not InheritsFrom(k2_idCommentPara);
//#UC END# *4CA3006302BC_4D6CD66C0391_impl*
end;//TevCommentsEliminator.NeedTranslateChildToNext

end.