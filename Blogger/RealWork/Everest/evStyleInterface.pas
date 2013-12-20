unit evStyleInterface;

{ Библиотека "Эверест"    }
{ Начал: Люлин А.В.       }
{ Модуль: evStyleInterface - }
{ Начат: 20.05.2005 18:34 }
{ $Id: evStyleInterface.pas,v 1.39 2013/08/21 08:15:33 kostitsin Exp $ }

// $Log: evStyleInterface.pas,v $
// Revision 1.39  2013/08/21 08:15:33  kostitsin
// [$414849897]
//
// Revision 1.38  2013/03/29 11:36:53  lulin
// - bug fix: не собиралась библиотека.
//
// Revision 1.37  2012/12/04 11:09:55  lulin
// {RequestLink:296626755}
//
// Revision 1.36  2012/03/22 19:07:54  lulin
// - определены дефайны.
//
// Revision 1.35  2012/03/05 13:20:34  lulin
// {RequestLink:336142662}
//
// Revision 1.34  2012/03/02 09:14:13  kostitsin
// [$338463119]
//
// Revision 1.33  2011/11/15 18:29:38  lulin
// {RequestLink:232098711}
//
// Revision 1.32  2011/09/30 10:26:04  lulin
// {RequestLink:278841000}.
//
// Revision 1.31  2011/08/01 10:29:10  lulin
// {RequestLink:96475831}.
//
// Revision 1.30  2011/07/29 15:07:37  lulin
// {RequestLink:209585097}.
//
// Revision 1.29  2011/07/29 13:27:23  lulin
// {RequestLink:209585097}.
//
// Revision 1.28  2010/02/27 10:11:54  lulin
// {RequestLink:193822954}.
// - упрощаем структуры.
//
// Revision 1.27  2010/02/27 09:32:35  lulin
// {RequestLink:193822954}.
//
// Revision 1.26  2009/08/10 16:39:08  lulin
// - аккуратнее настраиваем стили для Сравнения редакций.
//
// Revision 1.25  2009/07/23 13:42:11  lulin
// - переносим процессор операций туда куда надо.
//
// Revision 1.24  2009/07/03 16:24:02  lulin
// - шаг к переходу от интерфейсов к объектам.
//
// Revision 1.23  2009/03/05 19:14:34  lulin
// - убираем ненужное использование интерфейса.
//
// Revision 1.22  2009/03/05 13:48:07  lulin
// - <K>: 137470629. Не используем интерфейсный тип.
//
// Revision 1.21  2009/03/04 18:14:14  lulin
// - <K>: 137470629. Удалён ненужный интерфейс.
//
// Revision 1.20  2009/03/04 13:32:47  lulin
// - <K>: 137470629. Генерируем идентификаторы типов с модели и убираем их из общей помойки.
//
// Revision 1.19  2008/06/24 13:07:50  lulin
// - определяем стили на модели.
//
// Revision 1.18  2008/06/20 14:48:51  lulin
// - используем префиксы элементов.
//
// Revision 1.17  2008/06/17 20:44:42  lulin
// - рисуем схему EVD на модели.
//
// Revision 1.16  2008/02/21 09:14:25  lulin
// - <CQ>: 28483.
//
// Revision 1.15  2008/02/12 19:32:26  lulin
// - избавляемся от универсальности списков.
//
// Revision 1.14  2008/02/06 11:44:27  lulin
// - список строк переехал в отдельный файл.
//
// Revision 1.13  2008/02/05 18:20:34  lulin
// - удалено ненужное свойство строк.
//
// Revision 1.12  2008/02/05 16:13:09  lulin
// - избавляем базовый объект от лишнего свойства.
//
// Revision 1.11  2008/02/05 09:57:38  lulin
// - выделяем базовые объекты в отдельные файлы и переносим их на модель.
//
// Revision 1.10  2008/01/31 20:09:51  lulin
// - избавляемся от излишней универсальности списков.
//
// Revision 1.9  2008/01/23 11:50:49  voba
// - У дефолтного стиля все параметры собственные (Own)
//
// Revision 1.8  2007/12/04 12:47:05  lulin
// - перекладываем ветку в HEAD.
//
// Revision 1.1.2.11  2007/09/14 13:26:06  lulin
// - объединил с веткой B_Tag_Clean.
//
// Revision 1.1.2.10.2.1  2007/09/12 15:23:02  lulin
// - избавляемся от метода, дублирующего функциональность получения атрибута.
//
// Revision 1.1.2.10  2007/09/06 15:21:26  lulin
// - переименовано свойство.
//
// Revision 1.1.2.9  2007/09/06 09:37:37  lulin
// - переименовано свойство.
//
// Revision 1.1.2.8  2007/06/27 15:14:35  lulin
// - избавляемся от лишних зависимостей.
//
// Revision 1.1.2.7  2007/02/08 13:12:04  lulin
// - используем сравнение с учетом кодировки.
//
// Revision 1.1.2.6  2006/12/29 11:52:30  lulin
// - выделена базовая реализация списка VCL-ных строк.
//
// Revision 1.1.2.5  2006/01/16 14:28:17  lulin
// - cleanup.
//
// Revision 1.1.2.4  2005/11/09 15:28:24  lulin
// - базовые интерфейсы перенесены в правильный модуль.
//
// Revision 1.1.2.3  2005/05/26 15:34:57  lulin
// - базовая канва вывода теперь избавлена от знания о контролах управления.
//
// Revision 1.1.2.2  2005/05/23 14:16:43  lulin
// - new method: TevStyleInterface._MakeList.
//
// Revision 1.1.2.1  2005/05/20 14:58:39  lulin
// - new unit: evStyleInterface.
//

