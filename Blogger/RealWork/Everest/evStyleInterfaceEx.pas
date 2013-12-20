unit evStyleInterfaceEx;

{ Библиотека "Эверест"    }
{ Начал: Люлин А.В.       }
{ Модуль: evStyleInterfaceEx - }
{ Начат: 20.05.2005 17:28 }
{ $Id: evStyleInterfaceEx.pas,v 1.30 2012/06/09 13:05:27 lulin Exp $ }

// $Log: evStyleInterfaceEx.pas,v $
// Revision 1.30  2012/06/09 13:05:27  lulin
// - учитываем рамки стилей.
//
// Revision 1.29  2012/05/23 13:26:38  lulin
// {RequestLink:329648343}
//
// Revision 1.28  2012/03/05 13:20:34  lulin
// {RequestLink:336142662}
//
// Revision 1.27  2012/01/16 15:14:28  lulin
// {RequestLink:321984560}
//
// Revision 1.26  2011/11/16 18:08:59  lulin
// {RequestLink:232098711}
//
// Revision 1.25  2011/11/15 18:29:38  lulin
// {RequestLink:232098711}
//
// Revision 1.24  2011/10/24 12:54:09  lulin
// {RequestLink:294600965}.
//
// Revision 1.23  2011/10/17 11:59:22  lulin
// {RequestLink:294258021}.
//
// Revision 1.22  2011/10/14 13:44:13  fireton
// - bugfix: Архивариус не собирался
//
// Revision 1.21  2011/10/14 12:25:43  lulin
// - пытаемся сохранить кошерность таблицы стилей.
//
// Revision 1.20  2011/10/13 17:29:37  lulin
// - bug fix: оказалось, что в F1 был потерян стиль "Заголовок приложения".
//
// Revision 1.19  2011/07/29 13:27:23  lulin
// {RequestLink:209585097}.
//
// Revision 1.18  2009/03/04 13:32:47  lulin
// - <K>: 137470629. Генерируем идентификаторы типов с модели и убираем их из общей помойки.
//
// Revision 1.17  2008/08/25 15:14:47  lulin
// - <K>: 100011305.
//
// Revision 1.16  2008/06/17 20:44:42  lulin
// - рисуем схему EVD на модели.
//
// Revision 1.15  2008/05/21 18:16:18  lulin
// - bug fix: неверно сортировались стили, т.к. у них менялись имена. Найдено в процессе работы над <K>: 90441490.
//
// Revision 1.14  2008/03/21 15:41:37  lulin
// - <K>: 87591144.
//
// Revision 1.13  2008/02/12 19:32:26  lulin
// - избавляемся от универсальности списков.
//
// Revision 1.12  2008/02/05 09:57:38  lulin
// - выделяем базовые объекты в отдельные файлы и переносим их на модель.
//
// Revision 1.11  2008/02/01 15:14:29  lulin
// - избавляемся от излишней универсальности списков.
//
// Revision 1.10  2008/01/31 20:09:51  lulin
// - избавляемся от излишней универсальности списков.
//
// Revision 1.9  2007/12/04 12:47:05  lulin
// - перекладываем ветку в HEAD.
//
// Revision 1.1.2.10  2007/09/14 13:26:06  lulin
// - объединил с веткой B_Tag_Clean.
//
// Revision 1.1.2.9.2.1  2007/09/12 15:23:02  lulin
// - избавляемся от метода, дублирующего функциональность получения атрибута.
//
// Revision 1.1.2.9  2007/08/09 13:41:53  lulin
// - избавляемся от излишней гибкости.
//
// Revision 1.1.2.8  2007/08/09 12:38:15  lulin
// - убираем замороченную логику с присвоением таблицы тегов.
//
// Revision 1.1.2.7  2005/10/18 07:19:40  lulin
// - new behavior: теперь методы вставки и добавления дочерних тегов могут подменять вставляемые теги.
//
// Revision 1.1.2.6  2005/07/21 13:00:34  lulin
// - писатель формата EVD переехал в папку EVD.
//
// Revision 1.1.2.5  2005/07/21 12:21:24  lulin
// - читатель формата EVD переехал в папку EVD.
//
// Revision 1.1.2.4  2005/06/22 17:53:03  lulin
// - типы переименованы в соответствии с названием библиотеки.
//
// Revision 1.1.2.3  2005/06/22 17:34:09  lulin
// - генератор документа в памяти перенесен в "правильную" библиотеку.
//
// Revision 1.1.2.2  2005/05/20 14:58:39  lulin
// - new unit: evStyleInterface.
//
// Revision 1.1.2.1  2005/05/20 13:49:53  lulin
// - new unit: evStyleInterfaceEx.
//

