unit nsNativeCommentPara;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "f1DocumentTagsImplementation"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/f1DocumentTagsImplementation/nsNativeCommentPara.pas"
// �����: 24.11.2010 19:32
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 ������� ����������� ���������� �������::LegalDomain::f1DocumentTagsImplementation::TagDataProviders::TnsNativeCommentPara
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

uses
  l3Interfaces,
  nevBase,
  CommentPara_Const,
  l3ProtoObject,
  F1TagDataProviderInterface,
  k2Interfaces,
  k2Prim,
  k2BaseTypes,
  l3Types,
  l3IID,
  evNative_Schema
  ;

type
 _nsNativePara_Parent_ = CommentParaTagClass;
 {$Include ..\f1DocumentTagsImplementation\nsNativePara.imp.pas}
 _StyleParser_Parent_ = _nsNativePara_;
 {$Include ..\f1DocumentTagsImplementation\StyleParser.imp.pas}
 TnsNativeCommentPara = class(_StyleParser_)
 private
 // private fields
   f_State : TnsNodeStates;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* ������� ������� ����� �������. }
   procedure InitFields; override;
   function COMQueryInterface(const IID: Tl3GUID;
    out Obj): Tl3HResult; override;
     {* ���������� ������� ���������� }
 public
 // public methods
   constructor CreateFromStyle(const aStyle: IStream;
     const anOwner: InevTag);
   class function MakeFromStyle(const aStyle: IStream;
     const anOwner: InevTag): InevTag; reintroduce;
     {* ��������� ������� TnsNativeCommentPara.MakeFromStyle }
 end;//TnsNativeCommentPara

implementation

uses
  l3Base,
  SysUtils,
  nevTools,
  DocumentUnit,
  evParaTools,
  LeafParaDecorationsHolder_Const,
  k2Facade,
  evdVer,
  k2Const,
  nsStyleParser
  ;

type _Instance_R_ = TnsNativeCommentPara;

{$Include ..\f1DocumentTagsImplementation\nsNativePara.imp.pas}


{$Include ..\f1DocumentTagsImplementation\StyleParser.imp.pas}

type
  TnsNativeCommentParaSink = class(Tl3ProtoObject, If1CommentSink)
  private
  // private fields
   f_Comment : TnsNativeCommentPara;
  protected
  // realized methods
   function Get_State: TnsNodeStates;
   procedure Set_State(aValue: TnsNodeStates);
   procedure Store(const aStream: IEVDStream);
  public
  // public methods
   constructor Create(aComment: TnsNativeCommentPara); reintroduce;
   class function Make(aComment: TnsNativeCommentPara): If1CommentSink; reintroduce;
     {* ��������� ������� TnsNativeCommentParaSink.Make }
  end;//TnsNativeCommentParaSink

// start class TnsNativeCommentParaSink

constructor TnsNativeCommentParaSink.Create(aComment: TnsNativeCommentPara);
//#UC START# *4CEE3A6702A7_4CEE3A2502C0_var*
//#UC END# *4CEE3A6702A7_4CEE3A2502C0_var*
begin
//#UC START# *4CEE3A6702A7_4CEE3A2502C0_impl*
 inherited Create;
 f_Comment := aComment;
//#UC END# *4CEE3A6702A7_4CEE3A2502C0_impl*
end;//TnsNativeCommentParaSink.Create

class function TnsNativeCommentParaSink.Make(aComment: TnsNativeCommentPara): If1CommentSink;
var
 l_Inst : TnsNativeCommentParaSink;
begin
 l_Inst := Create(aComment);
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

function TnsNativeCommentParaSink.Get_State: TnsNodeStates;
//#UC START# *4CEE38DA0365_4CEE3A2502C0get_var*
//#UC END# *4CEE38DA0365_4CEE3A2502C0get_var*
begin
//#UC START# *4CEE38DA0365_4CEE3A2502C0get_impl*
 Result := f_Comment.f_State;
//#UC END# *4CEE38DA0365_4CEE3A2502C0get_impl*
end;//TnsNativeCommentParaSink.Get_State

procedure TnsNativeCommentParaSink.Set_State(aValue: TnsNodeStates);
//#UC START# *4CEE38DA0365_4CEE3A2502C0set_var*
//#UC END# *4CEE38DA0365_4CEE3A2502C0set_var*
begin
//#UC START# *4CEE38DA0365_4CEE3A2502C0set_impl*
 f_Comment.f_State := aValue;
//#UC END# *4CEE38DA0365_4CEE3A2502C0set_impl*
end;//TnsNativeCommentParaSink.Set_State

procedure TnsNativeCommentParaSink.Store(const aStream: IEVDStream);
//#UC START# *4CEE3904013D_4CEE3A2502C0_var*
var
 l_Para  : InevPara;
 l_Prev  : InevPara;
 l_Owner : InevPara;
 l_Prov  : If1TagDataProvider;
 //l_Cont  : InevDocumentContainer;
 //l_Op    : InevOp;
