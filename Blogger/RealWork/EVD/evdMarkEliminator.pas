unit evdMarkEliminator;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "EVD"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/EVD/evdMarkEliminator.pas"
// Начат: 26.05.2011 15:51
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::EVD::Generators::TevdMarkEliminator
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
 TevdMarkEliminator = class(TevdLeafParaFilter)
 protected
 // overridden protected methods
   function ParaTypeForFiltering: Integer; override;
     {* Функция, определяющая тип абзацев, для которых будет выполняться фильтрация }
   function NeedWritePara(const aLeaf: Ik2Tag): Boolean; override;
     {* Определяет нужно ли фильтровать переданный абзац }
 end;//TevdMarkEliminator

implementation

uses
  Mark_Const
  ;

// start class TevdMarkEliminator

function TevdMarkEliminator.ParaTypeForFiltering: Integer;
//#UC START# *49E488070386_4DDE3E97005C_var*
//#UC END# *49E488070386_4DDE3E97005C_var*
begin
//#UC START# *49E488070386_4DDE3E97005C_impl*
 Result := k2_idMark;
//#UC END# *49E488070386_4DDE3E97005C_impl*
end;//TevdMarkEliminator.ParaTypeForFiltering

function TevdMarkEliminator.NeedWritePara(const aLeaf: Ik2Tag): Boolean;
//#UC START# *49E48829016F_4DDE3E97005C_var*
//#UC END# *49E48829016F_4DDE3E97005C_var*
begin
//#UC START# *49E48829016F_4DDE3E97005C_impl*
 Result := false;
//#UC END# *49E48829016F_4DDE3E97005C_impl*
end;//TevdMarkEliminator.NeedWritePara

end.