{$Include evDefine.inc }

interface

uses
  Classes,

  l3Types,
  l3Interfaces,
  l3Tree_TLB,
  l3Dict,

  k2Interfaces,
  k2Base,
  k2Tags,

  nevBase,
  
  evInterface,
  evFontInterface,
  evdStyles,

  TextPara_Const
  ;

type
  TevStyleInterface = class(TevInterface, Il3Strings)
   {* Инструмент для работы с таблицей стилей. }
    private
    // property fields
      f_Font   : TevFontInterface;
      f_Styles : TStrings;
      f_ParentInterface : TevStyleInterface;
    protected
    // property methods
      procedure pm_SetParentName(const Value: String);
        {-}
      procedure pm_SetTag(const aValue: Ik2Tag);
        override;
        {-}
      procedure pm_SetContext(const Value: InevOp);
        override;
        {-}
      function  Get_Items: TStrings;
        {-}
      function  pm_GetParentInterface: TevStyleInterface;
        {-}
    protected
    // internal methods
      procedure Cleanup;
        override;
        {-}
      function pm_GetIsOwn(Index: Long): Bool;
        override;
        {-}
    public
    // public methods
      constructor Create(anOwner: TObject = nil);
        override;
        {-}
      constructor Make(aType  : Long = k2_idTextPara;
                       aStyle : Long = ev_saTxtNormalANSI);
        virtual;               
        {-}
      class function MakeList(aType: Tk2Type): Il3Strings;
        {-}
      procedure GetVT(var VT: Tl3Dictionary);
        {* - возвращает список стилей. }
      procedure Add(const S: String; ID: Long = 0);
        {* - добавляет новый стиль и устанавливает курсор на него. }
      procedure Delete;
        {* - удаляет текущий выбранный стиль. }
      procedure SelectStyledObjectType(ID: Long);
        overload;
        {* - настраивает инструмент на работу со стилями для заданного типа объектов. }
      procedure SelectStyledObjectType(const aType: Tk2Type);
        overload;
        {* - настраивает инструмент на работу со стилями для заданного типа объектов. }
      procedure SelectStyledObject(const anObject: Ik2Tag);
        {* - настраивает инструмент на работу со стилями для типа заданного объекта. }
      function  SelectStyle(const S: String): Ik2Tag;
        overload;
        {* - устанавливает курсор на стиль по имени. }
      function  SelectStyle(ID: Long): Ik2Tag;
        overload;
        {* - устанавливает курсор на стиль по идентификатору. }
      procedure Changing;
        override;
        {-}
      procedure ChangedEx(aCancel: Boolean);
        override;
        {-}
      procedure IncFontSize;
        {-}
      procedure DecFontSize;
        {-}
      procedure IncAllFontSize;
        {-}
      procedure DecAllFontSize;
        {-}
      function IsDefault: Boolean;
        override;
        {-}
      function  Iterate(Action: Tl3IteratorAction): Long;
        {* - перебирает все элементы хранилища с aLo по aHi и освобождает заглушку для Action. }
      function  IterateF(Action: Tl3IteratorAction): Long;
        {* - перебирает все элементы хранилища с aLo по aHi и освобождает заглушку для Action. }
      function  MakeStylesTreeRoot(const aIncludeIdArray: array of Long): Il3Node;
        {* - создает дерево стилей и возвращает интерфейс на корневую ноду. }
      class function DocumentUseFixedFontForPrintAndExportSetting: Boolean;
        {-}
    public
    // public properties
      property Font: TevFontInterface
        read f_Font;
        {* - шрифт текущего стиля. }
      property ParentName: String
        write pm_SetParentName;
        {* - имя родительского шрифта текущего стиля. }
      property Style: Ik2Tag
        read pm_GetTag
        write pm_SetTag;
        {* - текущий стиль. }
      property Items: TStrings
        read Get_Items;
        {* - список стилей. }
      property Scalable: Bool
        index k2_tiIsChangeableFont
        read pm_GetBoolParam
        write pm_SetBoolParam;
        {* - изменяется размер шрифта кнопками на тулбаре }
      property Visible: Bool
        index k2_tiVisible
        read pm_GetBoolParam
        write pm_SetBoolParam;
        {* - признак видимости текущего стиля. }
      property FirstIndent: Long
        index k2_tiFirstIndent
        read pm_GetLongParam
        write pm_SetLongParam;
        {* - отступ красной строки текущего стиля. }
      property LeftIndent: Long
        index k2_tiLeftIndent
        read pm_GetLongParam
        write pm_SetLongParam;
        {* - левый отступ текущего стиля. }
      property RightIndent: Long
        index k2_tiRightIndent
        read pm_GetLongParam
        write pm_SetLongParam;
        {* - правый отступ текущего стиля. }
      property Width: Long
        index k2_tiWidth
        read pm_GetLongParam
        write pm_SetLongParam;
        {* - ширина текущего стиля. }
      property IndentType: Long
        index k2_tiJustification
        read pm_GetLongParam
        write pm_SetLongParam;
        {* - тип выравнивания текущего стиля. }
      property Parent: Long
        index k2_tiStyle
        read pm_GetLongParam
        write pm_SetLongParam;
        {* - идентификатор родителя для текущего стиля. }
      property Apply2Para: Bool
        index k2_tiApply2Para
        read pm_GetBoolParam
        write pm_SetBoolParam;
        {* - признак применимости к параграфу текущего стиля. }
      property SpaceBefore: Long
        index k2_tiSpaceBefore
        read pm_GetLongParam
        write pm_SetLongParam;
        {* - отступ сверху. }
      property SpaceAfter: Long
        index k2_tiSpaceAfter
        read pm_GetLongParam
        write pm_SetLongParam;
        {* - отступ снизу. }
      property ParentInterface: TevStyleInterface
        read pm_GetParentInterface;
        {* - родительский стиль текущего стиля. }
  end;//TevStyleInterface
  RevStyleInterface = class of TevStyleInterface;

