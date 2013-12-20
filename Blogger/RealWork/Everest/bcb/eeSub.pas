unit eeSub;

{ Ѕиблиотека "Ёверест"    }
{ јвтор: Ћюлин ј.¬. ©     }
{ ћодуль: eeSub -         }
{ Ќачат: 14.11.2002 11:08 }
{ $Id: eeSub.pas,v 1.21 2009/07/23 16:45:59 lulin Exp $ }

// $Log: eeSub.pas,v $
// Revision 1.21  2009/07/23 16:45:59  lulin
// - чистим код.
//
// Revision 1.20  2009/04/03 17:34:58  lulin
// [$140837386]. ѕереносим базовую примесь дл€ работы с базовыми параграфами на модель.
//
// Revision 1.19  2008/04/14 07:03:24  lulin
// - передаЄм вью в рамках <K>: 89096854.
//
// Revision 1.18  2007/12/04 12:47:34  lulin
// - перекладываем ветку в HEAD.
//
// Revision 1.17.14.3  2007/09/28 18:07:02  lulin
// - прикрутил использование места, где должна показыватьс€ метка.
//
// Revision 1.17.14.2  2007/02/09 14:51:14  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.17.14.1  2005/07/19 12:50:09  lulin
// - часть базовых интерфейсов переехала в модуль nevTools.
//
// Revision 1.17  2005/01/20 12:16:15  lulin
// - new prop: _IeeSub.InContents.
//
// Revision 1.16  2004/11/17 17:32:06  lulin
// - окончательно починена синхронизаци€ вставки/удалени€ комментариев, отъехавша€ в св€зи с переходом на блоки.
//
// Revision 1.15  2004/10/01 08:01:28  lulin
// - new prop: _IeeSub.Flags.
//
// Revision 1.14  2004/04/08 19:19:41  law
// - optimization: убраны директивы stdcall.
//
// Revision 1.13  2004/04/02 08:55:03  law
// - bug fix: AV при получении имени Sub'а после прерванной загрузки документа.
//
// Revision 1.12  2003/10/27 15:35:52  narry
// - новое свойство _IeeSub._LeafPara (OIT500004675)
//
// Revision 1.11  2003/09/10 13:06:59  law
// - cleanup.
//
// Revision 1.10  2003/09/09 17:30:25  law
// - new prop: _IeeSub.Next.
//
// Revision 1.9  2003/09/09 09:33:54  law
// - change: свойство _IeeSub.Name сделано редактируемым.
//
// Revision 1.8  2003/09/02 12:26:25  law
// - new method: TeeHotSpot.Make.
//
// Revision 1.7  2003/08/28 16:03:42  law
// - new method: TeeSub.Make.
//
// Revision 1.6  2003/08/28 15:32:17  law
// - new method: _IeeSub.IsSame.
//
// Revision 1.5  2003/07/16 15:46:01  demon
// - new behavior: если не существует документ, то не отдаем Sub.
//
// Revision 1.4  2003/02/13 13:36:27  law
// - new prop: _IeeSub.Name, IeeSubList.SubByID.
//
// Revision 1.3  2003/02/12 11:35:02  law
// - new method: _IeeSub.Select.
//
// Revision 1.2  2003/02/11 14:20:20  law
// - change: расширена работа со списком меток - сделана возможность добавл€ть и удал€ть метки.
//
// Revision 1.1  2002/11/14 08:54:54  law
// - new behavior: TeeCustomSubPanel теперь реагирует на нажати€ мыши.
//

{$Include evDefine.inc }

interface

uses
  Windows,

  l3Interfaces,
  l3Types,
  l3Base,

  evdTypes,

  evInternalInterfaces,

  eeInterfaces,
  eeInterfacesEx,

  eeDocumentTool
  ;

type
  TeeSub = class(TeeDocumentTool, IeeSub)
    private
    // internal fields
      f_ID      : Integer;
      f_LayerID : Integer;
      f_Flag    : Integer;
    protected
    // interface methods
      // IeeSub
      function  Get_SubPlace: TevSubPlace;
        {-}
      function  Get_ID: Integer;
        {-}
      function  Get_LayerID: Integer;
        {-}
      function  Get_Flag: Integer;
        {-}
      function  Get_Flags: Integer;
        {-}
      function  Get_Name: Tl3WString;
      procedure Set_Name(const aValue: Tl3WString);
        {-}
      function  Get_Next: IeeSub;
        {-}
      function  Get_LeafPara: IeeLeafPara;
       {-}
      function  Get_Para: IeePara;
       {-}
      function  Delete: Windows.Bool;
        {* - удал€ет метку. }
      function  Exists: Windows.Bool;
        {* - провер€ет существует ли така€ метка. }
      function  Select: Windows.Bool;
        {* - перейти на блок. }
      function  IsSame(const aSub: IeeSub): Windows.Bool;
        {* - провер€ет совпадение меток. }
    public
    // public methods
      constructor Create(const aDocument : IeeDocumentEx;
                         anID            : Integer;
                         aLayerID        : Integer;
                         aFlag           : Integer);
        reintroduce;
        {-}
      class function Make(const aDocument : IeeDocumentEx;
                          anID            : Integer;
                          aLayerID        : Integer;
                          aFlag           : Integer): IeeSub;
        {-}
  end;//TeeSub

