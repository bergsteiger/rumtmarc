unit vtComboBoxQS;

{******************************************************************************}
{                                                                              }
{     ��������� ��������� ������������ ������������ ������� ����� �������      }
{ ���������������� ��������. ��� ��������� ������������� ���������� ���������  }
{ �������� ������� OnTextChange, ������� ���������� ������ ���������� ���      }
{ ����� ����� ��� �������� ������.                                             }
{                                                                              }
{******************************************************************************}

// $Id: vtComboBoxQS.pas,v 1.20 2013/04/25 13:20:26 morozov Exp $

// $Log: vtComboBoxQS.pas,v $
// Revision 1.20  2013/04/25 13:20:26  morozov
// {$RequestLink:363571639}
//
// Revision 1.19  2011/02/17 09:59:59  lulin
// {RequestLink:253659765}.
// - �������� �������.
//
// Revision 1.18  2009/09/07 07:53:47  lulin
// - ������ ����.
//
// Revision 1.17  2009/08/13 10:54:58  lulin
// - ������ ����.
//
// Revision 1.16  2008/07/08 11:26:29  lulin
// - ��������� �� �������� � ����������� �������� IsList.
// - ������� ����� � ������ �������������.
//
// Revision 1.15  2008/07/07 14:27:09  lulin
// - ���������������� � ��������������.
//
// Revision 1.14  2008/07/04 15:43:48  lulin
// - <K>: 99647706.
//
// Revision 1.13  2008/07/04 13:41:44  lulin
// - ������ ����.
//
// Revision 1.12  2008/05/21 13:51:03  lulin
// - <K>: 90448804.
//
// Revision 1.11  2008/05/15 20:15:24  lulin
// - ��������� ������.
//
// Revision 1.10  2008/05/15 17:31:43  lulin
// - ������ ������������� �������.
// - ������� ����������� ������ ��������������.
//
// Revision 1.9  2008/05/13 16:24:13  lulin
// - ��������� � ������ <K>: 90441490.
//
// Revision 1.8  2007/12/07 16:22:46  lulin
// - ��������������� ����, ����� �� ������ � ������ �����������.
//
// Revision 1.7  2007/03/22 11:45:41  lulin
// - cleanup.
//
// Revision 1.6  2007/02/19 14:27:31  lulin
// - cleanup.
//
// Revision 1.5  2007/02/19 14:17:30  lulin
// - cleanup.
//
// Revision 1.4  2007/02/19 14:10:18  lulin
// - cleanup.
//
// Revision 1.3  2007/02/19 13:46:59  lulin
// - � ���������� ������� ���������� ������ ������ �����.
//
// Revision 1.2  2007/02/16 19:19:13  lulin
// - � ���������� ������� ���������� ������ ������ �����.
//
// Revision 1.1  2005/06/09 09:47:51  mmorozov
// - ���������� ���������� � ���������� VT;
//
// Revision 1.75  2004/10/19 09:54:17  am
// new: � _Clear �������� �������� OnUpdate: Boolean
//
// Revision 1.74  2004/09/02 13:05:44  law
// - ��� dynamic ������ ������� �� virtual.
//
// Revision 1.73  2004/08/04 16:19:44  demon
// - cleanup: remove warnings and hints
//
// Revision 1.72  2004/02/25 08:31:03  mmorozov
// - ������ ����;
// bugfix: ��� ������ ������ ��������� EndTextPrint;
//
// Revision 1.71  2004/02/05 14:00:31  mmorozov
// new: published property TCustomComboTree.OnResize;
//
// Revision 1.70  2004/01/14 13:31:23  am
//
// change: ��������� ProcessTreeSelect
//
// Revision 1.69  2004/01/14 11:21:20  mmorozov
// no message
//
// Revision 1.68  2004/01/14 10:37:25  am
// bugfix: ��������
//
// Revision 1.67  2003/12/25 12:01:40  mmorozov
// new: procedure TCustomComboTree.CustomDoExit;
//
// Revision 1.66  2003/12/09 14:37:13  am
// change: ProcessTreeSelect
//
// Revision 1.65  2003/12/08 13:21:04  mmorozov
// - ������ listdrop ������ �� uses;
//
// Revision 1.64  2003/12/08 13:15:12  mmorozov
// - �������� ��������� ������ � ��������;
//
// Revision 1.63  2003/12/03 16:34:35  demon
// - bug fix: ��� ���������� �������� UserValue � _f_HistoryList ��� �� ������������ � ��������� ������� ������.
//
// Revision 1.62  2003/11/24 12:40:25  mmorozov
// - � ����� ������ ������������� �������� ��� ������ �� ������ �������;
//
// Revision 1.61  2003/11/21 09:14:03  mmorozov
// *** empty log message ***
//
// Revision 1.60  2003/11/20 14:47:18  mmorozov
// - ������ isSimple ���������� ComboStyle;
//
// Revision 1.59  2003/11/19 16:47:47  mmorozov
// - ������������ ����������� ������� � Create ��� TCustomComboTree;
//
// Revision 1.58  2003/11/18 16:20:48  mmorozov
// + �������� TCustomComboTree.UseSystemMenu;
//
// Revision 1.57  2003/11/18 10:04:07  mmorozov
// - � ������ TCustomComboTree.Change �� �������� ��������� ����� ���� isSimple = True;
//
// Revision 1.56  2003/11/17 14:11:37  mmorozov
// - ������������� ������;
//
// Revision 1.55  2003/11/14 13:21:37  mmorozov
// - ������������� ������;
//
// Revision 1.54  2003/11/14 11:06:48  mmorozov
// - ������������� ������;
//
// Revision 1.53  2003/11/14 10:08:52  mmorozov
// - ������������� ������;
//
// Revision 1.52  2003/11/14 10:00:44  mmorozov
// - ������������� ������;
//
// Revision 1.51  2003/11/13 16:58:11  mmorozov
// - ������������ ��������� ���������� OldQuickSearch;
//
// Revision 1.50  2003/11/13 13:43:27  mmorozov
// - ������� ������ _TvtCustomComboBoxQS � TCustomComboTree (��� TvtComboBoxQS ������� ����� ���� ����� �� �����������);
//
// Revision 1.49  2003/10/07 15:58:50  mmorozov
// + ��� �������� ������� ��������� ��������� ������� _ValueUser ���� ��� ����������;
// + ����� �������� ������� ������������� ���������� ������;
// + � KeyDown ������������ ������� ������ ����, � � KeyPress ������������� Key = #0;
// + ���� �� ��� ��������� ���������� _OnTextChange, �� ��� ��������� ��������� WM_Command �������� ������������ ����������;
// + ��� ������ �� TvtComboBoxQS � ����� ������ � ������� ���������� ��������;
//
// Revision 1.48  2003/10/06 17:00:55  mmorozov
// - ���� �� ��������� ���������� _OnTextChange ��� ����� ������������ UserEvent;
//
// Revision 1.47  2003/10/03 16:00:03  mmorozov
// - ��������������� procedure DoValueUserSelect;
//
// Revision 1.46  2003/09/30 13:02:30  mmorozov
// - �������� procedure TvtComboBoxQS.WMCommand � ������� ������������ ���������� ��� ��� �������, ����� ���� ����������� ������ ��� �� ������������ �������;
//
// Revision 1.45  2003/09/29 08:23:41  mmorozov
// - ��������� ������ ��������� ��������� �������� function TvtComboBoxQS.CheckLastValue;
//
// Revision 1.44  2003/09/26 13:36:55  mmorozov
// - procedure TvtComboBoxQS._DoExit (��� ������ ������������� ���� ���������);
//
// Revision 1.43  2003/09/23 13:13:56  mmorozov
// - �������� procedure TvtComboBoxQS.WMCommand;
//
// Revision 1.42  2003/09/23 09:16:58  mmorozov
// - �������� procedure TvtComboBoxQS.EndTextPrint;
//
// Revision 1.41  2003/09/19 17:16:22  mmorozov
// - ������ ����;
//
// Revision 1.40  2003/09/19 13:35:04  mmorozov
// + ��� _TInsertHistoryValueEvent;
// + �������� function _InsertHistory;
// + ������� OnInsertHistoryValue;
// - �������� procedure TvtComboBoxQS.KeyDown;
// - �������� function TvtComboBoxQS._InsertHistory;
// - �������� procedure TvtComboBoxQS.WMCommand;
// - �������� procedure TvtComboBoxQS._DoExit;
// - �������� procedure TvtComboBoxQS.EndTextPrint;
//
// Revision 1.39  2003/09/18 14:41:43  mmorozov
// - �������� procedure TvtComboBoxQS.WMCommand;
//
// Revision 1.38  2003/09/18 14:12:53  mmorozov
// + property TvtComboBoxQS._ErrorSimbol;
// - �������� function TvtComboBoxQS.UpdateValuesList;
// - �������� procedure TvtComboBoxQS.KeyPress;
// - �������� procedure TvtComboBoxQS.EndTextPrint;
//
// Revision 1.37  2003/09/18 08:45:51  mmorozov
// - �������� procedure TvtComboBoxQS.EndTextPrint;
//
// Revision 1.36  2003/09/17 13:23:36  mmorozov
// - �������� ��������� TvtComboBoxQS.HasSelectedText;
// - �������� ��������� TvtComboBoxQS.KeyDown;
//
// Revision 1.35  2003/09/16 13:02:33  migel
// - ������� ����� TvtComboBoxQS._DoExit;
//
// Revision 1.34  2003/09/16 06:36:13  migel
// - �������� TvtComboBoxQS._ForwardLoad;
//
// Revision 1.33  2003/09/15 14:39:01  migel
// - ���������� TvtComboBoxQS._GetWitoutLastLevel;
// - ���������� TvtComboBoxQS.GetCurrentLevel;
// - ���������� TvtComboBoxQS.CommonLoadValuesList;
//
// Revision 1.32  2003/09/12 08:48:11  mmorozov
// + �������� TvtComboBoxQS.LoadHistoryOnEndTextPrint;
// + ����� TvtComboBoxQS.CheckSeparatorLeaf;
// - �������� TvtComboBoxQS.UpdateValuesList;
// - �������� TvtComboBoxQS.SetLastValue;
// - �������� TvtComboBoxQS._GetAllLevels;
//
// Revision 1.31  2003/09/11 18:06:18  mmorozov
// no message
//
// Revision 1.30  2003/09/11 16:53:34  mmorozov
// + �������� TvtComboBoxQS._ValueUser;
// + ������� TvtComboBoxQS._OnValueUserSelect
// - �������� ��������� TvtComboBoxQS.UpdateValuesList,
// + ������� TvtComboBoxQS.ReplaceSimbols;
//
// Revision 1.29  2003/09/08 13:30:44  mmorozov
// - �������� ������� ��� TvtComboBoxQS._Clear;
// - ��������� ������� OnSelect;
//
// Revision 1.28  2003/09/05 18:14:17  mmorozov
// - ������� ����� KeyPress;
//
// Revision 1.27  2003/09/03 18:54:18  mmorozov
// - ���� � �������� Items.Count = 0 �� Style = csSimple � ��������� ������ csDropDown;
// - _VK_TAB => ��������� ����;
//
// Revision 1.26  2003/09/02 12:33:42  mmorozov
// - �������� TComboBox.UpdateValuesList;
//
// Revision 1.25  2003/09/01 08:03:19  mmorozov
// - � KeyPress �� Backspace, ���� Text = '' ���������� ����� DoClear;
//
// Revision 1.24  2003/08/29 16:21:11  mmorozov
// + ��������� _IsSetStopSimbol;
// - �������� ��������� KeyPress, KeyDown;
//
// Revision 1.23  2003/08/29 08:13:50  mmorozov
// no message
//
// Revision 1.22  2003/08/29 07:58:50  mmorozov
// - ����� ������������ KeyDown ������ KeyDown;
// - ������ ��������� ������ � ������ _ForwardLoad;
//
// Revision 1.21  2003/08/28 18:13:49  mmorozov
// - ����������� WMCommand;
//
// Revision 1.20  2003/08/27 16:28:34  mmorozov
// no message
//
// Revision 1.19  2003/08/26 11:02:47  mmorozov
// + ��������� ReplaceSimbols � ��������� KeyPress;
// + �������� _StrReplaceValues;
// + �������� StrReplaceSimbols;
//
// Revision 1.18  2003/08/26 09:39:34  mmorozov
// - ��������� ComboBox.WMCommand;
//
// Revision 1.17  2003/08/22 07:09:26  mmorozov
// + �������� published UseHistory;
// + �������� published CallTextChangeAlways;
//
// Revision 1.16  2003/08/14 18:53:20  mmorozov
// - ��������� ��������� _ForwardLoad, CommonLoadValuesList;
//
// Revision 1.15  2003/08/14 11:42:13  mmorozov
// - ���� short cut �� ������� OnUserEvent �������� � Key = VK_RETURN, �� �������������� VK_RETURN, ����� ������������ �������;
//
// Revision 1.14  2003/08/13 17:58:47  mmorozov
// - ��������� ������� OnUserEvent, OnClear;
// - short cut _UserEventShortCut;
//
// Revision 1.13  2003/08/12 15:29:57  mmorozov
// no message
//
// Revision 1.12  2003/08/12 11:35:43  max
// - ��������� ��������� GetCurrentLevel, _GetLastLevelValue, _GetAllLevels, GetWithoutLastLevel;
//
// Revision 1.11  2003/08/11 17:17:09  max
// - �������� ������������ ����� _Clear;
//
// Revision 1.10  2003/06/03 09:04:20  mmorozov
// no message
//
// Revision 1.9  2003/05/30 11:40:46  mmorozov
// ������� �� ������������ ���������
//
// Revision 1.8  2003/05/28 12:46:19  mmorozov
// ����� ���������� ��� ������� �������� ������ ���������� ���
// ����� ��������
//
// Revision 1.7  2003/05/27 14:11:06  mmorozov
// ����������� ������: ��� �������� ����� � �������� ������
// ������� � win2000 ��������� ������.
//
// Revision 1.6  2003/05/27 13:13:12  mmorozov
// ����������� ������
//
// Revision 1.5  2003/05/26 11:05:14  mmorozov
// no message
//
// Revision 1.4  2003/05/23 11:42:46  mmorozov
// - �������� shortcut ��� �������� � ������ ������������� ����� �
// ��������� ������ �����;
// - �������� shortcut ��� ��������� ������� ��������� ����� ������;
// - �������� shortcut ��� �������� ���������� ������;
// - ��������� ������� ���� ������ �������;
// - ��������� �������� "��������� ������ ����������� �������� ��
// ������ �� ����������";
//
// Revision 1.3  2003/05/22 14:21:17  mmorozov
// ��������� ���������� � ���� �������������� ����� ������ �����
// ������� �� ������� BACKSPACE
//
// Revision 1.2  2003/05/22 13:27:48  law
// - change: ��������� ��������� CVS.
//

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, StdCtrls, Dialogs, Forms,
  Menus, FakeBox,

  ctTypes,

  l3Interfaces,
  l3VCLStrings
  ;

