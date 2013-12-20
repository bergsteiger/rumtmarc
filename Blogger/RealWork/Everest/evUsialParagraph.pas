unit evUsialParagraph;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Everest/evUsialParagraph.pas"
// �����: 09.04.2010 18:49
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::ParaUtils::TevUsialParagraph
//
// ���������� IedParagraph ��� �������� ���������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2Interfaces,
  evEditorInterfaces,
  k2TagTools,
  k2Prim
  ;

type
 TevUsialParagraph = class(Tk2ProcessorTagTool, IedParagraph)
  {* ���������� IedParagraph ��� �������� ��������� }
 protected
 // realized methods
   function Get_Frame: IedFrame;
 public
 // public methods
   class function Make(const aTag: Ik2Tag;
     const aProcessor: Ik2Processor): IedParagraph; reintroduce;
     {* ��������� ������� TevUsialParagraph.Make }
 end;//TevUsialParagraph

implementation

uses
  evParaFrame
  ;

// start class TevUsialParagraph

class function TevUsialParagraph.Make(const aTag: Ik2Tag;
  const aProcessor: Ik2Processor): IedParagraph;
var
 l_Inst : TevUsialParagraph;
begin
 l_Inst := Create(aTag, aProcessor);
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

function TevUsialParagraph.Get_Frame: IedFrame;
//#UC START# *4BBC89F8009C_4BBF3E28035Eget_var*
//#UC END# *4BBC89F8009C_4BBF3E28035Eget_var*
begin
//#UC START# *4BBC89F8009C_4BBF3E28035Eget_impl*
 Pointer(Result) := Pointer(IedFrame(TevUsialParaFrame.Create(TagInst, Processor)));
//#UC END# *4BBC89F8009C_4BBF3E28035Eget_impl*
end;//TevUsialParagraph.Get_Frame

end.