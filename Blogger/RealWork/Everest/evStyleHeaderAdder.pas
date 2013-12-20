unit evStyleHeaderAdder;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/evStyleHeaderAdder.pas"
// Начат: 30.09.2011 15:31
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::Generators::TevStyleHeaderAdder
//
// Фильтр, доклеивающий заголовок стиля перед параграфом
// http://mdp.garant.ru/pages/viewpage.action?pageId=278837126
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
  k2Interfaces
  ;

type
 TevStyleHeaderAdder = class(TevdLeafParaFilter)
  {* Фильтр, доклеивающий заголовок стиля перед параграфом
http://mdp.garant.ru/pages/viewpage.action?pageId=278837126 }
 protected
 // overridden protected methods
   function ParaTypeForFiltering: Integer; override;
     {* Функция, определяющая тип абзацев, для которых будет выполняться фильтрация }
   procedure DoWritePara(const aLeaf: Ik2Tag); override;
     {* Запись конкретного абзаца в генератор. Позволяет вносить изменения в содержание абзаца }
 end;//TevStyleHeaderAdder

implementation

uses
  evTextStyle_Const,
  TextPara_Const,
  k2Tags,
  l3String,
  l3Types,
  nevTools
  ;

// start class TevStyleHeaderAdder

function TevStyleHeaderAdder.ParaTypeForFiltering: Integer;
//#UC START# *49E488070386_4E85A869034E_var*
//#UC END# *49E488070386_4E85A869034E_var*
begin
//#UC START# *49E488070386_4E85A869034E_impl*
 Result := k2_idTextPara;
//#UC END# *49E488070386_4E85A869034E_impl*
end;//TevStyleHeaderAdder.ParaTypeForFiltering

procedure TevStyleHeaderAdder.DoWritePara(const aLeaf: Ik2Tag);
//#UC START# *49E4883E0176_4E85A869034E_var*
var
 l_Style : Ik2Tag;
 l_Str   : Tl3PCharLen;
 l_Para  : InevPara; 
//#UC END# *49E4883E0176_4E85A869034E_var*
begin
//#UC START# *49E4883E0176_4E85A869034E_impl*
 l_Style := aLeaf.Attr[k2_tiStyle];
 if l_Style.BoolA[k2_tiHeaderHasOwnSpace] then
 begin
  l_Str := l_Style.PCharLenA[k2_tiShortName];
  if not l3IsNil(l_Str) then
  begin
   if aLeaf.BoolA[k2_tiCollapsed] then
    if aLeaf.QT(InevPara, l_Para) then
     if l_Para.TreatCollapsedAsHidden then
     begin
      inherited;
      Exit;
      // - не пишем довесок, к выкидываемому параграфу
     end;//l_Para.TreatCollapsedAsHidden
   Generator.StartChild(k2_idTextPara);
   try
    if (l_Style.IntA[k2_tiHandle] = ev_saChangesInfo) then
     Generator.AddIntegerAtom(k2_tiStyle, ev_saSubHeaderForChangesInfo);
    Generator.AddPCharLenAtom(k2_tiText, l_Str);
   finally
    Generator.Finish;
   end;//try..finally
  end;//not l3IsNil(l_Str)
 end;//l_Style.BoolA[k2_tiHeaderHasOwnSpace]
 inherited;
//#UC END# *49E4883E0176_4E85A869034E_impl*
end;//TevStyleHeaderAdder.DoWritePara

end.