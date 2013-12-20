unit ddPictureFilter;
{ Преобразование сегментов-картинок в абзацы-картинки }

interface

uses evdBufferedFilter, k2Interfaces, k2DocumentBuffer, k2TagGen, evdLeafParaFilter, l3Types;

type
 TddPictureFilter = class(TevdLeafParaFilter)
 private
  f_PicBuffer: Tk2DocumentBuffer;
  function PicBuffer: Tk2DocumentBuffer;
 protected
  procedure Cleanup; override;
        {* - Определяет нужно ли сбрасывать Тег в трубу.  }
  procedure DoWritePara(const aLeaf: Ik2Tag); override;
  function  ParaTypeForFiltering: Long; override;
 public
 end;

implementation

uses l3Interfaces, k2Tags, Math, BitmapPara_Const, evdTypes, k2Base, l3String, NevTools,
 evSearch, evdStyles, evParaTools, Document_Const, SysUtils, evIntf, Formula_Const, TextPara_Const;

procedure TddPictureFilter.Cleanup;
begin
 inherited;
 f_PicBuffer.Finish;
 FreeAndNil(f_PicBuffer);
end;

procedure TddPictureFilter.DoWritePara(const aLeaf: Ik2Tag);
var
 l_ObjectsCount: Integer;
  function lp_CheckObjects(const aLayer: Ik2Tag; anIndex: Integer): Boolean;

   function lp_ConvertObject(const aSeg: Ik2Tag; anIndex: Integer): Boolean;
   var
    l_BitmapPara: Ik2Tag;
    i: Integer;
   begin
    Result := True;
    for i:= 0 to Pred(aSeg.ChildrenCount) do
    begin
     l_BitmapPara:= aSeg.Child[i];
     if l_BitmapPara.InheritsFrom(k2_idBitmapPara) then
     begin
      Inc(l_ObjectsCount);
      PicBuffer.StartChild(l_BitmapPara.TagType.ID);
      try
       l_BitmapPara.Write(PicBuffer);
      finally
       PicBuffer.Finish;
      end;//try..finally
     end; // l_BitmapPara.InheritsFrom(k2_idBitmapPara)
    end; // for i
   end; // lp_ConvertObject

  begin
   Result := True;
   if aLayer.Attr[k2_tiHandle].IsValid and (aLayer.IntA[k2_tiHandle] = ev_slObjects) then
   begin
    aLayer.IterateChildrenF(k2l2tia(@lp_ConvertObject));
    Result:= False;
   end;
  end; // lp_CheckObjects

var
 l_ConvertType: Boolean;
 l_Segments: Ik2Tag;
 l_Index: Integer;
 l_nevPara: InevPara;
 l_Searcher: IevSearcher;
 l_Replacer: IevReplacer;
begin
 if aLeaf.Attr[k2_tiSegments].IsValid then
 begin
  l_ObjectsCount:= 0;
  l_Segments := aLeaf.Attr[k2_tiSegments];
  PicBuffer.StartChild(k2_idDocument);
  try
   l_Segments.IterateChildrenF(k2l2tia(@lp_CheckObjects));
  finally
   PicBuffer.Finish;
  end;

  if l_ObjectsCount > 0 then
  begin
   if (aLeaf.Attr[k2_tiText].IsValid) and (aLeaf.PCharLenA[k2_tiText].SLen > l_ObjectsCount) then
   begin
    // Удаляем объекты, записываем абзац. Не съехали ли все остальные сегменты? :(
    aLeaf.QT(InevPara, l_nevPara);
    try
     l_Searcher:= TevStylesSearcher.Make([ev_saObject], ev_slObjects, ev_spSegments);
     try
      l_Replacer:= TevTextReplacer.Make('');
      try
       EvReplaceInPara(l_nevPara, l_Searcher, l_Replacer);
       Generator.StartChild(aLeaf.TagType.ID);
       try
        aLeaf.Write(Generator);
       finally
        Generator.Finish;
       end;//try..finally
      finally
       l_Replacer:= nil;
      end;
     finally
      l_Searcher:= nil;
     end;
    finally
     l_Nevpara:= nil;
    end;
   end; // (aLeaf.Attr[k2_tiText].IsValid) and (aLeaf.PCharLenA[k2_tiText].SLen > 0)
   PicBuffer.Root.Write(Generator);
  end // l_ObjectsCount > 0
  else
   inherited
 end
 else
  inherited
end;

function TddPictureFilter.ParaTypeForFiltering: Long;
  //virtual;
  {-}
begin
 Result := k2_idTextPara;
end;


function TddPictureFilter.PicBuffer: Tk2DocumentBuffer;
begin
 if f_PicBuffer = nil then
 begin
  f_PicBuffer:= Tk2DocumentBuffer.Create;
  f_PicBuffer.Start;
 end;
 Result := f_PicBuffer;
end;

end.