type
  TCustomComboTree = class(TFakeBox)
  private
    f_OnEndTextPrint : TNotifyEvent;
    procedure EndTextPrint;
  protected
    procedure ProcessTreeSelect(ChooseFromTree : Boolean;
                                aTriggerSelect : Boolean);
      override;
      {-}
  public
    { Procedures }
    procedure Change;
      override;
  published
    { Properties }
    property UseSystemMenu;
      {-}
    property OnResize;
      {-}
    property OnEndTextPrint: TNotifyEvent
      read f_OnEndTextPrint
      write f_OnEndTextPrint;
      {-}
  end;//TCustomComboTree

  TvtComboBoxQS = class(TCustomComboTree)
  published
    property Items;
    property Anchors;
    property Font;
    property Ctl3D;
    property ParentColor;
    property ParentCtl3D;
    property ParentShowHint;
    property ParentFont; 
    property ShowHint;
    property TabOrder;
    property ComboStyle;
    property Enabled;
    property MaxLength;
    property EmptyHint;
    property OnKeyPress;
    property OnExit;
    property ItemIndex;
    property Text;
  end;

implementation

uses
  Graphics,

  l3Base,
  l3String
  ;

// start class TCustomComboTree

procedure TCustomComboTree.Change;
begin
 inherited;
 if isValid then
  EndTextPrint;
end;

procedure TCustomComboTree.EndTextPrint;
begin
 if Assigned(f_OnEndTextPrint) then
  f_OnEndTextPrint(Self);
end;

procedure TCustomComboTree.ProcessTreeSelect(ChooseFromTree : Boolean;
                                             aTriggerSelect : Boolean);
begin
 inherited;
 if ChooseFromTree then
  EndTextPrint;
end;

end.