implementation

uses
  l3InterfacesMisc,
  l3String,

  nevTools,
  
  eePara
  ;

// start class TeeSub

constructor TeeSub.Create(const aDocument : IeeDocumentEx;
                          anID            : Integer;
                          aLayerID        : Integer;
                          aFlag           : Integer);
  //reintroduce;
  {-}
begin
 inherited Create(aDocument);
 f_ID := anID;
 f_LayerID := aLayerID;
 f_Flag := aFlag;
end;

class function TeeSub.Make(const aDocument : IeeDocumentEx;
                           anID            : Integer;
                           aLayerID        : Integer;
                           aFlag           : Integer): IeeSub;
  {-}
var
 l_Sub : TeeSub;
begin
 l_Sub := Create(aDocument, anID, aLayerID, aFlag);
 try
  Result := l_Sub;
 finally
  l3Free(l_Sub);
 end;//try..finally
end;

function TeeSub.Get_SubPlace: TevSubPlace;
  {-}
var
 l_Sub : IevSub;
begin
 l_Sub := Document.SubEx[f_ID, f_LayerID];
 if (l_Sub = nil) then
  Result := ev_spNoWhere
 else
  Result := l_Sub.SubPlace;
end;

function TeeSub.Get_ID: Integer;
  {-}
begin
 Result := f_ID;
end;

function TeeSub.Get_LayerID: Integer;
  {-}
begin
 Result := f_LayerID;
end;

function TeeSub.Get_Flag: Integer;
  {-}
begin
 Result := f_Flag;
end;

function TeeSub.Get_Flags: Integer;
  {-}
var
 l_Sub : IevSub;
begin
 l_Sub := Document.SubEx[f_ID, f_LayerID];
 if (l_Sub = nil) then
  Result := 0
 else
  Result := l_Sub.Flags;
end;

function TeeSub.Get_Name: Tl3WString;
  {-}
var
 l_Sub : IevSub;
begin
 l_Sub := Document.SubEx[f_ID, f_LayerID];
 if (l_Sub = nil) then
  l3AssignNil(Result)
 else
  Result := l_Sub.Name;
end;

procedure TeeSub.Set_Name(const aValue: Tl3WString);
  {-}
var
 l_Sub : IevSub;
begin
 l_Sub := Document.SubEx[f_ID, f_LayerID];
 if (l_Sub <> nil) then
  l_Sub.Name := aValue;
end;

function TeeSub.Get_Next: IeeSub;
  {-}
var
 l_Sub : IevSub;
begin
 l_Sub := Document.SubEx[f_ID, f_LayerID].Next;
 if (l_Sub = nil) then
  Result := nil
 else
  Result := Make(Document, l_Sub.ID, l_Sub.LayerID, 0);
end;

function TeeSub.Delete: Windows.Bool;
  {* - удал€ет метку. }
var
 l_Sub : IevSub;
begin
 l_Sub := Document.SubEx[f_ID, f_LayerID];
 if (l_Sub = nil) then
  Result := false
 else
  Result := l_Sub.Delete(nil);
end;

function TeeSub.Exists: Windows.Bool;
  {* - провер€ет существует ли така€ метка. }
var
 l_Sub : IevSub;
begin
 l_Sub := Document.SubEx[f_ID, f_LayerID];
 Result := (l_Sub <> nil) AND l_Sub.Exists;
end;

function TeeSub.Select: Windows.Bool;
  {* - перейти на блок. }
begin
 Result := Exists;
 if Result then
  with Document do
   SubEx[f_ID, f_LayerID].Select(Selection);
end;

function TeeSub.IsSame(const aSub: IeeSub): Windows.Bool;
  {* - провер€ет совпадение меток. }
begin
 Result := l3IEQ(Self, aSub) OR
           ((aSub <> nil) AND (Get_ID = aSub.ID) AND (Get_LayerID = aSub.LayerID) AND
            (Get_Flag = aSub.Flag));
end;

function TeeSub.Get_LeafPara: IeeLeafPara;
var
 l_Sub : IevSub;
begin
 l_Sub := Document.SubEx[f_ID, f_LayerID];
 if (l_Sub <> nil) AND l_Sub.Exists then
  Result := TeePara.Make(l_Sub.LeafPara, Document) As IeeLeafPara
 else
  Result := nil;
end;

function TeeSub.Get_Para: IeePara;
 {-}
var
 l_Sub : IevSub;
begin
 l_Sub := Document.SubEx[f_ID, f_LayerID];
 if (l_Sub <> nil) AND l_Sub.Exists then
  Result := TeePara.Make(l_Sub.Para, Document)
 else
  Result := nil;
end;

end.

