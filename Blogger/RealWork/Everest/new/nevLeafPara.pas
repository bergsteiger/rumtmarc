unit nevLeafPara;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/new/nevLeafPara.pas"
// Начат: 04.04.2005 14:23
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::ParagraphsImplementation::TnevLeafPara
//
// Реализация инструмента InevLeafPara
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\common\components\gui\Garant\Everest\evDefine.inc}

interface

uses
  nevBase,
  nevTools,
  nevPara,
  k2Interfaces
  ;

type
 TnevLeafPara = class(TnevPara, InevLeafPara)
  {* Реализация инструмента InevLeafPara }
 protected
 // overridden protected methods
   function GetIsHiddenPrim(aMap: TnevFormatInfoPrim;
    aHiddenStyles: TnevStandardStyles): Boolean; override;
   function GetAnchorID: Integer; override;
   function GetExcludeEvents: Tk2EventIDs; override;
 protected
 // protected methods
   function GetIsHidden(aMap: TnevFormatInfoPrim;
    aHiddenStyles: TnevStandardStyles): Boolean; virtual;
   function TagIsHidden(const aTag: InevTag;
    aHiddenStyles: TnevStandardStyles): Boolean;
 public
 // public methods
   class function Make(const aTag: InevTag): InevLeafPara; reintroduce;
 end;//TnevLeafPara

implementation

uses
  k2Tags,
  evdStyles,
  l3String,
  evParaTools,
  CommentPara_Const,
  Block_Const,
  l3MinMax,
  TableCell_Const
  ;

// start class TnevLeafPara

class function TnevLeafPara.Make(const aTag: InevTag): InevLeafPara;
var
 l_Inst : TnevLeafPara;
begin
 l_Inst := Create(aTag);
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

function TnevLeafPara.GetIsHidden(aMap: TnevFormatInfoPrim;
  aHiddenStyles: TnevStandardStyles): Boolean;
//#UC START# *48D0F8DF01AF_48D0F828032E_var*
//#UC END# *48D0F8DF01AF_48D0F828032E_var*
begin
//#UC START# *48D0F8DF01AF_48D0F828032E_impl*
 Result := TagIsHidden(TagInst, aHiddenStyles);
//#UC END# *48D0F8DF01AF_48D0F828032E_impl*
end;//TnevLeafPara.GetIsHidden

function TnevLeafPara.TagIsHidden(const aTag: InevTag;
  aHiddenStyles: TnevStandardStyles): Boolean;
//#UC START# *48D0F8F402F3_48D0F828032E_var*
//#UC END# *48D0F8F402F3_48D0F828032E_var*
begin
//#UC START# *48D0F8F402F3_48D0F828032E_impl*
 Result := (aHiddenStyles <> []) AND
           (-aTag.IntA[k2_tiStyle] in aHiddenStyles);
//#UC END# *48D0F8F402F3_48D0F828032E_impl*
end;//TnevLeafPara.TagIsHidden

function TnevLeafPara.GetIsHiddenPrim(aMap: TnevFormatInfoPrim;
  aHiddenStyles: TnevStandardStyles): Boolean;
//#UC START# *48CFB1F5024F_48D0F828032E_var*
//#UC END# *48CFB1F5024F_48D0F828032E_var*
begin
//#UC START# *48CFB1F5024F_48D0F828032E_impl*
 Result := GetIsHidden(aMap, aHiddenStyles
                             {$IfDef evNeedCollapsedVersionComments}
                              - [-ev_saVersionInfo]
                             {$EndIf evNeedCollapsedVersionComments} 
                              );
//#UC END# *48CFB1F5024F_48D0F828032E_impl*
end;//TnevLeafPara.GetIsHiddenPrim

function TnevLeafPara.GetAnchorID: Integer;
//#UC START# *48D0EA69031F_48D0F828032E_var*
//#UC END# *48D0EA69031F_48D0F828032E_var*
begin
//#UC START# *48D0EA69031F_48D0F828032E_impl*
 Result := GetRedirect.IntA[k2_tiHandle];
//#UC END# *48D0EA69031F_48D0F828032E_impl*
end;//TnevLeafPara.GetAnchorID

function TnevLeafPara.GetExcludeEvents: Tk2EventIDs;
//#UC START# *48D0F4810330_48D0F828032E_var*
//#UC END# *48D0F4810330_48D0F828032E_var*
begin
//#UC START# *48D0F4810330_48D0F828032E_impl*
 Result := inherited GetExcludeEvents +
           [k2_eidChildrenInserted, k2_eidChildrenAdded, k2_eidChildrenDeleted];
//#UC END# *48D0F4810330_48D0F828032E_impl*
end;//TnevLeafPara.GetExcludeEvents

end.