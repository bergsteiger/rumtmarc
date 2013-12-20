unit evdLeafParaFilter;
{* Класс, предназначенный для фильтрации абзацев. }

{ Библиотека "EVD"    }
{ Автор: Люлин А.В. ©     }
{ Модуль: evdLeafParaFilter - }
{ Начат: 12.01.2004 19:54 }
{ $Id: evdLeafParaFilter.pas,v 1.8 2011/05/11 08:12:11 narry Exp $ }

// $Log: evdLeafParaFilter.pas,v $
// Revision 1.8  2011/05/11 08:12:11  narry
// Проверка орфографии в выборке (сервер) (260447428)
//
// Revision 1.7  2009/03/04 13:33:09  lulin
// - <K>: 137470629. Генерируем идентификаторы типов с модели и убираем их из общей помойки.
//
// Revision 1.6  2008/04/17 09:48:24  oman
// - fix: При откате могли слишком много раз закрывать скобку (cq28797)
//
// Revision 1.5  2007/09/21 14:21:04  lulin
// - bug fix: падали на сегментах с параграфами.
//
// Revision 1.4  2007/08/09 18:05:28  lulin
// - избавляемся от излишнего использования интерфейсов, т.к. переносимость может быть достигнута другими методами.
//
// Revision 1.3  2007/08/09 13:41:54  lulin
// - избавляемся от излишней гибкости.
//
// Revision 1.2  2007/08/09 11:19:25  lulin
// - cleanup.
//
// Revision 1.1  2005/06/23 13:52:47  lulin
// - фильтр листьевых параграфов переехал в папку EVD.
//
// Revision 1.13.8.1  2005/06/23 13:42:52  lulin
// - буфер документа переехал в папку K2.
//
// Revision 1.13  2005/03/28 11:32:07  lulin
// - интерфейсы переехали в "правильный" модуль.
//
// Revision 1.12  2005/03/21 10:04:49  lulin
// - new interface: _Ik2Type.
//
// Revision 1.11  2005/03/18 16:11:22  lulin
// - remove method: Tk2AtomR.Write.
//
// Revision 1.10  2005/02/01 14:12:03  lulin
// - bug fix: при вставке комментарие теперь отрезаем ID параграфов - т.к. иначе на комментарии ставились закладки, ни и прочая...
//
// Revision 1.9  2004/09/21 12:55:41  lulin
// - Release заменил на Cleanup.
//
// Revision 1.8  2004/07/02 08:20:47  law
// - bug fix: не компилировалось.
//
// Revision 1.7  2004/06/29 14:26:41  law
// - избавляемся от метода Tk2AtomR._Set.
//
// Revision 1.6  2004/05/14 16:58:27  law
// - new units: k2TagTerminator, k2TagFilter.
//
// Revision 1.5  2004/05/14 15:16:53  law
// - remove unit: evTypesE.
//
// Revision 1.4  2004/03/16 15:20:47  law
// - new unit: evDocumentBuffer.
//
// Revision 1.3  2004/01/20 13:28:44  narry
// - update: документирование ключевых методов класса
//
// Revision 1.2  2004/01/20 11:24:03  law
// - bug fix: при записи параграфа непонятно чем провинились Sub'ы.
//
// Revision 1.1  2004/01/12 17:24:33  law
// - new unit: evLeafParaFilter.
//

{$Include evdDefine.inc }

interface

uses
  l3Types,

  k2Types,
  k2Interfaces,
  k2TagGen,
  k2TagFilter,
  k2DocumentBuffer
  ;

