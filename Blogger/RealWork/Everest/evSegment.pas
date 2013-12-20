unit evSegment;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Модуль: "w:/common/components/gui/Garant/Everest/evSegment.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi::Everest::ParaUtils::evSegment
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  nevBase
  ;

function EvSegmentHasSomeFormat(const aSegment: InevTag): Boolean;
   {* определяет - имеет ли сегмент хоть какое-то оформление, отличное от стандартного. }
procedure EvSegmentSetFontParam(const aSegment: InevTag;
  anAtom: LongInt;
  const aValue: InevTag;
  const aContext: InevOp = nil);
function EvIsHyperlinkPara(const aSegment: InevTag;
  aTextLen: Integer): Boolean;
   {* Проверяет покрывает ли гиперссылка весь параграф. }

implementation

uses
  Segment_Const,
  HyperLink_Const,
  evdStyles,
  k2Tags,
  evResultFont,
  k2Prim,
  k2Except,
  k2BaseTypes,
  k2Base,
  l3Types
  ;

// unit methods

{$If not defined(Nemesis)}
function CheckApply2Para(const anAtom: InevTag): Boolean;
//#UC START# *502206170304_4A3919200142_var*
//#UC END# *502206170304_4A3919200142_var*
begin
//#UC START# *502206170304_4A3919200142_impl*
 Result := anAtom.Attr[k2_tiApply2Para].IsValid;
 if Result then
  Result := anAtom.BoolA[k2_tiApply2Para];
//#UC END# *502206170304_4A3919200142_impl*
end;//CheckApply2Para
{$IfEnd} //not Nemesis

procedure EvSegmentAssignSegment(const aDestSegment: InevTag;
  const aSegment: InevTag;
  const anOpPack: InevOp);
//#UC START# *502206D80305_4A3919200142_var*

  function AssignToFont(const aFont: InevTag): Boolean;
  var
   l_Font : TevResultFont;
  begin//AssignToFont
   with l_Font do
   begin
    Init;                       
    try
     if aSegment.HasSubAtom(k2_tiStyle) then
      AddStyledTag(aSegment)
     else
      AddTag(aSegment);
     Result := AssignToAtom(aFont);
    finally
     Clear;
    end;//try..finally
   end;//l_Font
  end;//AssignToFont

 procedure _Assign(const anAtom : InevTag;
                   const aProp  : Tk2CustomPropertyPrim);

 var
  l_New : InevTag;
  l_I   : Integer;
  l_C   : InevTag;
 begin//_Assign
  with aDestSegment do
  begin
   if (aProp.TagIndex = k2_tiChildren) then
   begin
    for l_I := 0 to Pred(anAtom.ChildrenCount) do
    begin
     l_C := anAtom.Child[l_I].CloneTag;
     try
      try
       aDestSegment.AddChild(l_C, anOpPack);
      except
       on Ek2CannotAddChild do ;
      end;//try..except
     finally
      l_C := nil;
     end;//try..finally
    end;//for l_I
   end//aProp.TagIndex = k2_tiChildren
   else
   if aProp.Shared then
   begin
    if not aProp.ReadOnly then
     AttrW[aProp.TagIndex, anOpPack] := anAtom{nil}{?}
     // - было nil исправил на anAtom - так же вроде логичнее
   end//aProp.Shared
   else
   begin
    if HasSubAtom(aProp.TagIndex) then
    begin
     if (aProp.TagIndex = k2_tiFont) then
      // - шрифт надо обрабатывать особым образом
      AssignToFont(Attr[aProp.TagIndex])
     else
      with Attr[aProp.TagIndex] do
       if IsOrd then
        aDestSegment.AttrW[aProp.TagIndex, anOpPack] := anAtom
       else
        AssignTag(anAtom, [k2_amNull], anOpPack);
    end//HasSubAtom(aProp.TagIndex)
    else
    begin
     l_New := Attr[aProp.TagIndex];
     if anAtom.IsOrd then
      l_New := anAtom
     else
     if l_New.IsValid then
      l_New := l_New.CloneTag
     else
      l_New := Tk2Type(aProp.AtomType).MakeTag;
     try
      if (aProp.TagIndex = k2_tiFont) then
      begin
       // - шрифт надо обрабатывать особым образом
       if AssignToFont(l_New) then
        AttrW[aProp.TagIndex, anOpPack] := l_New;
      end//aProp.TagIndex = k2_tiFont
      else
{$IFNDEF Nemesis}
      if (aProp.TagIndex = k2_tiVisible) then 
      begin
       if (l_New = anAtom) then
        // - Признак видимости придется обрабатывать тоже особым образом:
        // если сегменты одинаковые, то можем его скопировать, а если нет - 
        // то и нефиг стараться, т.к. мы можем испортить видимость.
         AttrW[aProp.TagIndex, anOpPack] := l_New
       else
       if CheckApply2Para(aDestSegment) {and l_New.AssignTag(anAtom, [k2_amNull]) }then
        AttrW[aProp.TagIndex, anOpPack] := l_New;
      end//if (aProp.TagIndex = k2_tiVisible) then
      else
{$ENDIF Nemesis}
      if (l_New = anAtom) OR l_New.AssignTag(anAtom, [k2_amNull]) then
       AttrW[aProp.TagIndex, anOpPack] := l_New;
     finally
      l_New := nil;
     end;//try..finally
    end;//if HasSubAtom(aProp)
   end;//l_Prop.Shared
  end;//with aDestSegment
 end;//_Assign

