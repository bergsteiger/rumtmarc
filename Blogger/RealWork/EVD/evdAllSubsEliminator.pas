unit evdAllSubsEliminator;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "EVD"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/EVD/evdAllSubsEliminator.pas"
// Начат: 14.11.2011 17:25
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::EVD::Generators::TevdAllSubsEliminator
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
 TevdAllSubsEliminator = class(TevdLeafParaFilter)
 protected
 // overridden protected methods
   function ParaTypeForFiltering: Integer; override;
     {* Функция, определяющая тип абзацев, для которых будет выполняться фильтрация }
   function NeedWritePara(const aLeaf: Ik2Tag): Boolean; override;
     {* Определяет нужно ли фильтровать переданный абзац }
 end;//TevdAllSubsEliminator

implementation

uses
  k2Tags,
  Sub_Const
  ;

// start class TevdAllSubsEliminator

function TevdAllSubsEliminator.ParaTypeForFiltering: Integer;
//#UC START# *49E488070386_4EC116A50211_var*
//#UC END# *49E488070386_4EC116A50211_var*
begin
//#UC START# *49E488070386_4EC116A50211_impl*
 Result := k2_idSub; 
//#UC END# *49E488070386_4EC116A50211_impl*
end;//TevdAllSubsEliminator.ParaTypeForFiltering

function TevdAllSubsEliminator.NeedWritePara(const aLeaf: Ik2Tag): Boolean;
//#UC START# *49E48829016F_4EC116A50211_var*
//#UC END# *49E48829016F_4EC116A50211_var*
begin
//#UC START# *49E48829016F_4EC116A50211_impl*
 Result := false;
//#UC END# *49E48829016F_4EC116A50211_impl*
end;//TevdAllSubsEliminator.NeedWritePara

end.