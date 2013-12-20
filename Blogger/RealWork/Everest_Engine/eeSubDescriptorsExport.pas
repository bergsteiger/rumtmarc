unit eeSubDescriptorsExport;

{ Библиотека "Эверест"    }
{ Автор: Люлин А.В. ©     }
{ Модуль: eeSubDescriptorsExport - }
{ Начат: 21.11.2002 15:22 }
{ $Id: eeSubDescriptorsExport.pas,v 1.1 2012/10/26 15:04:55 lulin Exp $ }

// $Log: eeSubDescriptorsExport.pas,v $
// Revision 1.1  2012/10/26 15:04:55  lulin
// {RequestLink:406489593}
//
// Revision 1.11  2008/06/09 12:16:51  lulin
// - bug fix: не собирался Немезис.
//
// Revision 1.10  2008/02/14 17:08:58  lulin
// - cleanup.
//
// Revision 1.9  2007/12/04 12:47:34  lulin
// - перекладываем ветку в HEAD.
//
// Revision 1.8.26.1  2005/12/14 11:08:04  lulin
// - cleanup.
//
// Revision 1.8  2004/04/08 19:19:41  law
// - optimization: убраны директивы stdcall.
//
// Revision 1.7  2003/09/12 11:18:16  law
// - new prop: TevCustomSubDescriptors.BookmarksLayer, MarksLayer.
//
// Revision 1.6  2003/09/10 12:18:33  law
// - new type: idMark.
// - new const: ev_sbtMark.
//
// Revision 1.5  2003/09/05 15:32:43  law
// - new prop: IeeSubViewDescriptors.Bookmarks.
//
// Revision 1.3  2003/09/05 14:25:46  law
// - new prop: TeeSubDescriptors.BookmarksLayer.
//
// Revision 1.2  2003/09/05 13:40:30  law
// - new: опубликовал класс TeeSubDescriptors.
//
// Revision 1.1  2002/12/02 17:00:20  law
// - new unit: eeSubDescriptorsExport.
//

{$I evDefine.inc }

interface

uses
  Windows,

  l3Types,
  l3Base,

  evdTypes,
  
  evSubPn,

  eeInterfaces
  ;

type
  TeeSubDescriptors = class(TevSubDescriptors, IeeSubViewDescriptors)
    protected
    // property methods
      function Get_Subs: IeeSubViewDescriptor;
        {-}
      function Get_Markers: IeeSubViewDescriptor;
        {-}
      function Get_Bookmarks: IeeSubViewDescriptor;
        {-}
  end;//TeeSubDescriptors

implementation

uses
  l3CacheableBase
  ;

// start class TeeSubDescriptor

type
  TeeSubDescriptor = class(Tl3CacheableBase, IeeSubViewDescriptor)
    private
    // internal fields
      f_LayerID     : Long;
      f_Descriptors : TeeSubDescriptors;
    protected
    // property methods
      function  Get_Visible: Windows.Bool;
      procedure Set_Visible(aValue: Windows.Bool);
        {-}
    protected
    // internal methods
      procedure Cleanup;
        override;
        {-}
    public
    // public methods
      constructor Create(aDescriptors : TeeSubDescriptors;
                         aLayerID     : Long);
        reintroduce;
        {-}
      class function Make(aDescriptors : TeeSubDescriptors;
                          aLayerID     : Long): IeeSubViewDescriptor;
        {-}
  end;//TeeSubDescriptor

constructor TeeSubDescriptor.Create(aDescriptors : TeeSubDescriptors;
                                    aLayerID     : Long);
  //reintroduce;
  {-}
begin
 inherited Create;
 f_Descriptors := aDescriptors;
 f_LayerID := aLayerID;
end;

class function TeeSubDescriptor.Make(aDescriptors : TeeSubDescriptors;
                                     aLayerID     : Long): IeeSubViewDescriptor;
  {-}
var
 l_Desc : TeeSubDescriptor;
begin
 l_Desc := Create(aDescriptors, aLayerID);
 try
  Result := l_Desc;
 finally
  l3Free(l_Desc);
 end;//try..finally
end;

procedure TeeSubDescriptor.Cleanup;
  //override;
  {-}
begin
 f_Descriptors := nil;
 f_LayerID := 0;
 inherited;
end;

function TeeSubDescriptor.Get_Visible: Windows.Bool;
  {-}
begin
 Result := f_Descriptors.SubDescriptor[f_LayerID].Visible;
end;

procedure TeeSubDescriptor.Set_Visible(aValue: Windows.Bool);
  {-}
begin
 f_Descriptors.SubDescriptor[f_LayerID].Visible := aValue;
end;

// start class TeeSubDescriptors

function TeeSubDescriptors.Get_Subs: IeeSubViewDescriptor;
  {-}
begin
 Result := TeeSubDescriptor.Make(Self, ev_sbtSub);
end;

function TeeSubDescriptors.Get_Markers: IeeSubViewDescriptor;
  {-}
begin
 Result := TeeSubDescriptor.Make(Self, ev_sbtMarker);
end;

function TeeSubDescriptors.Get_Bookmarks: IeeSubViewDescriptor;
  {-}
begin
 Result := TeeSubDescriptor.Make(Self, ev_sbtBookmark);
end;

end.

