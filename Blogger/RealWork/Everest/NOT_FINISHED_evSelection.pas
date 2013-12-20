unit NOT_FINISHED_evSelection;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Модуль: "w:/common/components/gui/Garant/Everest/NOT_FINISHED_evSelection.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi::Everest::Cursors::evSelection
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2Interfaces,
  nevBase,
  nevTools,
  evdInterfaces,
  nevRangePrim,
  l3Interfaces,
  evTypes
  ;

type
 TevRange = class(TnevRangePrim, InevRange, InevStorable, IevdDataObject, InevDataObjectPrim2, InevRangeModify, InevRangeFactory, IevRange)
 private
 // private fields
   f_Sharp : Boolean;
    {* Поле для свойства Sharp}
 protected
 // realized methods
   procedure Store(const aView: InevView;
    const G: InevTagGenerator;
    aFlags: TevdStoreFlags = evDefaultStoreFlags); overload; 
     {* сохраняет выделение в G. }
   function Store(aFormat: TevdClipboardFormat;
    const aPool: IStream;
    const aFilters: TevdTagGenerator;
    aFlags: TevdStoreFlags = evd_DefaultStoreFlags): Boolean; overload; 
     {* сохраняет выделение в формате aFormat в Pool, который должен реализовывать IStream. }
   function pm_GetBorders: TevPair;
   function SolidBottomChildBlock(const aView: InevView): InevRange;
   function GetChildSel(const aView: InevView;
    aChildIndex: Integer;
    aForDrawing: Boolean): InevRange;
   procedure GetBorderPoints(out BS: InevBasePoint;
    out BF: InevBasePoint);
   function BottomChildBlock(const aView: InevView): InevRange;
   function CloneSel(const aView: InevView): InevRange;
   function Delete(const aView: InevView;
     const anOp: InevOp = nil;
     aMode: TevClearMode = ev_cmAll;
     const aPara: InevPara = nil): Boolean;
   function Modify: InevRangeModify;
   function ParentRange(aLevel: Integer = 0): InevRange;
   function Contains(const aView: InevView;
    const aPoint: InevBasePoint): Boolean;
   procedure Select(const aView: InevView;
    const C: InevBasePoint;
    aTarget: TevSelectTarget;
    const Ctx: InevOp = nil); overload; 
   procedure Select(const aView: InevView;
    const C: InevBasePoint;
    aOpen: Integer;
    aClose: Integer;
    const Ctx: InevOp = nil); overload; 
   function pm_GetBorders: TevPair;
   function pm_GetData: IevdDataObject;
   procedure Init(const aStart: InevBasePoint;
     const aFinish: InevBasePoint;
     aSharp: Boolean = false);
   function Solid(const aView: InevView): Boolean;
   function ContainsEnd(const aView: InevView): Boolean;
   function Collapsed(const aView: InevView): Boolean;
   procedure AssignSel(const aView: InevView;
    const aSource: InevRange);
     {* присваивает одно выделение другому }
   function GetBlock: InevRange;
     {* получить текущий объект выделения }
   procedure SetToStart;
     {* установить выделение в начало }
   function Unselect(const aView: InevView): Boolean;
     {* снять выделение }
   function AsStorable: InevDataObjectPrim2;
   procedure SetToFinish(aMoveUpInLines: Integer);
   procedure RefreshBorders;
     {* Обновляет границы блока. http://mdp.garant.ru/pages/viewpage.action?pageId=409750147 }
 public
 // realized methods
   function SearchReplace(const aSearcher: IevSearcher;
     const aReplacer: IevReplacer;
     const aConfirm: InevConfirm;
     const aCursor: InevBasePoint = nil;
     const anOpPack: InevOp = nil;
     aNeedProgress: Boolean = true): Boolean;
     {* процесс поиска/замены. Возвращает - была ли отмена замены. }
   function Search(const aView: InevView;
     const aSearcher: IevSearcher;
     const Progress: Il3Progress;
     const aStart: InevBasePoint;
     out cFStart: InevBasePoint;
     out cFFinish: InevBasePoint): Boolean;
     {* ищет в выделении критерий ОnSearch
             и возвращает начало и конец найденного фрагмента в (cFStart, cFFinish). }
 protected
 // protected methods
   procedure Init(const aStart: InevBasePoint = nil;
     const aFinish: InevBasePoint = nil;
     aSharp: Boolean = false); virtual;
   procedure DoStore(const aView: InevView;
     const G: Ik2TagGenerator;
     aFlags: TevStoreFlags); virtual;
    {$If defined(evNeedEditableCursors)}
   function DoDelete(const aView: InevView;
     const anOpPack: InevOp = nil;
     aMode: TevClearMode = ev_cmAll;
     const aPara: InevPara = nil): Boolean; virtual;
    {$IfEnd} //evNeedEditableCursors
 public
 // public properties
   property Sharp: Boolean
     read f_Sharp
     write f_Sharp;
 end;//TevRange

implementation

// start class TevRange

procedure TevRange.Init(const aStart: InevBasePoint = nil;
  const aFinish: InevBasePoint = nil;
  aSharp: Boolean = false);
//#UC START# *5108D53B0312_4A2D2D4300BE_var*
//#UC END# *5108D53B0312_4A2D2D4300BE_var*
begin
//#UC START# *5108D53B0312_4A2D2D4300BE_impl*
 !!! Needs to be implemented !!!
//#UC END# *5108D53B0312_4A2D2D4300BE_impl*
end;//TevRange.Init

procedure TevRange.DoStore(const aView: InevView;
  const G: Ik2TagGenerator;
  aFlags: TevStoreFlags);
//#UC START# *5108D5CB0048_4A2D2D4300BE_var*
//#UC END# *5108D5CB0048_4A2D2D4300BE_var*
begin
//#UC START# *5108D5CB0048_4A2D2D4300BE_impl*
 !!! Needs to be implemented !!!
//#UC END# *5108D5CB0048_4A2D2D4300BE_impl*
end;//TevRange.DoStore

{$If defined(evNeedEditableCursors)}
function TevRange.DoDelete(const aView: InevView;
  const anOpPack: InevOp = nil;
  aMode: TevClearMode = ev_cmAll;
  const aPara: InevPara = nil): Boolean;
//#UC START# *5108D66900C9_4A2D2D4300BE_var*
//#UC END# *5108D66900C9_4A2D2D4300BE_var*
begin
//#UC START# *5108D66900C9_4A2D2D4300BE_impl*
 !!! Needs to be implemented !!!
//#UC END# *5108D66900C9_4A2D2D4300BE_impl*
end;//TevRange.DoDelete
{$IfEnd} //evNeedEditableCursors

procedure TevRange.Store(const aView: InevView;
  const G: InevTagGenerator;
  aFlags: TevdStoreFlags = evDefaultStoreFlags);
//#UC START# *47C68BFD011C_4A2D2D4300BE_var*
//#UC END# *47C68BFD011C_4A2D2D4300BE_var*
begin
//#UC START# *47C68BFD011C_4A2D2D4300BE_impl*
 !!! Needs to be implemented !!!
//#UC END# *47C68BFD011C_4A2D2D4300BE_impl*
end;//TevRange.Store

function TevRange.Store(aFormat: TevdClipboardFormat;
  const aPool: IStream;
  const aFilters: TevdTagGenerator;
  aFlags: TevdStoreFlags = evd_DefaultStoreFlags): Boolean;
//#UC START# *47C68C6701AF_4A2D2D4300BE_var*
//#UC END# *47C68C6701AF_4A2D2D4300BE_var*
begin
//#UC START# *47C68C6701AF_4A2D2D4300BE_impl*
 !!! Needs to be implemented !!!
//#UC END# *47C68C6701AF_4A2D2D4300BE_impl*
end;//TevRange.Store

function TevRange.pm_GetBorders: TevPair;
//#UC START# *47C68CB00136_4A2D2D4300BEget_var*
//#UC END# *47C68CB00136_4A2D2D4300BEget_var*
begin
//#UC START# *47C68CB00136_4A2D2D4300BEget_impl*
 !!! Needs to be implemented !!!
//#UC END# *47C68CB00136_4A2D2D4300BEget_impl*
end;//TevRange.pm_GetBorders

function TevRange.SolidBottomChildBlock(const aView: InevView): InevRange;
//#UC START# *47C690AB02EE_4A2D2D4300BE_var*
//#UC END# *47C690AB02EE_4A2D2D4300BE_var*
begin
//#UC START# *47C690AB02EE_4A2D2D4300BE_impl*
 !!! Needs to be implemented !!!
//#UC END# *47C690AB02EE_4A2D2D4300BE_impl*
end;//TevRange.SolidBottomChildBlock

function TevRange.GetChildSel(const aView: InevView;
  aChildIndex: Integer;
  aForDrawing: Boolean): InevRange;
//#UC START# *47C691F0012A_4A2D2D4300BE_var*
//#UC END# *47C691F0012A_4A2D2D4300BE_var*
begin
//#UC START# *47C691F0012A_4A2D2D4300BE_impl*
 !!! Needs to be implemented !!!
//#UC END# *47C691F0012A_4A2D2D4300BE_impl*
end;//TevRange.GetChildSel

procedure TevRange.GetBorderPoints(out BS: InevBasePoint;
  out BF: InevBasePoint);
//#UC START# *47C691FB0055_4A2D2D4300BE_var*
//#UC END# *47C691FB0055_4A2D2D4300BE_var*
begin
//#UC START# *47C691FB0055_4A2D2D4300BE_impl*
 !!! Needs to be implemented !!!
//#UC END# *47C691FB0055_4A2D2D4300BE_impl*
end;//TevRange.GetBorderPoints

function TevRange.BottomChildBlock(const aView: InevView): InevRange;
//#UC START# *47C6920B01B2_4A2D2D4300BE_var*
//#UC END# *47C6920B01B2_4A2D2D4300BE_var*
begin
//#UC START# *47C6920B01B2_4A2D2D4300BE_impl*
 !!! Needs to be implemented !!!
//#UC END# *47C6920B01B2_4A2D2D4300BE_impl*
end;//TevRange.BottomChildBlock

function TevRange.CloneSel(const aView: InevView): InevRange;
//#UC START# *47C6924201FA_4A2D2D4300BE_var*
//#UC END# *47C6924201FA_4A2D2D4300BE_var*
begin
//#UC START# *47C6924201FA_4A2D2D4300BE_impl*
 !!! Needs to be implemented !!!
//#UC END# *47C6924201FA_4A2D2D4300BE_impl*
end;//TevRange.CloneSel

function TevRange.Delete(const aView: InevView;
  const anOp: InevOp = nil;
  aMode: TevClearMode = ev_cmAll;
  const aPara: InevPara = nil): Boolean;
//#UC START# *47C6928C0243_4A2D2D4300BE_var*
//#UC END# *47C6928C0243_4A2D2D4300BE_var*
begin
//#UC START# *47C6928C0243_4A2D2D4300BE_impl*
 !!! Needs to be implemented !!!
//#UC END# *47C6928C0243_4A2D2D4300BE_impl*
end;//TevRange.Delete

function TevRange.Modify: InevRangeModify;
//#UC START# *47C692B301BF_4A2D2D4300BE_var*
//#UC END# *47C692B301BF_4A2D2D4300BE_var*
begin
//#UC START# *47C692B301BF_4A2D2D4300BE_impl*
 !!! Needs to be implemented !!!
//#UC END# *47C692B301BF_4A2D2D4300BE_impl*
end;//TevRange.Modify

function TevRange.ParentRange(aLevel: Integer = 0): InevRange;
//#UC START# *47C692C10136_4A2D2D4300BE_var*
//#UC END# *47C692C10136_4A2D2D4300BE_var*
begin
//#UC START# *47C692C10136_4A2D2D4300BE_impl*
 !!! Needs to be implemented !!!
//#UC END# *47C692C10136_4A2D2D4300BE_impl*
end;//TevRange.ParentRange

function TevRange.Contains(const aView: InevView;
  const aPoint: InevBasePoint): Boolean;
//#UC START# *47C692CC024C_4A2D2D4300BE_var*
//#UC END# *47C692CC024C_4A2D2D4300BE_var*
begin
//#UC START# *47C692CC024C_4A2D2D4300BE_impl*
 !!! Needs to be implemented !!!
//#UC END# *47C692CC024C_4A2D2D4300BE_impl*
end;//TevRange.Contains

procedure TevRange.Select(const aView: InevView;
  const C: InevBasePoint;
  aTarget: TevSelectTarget;
  const Ctx: InevOp = nil);
//#UC START# *47C6960502ED_4A2D2D4300BE_var*
//#UC END# *47C6960502ED_4A2D2D4300BE_var*
begin
//#UC START# *47C6960502ED_4A2D2D4300BE_impl*
 !!! Needs to be implemented !!!
//#UC END# *47C6960502ED_4A2D2D4300BE_impl*
end;//TevRange.Select

procedure TevRange.Select(const aView: InevView;
  const C: InevBasePoint;
  aOpen: Integer;
  aClose: Integer;
  const Ctx: InevOp = nil);
//#UC START# *47C696160251_4A2D2D4300BE_var*
//#UC END# *47C696160251_4A2D2D4300BE_var*
begin
//#UC START# *47C696160251_4A2D2D4300BE_impl*
 !!! Needs to be implemented !!!
//#UC END# *47C696160251_4A2D2D4300BE_impl*
end;//TevRange.Select

function TevRange.pm_GetBorders: TevPair;
//#UC START# *47C6962E028E_4A2D2D4300BEget_var*
//#UC END# *47C6962E028E_4A2D2D4300BEget_var*
begin
//#UC START# *47C6962E028E_4A2D2D4300BEget_impl*
 !!! Needs to be implemented !!!
//#UC END# *47C6962E028E_4A2D2D4300BEget_impl*
end;//TevRange.pm_GetBorders

function TevRange.pm_GetData: IevdDataObject;
//#UC START# *47C696B603E7_4A2D2D4300BEget_var*
//#UC END# *47C696B603E7_4A2D2D4300BEget_var*
begin
//#UC START# *47C696B603E7_4A2D2D4300BEget_impl*
 !!! Needs to be implemented !!!
//#UC END# *47C696B603E7_4A2D2D4300BEget_impl*
end;//TevRange.pm_GetData

procedure TevRange.Init(const aStart: InevBasePoint;
  const aFinish: InevBasePoint;
  aSharp: Boolean = false);
//#UC START# *47C696E302FE_4A2D2D4300BE_var*
//#UC END# *47C696E302FE_4A2D2D4300BE_var*
begin
//#UC START# *47C696E302FE_4A2D2D4300BE_impl*
 !!! Needs to be implemented !!!
//#UC END# *47C696E302FE_4A2D2D4300BE_impl*
end;//TevRange.Init

function TevRange.Solid(const aView: InevView): Boolean;
//#UC START# *47FF53790028_4A2D2D4300BE_var*
//#UC END# *47FF53790028_4A2D2D4300BE_var*
begin
//#UC START# *47FF53790028_4A2D2D4300BE_impl*
 !!! Needs to be implemented !!!
//#UC END# *47FF53790028_4A2D2D4300BE_impl*
end;//TevRange.Solid

function TevRange.ContainsEnd(const aView: InevView): Boolean;
//#UC START# *47FF5C3D017E_4A2D2D4300BE_var*
//#UC END# *47FF5C3D017E_4A2D2D4300BE_var*
begin
//#UC START# *47FF5C3D017E_4A2D2D4300BE_impl*
 !!! Needs to be implemented !!!
//#UC END# *47FF5C3D017E_4A2D2D4300BE_impl*
end;//TevRange.ContainsEnd

function TevRange.Collapsed(const aView: InevView): Boolean;
//#UC START# *47FF5F3702F6_4A2D2D4300BE_var*
//#UC END# *47FF5F3702F6_4A2D2D4300BE_var*
begin
//#UC START# *47FF5F3702F6_4A2D2D4300BE_impl*
 !!! Needs to be implemented !!!
//#UC END# *47FF5F3702F6_4A2D2D4300BE_impl*
end;//TevRange.Collapsed

procedure TevRange.AssignSel(const aView: InevView;
  const aSource: InevRange);
//#UC START# *48E25C7E0366_4A2D2D4300BE_var*
//#UC END# *48E25C7E0366_4A2D2D4300BE_var*
begin
//#UC START# *48E25C7E0366_4A2D2D4300BE_impl*
 !!! Needs to be implemented !!!
//#UC END# *48E25C7E0366_4A2D2D4300BE_impl*
end;//TevRange.AssignSel

function TevRange.GetBlock: InevRange;
//#UC START# *48E25C980073_4A2D2D4300BE_var*
//#UC END# *48E25C980073_4A2D2D4300BE_var*
begin
//#UC START# *48E25C980073_4A2D2D4300BE_impl*
 !!! Needs to be implemented !!!
//#UC END# *48E25C980073_4A2D2D4300BE_impl*
end;//TevRange.GetBlock

procedure TevRange.SetToStart;
//#UC START# *48E25CA5027C_4A2D2D4300BE_var*
//#UC END# *48E25CA5027C_4A2D2D4300BE_var*
begin
//#UC START# *48E25CA5027C_4A2D2D4300BE_impl*
 !!! Needs to be implemented !!!
//#UC END# *48E25CA5027C_4A2D2D4300BE_impl*
end;//TevRange.SetToStart

function TevRange.Unselect(const aView: InevView): Boolean;
//#UC START# *48E25CB3032B_4A2D2D4300BE_var*
//#UC END# *48E25CB3032B_4A2D2D4300BE_var*
begin
//#UC START# *48E25CB3032B_4A2D2D4300BE_impl*
 !!! Needs to be implemented !!!
//#UC END# *48E25CB3032B_4A2D2D4300BE_impl*
end;//TevRange.Unselect

function TevRange.AsStorable: InevDataObjectPrim2;
//#UC START# *48EC8339027A_4A2D2D4300BE_var*
//#UC END# *48EC8339027A_4A2D2D4300BE_var*
begin
//#UC START# *48EC8339027A_4A2D2D4300BE_impl*
 !!! Needs to be implemented !!!
//#UC END# *48EC8339027A_4A2D2D4300BE_impl*
end;//TevRange.AsStorable

function TevRange.SearchReplace(const aSearcher: IevSearcher;
  const aReplacer: IevReplacer;
  const aConfirm: InevConfirm;
  const aCursor: InevBasePoint = nil;
  const anOpPack: InevOp = nil;
  aNeedProgress: Boolean = true): Boolean;
//#UC START# *49E83F480351_4A2D2D4300BE_var*
//#UC END# *49E83F480351_4A2D2D4300BE_var*
begin
//#UC START# *49E83F480351_4A2D2D4300BE_impl*
 !!! Needs to be implemented !!!
//#UC END# *49E83F480351_4A2D2D4300BE_impl*
end;//TevRange.SearchReplace

function TevRange.Search(const aView: InevView;
  const aSearcher: IevSearcher;
  const Progress: Il3Progress;
  const aStart: InevBasePoint;
  out cFStart: InevBasePoint;
  out cFFinish: InevBasePoint): Boolean;
//#UC START# *49E843B10236_4A2D2D4300BE_var*
//#UC END# *49E843B10236_4A2D2D4300BE_var*
begin
//#UC START# *49E843B10236_4A2D2D4300BE_impl*
 !!! Needs to be implemented !!!
//#UC END# *49E843B10236_4A2D2D4300BE_impl*
end;//TevRange.Search

procedure TevRange.SetToFinish(aMoveUpInLines: Integer);
//#UC START# *50AF18AD03DD_4A2D2D4300BE_var*
//#UC END# *50AF18AD03DD_4A2D2D4300BE_var*
begin
//#UC START# *50AF18AD03DD_4A2D2D4300BE_impl*
 !!! Needs to be implemented !!!
//#UC END# *50AF18AD03DD_4A2D2D4300BE_impl*
end;//TevRange.SetToFinish

procedure TevRange.RefreshBorders;
//#UC START# *50B727F00221_4A2D2D4300BE_var*
//#UC END# *50B727F00221_4A2D2D4300BE_var*
begin
//#UC START# *50B727F00221_4A2D2D4300BE_impl*
 !!! Needs to be implemented !!!
//#UC END# *50B727F00221_4A2D2D4300BE_impl*
end;//TevRange.RefreshBorders

end.