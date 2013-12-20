unit eeSubPanelExport;
{* Компонент для экспорта панели меток. }

{ Библиотека "Эверест"    }
{ Автор: Люлин А.В. ©     }
{ Модуль: eeSubPanelExport - }
{ Начат: 13.11.2002 15:26 }
{ $Id: eeSubPanelExport.pas,v 1.2 2011/11/09 10:13:34 lulin Exp $ }

// $Log: eeSubPanelExport.pas,v $
// Revision 1.2  2011/11/09 10:13:34  lulin
// {RequestLink:290953654}
//
// Revision 1.1  2010/09/02 12:56:42  lulin
// {RequestLink:197496539}.
//
// Revision 1.16  2008/03/07 15:53:34  lulin
// - <K>: 86477888.
//
// Revision 1.15  2007/12/04 12:47:34  lulin
// - перекладываем ветку в HEAD.
//
// Revision 1.14.20.4  2006/12/13 15:48:14  lulin
// - cleanup.
//
// Revision 1.14.20.3  2005/12/14 11:08:04  lulin
// - cleanup.
//
// Revision 1.14.20.2  2005/07/19 12:50:09  lulin
// - часть базовых интерфейсов переехала в модуль nevTools.
//
// Revision 1.14.20.1  2005/07/15 10:14:05  lulin
// - избавляемся от использования самостийной функции преобразования интерфейсов.
//
// Revision 1.14  2004/09/16 12:20:54  lulin
// - удалено большинство нечитабельных include'ов.
//
// Revision 1.13  2004/09/16 09:25:03  lulin
// - bug fix: наследники от evCtrl убивались в DesignTime произвольным образом.
//
// Revision 1.12  2004/09/15 16:45:00  lulin
// - в зависимости от DesignTimeLibrary перекрываем Destroy или Cleanup.
//
// Revision 1.11  2004/04/08 19:19:41  law
// - optimization: убраны директивы stdcall.
//
// Revision 1.10  2003/10/20 14:58:56  law
// - new method version: TeeSubPanelExport.CheckSubOnPoint.
//
// Revision 1.9  2003/09/02 12:26:25  law
// - new method: TeeHotSpot.Make.
//
// Revision 1.8  2003/05/28 16:15:21  law
// - change: отрезал ee.dll.
//
// Revision 1.7  2003/02/28 16:31:43  law
// - обновлен help.
//
// Revision 1.6  2003/02/11 14:20:20  law
// - change: расширена работа со списком меток - сделана возможность добавлять и удалять метки.
//
// Revision 1.5  2002/11/21 12:49:59  law
// - new prop: IeeSubPanel.SubViewDescriptors.
//
// Revision 1.4  2002/11/14 08:54:54  law
// - new behavior: TeeCustomSubPanel теперь реагирует на нажатия мыши.
//
// Revision 1.3  2002/11/13 16:16:51  law
// - new class: TeeSubPanel.
//
// Revision 1.2  2002/11/13 15:22:49  law
// - new class: TeeSubPanel.
//
// Revision 1.1  2002/11/13 12:54:21  law
// - change: начата работа над экспортом панели Sub'ов.
//

{$I evDefine.inc }

interface

uses
  Windows,
  
  Messages,

  Classes,

  Controls,

  l3Types,
  l3InternalInterfaces,
  l3Units,
  
  evSubPn,

  eeInterfaces
  ;
  
type
  TeeSubPanelExport = class(TevCustomSubPanel, IeeSubPanel)
   {* Компонент для экспорта панели меток. }
    private
    // interface methods
      function Get_SubViewDescriptors: IeeSubViewDescriptors;
        {-}
    private
    // message handlers
    protected
    // internal methods
      function  GetHotSpot(aSubType, aSubHandle: Integer): IeeHotSpot;
        {-}
    public
    // public methods
      constructor Create(anOwner: TComponent);
        override;
        {-}
      function  CheckSubOnPoint(aX, aY      : Integer;
                                out theSub  : IeeSub): Bool;
        overload;
        {-}
  end;//TeeSubPanelExport

implementation

uses
  SysUtils,
  
  Forms,
  
  Graphics,

  l3Base,
  l3InterfacesMisc,

  evInternalInterfaces,

  nevTools,

  eeInterfacesEx,
  eeSub,
  eeHotSpot,
  eeSubDescriptorsExport
  ;

// start class TeeSubPanelExport

constructor TeeSubPanelExport.Create(anOwner: TComponent);
  //override;
  {-}
(*var
 l_SD : TevCustomSubDescriptors;*)
begin
 inherited;
(* l_SD := TeeSubDescriptors.CreateX;
 try
  SubDescriptors := l_SD;
  with l_SD do begin
   SubsLayer.Offset := 10;
   SubsLayer.Font.Name := 'Wingdings';
   SubsLayer.Font.Size := 10;
   SubsLayer.Font.Color := clNavy;
   SubsLayer.DrawType := ev_sdtCharNumber;
   SubsLayer.NumberOffset := $C4;
   SubsLayer.Cursor := crHandPoint;

   MarkersLayer.Font.Name := 'Wingdings';
   MarkersLayer.Font.Size := 8;
   MarkersLayer.Font.Color := clGreen;
   MarkersLayer.DrawType := ev_sdtChar;
   MarkersLayer.NumberOffset := 139;
   MarkersLayer.Cursor := crHandPoint;
  end;//with l_SD
 finally
  l3Free(l_SD);
 end;//try..finally*)
 // http://mdp.garant.ru/pages/viewpage.action?pageId=290953654
 // - не надо заглушки делать, усложняют они тут жизнь
end;

function TeeSubPanelExport.CheckSubOnPoint(aX, aY      : Integer;
                                           out theSub  : IeeSub): Bool;
  //overload;
  {-}
var
 l_Flag     : Long;
 l_Sub      : IevSub;
 l_Document : IeeDocumentEx;
begin
 Result := CheckSubOnPoint(aX, aY, l_Sub, l_Flag);
 if Result then
 begin
  if Supports(Control, IeeDocumentEx, l_Document) then
   try
    theSub := TeeSub.Make(l_Document, l_Sub.ID, l_Sub.LayerID, l_Flag);
   finally
    l_Document := nil;
   end//try..finally
  else
   Result := false;
 end;//Result  
end;

function TeeSubPanelExport.GetHotSpot(aSubType, aSubHandle: Integer): IeeHotSpot;
  {-}
var
 l_LayerID : Integer;
 l_Flag     : Integer;
 l_Document : IeeDocumentEx;
begin
 l_LayerID := aSubType;
 if (l_LayerID < 0) then begin
  l_LayerID := -l_LayerID;
  l_Flag := Succ(l_LayerID mod 10);
  l_LayerID := l_LayerID div 10;
 end else
  l_Flag := 0;
 if Supports(Control, IeeDocumentEx, l_Document) then
  try
   Result := TeeHotSpot.Make(nil, l_Document, nil, false,
                             TeeSub.Make(l_Document, aSubHandle, l_LayerID, l_Flag));
  finally
   l_Document := nil;
  end//try..finally
 else
  Result := nil;
end;

function TeeSubPanelExport.Get_SubViewDescriptors: IeeSubViewDescriptors;
  {-}
begin
 Result := SubDescriptors As TeeSubDescriptors;
end;

end.

