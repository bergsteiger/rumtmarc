unit dd_lcVASNameGenerator;
{ Создание названий для постановлений ВАС }

{ $Id: dd_lcVASNameGenerator.pas,v 1.1 2011/11/02 13:03:09 narry Exp $ }

// $Log: dd_lcVASNameGenerator.pas,v $
// Revision 1.1  2011/11/02 13:03:09  narry
// Отвалились названия ВАС (296627151)
//

interface

uses
  k2Interfaces, l3Types, dd_lcTextFormatter2;

type
 Tdd_lcVASNameGenerator = class(Tdd_lcBaseFormatter)
 private
  f_IsFirstPara: Boolean;
 protected
  procedure DoStartChild(TypeID: Long); override;
  procedure DoWritePara(const aLeaf: Ik2Tag); override;
 end;

implementation

uses
  k2tags, TextPara_Const, dd_lcSourceUtils, Document_Const;

procedure Tdd_lcVASNameGenerator.DoStartChild(TypeID: Long);
begin
 inherited;
 if CurrentType.InheritsFrom(k2_idDocument) then
  f_isFirstPara:= True;
end;

procedure Tdd_lcVASNameGenerator.DoWritePara(const aLeaf: Ik2Tag);
begin
 if (Source2DossierType(f_Source) = lc_dtVAC) and aLeaf.InheritsFrom(k2_idTextPara) and f_IsFirstPara then
 begin
  Generator.AddStringAtom(k2_tiName, aLeaf.StrA[k2_tiText]);
  f_IsFirstPara:= False;
 end;
 inherited DoWritePara(aLeaf);
end;

end.