var
 l_Index     : LongInt;
 l_Prop      : Tk2CustomPropertyPrim;
 l_AlienAtom : InevTag;
 l_Paras     : TLongArray;
//#UC END# *502206D80305_4A3919200142_var*
begin
//#UC START# *502206D80305_4A3919200142_impl*
 with aDestSegment do
 begin
  l_Paras := Tk2Type(TagType).ParamsForClone;
  for l_Index := Low(l_Paras) to High(l_Paras) do
  begin
   l_Prop := TagType.Prop[l_Paras[l_Index]];
   if (l_Prop <> nil) then
   begin
    with aSegment do
     l_AlienAtom := rOwnAtom(l_Prop.TagIndex);
    if l_AlienAtom.IsTransparent then
    begin
     // - атом прозрачный надо так его и оставить у нижнего сегмента
     ;
    end
    else
    if not l_AlienAtom.IsNull then
    begin
     // - у чужого сегмента есть такой собственный атом - надо его присвоить и дело с концом
     _Assign(l_AlienAtom, l_Prop)
    end//not l_AlienAtom.IsNull
    else
    begin
     { TODO -oЛюлин А. В. -cНедоделка : Надо еще учесть возможность прозрачности параметров шрифта. }
     with aSegment do
      l_AlienAtom := Attr[l_Prop.TagIndex];
     if l_AlienAtom.IsTransparent then
     begin
      // - атом прозрачный надо так его и оставить у нижнего сегмента
      ;
     end
     else
     if not l_AlienAtom.IsNull then
     begin
      _Assign(l_AlienAtom, l_Prop);
     end//not l_AlienAtom.IsNull
     else
      AttrW[l_Prop.TagIndex, anOpPack] := nil;
    end;//l_AlienOwnAtom.IsTransparent
   end;//l_Prop <> nil
  end;//for l_Index
 end;//with aDestSegment
// Ниже то что было раньше - без учета прозрачности
(* AssignSubAtomEx(aSegment,
                 evSegmentParas,
                 k2_amAll - [k2_amTransparent],
                 anOpPack);*)
//#UC END# *502206D80305_4A3919200142_impl*
end;//EvSegmentAssignSegment

function EvSegmentHasSomeFormat(const aSegment: InevTag): Boolean;
//#UC START# *502205210291_4A3919200142_var*
var
 l_Index : LongInt;
 l_Paras : TLongArray;
//#UC END# *502205210291_4A3919200142_var*
begin
//#UC START# *502205210291_4A3919200142_impl*
 Result := false;
 l_Paras := Tk2Type(aSegment.TagType).ParamsForClone;
 for l_Index := Low(l_Paras) to High(l_Paras) do
  with aSegment do
   if rOwnAtom(l_Paras[l_Index]).IsValid then
   begin
    Result := true;
    break;
   end;//rOwnAtom(TagType.Prop[l_Paras[l_Index]]).IsValid
//#UC END# *502205210291_4A3919200142_impl*
end;//EvSegmentHasSomeFormat

procedure EvSegmentSetFontParam(const aSegment: InevTag;
  anAtom: LongInt;
  const aValue: InevTag;
  const aContext: InevOp = nil);
//#UC START# *502205480080_4A3919200142_var*
var
 l_Prop : Tk2CustomPropertyPrim;
//#UC END# *502205480080_4A3919200142_var*
begin
//#UC START# *502205480080_4A3919200142_impl*
 if (anAtom = -k2_idSegment) then
 begin
  EvSegmentAssignSegment(aSegment, aValue, aContext);
 end//anAtom = -k2_idSegment
 else
  with aSegment do
  begin
   l_Prop := TagType.Prop[anAtom];
   if (l_Prop <> nil) then
    AttrW[l_Prop.TagIndex, aContext] := aValue
   else
    cAtom(k2_tiFont, aContext).AttrW[anAtom, aContext] := aValue;
  end;//with aSegment
//#UC END# *502205480080_4A3919200142_impl*
end;//EvSegmentSetFontParam

function EvIsHyperlinkPara(const aSegment: InevTag;
  aTextLen: Integer): Boolean;
//#UC START# *502205C20239_4A3919200142_var*
//#UC END# *502205C20239_4A3919200142_var*
begin
//#UC START# *502205C20239_4A3919200142_impl*
 Result := aSegment.IsValid and
           (aSegment.InheritsFrom(k2_idHyperLink) or (aSegment.IntA[k2_tiStyle] = ev_saHyperlink));
 if Result then
  Result := (aSegment.IntA[k2_tiStart] <= 1) and (aSegment.IntA[k2_tiFinish] >= aTextLen);
//#UC END# *502205C20239_4A3919200142_impl*
end;//EvIsHyperlinkPara

end.