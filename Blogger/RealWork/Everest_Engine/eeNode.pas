unit eeNode;

{ Библиотека "Эверест"    }
{ Автор: Люлин А.В. ©     }
{ Модуль: eeNode -        }
{ Начат: 20.06.2003 16:57 }
{ $Id: eeNode.pas,v 1.1 2010/04/21 16:52:40 lulin Exp $ }

// $Log: eeNode.pas,v $
// Revision 1.1  2010/04/21 16:52:40  lulin
// {RequestLink:144575972}.
// - переходим к абсолютным путям для включаемых файлов.
//
// Revision 1.1  2009/10/28 14:09:56  lulin
// - начинаем компанию по борьбе со старыми внутренними операциями.
//
// Revision 1.33  2008/12/12 19:19:17  lulin
// - <K>: 129762414.
//
// Revision 1.32  2008/04/07 06:18:39  lulin
// - cleanup.
//
// Revision 1.31  2008/02/14 17:08:58  lulin
// - cleanup.
//
// Revision 1.30  2007/12/26 14:10:29  lulin
// - модуль l3Interfaces полностью переведен на модель.
//
// Revision 1.29  2007/12/04 12:47:33  lulin
// - перекладываем ветку в HEAD.
//
// Revision 1.27.4.13  2007/08/21 12:43:19  lulin
// - избавляемся от предупреждений компилятора.
//
// Revision 1.27.4.12  2007/03/20 14:10:04  lulin
// - cleanup.
//
// Revision 1.27.4.11  2007/03/20 13:58:40  lulin
// - избавляемся от лишних преобразований строк.
//
// Revision 1.27.4.10  2007/02/16 17:54:08  lulin
// - избавляемся от стандартного строкового типа.
//
// Revision 1.27.4.9  2006/12/27 09:46:39  lulin
// - два метода, вычисляющие уровень ноды объединены в один.
//
// Revision 1.27.4.8  2006/12/22 15:06:32  lulin
// - текст ноды - теперь структура с длиной и кодовой страницей.
//
// Revision 1.27.4.7  2005/11/10 07:32:46  mmorozov
// change: вернул AllChildrenCount на историческую родину;
//
// Revision 1.27.4.5  2005/10/27 16:47:48  lulin
// - bug fix: падали при получении *ChildrenCount у Il3SimpleNode.
//
// Revision 1.27.4.4  2005/09/01 17:46:24  lulin
// - теперь стало показываться оглавление в виде нового дерева.
//
// Revision 1.27.4.3  2005/07/15 11:29:37  lulin
// - избавляемся от использования самостийной функции преобразования интерфейсов.
//
// Revision 1.27.4.2  2005/07/15 10:14:05  lulin
// - избавляемся от использования самостийной функции преобразования интерфейсов.
//
// Revision 1.27.4.1  2005/05/18 12:42:49  lulin
// - отвел новую ветку.
//
// Revision 1.26.12.2  2005/05/18 12:32:12  lulin
// - очередной раз объединил ветку с HEAD.
//
// Revision 1.26.12.1  2005/04/28 09:18:32  lulin
// - объединил с веткой B_Tag_Box.
//
// Revision 1.26.20.1  2005/04/27 09:02:57  mmorozov
// bugfix: поправлены места где код обязательный для исполнения был обрамлен Assert (иначе без Assertions = True было AV);
//
// Revision 1.27  2005/04/28 15:03:40  lulin
// - переложил ветку B_Tag_Box в HEAD.
//
// Revision 1.26.20.1  2005/04/27 09:02:57  mmorozov
// bugfix: поправлены места где код обязательный для исполнения был обрамлен Assert (иначе без Assertions = True было AV);
//
// Revision 1.26  2004/08/03 10:58:09  am
// bugfix: в IsSameNode спрашивали у f_Node Il3Node, а надо I3SimpleNode
//
// Revision 1.25  2004/06/22 13:23:13  mmorozov
// bugfix: TeeNode.Make;
//
// Revision 1.24  2004/06/22 12:56:27  mmorozov
// - откат изменений;
//
// Revision 1.22  2004/05/27 08:59:09  law
// - change: исбавился от лишнего метода IsMyIntf - вместо нео теперь всегда используется IsSame.
//
// Revision 1.21  2004/05/26 18:17:19  law
// - change: Il3Node теперь наследуется от Il3SimpleNode.
//
// Revision 1.20  2004/05/26 14:21:59  law
// - change: скестил "ежа с ужом" (старые деревья с новыми).
//
// Revision 1.19  2004/04/28 09:38:02  law
// - начал перетаскивать EE на новое дерево под директивой vtOutlinerKnowsInterface.
//
// Revision 1.18  2004/04/27 17:00:23  law
// - начал перетаскивать EE на новое дерево под директивой vtOutlinerKnowsInterface.
//
// Revision 1.17  2004/04/27 07:25:31  law
// - remove prop: IeeNode.Expanded.
// - cleanup: из TeeNode убрано знание про _Tl3Tree.
//
// Revision 1.16  2004/04/13 12:05:05  law
// - optimization: метод IsMyIntf перенесен на Il3Node.
//
// Revision 1.15  2004/04/08 19:19:41  law
// - optimization: убраны директивы stdcall.
//
// Revision 1.14  2004/04/02 10:54:51  demon
// - new: операция GetLevelForParent вынесена на интерфейс IeeNode
//
// Revision 1.13  2004/03/03 18:03:56  law
// - rename unit: l3Tree2 -> l3Tree.
//
// Revision 1.12  2004/01/30 18:24:15  demon
// - new: на интерфейс IeeNode добавлены функции Move, RelocateChild, SortChilds.
//
// Revision 1.11  2004/01/30 11:39:51  demon
// - cleanup: удалена неиспользуемая функция InsertChild(по имени)
// - new: добавлена функция InsertChildBefore
//
// Revision 1.10  2003/12/11 19:01:08  law
// - cleanup: навел порядок с AllChildrenCount и ThisChildrenCount.
//
// Revision 1.9  2003/11/05 16:32:01  law
// - new prop: IeeNode.IsFirst, IsLast.
//
// Revision 1.8  2003/08/21 15:10:14  demon
// - new: в интерфейс IeeNode вынесены свойства PrevNode и NextNode
//
// Revision 1.7  2003/07/28 11:56:54  law
// - new methods: IeeNode.Iterate, IterateF.
//
// Revision 1.6  2003/07/15 13:44:48  law
// - new prop: IeeNode.ParentNode.
//
// Revision 1.5  2003/07/10 13:46:47  demon
// - fix: при QueryInterface добавили дополнительную переадресацию запросов внутренней ноде.
//
// Revision 1.4  2003/07/01 18:08:11  law
// - new prop: TeeNode.ChildNode.
//
// Revision 1.3  2003/06/21 12:29:25  law
// - new method: IeeNode.Delete.
//
// Revision 1.2  2003/06/20 15:05:49  law
// - new behavior: если параметр у TeeNode.Make, aNode равен nil, то не создаем ноду, а возвращаем nil.
//
// Revision 1.1  2003/06/20 13:14:26  law
// - buf fix: забыл положить файл eeNode.
//

