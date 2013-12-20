unit nsNewCachableNode;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Data"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/Data/Tree/nsNewCachableNode.pas"
// Начат: 21.10.2009 16:42
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Базовые определения предметной области::LegalDomain::Data::OldTree::TnsNewCachableNode
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

uses
  DynamicTreeUnit,
  l3Tree_TLB,
  l3Nodes,
  l3Interfaces,
  l3TreeInterfaces,
  l3IID
  ;

type
 TnsNewCachableNode = class(Tl3PlaceNode)
 private
 // private fields
   f_AdapterNode : INodeBase;
    {* Поле для свойства AdapterNode}
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   function GetAsPCharLen: Tl3WString; override;
   function COMQueryInterface(const IID: Tl3GUID;
    out Obj): Tl3HResult; override;
     {* Реализация запроса интерфейса }
   function IsSame(const aNode: Il3SimpleNode): Boolean; override;
   function GetLevel: Integer; override;
   procedure ClearFields; override;
 public
 // public methods
   constructor Create(const aNode: INodeBase); reintroduce;
   class function Make(const aNode: INodeBase): Il3Node; reintroduce;
     {* Сигнатура фабрики TnsNewCachableNode.Make }
 protected
 // protected properties
   property AdapterNode: INodeBase
     read f_AdapterNode;
 end;//TnsNewCachableNode

implementation

uses
  nsTypes,
  IOUnit,
  SysUtils,
  l3InterfacesMisc
  ;

// start class TnsNewCachableNode

constructor TnsNewCachableNode.Create(const aNode: INodeBase);
//#UC START# *4AE058130153_490AF9B0039B_var*
//#UC END# *4AE058130153_490AF9B0039B_var*
begin
//#UC START# *4AE058130153_490AF9B0039B_impl*
 inherited Create;
 f_AdapterNode := aNode;
//#UC END# *4AE058130153_490AF9B0039B_impl*
end;//TnsNewCachableNode.Create

class function TnsNewCachableNode.Make(const aNode: INodeBase): Il3Node;
var
 l_Inst : TnsNewCachableNode;
begin
 l_Inst := Create(aNode);
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

procedure TnsNewCachableNode.Cleanup;
//#UC START# *479731C50290_490AF9B0039B_var*
//#UC END# *479731C50290_490AF9B0039B_var*
begin
//#UC START# *479731C50290_490AF9B0039B_impl*
 f_AdapterNode := nil;
 inherited;
//#UC END# *479731C50290_490AF9B0039B_impl*
end;//TnsNewCachableNode.Cleanup

function TnsNewCachableNode.GetAsPCharLen: Tl3WString;
//#UC START# *47A869BB02DE_490AF9B0039B_var*
var
 l_Str: IString;
//#UC END# *47A869BB02DE_490AF9B0039B_var*
begin
//#UC START# *47A869BB02DE_490AF9B0039B_impl*
 if (f_AdapterNode <> nil) then
  f_AdapterNode.GetCaption(l_Str)
 else
  l_Str := nil;
 Result := nsWStr(l_Str);
//#UC END# *47A869BB02DE_490AF9B0039B_impl*
end;//TnsNewCachableNode.GetAsPCharLen

function TnsNewCachableNode.COMQueryInterface(const IID: Tl3GUID;
  out Obj): Tl3HResult;
//#UC START# *4A60B23E00C3_490AF9B0039B_var*
//#UC END# *4A60B23E00C3_490AF9B0039B_var*
begin
//#UC START# *4A60B23E00C3_490AF9B0039B_impl*
 Result := inherited COMQueryInterface(IID, Obj);
 if Result.Fail then
 begin
  if (f_AdapterNode = nil) then
   Result.SetNOINTERFACE
  else
   Result := Tl3HResult_C(f_AdapterNode.QueryInterface(IID.IID, Obj));
 end;//l3IFail(Result)
//#UC END# *4A60B23E00C3_490AF9B0039B_impl*
end;//TnsNewCachableNode.COMQueryInterface

function TnsNewCachableNode.IsSame(const aNode: Il3SimpleNode): Boolean;
//#UC START# *4ADEE0F60264_490AF9B0039B_var*
Var
 l_AdapterNode: INodeBase;
//#UC END# *4ADEE0F60264_490AF9B0039B_var*
begin
//#UC START# *4ADEE0F60264_490AF9B0039B_impl*
 Result := l3IEQ(Self, aNode);
 if not Result then begin
  if Supports(aNode, INodeBase, l_AdapterNode) then
   try
    Result := l_AdapterNode.IsSameNode(f_AdapterNode);
   finally
    l_AdapterNode := nil;
   end;//try..finally
 end;//not Result
//#UC END# *4ADEE0F60264_490AF9B0039B_impl*
end;//TnsNewCachableNode.IsSame

function TnsNewCachableNode.GetLevel: Integer;
//#UC START# *4ADF00F4023A_490AF9B0039B_var*
//#UC END# *4ADF00F4023A_490AF9B0039B_var*
begin
//#UC START# *4ADF00F4023A_490AF9B0039B_impl*
 if (f_AdapterNode = nil) then
  Result := 0
 else
  Result := f_AdapterNode.GetLevel; 
//#UC END# *4ADF00F4023A_490AF9B0039B_impl*
end;//TnsNewCachableNode.GetLevel

procedure TnsNewCachableNode.ClearFields;
 {-}
begin
 f_AdapterNode := nil;
 inherited;
end;//TnsNewCachableNode.ClearFields

end.