unit evdStylesRes;

interface

uses
  SysUtils, Classes, ImgList, Controls, vtPngImgList;

type
  TevdStyles_Res = class(TDataModule)
    AACImages: TImageList;
    StylesImages: TvtNonFixedPngImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function evdStyles_Res: TevdStyles_Res;

implementation

uses
  Forms,
  vtPngImgListUtils
  ;

var
  g_evdStylesRes: TevdStyles_Res = nil;

function evdStyles_Res: TevdStyles_Res;
begin
 if (g_evdStylesRes = nil) then
  Application.CreateForm(TevdStyles_Res, g_evdStylesRes);
 Result := g_evdStylesRes;
end;

{$R *.dfm}

initialization
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\EVD\evdStylesRes.pas initialization enter'); {$EndIf}
 AddImageListCreator(@evdStyles_Res);
 
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\EVD\evdStylesRes.pas initialization leave'); {$EndIf}
end.
