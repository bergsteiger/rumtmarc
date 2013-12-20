unit NOT_FINISHED_k2TagTools;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Модуль: "w:/common/components/rtl/Garant/K2/NOT_FINISHED_k2TagTools.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi::K2::k2TagTool::k2TagTools
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

{$Include ..\K2\k2Define.inc}

interface

uses
  k2Interfaces,
  k2TagTool,
  k2PureMixIns,
  k2Prim
  ;

type
 Tk2TagTool = class(Tk2TagTool)
 end;//Tk2TagTool

 Tk2ProcessorTagTool = class(Tk2TagTool)
 protected
 // realized methods
   function pm_GetProcessor: Ik2Processor;
 public
 // public methods
   constructor Create(const aTag: Ik2Tag;
     const aProcessor: Ik2Processor); reintroduce;
 end;//Tk2ProcessorTagTool

{$If defined(Never)}
 Tk2OpTagTool = class(Tk2TagTool)
 end;//Tk2OpTagTool
{$IfEnd} //Never

implementation

// start class Tk2ProcessorTagTool

constructor Tk2ProcessorTagTool.Create(const aTag: Ik2Tag;
  const aProcessor: Ik2Processor);
//#UC START# *4BBF40C603BD_4BBF3D8B00CD_var*
//#UC END# *4BBF40C603BD_4BBF3D8B00CD_var*
begin
//#UC START# *4BBF40C603BD_4BBF3D8B00CD_impl*
 !!! Needs to be implemented !!!
//#UC END# *4BBF40C603BD_4BBF3D8B00CD_impl*
end;//Tk2ProcessorTagTool.Create

function Tk2ProcessorTagTool.pm_GetProcessor: Ik2Processor;
//#UC START# *4BBF42BF004D_4BBF3D8B00CDget_var*
//#UC END# *4BBF42BF004D_4BBF3D8B00CDget_var*
begin
//#UC START# *4BBF42BF004D_4BBF3D8B00CDget_impl*
 !!! Needs to be implemented !!!
//#UC END# *4BBF42BF004D_4BBF3D8B00CDget_impl*
end;//Tk2ProcessorTagTool.pm_GetProcessor
end.