unit evQueryCardProcessor;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// �����: ������ �.�.
// ������: "w:/common/components/gui/Garant/Everest/qf/evQueryCardProcessor.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::qf::TevQueryCardProcessor
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\common\components\gui\Garant\Everest\evDefine.inc}

interface

uses
  nevBase,
  evEditorWindowProcessor,
  l3Types
  ;

type
 TevQueryCardProcessor = class(TevEditorWindowProcessor)
 private
 // private methods
   function NeedAdd(const Parent: InevTag;
    const Child: InevTag;
    var aIndex: Integer): Boolean; virtual;
 protected
 // overridden protected methods
   procedure DoCheckParaOp(const aParent: InevTag;
    var aChild: InevTag;
    anOp: Tl3Operation;
    anIndex: TnevParaIndex); override;
     {* ��������� �������� � ���������� }
   procedure DoAfterUndoRedo; override;
   procedure DoParaOp(const Parent: InevTag;
    const Child: InevTag;
    Op: Tl3Operation); override;
     {* ��������� �������� � ���������� }
 end;//TevQueryCardProcessor

implementation

uses
  SysUtils,
  evControlParaConst,
  k2Except,
  k2Tags,
  ReqRow_Const,
  ReqCell_Const,
  nevTools
  ;

// start class TevQueryCardProcessor

function TevQueryCardProcessor.NeedAdd(const Parent: InevTag;
  const Child: InevTag;
  var aIndex: Integer): Boolean;
//#UC START# *48E4CB1A03B7_48DBA722010B_var*
//#UC END# *48E4CB1A03B7_48DBA722010B_var*
begin
//#UC START# *48E4CB1A03B7_48DBA722010B_impl*
 aIndex := Parent.IndexOfChild(Child);
 if aIndex = 0 then
  Result := False
 else
  if aIndex = Parent.ChildrenCount - 1 then
   Result := True
  else
   if Parent.Child[aIndex - 1].StrA[k2_tiReqID] <> Child.StrA[k2_tiReqID] then
    Result := False
   else
    Result := Parent.Child[aIndex + 1].StrA[k2_tiReqID] <> Child.StrA[k2_tiReqID];
 if Result then
  Dec(aIndex)
 else
  Inc(aIndex);
//#UC END# *48E4CB1A03B7_48DBA722010B_impl*
end;//TevQueryCardProcessor.NeedAdd

procedure TevQueryCardProcessor.DoCheckParaOp(const aParent: InevTag;
  var aChild: InevTag;
  anOp: Tl3Operation;
  anIndex: TnevParaIndex);
//#UC START# *48E4CB990000_48DBA722010B_var*
var
 l_Container: InevQueryDocumentContainer;
//#UC END# *48E4CB990000_48DBA722010B_var*
begin
//#UC START# *48E4CB990000_48DBA722010B_impl*
 if Supports(Document, InevQueryDocumentContainer, l_Container) then
  case anOp of
   l3_opInsert:
      if aChild.InheritsFrom(k2_idReqRow) or aParent.InheritsFrom(k2_idReqRow)
        or aParent.InheritsFrom(k2_idReqCell) then
       //������ �������� - ����� ��������� ����������� �������� ������ ���� �
       //���� � �� �� ������ � ���� ������ aChild - k2_idTextPara, ��� �� ����
       //������. :-(
       if not InUndo and not l_Container.ModelNotify.CanInsertPara then
        raise Ek2CannotAddChild.Create('������ �������� ����� ������� � ��!');
  end;
 inherited;
//#UC END# *48E4CB990000_48DBA722010B_impl*
end;//TevQueryCardProcessor.DoCheckParaOp

procedure TevQueryCardProcessor.DoAfterUndoRedo;
//#UC START# *48E4CBD6038B_48DBA722010B_var*
var
 l_Container: InevQueryDocumentContainer;
//#UC END# *48E4CBD6038B_48DBA722010B_var*
begin
//#UC START# *48E4CBD6038B_48DBA722010B_impl*
 if Supports(Document, InevQueryDocumentContainer, l_Container) then
  l_Container.ModelNotify.UpdateState;
//#UC END# *48E4CBD6038B_48DBA722010B_impl*
end;//TevQueryCardProcessor.DoAfterUndoRedo

procedure TevQueryCardProcessor.DoParaOp(const Parent: InevTag;
  const Child: InevTag;
  Op: Tl3Operation);
//#UC START# *48E4CBE8018B_48DBA722010B_var*
var
 l_Container : InevQueryDocumentContainer;
 l_Index     : Integer;
 l_Add       : Boolean;
//#UC END# *48E4CBE8018B_48DBA722010B_var*
begin
//#UC START# *48E4CBE8018B_48DBA722010B_impl*
 inherited;
 if InUndo and Child.InheritsFrom(k2_idReqRow) and
  Supports(Document, InevQueryDocumentContainer, l_Container) then
   case Op of
    l3_opInsert: begin
       l_Add := NeedAdd(Parent, Child, l_Index);
       l_Container.ModelNotify.InsertOnUndo(Parent.Child[l_Index], Child, l_Add);
      end;
    l3_opDelete:
       l_Container.ModelNotify.DeleteOnUndo(Child);
    end;
//#UC END# *48E4CBE8018B_48DBA722010B_impl*
end;//TevQueryCardProcessor.DoParaOp

end.