{$Include evDefine.inc }

interface

uses
  Classes,
  
  l3Types,

  k2Interfaces,
  k2TagGen,
  k2Reader,
  k2DocumentGenerator,

  evStyleInterface
  ;

type
  TevStyleInterfaceEx = class(TevStyleInterface)
    public
     ForExport : Boolean;
    protected
    // event handlers
      function DoFinishAtom(G        : Tk2DocumentGenerator;
                            var Atom : Tk2StackAtom): Bool;
        {-}
      procedure InitFields;
        override;
        {-}
    public
    // public methods
      procedure Load(Reader: Tk2CustomReader);
        overload;
        {* - загружает таблицу стилей. }
      procedure Load(S: TStream);
        overload;
        {* - загружает таблицу стилей. }
      procedure Save(G: Tk2TagGenerator);
        overload;
        {* - сохраняет таблицу стилей. }
      procedure Save(S: TStream; aBinary: Bool = False);
        overload;
        {* - сохраняет таблицу стилей. }
      procedure SaveCurrent(G: Tk2TagGenerator);
        {* - сохраняет текущий стиль. }
  end;//TevStyleInterfaceEx

var
 g_InCreateDocumentSchema : Boolean = false;  

implementation

uses
  SysUtils,
  StrUtils,

  Graphics,
  
  l3Base,
  l3Dict,
  l3Filer,
  l3ObjectRefList,

  k2Tags,
  k2Base,
  k2Context,
  k2TagList,
  k2Facade,

  evdStyles,
  evdReader,
  evdWriter,

  evOpProc,

  nevTools,

  Style_Const,
  evStyleTableFontSizeCorrector
  ;

// start class TevStyleInterfaceEx

type
  TevStyleTableGenerator = class(Tk2DocumentGenerator)
    private
    // property fields
      f_StyleTable : Tl3Dictionary;
  end;//TevStyleTableGenerator

procedure TevStyleInterfaceEx.Load(Reader: Tk2CustomReader);
  {* - загружает таблицу стилей. }
var
 G           : TevStyleTableGenerator;
 OG          : Ik2TagGenerator;
 VT          : Tl3Dictionary;
 l_Processor : TevCustomUndoProcessor;
 l_Context   : Tk2Context;
begin
 GetVT(VT);
 try
  if (VT <> nil) then begin
   Changing;
   try
    l_Processor := TevCustomUndoProcessor.Create;
    try
     l_Context := Tk2Context.Create(l_Processor);
     try
      OG := Reader.Generator;
      try
       InevOp(l_Context).InIOProcess := true;
       InevOp(l_Context).SaveUndo := false;
       InevOp(l_Context).DeleteMapped := false;
       InevOp(l_Context).Optimize := false;
       G := TevStyleTableGenerator.Create;
       try
        G.Context := l_Context;
        G.OnFinishAtom := DoFinishAtom;
        G.f_StyleTable := VT;
        Reader.Generator := G;
        Reader.Execute;
        G.f_StyleTable.Sort;
       finally
        l3Free(G);
       end;{try..finally}
      finally
       Reader.Generator := OG;
      end;{try..finally}
     finally
      l3Free(l_Context);
     end;{try..finally}
    finally
     l3Free(l_Processor);
    end;{try..finally}
   finally
    Changed;
   end;//try..finally
  end;{VT <> nil}
 finally
  l3Free(VT);
 end;{try..}
end;

procedure TevStyleInterfaceEx.Load(S: TStream);
  {overload;}
  {* - загружает таблицу стилей. }
var
 F  : Tl3CustomFiler;
 R  : TevdNativeReader;
begin
 F := Tl3CustomFiler.Create;
 try
  F.Stream := S;
  R := TevdNativeReader.Create;
  try
   R.Filer := F;
   Load(R);
  finally
   l3Free(R);
  end;{try..finally}
 finally
  l3Free(F);
 end;{try..finally}
end;

