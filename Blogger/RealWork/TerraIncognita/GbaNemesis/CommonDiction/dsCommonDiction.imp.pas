{$IfNDef dsCommonDiction_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "CommonDiction"
// �����: �������� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/CommonDiction/dsCommonDiction.imp.pas"
// �����: 2008/03/05 08:04:14
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ViewAreaControllerImp::Class>> F1 Core::Common::CommonDiction::CommonDiction::dsCommonDiction
//
// ���������� �������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define dsCommonDiction_imp}
{$If not defined(Admin) AND not defined(Monitorings)}
 {$Include w:\garant6x\implementation\Garant\GbaNemesis\Tree\dsSimpleTree.imp.pas}
 _dsCommonDiction_ = {abstract vac} class(_dsSimpleTree_, IdsCommonDiction)
  {* ���������� ������� }
 private
 // private fields
   ucc_BaseDocument : IsdsBaseDocument;
   ucc_CommonDiction : IsdsCommonDiction;
   f_Current : INodeBase;
    {* ���� ��� �������� Current}
 protected

  procedure InitRefs(const aDS: IvcmUseCaseController); override;
  procedure ClearRefs; override;
 protected
 // realized methods
   function pm_GetContext: Il3CString;
   function MakeCurrentIndex(const aTree: Il3SimpleTree): Integer;
     {* �������� ������� ����. �������, ��� ���������� ������������? }
 protected
 // overridden protected methods
   procedure DoCurrentChanged(const aNode: Il3SimpleNode); override;
     {* �������� �������. }
   {$If not defined(NoVCM)}
   procedure FormSetDataChanged; override;
   {$IfEnd} //not NoVCM
   procedure ClearFields; override;
 protected
 // protected methods
   function MakeDocInfoForCurrentChanged(const aDoc: IDocument): IdeDocInfo; virtual; abstract;
   procedure DictionNotify(const aNotifier: IbsCommonDictionListener);
   procedure AfterChangeCurrent; virtual;
   procedure ChangeCurrent(const aNode: Il3SimpleNode);
   function ForceChangeInCurrentChanged: Boolean; virtual;
 private
 // private properties
   property Current: INodeBase
     read f_Current
     write f_Current;
     {* ������� ���� ������ ���������� }
 end;//_dsCommonDiction_
{$IfEnd} //not Admin AND not Monitorings

{$Else dsCommonDiction_imp}

{$If not defined(Admin) AND not defined(Monitorings)}


{$Include w:\garant6x\implementation\Garant\GbaNemesis\Tree\dsSimpleTree.imp.pas}

// start class _dsCommonDiction_

procedure _dsCommonDiction_.DictionNotify(const aNotifier: IbsCommonDictionListener);
//#UC START# *492545420326_4925449A0296_var*
//#UC END# *492545420326_4925449A0296_var*
begin
//#UC START# *492545420326_4925449A0296_impl*
 with aNotifier do
 begin
  Current := ucc_CommonDiction.CurrentNode;
  CurrentUpdated;
 end;//with l_Listener do
//#UC END# *492545420326_4925449A0296_impl*
end;//_dsCommonDiction_.DictionNotify

procedure _dsCommonDiction_.AfterChangeCurrent;
//#UC START# *492546330316_4925449A0296_var*
//#UC END# *492546330316_4925449A0296_var*
begin
//#UC START# *492546330316_4925449A0296_impl*
 ucc_CommonDiction.CurrentNode := Current;
//#UC END# *492546330316_4925449A0296_impl*
end;//_dsCommonDiction_.AfterChangeCurrent

procedure _dsCommonDiction_.ChangeCurrent(const aNode: Il3SimpleNode);
//#UC START# *4925465102FB_4925449A0296_var*
var
 l_Node: INodeBase;
//#UC END# *4925465102FB_4925449A0296_var*
begin
//#UC START# *4925465102FB_4925449A0296_impl*
 if Supports(aNode, INodeBase, l_Node) then
 try
  f_Current := nil;
  l_Node.GetFrozenNode(f_Current);
 finally
  l_Node := nil;
 end;{try..finally}
//#UC END# *4925465102FB_4925449A0296_impl*
end;//_dsCommonDiction_.ChangeCurrent

function _dsCommonDiction_.ForceChangeInCurrentChanged: Boolean;
//#UC START# *4A9E6599035A_4925449A0296_var*
//#UC END# *4A9E6599035A_4925449A0296_var*
begin
//#UC START# *4A9E6599035A_4925449A0296_impl*
 Result := false;
//#UC END# *4A9E6599035A_4925449A0296_impl*
end;//_dsCommonDiction_.ForceChangeInCurrentChanged

function _dsCommonDiction_.pm_GetContext: Il3CString;
//#UC START# *492541AB020E_4925449A0296get_var*
var
 l_Data: IdeCommonDiction;
//#UC END# *492541AB020E_4925449A0296get_var*
begin
//#UC START# *492541AB020E_4925449A0296get_impl*
 l_Data := ucc_CommonDiction.DeCommonDiction;
 if (l_Data <> nil) then
  Result := l_Data.Context
 else
  Result := nil
//#UC END# *492541AB020E_4925449A0296get_impl*
end;//_dsCommonDiction_.pm_GetContext

function _dsCommonDiction_.MakeCurrentIndex(const aTree: Il3SimpleTree): Integer;
//#UC START# *492541BD01F3_4925449A0296_var*
var
 l_Root       : INodeBase;
 l_EntityBase : IEntityBase;
//#UC END# *492541BD01F3_4925449A0296_var*
begin
//#UC START# *492541BD01F3_4925449A0296_impl*
 Result := -1;
 if Supports(aTree.RootNode, INodeBase, l_Root) then
 try
  try
   if Assigned(Current) then
   begin
    Result := l_Root.GetVisibleDelta(Current);
    if not aTree.ShowRoot then
     Dec(Result);
   end//Assigned(Current)
   else
   if Supports(ucc_CommonDiction.DeCommonDiction.Doc, IEntityBase, l_EntityBase) then
    try
     Result := l_Root.GetVisibleDeltaByEntity(l_EntityBase);
    finally
     l_EntityBase := nil;
    end;//try..finally
  except
   on ENotFound do ; // ������ �� �����, ������ -1
  end;//try..finally
 finally
  l_Root := nil;
 end;//try..finally
//#UC END# *492541BD01F3_4925449A0296_impl*
end;//_dsCommonDiction_.MakeCurrentIndex

procedure _dsCommonDiction_.DoCurrentChanged(const aNode: Il3SimpleNode);
//#UC START# *47F0C1BF0314_4925449A0296_var*
var
 l_Node   : INodeBase;
 l_Entity : IEntityBase;
 l_Doc    : IDocument;
//#UC END# *47F0C1BF0314_4925449A0296_var*
begin
//#UC START# *47F0C1BF0314_4925449A0296_impl*
 if Supports(aNode, INodeBase, l_Node) and
    ((not l_Node.IsSameNode(Current)) or ForceChangeInCurrentChanged)then
 try
  l_Node.GetEntity(l_Entity);
  if Supports(l_Entity, IDocument, l_Doc) then
  try
   if (ucc_BaseDocument <> nil) then
   begin
    ChangeCurrent(aNode);
    ucc_BaseDocument.ChangeDocument(MakeDocInfoForCurrentChanged(l_Doc));
    AfterChangeCurrent;
   end;//ucc_BaseDocument <> nil
  finally
   l_Doc := nil;
  end;//try..finally
 finally
  l_Node := nil;
 end;//try..finally
//#UC END# *47F0C1BF0314_4925449A0296_impl*
end;//_dsCommonDiction_.DoCurrentChanged

{$If not defined(NoVCM)}
procedure _dsCommonDiction_.FormSetDataChanged;
//#UC START# *491482DC0216_4925449A0296_var*

  procedure lp_NotifyCurrentChanged;
  var
   l_Index    : Integer;
   l_Listener : IbsCommonDictionListener;
   l_Item     : IUnknown;
  begin
   if (NotifiedObjList <> nil) and (NotifiedObjList.Count > 0) then
    for l_Index := 0 to Pred(NotifiedObjList.Count) do
    begin
     l_Item := NotifiedObjList.Items[l_Index];
     if Supports(l_Item, IbsCommonDictionListener, l_Listener) and
       (l_Item = l_Listener) then
      DictionNotify(l_Listener);
    end;//if (NotifiedObjList <> nil)
  end;//lp_NotifyCurrentChanged

//#UC END# *491482DC0216_4925449A0296_var*
begin
//#UC START# *491482DC0216_4925449A0296_impl*
 inherited;
 lp_NotifyCurrentChanged;
//#UC END# *491482DC0216_4925449A0296_impl*
end;//_dsCommonDiction_.FormSetDataChanged
{$IfEnd} //not NoVCM

procedure _dsCommonDiction_.ClearFields;
 {-}
begin
 Current := nil;
 inherited;
end;//_dsCommonDiction_.ClearFields

procedure _dsCommonDiction_.InitRefs(const aDS: IvcmUseCaseController);
begin
 inherited;
 Supports(aDS, IsdsBaseDocument, ucc_BaseDocument);
 Supports(aDS, IsdsCommonDiction, ucc_CommonDiction);
end;

procedure _dsCommonDiction_.ClearRefs;
begin
 inherited;
 ucc_BaseDocument := nil;
 ucc_CommonDiction := nil;
end;

{$IfEnd} //not Admin AND not Monitorings

{$EndIf dsCommonDiction_imp}