{$Include eeDefine.inc }

interface

uses
  Windows,

  l3Interfaces,
  l3Types,

  l3TreeInterfaces,
  l3Tree_TLB,
  l3IID,
  l3Base,
  l3CacheableBase,

  eeInterfaces
  ;

type
  TeeNode = class(Tl3CacheableBase, IeeNode)
    private
    // internal fields
      f_Node : Il3SimpleNode;
    private
    // interface methods
      // IeeNode
      function  Get_Text: Il3CString;
      procedure Set_Text(const aValue: Il3CString);
        {-}
      function  Get_ID: Integer;
      procedure Set_ID(aValue: Integer);
        {-}
      function  Get_HasChild: Windows.Bool;
        {-}
      function  Get_ChildNode: IeeNode;
        {-}
      function  Get_ParentNode: IeeNode;
        {-}
      function  Get_NextNode: IeeNode;
        {-}
      function  Get_PrevNode: IeeNode;
        {-}
      function  Get_IsFirst: Windows.Bool;
        {-}
      function  Get_IsLast: Windows.Bool;
        {-}
      function InsertChild(const aNode: IeeNode): IeeNode;
        {-}
      function InsertChildBefore(const aNextChild: IeeNode; const aChild: IeeNode): IeeNode;
        {-}
      procedure Changing;
        reintroduce;
        {-}
      procedure Changed;
        reintroduce;
        {-}
      procedure Remove;
        {* - удалить узел из дерева. }
      procedure Delete;
        {* - удалить узел из дерева и с постоянного носителя. }
      procedure RemoveChildren;
        {* - освободить дочерние узлы. }
      function  Move(aDirection : TeeDirection) : Boolean;
        {* - переместить узел. }
      procedure RelocateChild(const aChild: IeeNode);
        {* - перемещает указанного ребенка, руководствуясь критериями
             сортировки относительно других детей (в пределах одного уровня)}
      procedure SortChilds;
        {* - пересортировывает всех детей (один уровень)}
      function  IsSameNode(const aNode: IeeNode): Windows.Bool;
        {-}
      function  GetLevelForParent(const aParent: IeeNode): Integer;
        {* Рассчитывает уровеньтекущей Ноду относительно заданного Paretnt'а }
      function  Iterate(Action          : TeeNodeAction;
                        IterMode        : Integer = 0;
                        const aFromNode : IeeNode = nil) : IeeNode;
       {* - перебрать все дочерние узлы. IterMode см. imExpandOnly etc. }
      function  IterateF(Action          : TeeNodeAction;
                         IterMode        : Integer = 0;
                         const aFromNode : IeeNode = nil) : IeeNode;
       {* - перебрать все дочерние узлы и освободить заглушку для Action. }
      function  Get_AllChildrenCount: Integer;
        {-}
      function  Get_ThisChildrenCount: Integer;
        {-}
    protected
    // internal methods
      procedure Cleanup;
        override;
        {-}
    public
    // public methods
      class function Make(const aNode: Il3SimpleNode): IeeNode;
        {-}
      constructor Create(const aNode: Il3SimpleNode);
        reintroduce;
        {-}
      function COMQueryInterface(const IID: Tl3GUID; out Obj): Tl3HResult;
        override;
        {-}
  end;//TeeNode

  function eeDirection2l3Direction(aDirection : TeeDirection): Tl3Direction;

implementation

uses
  SysUtils,
  
  l3InterfacesMisc,
  l3Bits,
  l3Nodes,
  l3String
  ;

function eeDirection2l3Direction(aDirection : TeeDirection): Tl3Direction;
begin
 Result := Tl3Direction(Byte(aDirection));
end;

// start class TeeNode

class function TeeNode.Make(const aNode : Il3SimpleNode): IeeNode;
  {-}
var
 l_Node : TeeNode;
begin
 if (aNode = nil) then
  Result := nil
 else
 if not Supports(aNode, IeeNode, Result) then
  // - если aNode сама не поддерживает IeeNode, то делаем узел-заглушку
 begin
  l_Node := Create(aNode);
  try
   Result := l_Node;
  finally
   l3Free(l_Node);
  end;//try..finally
 end;//not Supports(aNode, IeeNode, Result)
end;

constructor TeeNode.Create(const aNode: Il3SimpleNode);
  //reintroduce;
  {-}
begin
 inherited Create;
 f_Node := aNode;
end;

procedure TeeNode.Cleanup;
  //override;
  {-}
begin
 f_Node := nil;
 inherited;
end;

function TeeNode.COMQueryInterface(const IID: Tl3GUID; out Obj): Tl3HResult;
  //override;
  {-}
begin
 if IID.EQ(Il3SimpleNode) then
 begin
  if (f_Node = nil) then
   Result.SetNoInterface
  else
  begin
   Result.SetOk;
   Il3SimpleNode(Obj) := f_Node;
  end;//f_Node = nil
 end//IID.EQ(Il3SimpleNode)
 else
 if IID.EQ(Il3Node) then
 begin
  if (f_Node = nil) then
   Result.SetNoInterface
  else
   Result := Tl3HResult_C(f_Node.QueryInterface(IID.IID, Obj));
 end//IID.EQ(Il3Node)
 else
 if IID.EQ(Il3RootNode) then
 begin
  if Supports(f_Node, IID.IID, Obj) then
   Result.SetOk
  else
   Result.SetNoInterface;
 end//IID.EQ(Il3RootNode)
 else
 begin
  Result := inherited COMQueryInterface(IID, Obj);
  if Result.Fail then
  begin
   if Supports(f_Node, IID.IID, Obj) then
    Result.SetOk
   else
    Result.SetNoInterface;
  end;//l3Fail(Result)
 end;//else
end;

function TeeNode.Get_Text: Il3CString;
  {-}
begin
 Result := l3CStr(f_Node);
end;

procedure TeeNode.Set_Text(const aValue: Il3CString);
  {-}
var
 ll3Node : Il3Node;
begin
 if Supports(f_Node, Il3Node, ll3Node) then
  try
   ll3Node.Text := l3PCharLen(aValue);
  finally
   ll3Node := nil;
  end//try..finally
 else
  Assert(false); 
end;

function TeeNode.Get_ID: Integer;
  {-}
begin
 Result := (f_Node As Il3HandleNode).Handle;
end;

procedure TeeNode.Set_ID(aValue: Integer);
  {-}
begin
 (f_Node As Il3HandleNode).Handle := aValue;
end;

function TeeNode.Get_HasChild: Windows.Bool;
  {-}
begin
 if (f_Node = nil) then
  Result := false
 else
  Result := f_Node.HasChild;
end;

function TeeNode.Get_ChildNode: IeeNode;
  {-}
begin
 if (f_Node = nil) then
  Result := nil
 else
  Result := TeeNode.Make(f_Node.Child);
end;

function TeeNode.Get_ParentNode: IeeNode;
  {-}
begin
 if (f_Node = nil) then
  Result := nil
 else
  Result := TeeNode.Make(f_Node.Parent);
end;

function TeeNode.Get_NextNode: IeeNode;
  {-}
var
 lNode : Il3Node;
begin
 if (f_Node = nil) then
  Result := nil
 else
 begin
  if Supports(f_Node, Il3Node, lNode) then
   try
    Result := TeeNode.Make(lNode.NextNode);
   finally
    lNode := nil;
   end
  else
   Assert(false); 
 end;
end;

function TeeNode.Get_PrevNode: IeeNode;
  {-}
var
 lNode : Il3Node;
begin
 if (f_Node = nil) then
  Result := nil
 else
 begin
  if Supports(f_Node, Il3Node, lNode) then
   try
    Result := TeeNode.Make(lNode.PrevNode);
   finally
    lNode := nil;
   end
  else
   Assert(false); 
 end;
end;

function TeeNode.Get_IsFirst: Windows.Bool;
  {-}
begin
 if (f_Node = nil) then
  Result := true
 else
  Result := f_Node.IsFirst;
end;

function TeeNode.Get_IsLast: Windows.Bool;
  {-}
begin
 if (f_Node = nil) then
  Result := true
 else
  Result := f_Node.IsLast;
end;

function TeeNode.GetLevelForParent(const aParent: IeeNode): Integer;
  {* Рассчитывает уровеньтекущей Ноду относительно заданного Paretnt'а }
var
 l_Parent : Il3SimpleNode;
 l_Node   : Il3SimpleNode;
begin
 if (f_Node = nil) then
  Result := -1
 else
  if Supports(aParent, Il3SimpleNode, l_Parent) then
   try
    if Supports(f_Node, Il3SimpleNode, l_Node) then
     try
      Result := l_Node.GetLevelFor(l_Parent);
     finally
      l_Node := nil;
     end//try..finally
    else
    begin
     Assert(false);
     Result := -1;
    end;
   finally
    l_Parent := nil;
   end//try..finally
  else
   Result := -1;
end;

function TeeNode.InsertChild(const aNode: IeeNode): IeeNode;
  //overload;
  {-}
var
 l_Node, l_Node1 : Il3Node;
begin
 if (f_Node = nil) then
  Result := nil
 else if Supports(aNode, Il3Node, l_Node) then
  try
   Result := aNode;
   if Supports(f_Node, Il3Node, l_Node1) then
    try
     l_Node1.InsertChild(l_Node);
    finally
     l_Node1 := nil;
    end
   else
    Assert(false); 
  finally
   l_Node := nil;
  end//try..finally
 else
  Result := nil;
end;

function TeeNode.InsertChildBefore(const aNextChild: IeeNode;
                                   const aChild: IeeNode): IeeNode;
  //overload;
  {-}
var
 l_NextChild,
 l_Child,
 l_Node : Il3Node;
begin
 if (f_Node = nil) then
  Result := nil
 else
  if Supports(aChild, Il3Node, l_Child) and
     Supports(aNextChild, Il3Node, l_NextChild) then
   try
    Result := aChild;
    if Supports(f_Node, Il3Node, l_Node) then
     try
      l_Node.InsertChildBefore(l_NextChild, l_Child);
     finally
      l_Node := nil;
     end
    else
     Assert(false); 
   finally
    l_Child := nil;
    l_NextChild := nil;
   end//try..finally
  else
   Result := nil;
end;

procedure TeeNode.Changing;
  {-}
var
 lNode : Il3Node;
begin
 if Supports(f_Node, Il3Node, lNode) then
  try
   lNode.Changing;
  finally
   lNode := nil;
  end;
end;

procedure TeeNode.Changed;
  {-}
var
 lNode : Il3Node;
begin
 if Supports(f_Node, Il3Node, lNode) then
  try
   lNode.Changed;
  finally
   lNode := nil;
  end;
end;

procedure TeeNode.Remove;
  {* - удалить узел из дерева. }
var
 lNode : Il3Node;
begin
 if Supports(f_Node, Il3Node, lNode) then
  try
   lNode.Remove;
  finally
   lNode := nil;
  end
 else
  Assert(false);
end;

procedure TeeNode.Delete;
  {* - удалить узел из дерева и с постоянного носителя. }
var
 lNode : Il3Node;
begin
 if Supports(f_Node, Il3Node, lNode) then
  try
   lNode.Delete;
  finally
   lNode := nil;
  end
 else
  Assert(false); 
end;

procedure TeeNode.RemoveChildren;
  {* - освободить дочерние узлы. }
var
 lNode : Il3Node;
begin
 if Supports(f_Node, Il3Node, lNode) then
  try
   lNode.ReleaseChilds;
  finally
   lNode := nil;
  end
 else
  Assert(false); 
end;

function TeeNode.Move(aDirection : TeeDirection) : Boolean;
  //overload;
  {* - переместить узел. }
var
 lNode : Il3Node;
begin
 Result := False;
 if (f_Node = nil) then
  Result := False
 else
 begin
  if Supports(f_Node, Il3Node, lNode) then
   try
    Result := lNode.Move(eeDirection2l3Direction(aDirection));
   finally
    lNode := nil;
   end
  else
   Assert(false); 
 end;
end;

procedure TeeNode.RelocateChild(const aChild: IeeNode);
  {* - перемещает указанного ребенка, руководствуясь критериями
       сортировки относительно других детей (в пределах одного уровня)}
var
 l_Child,
 l_Node : Il3Node;
begin
 if (f_Node <> nil) and
   Supports(aChild, Il3Node, l_Child) then
  try
   if Supports(f_Node, Il3Node, l_Node) then
    try
     l_Node.SortChilds(l_Child);
    finally
     l_Node := nil;
    end
   else
    Assert(false); 
  finally
   l_Child := nil;
  end;//try..finally
end;

procedure TeeNode.SortChilds;
  {* - пересортировывает всех детей (один уровень)}
var
 lNode : Il3Node;
begin
 if (f_Node <> nil) then
 begin
  if Supports(f_Node, Il3Node, lNode) then
   try
    lNode.SortChilds(nil);
   finally
    lNode := nil;
   end
  else
   Assert(false); 
 end;
end;

function TeeNode.IsSameNode(const aNode: IeeNode): Windows.Bool;
  {-}
var
 l_Node : Il3Node;
begin
 Result := l3IEQ(Self, aNode);
 if not Result then
 begin
  if (f_Node = nil) then
   Result := (aNode = nil)
  else
  begin
   if Supports(aNode, Il3SimpleNode, l_Node) then
    try
     Result := f_Node.IsSame(l_Node);
    finally
     l_Node := nil;
    end;//try..finally
  end;//f_Node = nil
 end;//not Result
end;

function TeeNode.Iterate(Action          : TeeNodeAction;
                         IterMode        : Integer = 0;
                         const aFromNode : IeeNode = nil) : IeeNode;
 {* - перебрать все дочерние узлы. IterMode см. imExpandOnly etc. }

 function l_CheckNode(const aNode: Il3Node): Boolean;
 begin
  Result := Action(TeeNode.Make(aNode));
 end;

var
 l_FromNode : Il3Node;
 l_Node     : Il3Node;
begin
 if (f_Node = nil) then
  Result := nil
 else
 begin
  Supports(aFromNode, Il3Node, l_FromNode);
  try
   if Supports(f_Node, Il3Node, l_Node) then
    try
     Result := TeeNode.Make(l_Node.IterateF(l3L2NA(@l_CheckNode), IterMode, l_FromNode));
    finally
     l_Node := nil;
    end
   else
    Assert(false); 
  finally
   l_FromNode := nil;
  end;
 end;//f_Node = nil
end;

function TeeNode.IterateF(Action          : TeeNodeAction;
                          IterMode        : Integer = 0;
                          const aFromNode : IeeNode = nil) : IeeNode;
 {* - перебрать все дочерние узлы и освободить заглушку для Action. }
begin
 try
  Result := Iterate(Action, IterMode, aFromNode);
 finally
  l3FreeFA(Tl3FreeAction(Action));
 end;//try..finally
end;

function TeeNode.Get_AllChildrenCount: Integer;
  {-}
var
 lNode : Il3Node;
begin
 if (f_Node = nil) then
  Result := 0
 else
 begin
  if Supports(f_Node, Il3Node, lNode) then
  try
   Result := lNode.AllChildrenCount;
  finally
   lNode := nil;
  end
  else
  begin
   Assert(False);
   Result := -1;
  end;
 end;
end;

function TeeNode.Get_ThisChildrenCount: Integer;
  {-}
begin
 if (f_Node = nil) then
  Result := 0
 else
  Result := f_Node.ThisChildrenCount;
end;

end.