procedure TevStyleInterfaceEx.Save(G: Tk2TagGenerator);
  {* - сохраняет таблицу стилей. }

 procedure DoSave(G: Tk2TagGenerator);

  function SaveStyle(aStyle: PIk2Tag; Index: Long): Bool;
  begin//SaveStyle
   if not ANSIStartsStr('Элемент №', aStyle.StrA[k2_tiName]) AND
      // - не выливаем автодобавленные стили
      (not ForExport OR aStyle.BoolA[k2_tiVisibleToUser])
      // - не выливаем стили "не попадающие в таблицу стилей"
      then
   begin
    G.StartChild(aStyle^.TagType.ID);
    try
     aStyle^.Write(G);
    finally
     G.Finish;
    end;//try..finally
   end;//not ANSIStartsStr('Элемент №', aStyle.StrA[k2_tiName])
   Result := true;
  end;//SaveStyle

 var
  VT1 : Tk2TagList;

  function SortStyle(aStyle: PObject; Index: Long): Bool;
  var
   I        : Long;
   l_Style  : Ik2Tag;
   l_Parent : Ik2Tag;
  begin//SortStyle
   I := VT1.Count;
   l_Style := TypeTable.ObjToTag(aStyle^);
   //l_Style := k2Tag(aStyle^);
   while l_Style.IsValid AND (VT1.IndexOf(l_Style) < 0) do
   begin
    VT1.Insert(I, l_Style);
    l_Parent := l_Style.Attr[k2_tiStyle];
    if l_Style.IsSame(l_Parent) then
     l_Style := k2NullTag
    else
     l_Style := l_Parent;
   end;//while l_Style.IsValid..
   Result := true;
  end;//SortStyle

 var
  VT  : Tl3Dictionary;
  GSO : Bool;
 begin//DoSave
  GetVT(VT);
  try
   if (VT <> nil) then
   begin
    GSO := not G.StreamOpened;
    VT1 := Tk2TagList.Make;
    try
     VT.IterateAllF(l3L2IA(@SortStyle));
     if GSO then G.Start;
     try
      VT1.IterateAllF(l3L2IA(@SaveStyle));
     finally
      if GSO then G.Finish;
     end;//try..finally
    finally
     l3Free(VT1);
    end;//try..finally
   end;//VT <> nil
  finally
   l3Free(VT);
  end;//try..finally
 end;//DoSave

var 
 l_G : TevStyleTableFontSizeCorrector;
 l_GSO : Boolean;
begin
 if ForExport AND Self.DocumentUseFixedFontForPrintAndExportSetting then
 begin
  l_G := TevStyleTableFontSizeCorrector.Create;
  // !!! SetTo тут нельзя использовать, т.к. там проблемы с FakeStarts и лишним CloseStructure !!!
  try
   l_G.Start;
   try
    l_GSO := not G.StreamOpened;
    if l_GSO then G.Start;
    try
     l_G.Generator := G;
     try
      DoSave(l_G);
     finally
      l_G.Generator := nil;
     end;//try..finally
    finally
     if l_GSO then G.Finish;
    end;//try..finally
   finally
    l_G.Finish;
   end;//try..finally
  finally
   FreeAndNil(l_G);
  end;//try..finally
 end//DocumentUseFixedFontForPrintAndExportSetting
 else
  DoSave(G);
end;

procedure TevStyleInterfaceEx.Save(S: TStream; aBinary: Bool);
  {* - сохраняет таблицу стилей. }
var
 F  : Tl3CustomFiler;
 W  : TevdNativeWriter;
begin
 F := Tl3CustomFiler.Create;
 try
  F.Mode := l3_fmWrite;
  F.Stream := S;
  try
   W := TevdNativeWriter.Create;
   try
    W.Filer := F;
    {$IfDef evdNeedEverestTxt}
    W.Binary := aBinary;
    {$EndIf evdNeedEverestTxt}
    Save(W);
   finally
    l3Free(W);
   end;//try..finally
  finally
   F.Stream := nil;
  end;//try..finally
 finally
  l3Free(F);
 end;//try..finally
end;

procedure TevStyleInterfaceEx.SaveCurrent(G: Tk2TagGenerator);
  {* - сохраняет текущий стиль. }
var
 GSO : Bool;
