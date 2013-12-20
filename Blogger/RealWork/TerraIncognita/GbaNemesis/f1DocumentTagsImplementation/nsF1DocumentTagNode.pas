unit nsF1DocumentTagNode;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "f1DocumentTagsImplementation"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/f1DocumentTagsImplementation/nsF1DocumentTagNode.pas"
// �����: 17.08.2010 15:40
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 ������� ����������� ���������� �������::LegalDomain::f1DocumentTagsImplementation::DocumentTagNodes::TnsF1DocumentTagNode
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

uses
  DocumentUnit,
  nevBase,
  nsDocumentTagNodeBase,
  k2Interfaces,
  k2Prim,
  k2BaseTypes,
  l3Types,
  l3Interfaces,
  k2Base
  ;

type
 TnsF1DocumentTagNode = class(TnsDocumentTagNodeBase)
 protected
 // overridden protected methods
   function DoGetSubAtom(aProp: Tk2Prop;
    out Data: Integer): Boolean; override;
 public
 // public methods
   constructor Create(const aProvider: IDocumentTextProvider); reintroduce; overload; 
   class function Make(const aProvider: IDocumentTextProvider): InevTag; reintroduce; overload; 
     {* ��������� ������� TnsF1DocumentTagNode.Make }
   constructor Create(aHandle: Cardinal;
     const aDoc: IDocument); overload; 
   class function Make(aHandle: Cardinal;
     const aDoc: IDocument): InevTag; reintroduce; overload; 
     {* ��������� ������� TnsF1DocumentTagNode.Make$FromDescrHandle }
 end;//TnsF1DocumentTagNode

implementation

uses
  f1DocumentTagDataFromDTP,
  l3Base,
  f1DocumentTagDataFromDTPHandle,
  evdTypes,
  k2Tags
  ;

// start class TnsF1DocumentTagNode

constructor TnsF1DocumentTagNode.Create(const aProvider: IDocumentTextProvider);
//#UC START# *4C7275540230_4C6A750F024E_var*
//#UC END# *4C7275540230_4C6A750F024E_var*
begin
//#UC START# *4C7275540230_4C6A750F024E_impl*
 CreatePrim(Tf1DocumentTagDataFromDTP.Make(aProvider));
//#UC END# *4C7275540230_4C6A750F024E_impl*
end;//TnsF1DocumentTagNode.Create

class function TnsF1DocumentTagNode.Make(const aProvider: IDocumentTextProvider): InevTag;
var
 l_Inst : TnsF1DocumentTagNode;
begin
 l_Inst := Create(aProvider);
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

constructor TnsF1DocumentTagNode.Create(aHandle: Cardinal;
  const aDoc: IDocument);
//#UC START# *4D66AE430241_4C6A750F024E_var*
//#UC END# *4D66AE430241_4C6A750F024E_var*
begin
//#UC START# *4D66AE430241_4C6A750F024E_impl*
 CreatePrim(Tf1DocumentTagDataFromDTPHandle.Make(aHandle, aDoc));
//#UC END# *4D66AE430241_4C6A750F024E_impl*
end;//TnsF1DocumentTagNode.Create

class function TnsF1DocumentTagNode.Make(aHandle: Cardinal;
  const aDoc: IDocument): InevTag;
var
 l_Inst : TnsF1DocumentTagNode;
begin
 l_Inst := Create(aHandle, aDoc);
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

function TnsF1DocumentTagNode.DoGetSubAtom(aProp: Tk2Prop;
  out Data: Integer): Boolean;
//#UC START# *4C6D1D450332_4C6A750F024E_var*
//#UC END# *4C6D1D450332_4C6A750F024E_var*
begin
//#UC START# *4C6D1D450332_4C6A750F024E_impl*
 Case aProp.TagIndex of
  k2_tiInContents:
  begin
   ParseStyle;
   Data := Ord(ev_spOnlyOnSubPanel);
   Result := true;
  end;//k2_tiInContents
  else
   Result := inherited DoGetSubAtom(aProp, Data);
 end;//Case aProp.TagIndex
//#UC END# *4C6D1D450332_4C6A750F024E_impl*
end;//TnsF1DocumentTagNode.DoGetSubAtom

end.