implementation

uses
  l3TreeInterfaces,
  l3Chars,
  l3Base,
  l3Nodes,
  l3VCLStringsItems,
  l3ObjectRefList,
  l3StringList,
  l3SimpleObject,
  l3SimpleObjectRefList,

  k2Facade,

  evStyleTableSpy
  
  {$If Defined(Nemesis) AND (not Defined(nsTest) OR Defined(InsiderTest)) AND not Defined(nsTool)}
  {$IfNDef NoVCM}
  ,
  StdRes
  {$EndIf  NoVCM}
  {$IfEnd}

  ,
  evdTextStyle_Const
  ;

// start class TevStyleContainerStrings

type
  TevStyleContainerStrings = class(Tl3VCLStringsItems)
    private
    // property fields
      f_StyleContainer : Tl3Dictionary;
    protected
    // property methods
      procedure pm_SetStyleContainer(Value: Tl3Dictionary);
        {-}
    protected
    // internal methods
      function  Get(Index: Integer): string;
        override;
      procedure Put(Index: Integer; const S: string);
        override;
        {-}
      function  GetCount: Integer;
        override;
        {-}
      function  GetObject(Index: Integer): TObject;
        override;
        {-}
      procedure Cleanup;
        override;
        {-}
    public
    // public properties
      property StyleContainer: Tl3Dictionary
        read f_StyleContainer
        write pm_SetStyleContainer;
        {-}
  end;//TevStyleContainerStrings

