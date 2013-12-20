unit nsPromptForDocFilter;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/nsPromptForDocFilter.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Core::Base Operations::View::BaseSearch::TnsPromptForDocFilter
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  l3CacheableBase,
  BaseSearchInterfaces
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TnsPromptForDocFilter = class(Tl3CacheableBase, InsPromptForDocFilter)
 private
 // private fields
   f_DocNum : LongWord;
 protected
 // realized methods
   function Get_InternalDocNumber: Longword;
 public
 // public methods
   constructor Create(aDocNum: LongWord); reintroduce;
   class function Make(aDocNum: LongWord): InsPromptForDocFilter; reintroduce;
 end;//TnsPromptForDocFilter
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}

// start class TnsPromptForDocFilter

constructor TnsPromptForDocFilter.Create(aDocNum: LongWord);
//#UC START# *4AA4D72303A9_4AA4D6CF02A9_var*
//#UC END# *4AA4D72303A9_4AA4D6CF02A9_var*
begin
//#UC START# *4AA4D72303A9_4AA4D6CF02A9_impl*
 inherited Create;
 f_DocNum := aDocNum;
//#UC END# *4AA4D72303A9_4AA4D6CF02A9_impl*
end;//TnsPromptForDocFilter.Create

class function TnsPromptForDocFilter.Make(aDocNum: LongWord): InsPromptForDocFilter;
var
 l_Inst : TnsPromptForDocFilter;
begin
 l_Inst := Create(aDocNum);
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

function TnsPromptForDocFilter.Get_InternalDocNumber: Longword;
//#UC START# *4AA4D5150176_4AA4D6CF02A9get_var*
//#UC END# *4AA4D5150176_4AA4D6CF02A9get_var*
begin
//#UC START# *4AA4D5150176_4AA4D6CF02A9get_impl*
 Result := f_DocNum;
//#UC END# *4AA4D5150176_4AA4D6CF02A9get_impl*
end;//TnsPromptForDocFilter.Get_InternalDocNumber

{$IfEnd} //not Admin AND not Monitorings

end.