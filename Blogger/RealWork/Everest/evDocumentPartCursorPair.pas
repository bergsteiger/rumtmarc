unit evDocumentPartCursorPair;

{ Библиотека "Эверест"    }
{ Автор: Люлин А.В. ©     }
{ Модуль: evDocumentPartCursorPair - }
{ Начат: 17.12.2002 12:03 }
{ $Id: evDocumentPartCursorPair.pas,v 1.19 2010/12/01 11:32:32 lulin Exp $ }

// $Log: evDocumentPartCursorPair.pas,v $
// Revision 1.19  2010/12/01 11:32:32  lulin
// {RequestLink:239375984}.
//
// Revision 1.18  2009/07/11 17:11:05  lulin
// {RequestLink:141264340}. №19.
//
// Revision 1.17  2009/07/10 15:04:43  lulin
// - избавляемся от лишнего дёрганья счётчиков ссылок.
//
// Revision 1.16  2009/06/18 10:52:39  lulin
// [$152405521].
//
// Revision 1.15  2009/06/10 12:48:11  lulin
// - не сохраняем имена блоков, начала которых попали в выделение.
//
// Revision 1.14  2009/06/09 15:41:04  lulin
// - выделяем специальные структурны элементы, служащие "маркерами" и подставляем их на месте реальных блоков.
//
// Revision 1.13  2008/10/14 19:20:11  lulin
// - <K>: 121149970.
//
// Revision 1.12  2008/10/08 11:07:14  lulin
// - избавляемся от ненужных зависимостей между интерфейсами.
//
// Revision 1.11  2008/04/14 07:03:22  lulin
// - передаём вью в рамках <K>: 89096854.
//
// Revision 1.10  2008/04/11 12:26:08  lulin
// - <K>: 89100752.
//
// Revision 1.9  2008/04/11 11:29:58  lulin
// - передаём вью в рамках <K>: 89096854.
//
// Revision 1.8  2007/12/04 12:47:00  lulin
// - перекладываем ветку в HEAD.
//
// Revision 1.7.8.5  2007/09/14 13:26:05  lulin
// - объединил с веткой B_Tag_Clean.
//
// Revision 1.7.8.4.2.1  2007/09/12 17:02:04  lulin
// - убран ненужный параметр по-умолчанию.
//
// Revision 1.7.8.4  2007/06/22 20:18:31  lulin
// - cleanup.
//
// Revision 1.7.8.3  2005/09/23 16:03:54  lulin
// - выделен модуль с общими интерфейсами.
//
// Revision 1.7.8.2  2005/08/25 15:41:20  lulin
// - bug fix: убрал паразитное выделение на свернутом блоке.
//
// Revision 1.7.8.1  2005/07/20 15:13:18  lulin
// - убрано косвенное получение инструментов для чтения/записи тега.
//
// Revision 1.7  2005/03/30 10:14:52  lulin
// - переходим от классов к интерфейсам.
//
// Revision 1.6  2005/03/17 15:09:06  lulin
// - bug fix: не забираем в Clipboard вложенный документ - если он не выделен целиком.
//
// Revision 1.5  2004/06/22 15:18:25  law
// - проведена подготовка для догрузки документа при печати, заборе в буфер обмена и т.п.
//
// Revision 1.4  2004/01/20 16:46:35  law
// - cleanup: TevBlock.StoreExPrim переименован в _DoStore.
//
// Revision 1.3  2003/02/14 13:02:59  law
// - cleanup: rename class TevListCursorPair -> _TevParaListCursorPair.
//
// Revision 1.2  2002/12/17 09:49:42  law
// - new unit: evParaListCursorPair.
//
// Revision 1.1  2002/12/17 09:08:07  law
// - new unit: evDocumentPartCursorPair.
//

{$Include evDefine.inc }

interface

uses
  l3Types,
  
  k2Interfaces,

  evInternalInterfaces,
  evParaListCursorPair,

  nevBase,
  nevTools
  ;

type
  TevDocumentPartCursorPair = class(TevParaListCursorPair)
   {* Выделение для блока. }
    protected
    // internal methods
      procedure DoStore(const aView: InevView;
                        const G : Ik2TagGenerator;
                        aFlags  : TevStoreFlags);
        override;
        {-}
      function  IsCollapsed(const aView: InevView): Bool;
        override;
        {-}
  end;{TevDocumentPartCursorPair}

implementation

uses
  k2Tags,
  evdInterfaces,
  ContentsElement_Const,
  LeafPara_Const,
  evParaTools,
  evdStyles
  ;

// start class TevDocumentPartCursorPair

procedure TevDocumentPartCursorPair.DoStore(const aView: InevView;
                                            const G : Ik2TagGenerator;
                                            aFlags  : TevStoreFlags);
  {override;}
  {-}

 {$IfDef Nemesis}
 function AfterComment: Boolean;
 var
  l_List  : InevParaList;
  l_PID   : Integer;
  l_Para  : InevPara;
  l_Index : Integer;
 begin
  Result := false;
  if not f_Start.HasInner OR f_Start.Inner.AtStart then
  begin
   Result := true;
   l_List := ParaX;
   l_PID := f_Start.Position - 2;
   for l_Index := l_PID downto 0 do
   begin
    l_Para := l_List.Para[l_Index];
    if l_Para.InheritsFrom(k2_idLeafPara) then
    begin
     if EvHasText(l_Para) then
      if not (-l_Para.IntA[k2_tiStyle] in [-ev_saTxtComment, -ev_saVersionInfo, -ev_saTechComment]) then
      begin
       Result := false;
       break;
      end;//-l_Para.IntA[k2_tiStyle] in
    end//l_Para.InheritsFrom(k2_idLeafPara)
    else
    begin
     Result := false;
     break;
    end;//l_Para.InheritsFrom(k2_idLeafPara)
   end;//for l_Index
  end;//not f_Start.HasInner
 end;
 {$EndIf Nemesis}

begin
 if Solid(aView) then
  inherited DoStore(aView, G, aFlags - [evd_sfStoreParaEnd])
 else
 begin
  {$IfDef Nemesis}
  G.StartChild(k2_idContentsElement);
  with ParaX do
  begin
   if HasSubAtom(k2_tiInContents) then
    G.AddBoolAtom(k2_tiInContents, BoolA[k2_tiInContents]);
   if HasSubAtom(k2_tiHandle) then
    G.AddIntegerAtom(k2_tiHandle, IntA[k2_tiHandle]);
   if (f_Start <> nil) AND not f_Start.AtStart AND not AfterComment then
   begin
    if HasSubAtom(k2_tiName) then
     G.AddPCharLenAtom(k2_tiName, PCharLenA[k2_tiName]);
    if HasSubAtom(k2_tiShortName) then
     G.AddPCharLenAtom(k2_tiShortName, PCharLenA[k2_tiShortName]);
   end;//(f_Start <> nil) AND not f_Start.AtStart
  end;//with ParaX
  {$EndIf Nemesis}
  inherited DoStore(aView, G, aFlags + [evd_sfChildrenOnly]);
  {$IfDef Nemesis}
  G.Finish;
  {$EndIf Nemesis}
 end;//Solid(aView)
end;

function TevDocumentPartCursorPair.IsCollapsed(const aView: InevView): Bool;
  //override;
  {-}
begin
 Result := inherited IsCollapsed(aView);
 if not Result then
  if GetRedirect.BoolA[k2_tiCollapsed] then
   with Borders do
    if (rStart = rFinish) then
     Result := true;
end;

end.