procedure TevStyleContainerStrings.Cleanup;
  {override;}
  {-}
begin
 StyleContainer := nil;
 inherited;
end;

procedure TevStyleContainerStrings.pm_SetStyleContainer(Value: Tl3Dictionary);
  {-}
begin
 l3Set(f_StyleContainer, Value);
end;

function TevStyleContainerStrings.Get(Index: Integer): string;
  {override;}
  {-}
begin
 Result := f_StyleContainer.Items[Index].AsString;
end;

procedure TevStyleContainerStrings.Put(Index: Integer; const S: string);
  {override;}
  {-}
begin
 Assert(false, 'Вобще-то имена стилей не предполагается таким образом править');
 f_StyleContainer.Items[Index].AsString := S
end;

function TevStyleContainerStrings.GetCount: Integer;
  {override;}
  {-}
begin
 Result := f_StyleContainer.Count;
end;

function TevStyleContainerStrings.GetObject(Index: Integer): TObject;
  {override;}
  {-}
begin
 Result := f_StyleContainer.Items[Index];
end;

// start class TevStyleInterface 

constructor TevStyleInterface.Create(anOwner: TObject = nil);
  {override;}
  {-}
begin
 inherited Create(anOwner);
 f_Font := TevFontInterface.Create(Self);
end;

constructor TevStyleInterface.Make(aType  : Long = k2_idTextPara;
                                   aStyle : Long = ev_saTxtNormalANSI);
  {-}
begin
 Create;
 SelectStyledObjectType(aType);
 SelectStyle(aStyle);
end;

procedure TevStyleInterface.Cleanup;
  {override;}
  {-}
begin
 l3Free(f_ParentInterface);
 l3Free(f_Styles);
 l3Free(f_Font);
 inherited;
end;

class function TevStyleInterface.MakeList(aType: Tk2Type): Il3Strings;
  {-}
var
 l_SI : TevStyleInterface;
begin
 l_SI := TevStyleInterface.Create;
 try
  l_SI.TagType := aType;
  Result := l_SI;
 finally
  l3Free(l_SI);
 end;{try..finally}
end;
  
procedure TevStyleInterface.Changing;
  //override;
  {-}
begin
 {$If not defined(DesignTimeLibrary)}
 evNotifyStyleTableChanging;
 {$IfEnd}
 inherited;
 if (f_Font <> nil) then
  f_Font.Changing;
 {$If not defined(DesignTimeLibrary)}
 evNotifyStyleTableChanged;
 {$IfEnd}
end;

procedure TevStyleInterface.ChangedEx(aCancel: Boolean);
  //override;
  {-}
begin
 if (f_Font <> nil) then
  f_Font.ChangedEx(aCancel);
 inherited ChangedEx(aCancel);
end;

(*function IsStyleWithChangeableFont(anID : Integer): Boolean;
begin
 Result := (anID <> evd_saInterface) AND (anID <> ev_saDialogs);
end;*)

procedure TevStyleInterface.IncFontSize;
  {-}
var
 l_Size : Long;
 l_H    : Integer;