begin
 GSO := not G.StreamOpened;
 if GSO then G.Start;
 try
  G.StartChild(Tag.TagType.ID);
  try
   Tag.Write(G);
  finally
   G.Finish;
  end;{try..finally}
 finally
  if GSO then G.Finish;
 end;{try..finally}
end;

type
  Tl3DictionaryHack = class(Tl3Dictionary)
  end;//Tl3DictionaryHack

function TevStyleInterfaceEx.DoFinishAtom(G        : Tk2DocumentGenerator;
                                          var Atom : Tk2StackAtom): Bool;
  {-}
{$IfDef Nemesis}
const
 cTagToKeep : array [0..15{4}{6}] of Integer =
  (k2_tiHandle, k2_tiStyle,
   k2_tiName, k2_tiShortName,
   k2_tiLeftIndent, k2_tiFirstIndent, k2_tiRightIndent,
   k2_tiJustification,
   k2_tiLineSpacing, k2_tiHeaderHasOwnSpace,
   k2_tiApply2Para,
   k2_tiVisible,
   k2_tiSpaceBefore, k2_tiSpaceAfter,
   {k2_tiIsChangeableFont,}
   // http://mdp.garant.ru/pages/viewpage.action?pageId=336142662
   // http://mdp.garant.ru/pages/viewpage.action?pageId=338463119
   // - теперь УМ это может настраивать
   k2_tiVisibleToUser{,
   k2_tiHeader, k2_tiFooter},
   k2_tiFrame);
{$Else Nemesis}
const
 cTagToKeep : array [0..7{7}] of Integer =
  (k2_tiHandle,
   //k2_tiStyle,
   k2_tiName,
   k2_tiShortName,
   //k2_tiLeftIndent, k2_tiFirstIndent, k2_tiRightIndent,
   //k2_tiJustification,
   k2_tiLineSpacing, k2_tiHeaderHasOwnSpace,
   //k2_tiApply2Para,
   //k2_tiVisible,
   k2_tiSpaceBefore, k2_tiSpaceAfter{,
   k2_tiHeader, k2_tiFooter},
   k2_tiFrame);
{$EndIf Nemesis}
var
 l_Found : InevTag;
 l_Prev : InevTag;
 l_Index : Integer;
 l_TI : Integer;
 l_TTK : Integer;
begin
 Result := true;
 if Atom.InheritsFrom(k2_idStyle) then
 begin
  if (Atom.Box.IntA[k2_tiHandle] = -65528) then
   Exit;
  if not g_InCreateDocumentSchema AND
     Tl3DictionaryHack(TevStyleTableGenerator(G).f_StyleTable).
      DoFindInsertionPlace(Tl3PrimString(Atom.Box.AsObject), l_Index) then
  begin
   l_Found := k2.TypeTable.ObjToTag(TevStyleTableGenerator(G).f_StyleTable.Items[l_Index]);
   l_Prev := l_Found.CloneTag;
   try
    l_Found.AssignTag(Atom.Box);
    for l_TI := Low(cTagToKeep) to High(cTagToKeep) do
    begin
     l_TTK := cTagToKeep[l_TI];
     if l_Prev.HasSubAtom(l_TTK) then
     begin
      if (l_TTK = k2_tiStyle) AND (l_Prev.IntA[l_TTK] = -1) then
       l_Found.AttrW[l_TTK, G.Context] := nil
      else
       l_Found.AttrW[l_TTK, G.Context] := l_Prev.Attr[l_TTK];
     end//l_Prev.HasSubAtom(cTagToKeep[l_TI])
     else
      l_Found.AttrW[l_TTK, G.Context] := nil;
    end;//for l_TI
    // - восстанавливает то, что в интерфейсе настроить невозможно
    if (l_Found.IntA[k2_tiHandle] = ev_saDialogs) then
     l_Found.cAtom(k2_tiFont).IntA[k2_tiBackColor] := clDefault;
    // - вставляем костыль от крывых ручек УМ 
   finally
    l_Prev := nil;
   end;//try..finally
  end//Tl3DictionaryHack(TevStyleTableGenerator(G).f_StyleTable)
  else
   TevStyleTableGenerator(G).f_StyleTable.Add(Tl3PrimString(Atom.Box.AsObject));
 end;//Atom.InheritsFrom(k2_idStyle)
end;

procedure TevStyleInterfaceEx.InitFields;
  //override;
  {-}
begin
 inherited;
 ForExport := false;
end;

end.

