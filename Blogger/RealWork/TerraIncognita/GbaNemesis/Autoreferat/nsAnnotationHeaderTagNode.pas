unit nsAnnotationHeaderTagNode;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Autoreferat"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/Autoreferat/nsAnnotationHeaderTagNode.pas"
// �����: 02.03.2011 12:22
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 ���������������� �������::Autoreferat::Autoreferat::Autoreferat::TnsAnnotationHeaderTagNode
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  DocumentUnit,
  nevBase,
  nsF1DocumentTagNode,
  k2Interfaces,
  k2Prim,
  k2BaseTypes,
  l3Types,
  l3Interfaces
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TnsAnnotationHeaderTagNode = class(TnsF1DocumentTagNode)
 protected
 // overridden property methods
   function pm_GetChildrenCount: Integer; override;
 protected
 // overridden protected methods
   function NodeChildrenCount: Integer; override;
 public
 // public methods
   constructor Create(anIndex: Integer;
     aLeafCount: Integer;
     const aDoc: IDocument;
     const anAnno: InevTag); reintroduce;
   class function Make(anIndex: Integer;
     aLeafCount: Integer;
     const aDoc: IDocument;
     const anAnno: InevTag): InevTag; reintroduce;
     {* ��������� ������� TnsAnnotationHeaderTagNode.Make }
 end;//TnsAnnotationHeaderTagNode
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  l3Base,
  nsAnnotationHeaderTagData,
  k2Tags
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

// start class TnsAnnotationHeaderTagNode

constructor TnsAnnotationHeaderTagNode.Create(anIndex: Integer;
  aLeafCount: Integer;
  const aDoc: IDocument;
  const anAnno: InevTag);
//#UC START# *4D6E0CA20143_4D6E0C4A001F_var*
//#UC END# *4D6E0CA20143_4D6E0C4A001F_var*
begin
//#UC START# *4D6E0CA20143_4D6E0C4A001F_impl*
 CreatePrim(TnsAnnotationHeaderTagData.Make(anIndex, aDoc, anAnno));
 //IntA[k2_tiExternalHandle] := 0;
 IntA[k2_tiAllChildrenCount] := aLeafCount;
//#UC END# *4D6E0CA20143_4D6E0C4A001F_impl*
end;//TnsAnnotationHeaderTagNode.Create

class function TnsAnnotationHeaderTagNode.Make(anIndex: Integer;
  aLeafCount: Integer;
  const aDoc: IDocument;
  const anAnno: InevTag): InevTag;
var
 l_Inst : TnsAnnotationHeaderTagNode;
begin
 l_Inst := Create(anIndex, aLeafCount, aDoc, anAnno);
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

function TnsAnnotationHeaderTagNode.NodeChildrenCount: Integer;
//#UC START# *4CED5CEF011A_4D6E0C4A001F_var*
//#UC END# *4CED5CEF011A_4D6E0C4A001F_var*
begin
//#UC START# *4CED5CEF011A_4D6E0C4A001F_impl*
 ParseStyle;
 Result := 0;
//#UC END# *4CED5CEF011A_4D6E0C4A001F_impl*
end;//TnsAnnotationHeaderTagNode.NodeChildrenCount

function TnsAnnotationHeaderTagNode.pm_GetChildrenCount: Integer;
//#UC START# *4CED5D5D01B0_4D6E0C4A001Fget_var*
//#UC END# *4CED5D5D01B0_4D6E0C4A001Fget_var*
begin
//#UC START# *4CED5D5D01B0_4D6E0C4A001Fget_impl*
 ParseStyle;
 Result := BaseChildrenCount;
//#UC END# *4CED5D5D01B0_4D6E0C4A001Fget_impl*
end;//TnsAnnotationHeaderTagNode.pm_GetChildrenCount

{$IfEnd} //not Admin AND not Monitorings

end.