begin
 l_H := Self.Param[k2_tiHandle];
 if {IsStyleWithChangeableFont(l_H) AND} Tag.BoolA[k2_tiIsChangeableFont] then
  if (f_Font <> nil) then
  begin
   with f_Font do
    if (IsOwn[k2_tiSize] OR (l_H = ev_saTxtNormalANSI)) AND
      not IsTransparent[k2_tiSize] then
    begin
     l_Size := Size;
     Inc(l_Size);
     Size := l_Size;
    end;//IsOwn[k2_tiSize]
  end;//f_Font <> nil
end;

procedure TevStyleInterface.DecFontSize;
  {-}
var
 l_Size : Long;
 l_H    : Integer;
begin
 l_H := Self.Param[k2_tiHandle];
 if {IsStyleWithChangeableFont(l_H) AND} Tag.BoolA[k2_tiIsChangeableFont] then
  if (f_Font <> nil) then
  begin
   with f_Font do
    if (IsOwn[k2_tiSize] OR (l_H = ev_saTxtNormalANSI)) AND
     not IsTransparent[k2_tiSize] then
    begin
     l_Size := Size;
     Dec(l_Size);
     if (l_Size > 0) then
      Size := l_Size;
    end;//IsOwn[k2_tiSize]
  end;//f_Font <> nil
end;

procedure TevStyleInterface.IncAllFontSize;
  {-}

 function ChangeStyle(aStyle: PObject; Index: Long): Bool;
 begin//ChangeStyle
  Result := true;
  IncFontSize;
 end;//ChangeStyle

begin
 Changing;
 try
  IterateF(l3L2IA(@ChangeStyle));
 finally
  Changed;
 end;//try..finally
end;

procedure TevStyleInterface.DecAllFontSize;
  {-}

 function ChangeStyle(aStyle: PObject; Index: Long): Bool;
 begin//ChangeStyle
  Result := true;
  DecFontSize;
 end;//ChangeStyle

begin
 Changing;
 try
  IterateF(l3L2IA(@ChangeStyle));
 finally
  Changed;
 end;//try..finally
end;

function TevStyleInterface.Iterate(Action: Tl3IteratorAction): Long;
  {* - перебирает все элементы хранилища с aLo по aHi и освобождает заглушку для Action. }

 function ChangeStyle(aStyle: PObject; Index: Long): Bool;
 begin//ChangeStyle
  SelectStyle((aStyle^ As Tl3PrimString).StringID);
  Result := Action(aStyle, Index);
 end;//ChangeStyle

var
 VT: Tl3Dictionary;
begin
 GetVT(VT);
 try
  Result := VT.IterateAllF(l3L2IA(@ChangeStyle));
 finally
  l3Free(VT);
 end;//try..finally
end;

function TevStyleInterface.IterateF(Action: Tl3IteratorAction): Long;
  {* - перебирает все элементы хранилища с aLo по aHi и освобождает заглушку для Action. }
begin
 try
  Result := Iterate(Action);
 finally
  l3FreeIA(Action);
 end;//try..finally
end;

