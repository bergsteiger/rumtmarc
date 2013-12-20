unit evCustomTextFormatterModelPart;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Everest/evCustomTextFormatterModelPart.pas"
// �����: 30.01.2012 13:42
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::Generators::TevCustomTextFormatterModelPart
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
  evdDocumentFilter
  ;

type
 TevCustomTextFormatterModelPart = class(TevdDocumentFilter)
 protected
 // protected methods
   procedure ValidateStyles(const aPara: Ik2Tag);
 end;//TevCustomTextFormatterModelPart

implementation

uses
  evdTypes,
  ObjectSegment_Const,
  evdTextStyle_Const,
  k2Tags,
  Formula_Const,
  k2Base
  ;

// start class TevCustomTextFormatterModelPart

procedure TevCustomTextFormatterModelPart.ValidateStyles(const aPara: Ik2Tag);

 function DoIt(const anItem: Ik2Tag;
   anIndex: Integer): Boolean;
 var
  l_Layer : Ik2Tag;

  function DoIt(const anItem: Ik2Tag;
    anIndex: Integer): Boolean;
  //#UC START# *87A18881C23B__var*
  //#UC END# *87A18881C23B__var*
  begin
  //#UC START# *87A18881C23B__impl*
   Result := true;
   if (anItem.IntA[k2_tiStyle] = evd_saObject) then
    if not anItem.InheritsFrom(k2_idObjectSegment) then
     l_Layer.DeleteChild(anItem);
  //#UC END# *87A18881C23B__impl*
  end;//DoIt

 //#UC START# *4F26694603B5__var*
 //#UC END# *4F26694603B5__var*
 begin
  //#UC START# *4F26694603B5iter*
  Result := true;
  l_Layer := anItem;
  //if (l_Layer.IntA[k2_tiHandle] <> ev_slObjects) then
   l_Layer.
  //#UC END# *4F26694603B5iter*
   IterateChildrenF(L2Ik2TagIterateChildrenFAction(@DoIt));
 end;//DoIt

//#UC START# *4F2666AC03A4_4F26660203CB_var*
//#UC END# *4F2666AC03A4_4F26660203CB_var*
begin
 //#UC START# *4F2666AC03A4iter*
 if (aPara.IntA[k2_tiStyle] = evd_saObject) then
  if not aPara.InheritsFrom(k2_idFormula) then
   aPara.Attr[k2_tiStyle] := nil;
 aPara.Attr[k2_tiSegments].
 //#UC END# *4F2666AC03A4iter*
  IterateChildrenF(L2Ik2TagIterateChildrenFAction(@DoIt));
end;//TevCustomTextFormatterModelPart.ValidateStyles

end.