//#UC END# *4CEE3904013D_4CEE3A2502C0_var*
begin
//#UC START# *4CEE3904013D_4CEE3A2502C0_impl*
 if not f_Comment.QT(InevPara, l_Para) then
  Assert(false);
 if not Ik2Tag(f_Comment).Owner.QT(InevPara, l_Owner) then
  Assert(false);
 l_Prev := l_Para.Prev;
 if (l_Prev = nil) OR not l_Prev.IsValid then
 // http://mdp.garant.ru/pages/viewpage.action?pageId=265391680
 // - �������� ��� ��� �� ������� � ���������� Undo
 // !!! � ����� ���� ��� ���� � ���, ��� � Undo ������ ������� �� ��� ������
 // �� ����������� ����������� ������������ � k2_idLeafParaDecorationsHolder
 begin
  Assert(l_Owner.InheritsFrom(k2_idLeafParaDecorationsHolder));
  Assert(l_Owner.PID < 0);
  // - ���� ��������� ��� �����
  Exit;
(*  l_Prev := evPrevOverallPara(l_Para);
  Assert((l_Prev <> nil) AND l_Prev.IsValid);
  if not Supports(l_Prev.Box, If1TagDataProvider, l_Prov) then
   Assert(false);
  Assert(l_Para.PID = 0);
  l_Cont := l_Owner.DocumentContainer;
  Assert(l_Cont <> nil);
  l_Op := l_Cont.Processor.StartOp;
  try
   Assert(l_Op.InUndo);
   l_Op.CheckOff;
   try
    l_Owner.Edit.Delete(false, l_Op);
   finally
    l_Op.CheckOn;
   end;//try..finally
  finally
   l_Op := nil;
  end;//try..finally
  l_Prov.wStyle := nil;
  Exit;*)
 end//l_Para = nil
 else
 begin
  Assert((l_Prev <> nil) AND l_Prev.IsValid);
  if not Supports(l_Prev.Box, If1TagDataProvider, l_Prov) then
   Assert(false);
  l_Prov.wStyle := aStream;
 end;//l_Para = nil
//#UC END# *4CEE3904013D_4CEE3A2502C0_impl*
end;//TnsNativeCommentParaSink.Store

constructor TnsNativeCommentPara.CreateFromStyle(const aStyle: IStream;
  const anOwner: InevTag);
//#UC START# *4CEFB6B202FF_4CED3DF702F9_var*
//#UC END# *4CEFB6B202FF_4CED3DF702F9_var*
begin
//#UC START# *4CEFB6B202FF_4CED3DF702F9_impl*
 Create(k2_idCommentPara);
 Include(f_State, ns_nsNotNeedSynchronizeWithTree);
 Exclude(f_State, ns_nsChanged);
 pm_SetTagOwner(anOwner);
 DoDoParseStyle(aStyle);
 Include(f_State, ns_nsStyleParsed);
//#UC END# *4CEFB6B202FF_4CED3DF702F9_impl*
end;//TnsNativeCommentPara.CreateFromStyle

class function TnsNativeCommentPara.MakeFromStyle(const aStyle: IStream;
  const anOwner: InevTag): InevTag;
var
 l_Inst : TnsNativeCommentPara;
begin
 l_Inst := CreateFromStyle(aStyle, anOwner);
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

procedure TnsNativeCommentPara.Cleanup;
//#UC START# *479731C50290_4CED3DF702F9_var*
//#UC END# *479731C50290_4CED3DF702F9_var*
begin
//#UC START# *479731C50290_4CED3DF702F9_impl*
 f_State := [];
 inherited;
//#UC END# *479731C50290_4CED3DF702F9_impl*
end;//TnsNativeCommentPara.Cleanup

procedure TnsNativeCommentPara.InitFields;
//#UC START# *47A042E100E2_4CED3DF702F9_var*
//#UC END# *47A042E100E2_4CED3DF702F9_var*
begin
//#UC START# *47A042E100E2_4CED3DF702F9_impl*
 inherited;
 Include(f_State, ns_nsNotNeedSynchronizeWithTree);
//#UC END# *47A042E100E2_4CED3DF702F9_impl*
end;//TnsNativeCommentPara.InitFields

function TnsNativeCommentPara.COMQueryInterface(const IID: Tl3GUID;
  out Obj): Tl3HResult;
//#UC START# *4A60B23E00C3_4CED3DF702F9_var*
//#UC END# *4A60B23E00C3_4CED3DF702F9_var*
begin
//#UC START# *4A60B23E00C3_4CED3DF702F9_impl*
 if IID.EQ(If1CommentSink) then
 begin
  If1CommentSink(Obj) := TnsNativeCommentParaSink.Make(Self);
  Result.SetOk;
 end//IID.EQ(If1CommentSink)
 else
  Result := inherited COMQueryInterface(IID, Obj);
//#UC END# *4A60B23E00C3_4CED3DF702F9_impl*
end;//TnsNativeCommentPara.COMQueryInterface

end.