function TevStyleInterface.MakeStylesTreeRoot(const aIncludeIdArray: array of Long): Il3Node;

  {* - создает дерево стилей и возвращает интерфейс на корневую ноду. }
 var
  l_RootNode: Il3Node absolute Result;

 function InsertStyle(aStyle: PObject; Index: Long): Bool;
 
  function IsValidId(const aId: Long; const aIncludeIdArray: array of Long): Boolean;
  var
   l_Index: Integer;
  begin
   Result := False;
   for l_Index := Low(aIncludeIdArray) to High(aIncludeIdArray) do
    if (aId = aIncludeIdArray[l_Index]) then
    begin
     Result := True;
     Break;
    end;
  end;
 var
  l_Id   : Long;
  l_Node : Il3Node;
  l_St   : Ik2Tag;
 begin
  with TypeTable.ObjToTag(aStyle^) do
   if IsValid then
   begin
    l_Id := AsLong;
    if (Length(aIncludeIdArray) = 0) or IsValidId(l_Id, aIncludeIdArray) then
    begin
     l_St := Attr[k2_tiStyle];
     while true do
     begin
      l_Node := l3SearchByName(l_RootNode, l_St.PCharLenA[k2_tiName]);
      if (l_Node <> nil) then
       break;
      if l_St.IsSame(l_St.Attr[k2_tiStyle]) then
      begin
       l_Node := l_RootNode;
       break;
      end;//l_St.IsSame(l_St.Attr[k2_tiStyle])
      l_St := l_St.Attr[k2_tiStyle];
     end;//while true
     try
      Assert(l_Node <> nil);
      with l_Node.InsertChild(MakeNode(PCharLenA[k2_tiName])) as Il3HandleNode do
       Handle := Integer(l_Id);
     finally
      l_Node := nil;
     end;//try..finally
    end;//Length(aIncludeIdArray) = 0юю
   end;//IsValid
  Result := True;
 end;
 //
 var
  l_VList: Tl3SimpleObjectRefList;

 function SortStyle(aStyle: PObject; Index: Long): Bool;
 var
  l_Count  : Longint;
  l_Parent : Ik2Tag;
  l_Style  : Ik2Tag;
 begin
  with l_VList do
  begin
   l_Count := Count;
   l_Style := TypeTable.ObjToTag(aStyle^);
   //l_Style := k2Tag(aStyle^);
   with l_Style do
    while IsValid and (IndexOf(Tl3SimpleObject(AsObject)) < 0) do
    begin
     Insert(l_Count, Tl3SimpleObject(AsObject));
     l_Parent := Attr[k2_tiStyle];
     if IsSame(l_Parent) then
      l_Style := k2NullTag
     else
      l_Style := l_Parent;
    end;
  end;
  Result := True;
 end;
 //
var
 l_Dictionary: Tl3Dictionary;
begin
 Result := MakeNode(cc_EmptyStr);
 //
 GetVT(l_Dictionary);
 try
  l_VList := Tl3SimpleObjectRefList.Make;
  try
   l_Dictionary.IterateAllF(l3L2IA(@SortStyle));
   l_VList.IterateAllF(l3L2IA(@InsertStyle));
  finally
   l3Free(l_VList);
  end;
 finally
  l3Free(l_Dictionary);
 end;
end;

class function TevStyleInterface.DocumentUseFixedFontForPrintAndExportSetting: Boolean;
  {-}
begin
 {$If Declared(TdmStdRes)}
 {$If Defined(Admin) OR Defined(Monitorings) OR Defined(NewGen)}
 Result := false;
 {$Else}
 Result := {TdmStdRes.DocumentUseFixedFontForPrintAndExportSetting} False; // чинить тут!
 {$IfEnd}
 {$Else}
 Result := false;
 {$IfEnd}
end;
  
procedure TevStyleInterface.GetVT(var VT: Tl3Dictionary);
  {-}
begin
 if (TagType = nil) then
  // - это возможно в случае инициализации таблицы тегов
  VT := nil
 else
 begin
  VT := TagType.ValueTable.Use;
  Assert(VT <> nil);
 end;//TagType = nil
end;

procedure TevStyleInterface.Add(const S: String; ID: Long = 0);
  {-}
var
 A  : Ik2Tag;
 VT : Tl3Dictionary;
begin
 GetVT(VT);
 try
  A := TagType.MakeTag;
  try
   A.IntW[k2_tiHandle, Context] := ID;
   Tag := A;
   Name := S;
   Tag := TypeTable.ObjToTag(VT.Items[VT.Add(Tl3CustomString(Tag.AsObject))]);
   //Tag := k2Tag(VT.Items[VT.Add(Tl3CustomString(Tag.AsObject))]);
  finally
   A := nil;
  end;{try..finally}
 finally
  l3Free(VT);
 end;{try..finally}
end;

procedure TevStyleInterface.Delete;
  {-}
var
 VT : Tl3Dictionary;
