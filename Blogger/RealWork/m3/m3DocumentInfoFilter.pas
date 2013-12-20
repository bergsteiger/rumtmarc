unit m3DocumentInfoFilter;

{ Библиотека "M3"         }
{ Автор: Люлин А.В. ©     }
{ Модуль: m3DocumentInfoFilter - }
{ Начат: 30.08.2004 13:20 }
{ $Id: m3DocumentInfoFilter.pas,v 1.6 2009/03/23 08:34:46 lulin Exp $ }

// $Log: m3DocumentInfoFilter.pas,v $
// Revision 1.6  2009/03/23 08:34:46  lulin
// - учитываем флаг отката.
//
// Revision 1.5  2009/03/20 14:19:32  lulin
// [$139443100]. Bug fix: пишем IndexType только один раз, в конце документа.
//
// Revision 1.4  2009/03/04 16:26:06  lulin
// - <K>: 137470629. Bug fix: не собирался Архивариус.
//
// Revision 1.3  2008/05/08 14:04:19  fireton
// - перенос объектов в потоках из ветки
//
// Revision 1.2  2004/09/21 11:22:27  lulin
// - Release заменил на Cleanup.
//
// Revision 1.1  2004/09/02 08:09:47  law
// - cleanup.
//
// Revision 1.2  2004/08/30 11:57:50  law
// - new behavior: тип документа пишем напрямую - без разбора, что это именно за документ.
//
// Revision 1.1  2004/08/30 10:59:02  law
// - remove class: TmgBasePackageTagFilter.
// - new unit: m3DocumentInfoFilter.
//

{$I m3Define.inc}

interface

uses
  l3Base,
  l3Types,

  k2Types,
  k2TagFilter,

  m3DBInterfaces,
  m3DB
  ;

type
  Tm3DocumentInfoFilter = class(Tk2TagFilter)
    private
    // internal fields
      f_Filer: Tm3DBFiler;
      f_IndexType : Integer;
      procedure pm_SetFiler(const Value: Tm3DBFiler);
    protected
    // internal methods
      procedure AddAtomEx(anAtomIndex: Long; const aValue: Tk2Variant);
        override;
        {-}
      procedure Cleanup;
        override;
        {-}
      procedure SetIndexID(const aPart: Im3DBDocumentPart; anID: Long);
        {-}
    public
    // public methods
      constructor Create(aFiler: Tm3DBFiler);
        reintroduce;
        {-}
      procedure StartChild(aChildID: Long);
        override;
      procedure CloseStructure(NeedUndo: Boolean);
        override;
        {-}
      property Filer: Tm3DBFiler read f_Filer write pm_SetFiler;
        {-}
  end;//Tm3DocumentInfoFilter

implementation

uses
  k2Tags,

  Document_Const
  ;

// start class Tm3DocumentInfoFilter

constructor Tm3DocumentInfoFilter.Create(aFiler: Tm3DBFiler);
  //reintroduce;
  {-}
begin
 inherited Create;
 l3Set(f_Filer, aFiler);
end;

procedure Tm3DocumentInfoFilter.Cleanup;
  //override;
  {-}
begin
 l3Free(f_Filer);
 inherited;
end;

procedure Tm3DocumentInfoFilter.StartChild(aChildID: Long);
  //override;
  {-}
begin
 inherited;
 if CurrentType.InheritsFrom(k2_idDocument) then
  f_IndexType := 1;
end;

procedure Tm3DocumentInfoFilter.CloseStructure(NeedUndo: Boolean);
  //override;
  {-}
begin
 if not NeedUndo AND CurrentType.InheritsFrom(k2_idDocument) then
  SetIndexID(f_Filer.Part, f_IndexType);
 inherited;
end;

procedure Tm3DocumentInfoFilter.AddAtomEx(anAtomIndex: Long; const aValue: Tk2Variant);
  //override;
  {-}
begin
 inherited;
 if (CurrentType.InheritsFrom(k2_idDocument) and (anAtomIndex = k2_tiType)) then
  f_IndexType := VariantAsInteger(anAtomIndex, aValue);
end;

procedure Tm3DocumentInfoFilter.pm_SetFiler(const Value: Tm3DBFiler);
begin
 l3Set(f_Filer, Value);
end;

procedure Tm3DocumentInfoFilter.SetIndexID(const aPart: Im3DBDocumentPart; anID: Long);
  {-}
var
 l_Info : Tm3DBDocumentInfo;
begin
 if (aPart <> nil) then
 begin
  l_Info := aPart.Info;
  l_Info.rIndexID := anID;
  aPart.Info := l_Info;
 end;//aPart <> nil
end;

end.

