unit FlashUtils;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Common/FlashUtils.pas"
// �����: 29.01.2009 15:41
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> F1 Core::Common::View::Common::FlashUtils
//
// ������� ��� ������ � Flash-�������
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
  Controls,
  vtShockwaveFlashEx
  ;

function NsCanMakeFlashActiveX: Boolean;
   {* ��������� - �������� �� ������� ��������� ��� ������ flash-������ }
function NsMakeFlashActiveX(aParent: TWinControl;
  aForSplash: Boolean;
  out aFlash: TvtShockwaveFlashEx): Boolean;
   {* ������ ��������� ��� ������ flash-������ }
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  SysUtils,
  ComObj
  ;

// unit methods

function NsCanMakeFlashActiveX: Boolean;
//#UC START# *4981A569031D_4981A3DC007E_var*
var
 l_Flash: TvtShockwaveFlashEx;
//#UC END# *4981A569031D_4981A3DC007E_var*
begin
//#UC START# *4981A569031D_4981A3DC007E_impl*
 Result := nsMakeFlashActiveX(nil, false, l_Flash);
 FreeAndNil(l_Flash);
//#UC END# *4981A569031D_4981A3DC007E_impl*
end;//NsCanMakeFlashActiveX

function NsMakeFlashActiveX(aParent: TWinControl;
  aForSplash: Boolean;
  out aFlash: TvtShockwaveFlashEx): Boolean;
//#UC START# *4981A58A0168_4981A3DC007E_var*
//#UC END# *4981A58A0168_4981A3DC007E_var*
begin
//#UC START# *4981A58A0168_4981A3DC007E_impl*
 aFlash := nil;
 try
  aFlash := TvtShockwaveFlashEx.Create(aParent);
  // �������� � flash ������ ���� �������������� �������� �� ������
  // (<K> - 108626065):
  aFlash.Menu := False;
  if aFlash.IsLoadFromStreamSupported then
   with aFlash do
   begin
    Width := 2;
    Height := 2;
    Parent := aParent;
    Align := alClient;
    if not aForSplash then
    begin
     NeedDropAlignOnLoad := True;
     ScaleMode := 3; // NoScale
     AlignMode := 15{5}; // LTRB{LeftTop}
(*
http://www.delphiflash.com/using-tshockwaveflash/tshockwaveflash-properties#a2
AlignMode  Integer value from range 0..15. This is the same as SAlign.
0 - no align, 1 - L, 2 - R, 3 - LR, 4 - T, 5 - LT, 6 - TR, 7 - LTR, 8 - B, 9 - LB, 10 - RB, 11 - LRB, 12 - TB, 13 - LTB, 14 - TRB, 15 - LTRB.
*)     
    end;//aForSplash
   end//with aFlash do
  else
   FreeAndNil(aFlash);
 except
  on EOleSysError do
   FreeAndNil(aFlash);
 end;//try..except
 Result := aFlash <> nil;
//#UC END# *4981A58A0168_4981A3DC007E_impl*
end;//NsMakeFlashActiveX
{$IfEnd} //not Admin AND not Monitorings

end.