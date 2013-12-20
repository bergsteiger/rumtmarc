unit evdF1HyperlinkCorrector;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "EVD"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/EVD/evdF1HyperlinkCorrector.pas"
// �����: 18.06.2010 19:15
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::EVD::Generators::TevdF1HyperlinkCorrector
//
// ������ ������������ ������ ������ �� F1
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2TagGen,
  evdInterfaces,
  evdLeafParaFilter,
  k2Interfaces
  ;

type
 TevdF1HyperlinkCorrector = class(TevdLeafParaFilter)
  {* ������ ������������ ������ ������ �� F1 }
 private
 // private fields
   f_Converter : IevdExternalDocNumberToInternal;
 protected
 // overridden protected methods
   function ParaTypeForFiltering: Integer; override;
     {* �������, ������������ ��� �������, ��� ������� ����� ����������� ���������� }
   procedure DoWritePara(const aLeaf: Ik2Tag); override;
     {* ������ ����������� ������ � ���������. ��������� ������� ��������� � ���������� ������ }
   procedure ClearFields; override;
 public
 // public methods
   class function SetTo(var theGenerator: Tk2TagGenerator;
     const aConverter: IevdExternalDocNumberToInternal): Pointer;
 end;//TevdF1HyperlinkCorrector

implementation

uses
  HyperLink_Const,
  k2Tags,
  evdTypes,
  k2Const,
  evdVer
  ;

// start class TevdF1HyperlinkCorrector

class function TevdF1HyperlinkCorrector.SetTo(var theGenerator: Tk2TagGenerator;
  const aConverter: IevdExternalDocNumberToInternal): Pointer;
//#UC START# *4C1B9990015E_4C1B8D2F039F_var*
//#UC END# *4C1B9990015E_4C1B8D2F039F_var*
begin
//#UC START# *4C1B9990015E_4C1B8D2F039F_impl*
 Result := inherited SetTo(theGenerator);
 (theGenerator As TevdF1HyperlinkCorrector).f_Converter := aConverter;
//#UC END# *4C1B9990015E_4C1B8D2F039F_impl*
end;//TevdF1HyperlinkCorrector.SetTo

function TevdF1HyperlinkCorrector.ParaTypeForFiltering: Integer;
//#UC START# *49E488070386_4C1B8D2F039F_var*
//#UC END# *49E488070386_4C1B8D2F039F_var*
begin
//#UC START# *49E488070386_4C1B8D2F039F_impl*
 Result := k2_idEmpty;
 if (CurrentVersion > evVer20Step) then
  if (CurrentVersion mod evFormatCurVersionStep = 1) then
   Result := k2_idHyperlink;
//#UC END# *49E488070386_4C1B8D2F039F_impl*
end;//TevdF1HyperlinkCorrector.ParaTypeForFiltering

procedure TevdF1HyperlinkCorrector.DoWritePara(const aLeaf: Ik2Tag);
//#UC START# *49E4883E0176_4C1B8D2F039F_var*
var
 l_Index : Integer;
 l_DocID : Integer;
//#UC END# *49E4883E0176_4C1B8D2F039F_var*
begin
//#UC START# *49E4883E0176_4C1B8D2F039F_impl*
 if (CurrentVersion > evVer20Step) then
  if (CurrentVersion mod evFormatCurVersionStep = 1) then
  begin
   for l_Index := 0 to aLeaf.ChildrenCount - 1 do
    with aLeaf.Child[l_Index] do
    begin
     l_DocID := IntA[k2_tiDocID];
     if (l_DocID > 0) then
     begin
      if (l_DocID > 100000) then
      begin
       l_DocID := l_DocID - 100000;
       if (f_Converter <> nil) then
        l_DocID := f_Converter.ConvertExternalDocNumberToInternal(l_DocID);
       IntA[k2_tiDocID] := l_DocID;
      end//l_DocID > 100000
      else
       Assert(false, '����� ��������� � ������ �� F1 ������ 100000');
     end;//l_DocID > 0
    end;//with aLeaf.Child[l_Index]
  end;//CurrentVersion mod evFormatCurVersionStep = 1
 inherited;
//#UC END# *49E4883E0176_4C1B8D2F039F_impl*
end;//TevdF1HyperlinkCorrector.DoWritePara

procedure TevdF1HyperlinkCorrector.ClearFields;
 {-}
begin
 f_Converter := nil;
 inherited;
end;//TevdF1HyperlinkCorrector.ClearFields

end.