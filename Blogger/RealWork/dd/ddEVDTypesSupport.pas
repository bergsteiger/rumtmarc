unit ddEVDTypesSupport;

interface

uses
 k2Interfaces;

 procedure StartBitmapPara(const Generator: Ik2TagGenerator);

implementation

uses
 BitmapPara_Const;

procedure StartBitmapPara(const Generator: Ik2TagGenerator);
begin
 Generator.StartChild(k2_idBitmapPara);
end;

end.