type
  TevdLeafParaFilter = class(Tk2TagFilter)
   {* Класс, предназначенный для фильтрации абзацев. }
    private
    // internal fields
      f_Buffer: Tk2DocumentBuffer;
      f_Filtered: Boolean;
    protected
    // internal methods
      procedure Cleanup;
        override;
        {-}
      function  ParaTypeForFiltering: Long;
        virtual;
        {* Summary
          Функция, определяющая тип абзацев, для которых будет
          выполняться фильтрация.                              }
      function  NeedWritePara(const aLeaf: Ik2Tag): Boolean;
        virtual;
        {* Summary
          Определяет нужно ли фильтровать переданный абзац.  }
      procedure DoWritePara(const aLeaf: Ik2Tag);
        virtual;
        {* Summary
          Запись конкретного абзаца в генератор. Позволяет вносить
          изменения в содержание абзаца.                           }
      procedure WritePara(const aLeaf: Ik2Tag);
        {-}
    public
    // public methods
      constructor Create(anOwner: Tk2TagGeneratorOwner = nil);
        override;
        {-}
      procedure StartChild(TypeID: Long);
        override;
        {-}
      procedure AddAtomEx(AtomIndex: Long; const Value: Tk2Variant);
        override;
        {-}
      procedure StartTag(TagID: Long);
        override;
        {-}
      procedure CloseStructure(NeedUndo: Bool);
        override;
        {-}
  end;{* Summary
        Класс, предназначенный для фильтрации абзацев.
        
        Description
        Класс, фильтрующий "листьевые" абзацы. Параметры фильтрации
        задаются методами <LINK TevdLeafParaFilter.ParaTypeForFiltering, ParaTypeForFiletring>
        (если нужно фильтровать один тип) и <LINK TevdLeafParaFilter.NeedWritePara@Tk2AtomR, NeedWritePara>
        (если нужно фильтровать несколько типов или условие
        фильтрации меняется с течением времени). Запись
        отфильтрованного абзаца выполняется в методе <LINK TevdLeafParaFilter.DoWritePara@Tk2AtomR, DoWritePara>,
        перекрывая который, можно вносить изменения в содержание
        абзаца.                                                                                                  }
  
implementation

uses
  l3Base,

  k2Tags,
  k2Base,

  LeafPara_Const,
  Document_Const
  ;

// start class TevdLeafParaFilter  

constructor TevdLeafParaFilter.Create(anOwner: Tk2TagGeneratorOwner = nil);
begin
 inherited;
 f_Buffer := Tk2DocumentBuffer.Create;
 f_Buffer.Start;
 f_Filtered := false;
end;

procedure TevdLeafParaFilter.Cleanup;
begin
 // В результате Rollback могли по скобкам упасть до нуля
 // поэтому количества скобок может быть не более 1.
 // И закрывать скобку из Create может быть излишне.
 Assert(f_Buffer.CurrentStartLevel <= 1);
 if (f_Buffer.CurrentStartLevel = 1) then
  f_Buffer.Finish;
 l3Free(f_Buffer);
 inherited;
end;

function TevdLeafParaFilter.ParaTypeForFiltering: Long;
  //virtual;
  {-}
begin
 Result := k2_idLeafPara;
end;

function TevdLeafParaFilter.NeedWritePara(const aLeaf: Ik2Tag): Boolean;
  //virtual;
  {-}
begin
 Result := true;
end;

procedure TevdLeafParaFilter.DoWritePara(const aLeaf: Ik2Tag);
  //virtual;
  {-}
begin
 if (Generator <> nil) then
 begin
  Generator.StartChild(aLeaf.TagType.ID);
  try
   aLeaf.Write(Generator);
  finally
   Generator.Finish;
  end;//try..finally
 end; //Generator <> nil
end;

procedure TevdLeafParaFilter.WritePara(const aLeaf: Ik2Tag);
  {-}
begin
 if (aLeaf <> nil) then
  if NeedWritePara(aLeaf) then
   DoWritePara(aLeaf);
end;

procedure TevdLeafParaFilter.StartChild(TypeID: Long);
var
 CT : Tk2Type;
begin
 CT := TypeTable[TypeID];
 if CT.InheritsFrom(k2_idDocument) then
  f_Filtered:= false
 else
 if not f_Filtered AND CT.InheritsFrom(ParaTypeForFiltering) then
 begin
  f_Filtered := true;
  IncSkipTags;
 end;
 if f_Filtered then
  f_Buffer.StartChild(TypeID);
 inherited;
end;

procedure TevdLeafParaFilter.AddAtomEx(AtomIndex: Long; const Value: Tk2Variant);
begin
 if f_Filtered then
  f_Buffer.AddAtomEx(AtomIndex, Value);
 inherited;
end;

procedure TevdLeafParaFilter.StartTag(TagID: Long);
begin
 if f_Filtered then
  f_Buffer.StartTag(TagID);
 inherited;
end;

procedure TevdLeafParaFilter.CloseStructure(NeedUndo: Bool);
var
 l_NeedDecSkipTags : Boolean;
begin
 l_NeedDecSkipTags := false;
 if f_Filtered then
 begin
  f_Buffer.Finish(NeedUndo);
  if not NeedUndo AND CurrentType.InheritsFrom(ParaTypeForFiltering) AND (SkipLevel = 2) then
  begin
   f_Filtered:= false;
   WritePara(f_Buffer.Root);
   f_Buffer.Root := nil;
   l_NeedDecSkipTags := true;
  end;//not NeedUndo
 end;//f_Filtered
 inherited;
 if l_NeedDecSkipTags then
  DecSkipTags;
end;

end.