begin
 if (Tag.IntA[k2_tiHandle] > 0) then
 begin
  GetVT(VT);
  try
   VT.Delete(VT.IndexOf(Tl3CustomString(Tag.AsObject)));
  finally
   l3Free(VT);
  end;{try..finally}
  Tag := nil;
 end;{Tag.AsTag.IntA[k2_tiHandle]..}
end;

procedure TevStyleInterface.SelectStyledObjectType(ID: Long);
  {-}
var
 l_TT : Tk2TypeTable;  
begin
 l_TT := TypeTable;
 if (l_TT <> nil) then
  SelectStyledObjectType(l_TT[ID]);
end;

procedure TevStyleInterface.SelectStyledObject(const anObject: Ik2Tag);
  {-}
begin
 if anObject.IsValid then SelectStyledObjectType(k2.TypeTable[anObject.TagType.ID]);
end;

procedure TevStyleInterface.SelectStyledObjectType(const aType: Tk2Type);
  {-}
begin
 if (aType <> nil) then
  // - это возможно в случае инициализации таблицы тегов
  TagType := Tk2Type(aType.Prop[k2_tiStyle].AtomType);
end;

function TevStyleInterface.SelectStyle(const S: String): Ik2Tag;
  {-}
var
 VT : Tl3Dictionary;
begin
 GetVT(VT);
 try
  Tag := TypeTable.ObjToTag(VT.DRByName[S]);
  //Tag := k2Tag(VT.DRByName[S]);
 finally
  l3Free(VT);
 end;{try..finally}
 Result := Tag;
end;

function TevStyleInterface.SelectStyle(ID: Long): Ik2Tag;
  {-}
var
 VT : Tl3Dictionary;
begin
 GetVT(VT);
 if (VT = nil) then
  // - это возможно в случае инициализации таблицы тегов
  Result := k2NullTag
 else
 begin
  try
   Tag := TypeTable.ObjToTag(VT.DRByID[ID]);
   //Tag := k2Tag(VT.DRByID[ID]);
  finally
   l3Free(VT);
  end;{try..finally}
  Result := Tag;
 end;//VT = nil
end;

procedure TevStyleInterface.pm_SetParentName(const Value: String);
  {-}
begin
 Tag.StrW[k2_tiStyle, Context] := Value;
 f_Font.Style := Self;
end;

procedure TevStyleInterface.pm_SetTag(const aValue: Ik2Tag);
  {-}
begin
 inherited;
 if (f_Font <> nil) then
  f_Font.Style := Self;
end;

procedure TevStyleInterface.pm_SetContext(const Value: InevOp);
  {override;}
  {-}
begin
 inherited;
 f_Font.Context := Value;
end;

function TevStyleInterface.Get_Items: TStrings;
  {-}
var
 VT : Tl3Dictionary;
 i : Integer;
begin
 if (f_Styles = nil) then
 begin
  GetVT(VT);
  try
   f_Styles := TStringList.Create;
   for i := 0 to Pred(VT.Count) do
    if Tk2TypeTable(TagType.TypeTable).ObjToTag(VT.Items[i]).BoolA[k2_tiVisibleTouser] then
     f_Styles.AddObject(VT.Items[i].AsString, VT.Items[i]);
   (*f_Styles := TevStyleContainerStrings.Create;
   TevStyleContainerStrings(f_Styles).StyleContainer := VT;*)
  finally
   l3Free(VT);
  end;{try..finally}
 end;
 Result := f_Styles;
end;

function TevStyleInterface.IsDefault: Boolean;
begin
 Result := (Tag.IntA[k2_tiHandle] = ev_saTxtNormalANSI);
end;

function TevStyleInterface.pm_GetIsOwn(Index: Long): Bool;
  {override;}
  {-}
begin
 Result := inherited pm_GetIsOwn(Index) or IsDefault;
end;

function TevStyleInterface.pm_GetParentInterface: TevStyleInterface;
  {-}
var
 P : Ik2Tag;
begin
 if (f_ParentInterface = nil) then
  f_ParentInterface := RevStyleInterface(ClassType).Create;
 P := Tag.Attr[k2_tiStyle];
 f_ParentInterface.Style := P;
 Result := f_ParentInterface;
end;

end.

