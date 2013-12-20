unit vtCheckBox;

{ $Id: vtCheckBox.pas,v 1.6 2013/06/24 10:55:38 fireton Exp $ }

// $Log: vtCheckBox.pas,v $
// Revision 1.6  2013/06/24 10:55:38  fireton
// - K 462555879
//
// Revision 1.5  2013/04/26 16:21:34  lulin
// - правим под XE3.
//
// Revision 1.4  2013/04/25 14:22:38  lulin
// - портируем.
//
// Revision 1.3  2013/04/25 13:20:26  morozov
// {$RequestLink:363571639}
//
// Revision 1.2  2009/01/26 13:55:51  lulin
// - поправлено форматирование.
//
// Revision 1.1  2009/01/26 12:50:51  fireton
// - TvtCheckBox
//

interface

{$Include vtDefine.inc}

uses
 Windows,
 Messages,
 Classes,
 Controls,
 StdCtrls,
 eeCheckBox
 ;

type
 _UnicodeButtonControlParent_ = TeeCheckBox;
 {$Include w:\common\components\gui\Garant\VT\vtUnicodeButtonControl.inc}
 TvtCheckBox = class(_UnicodeButtonControl_)
 protected
  {$IfNDef XE}
  procedure CreateParams(var Params: TCreateParams); override;
  procedure CreateWnd; override;
  {$EndIf  XE}
//  function IsCaptionStored : boolean;
 end;//TvtCheckBox

implementation
uses
 Graphics,
 SysUtils,
 CommCtrl,
 Consts;

(*type
  THackLink = class(TControlActionLink)
  end;//THackLink*)

{ TvtCheckBox }
{$Include w:\common\components\gui\Garant\VT\vtUnicodeButtonControl.inc}

{$IfNDef XE}
procedure TvtCheckBox.CreateParams(var Params: TCreateParams);
const
 lc_Alignments: array[Boolean, TLeftRight] of DWORD =
  ((BS_LEFTTEXT, 0), (0, BS_LEFTTEXT));
begin
 inherited CreateParams(Params);
 CreateSubClass(Params, 'BUTTON');
 with Params do
 begin
  Style := Style or BS_3STATE or
   lc_Alignments[UseRightToLeftAlignment, Alignment];
  WindowClass.style := WindowClass.style and not (CS_HREDRAW or CS_VREDRAW);
 end;
end;

procedure TvtCheckBox.CreateWnd;
begin
  inherited CreateWnd;
  SendMessage(Handle, BM_SETCHECK, Integer(State), 0);
end;

{$EndIf  XE}

(*function TvtCheckBox.IsCaptionStored: boolean;
begin
 Result := (f_Caption <> '') AND
           ((ActionLink = nil) or not THackLink(ActionLink).IsCaptionLinked);
end;*)

end.
