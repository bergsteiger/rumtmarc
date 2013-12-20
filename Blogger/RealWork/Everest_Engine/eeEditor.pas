unit eeEditor;
{* ��������� ��� ������� ���������. }

{ ���������� "�������"    }
{ �����: ����� �.�. �     }
{ ������: eeEditor -      }
{ �����: 25.09.2002 17:25 }
{ $Id: eeEditor.pas,v 1.1 2010/04/21 16:52:40 lulin Exp $ }

// $Log: eeEditor.pas,v $
// Revision 1.1  2010/04/21 16:52:40  lulin
// {RequestLink:144575972}.
// - ��������� � ���������� ����� ��� ���������� ������.
//
// Revision 1.1  2009/09/14 11:28:08  lulin
// - ������� ���� � ��� ������������� �������.
//
// Revision 1.55  2009/08/19 18:07:11  lulin
// {RequestLink:158795592}. ����������� �������� �� ��������� ������� (��������� k2_idDocument) ������� read-only, ����� ��� ����� ���� ������� ������ �������.
//
// Revision 1.54  2008/12/26 13:59:10  oman
// - fix: ���������� MacroReplacer (�-122675365)
//
// Revision 1.53  2007/12/04 12:47:33  lulin
// - ������������� ����� � HEAD.
//
// Revision 1.45.8.17  2007/10/31 12:36:42  oman
// - new: ������������ �������� OnDrawSpecialChange � OnShowDocumentPartsChanged (cq27244)
//
// Revision 1.45.8.16  2007/05/31 08:50:59  oman
// - fix: ����� ���������� �� ��������� ��������� ������������
//  (cq25181)
//
// Revision 1.45.8.15  2006/11/03 11:00:11  lulin
// - ��������� � ������ 6.4.
//
// Revision 1.45.8.14.8.1  2006/10/23 05:50:57  lulin
// - ������� �� ������ ��������� � ��������� ���� �� ���������� ��� ����� ���������� �������.
//
// Revision 1.45.8.14  2006/07/19 17:55:05  mmorozov
// - new: ������� ������ ��������� ������, ��� ������������ �������;
//
// Revision 1.45.8.13  2006/05/18 10:51:09  mmorozov
// - new: ���������� � ������ ������� ��������;
//
// Revision 1.45.8.12  2006/03/29 15:29:33  lulin
// - ������� ������ �������� ����������/�������� ������������.
//
// Revision 1.45.8.11  2005/12/19 12:03:00  lulin
// - new behavior: ��������� ������ � ������������ �� ������� �������, � �� ����� ��������� ���������.
//
// Revision 1.45.8.10  2005/12/14 11:08:04  lulin
// - cleanup.
//
// Revision 1.45.8.9  2005/11/30 16:25:36  mmorozov
// - new: ������������ ��� �������� ������� ������ ����������� ��������;
//
// Revision 1.45.8.8  2005/11/09 15:28:27  lulin
// - ������� ���������� ���������� � ���������� ������.
//
// Revision 1.45.8.7  2005/11/05 09:03:17  lulin
// - �������� � ����� � � ������� ����� ����������������.
//
// Revision 1.45.8.6  2005/08/30 10:02:16  lulin
// - ���������� ��������� ��������� ������� �����������.
//
// Revision 1.45.8.5  2005/07/20 18:36:13  lulin
// - ������ ������������ � ����������� � ��������� ����������.
//
// Revision 1.45.8.4  2005/06/01 16:22:28  lulin
// - remove unit: evIntf.
//
// Revision 1.45.8.3  2005/05/31 12:06:33  lulin
// - cleanup: ��� ������ � ��������� ���������� ����������, � �� �������.
//
// Revision 1.45.8.2  2005/05/27 14:42:24  lulin
// - ������� ������� �������� � ���������� L3.
//
// Revision 1.45.8.1  2005/05/26 17:44:31  lulin
// - ������� ����� ������ ��������� �� �������� � L3.
//
// Revision 1.45  2005/02/14 11:04:01  lulin
// - bug fix: ���� ����� �� ����������� ��� DnD, �� �� �������� � �������� ����� (�������� � ������) (CQ OIT5-12266).
//
// Revision 1.44  2005/02/04 14:33:45  lulin
// - new behavior: ��������� ������������ ������ ���� 3.
// - �� Drag'n'drop ���������� Effect.
//
// Revision 1.43  2005/01/19 10:50:43  lulin
// - new prop: TevCustomEditor.IsStaticText.
//
// Revision 1.42  2004/11/17 10:42:19  lulin
// - new prop: TevCustomEditorWindow.OnCheckFocusedInPaint.
//
// Revision 1.41  2004/10/27 15:25:47  lulin
// - new behavior: ��� ������� ������ ����� Drag And Drop ��������� ����� �������� - ����� Undo ���� � ���� ���.
//
// Revision 1.40  2004/10/27 10:03:33  dinishev
// - ����������� ����������� ����������������� ����������� ������� DoDrop.
//
// Revision 1.39  2004/09/16 12:20:53  lulin
// - ������� ����������� ������������� include'��.
//
// Revision 1.38  2004/09/15 16:45:00  lulin
// - � ����������� �� DesignTimeLibrary ����������� Destroy ��� Cleanup.
//
// Revision 1.37  2004/07/21 12:34:48  law
// - new event: TeeEditorExport.OnUserCommentsHidden.
//
// Revision 1.36  2004/05/20 10:19:30  fireton
// - ������� AdjustForm2Found � ������� �����
//
// Revision 1.35  2004/04/20 12:37:12  nikitin75
// ���������� AdjustForm2Found;
//
// Revision 1.34  2004/01/06 15:43:46  law
// - new prop: TevCustomEditorWindow.OnTextSourceChanged.
//
// Revision 1.33  2003/10/21 15:19:11  law
// - rename type: TeeBlockScrollChangeEvent -> TeeBlockScrollEvent.
//
// Revision 1.32  2003/10/21 13:38:36  narry
// - ���������� ����������� ���������� (OIT500004631)
//
// Revision 1.31  2003/09/11 16:01:36  law
// - new prop: TeeEditor.OnCanSplitPara.
//
// Revision 1.30  2003/09/11 13:32:30  law
// - new prop: TeeEditor.OnUserCommentDelete.
//
// Revision 1.29  2003/09/10 18:08:04  law
// - new prop: TeeEditor.OnUserCommentChange.
//
// Revision 1.28  2003/09/10 13:27:52  law
// - new prop: OnGetHotSpotInfo.
//
// Revision 1.27  2003/07/10 14:43:32  law
// - new prop: TevEditorWindow.AutoHideSelection.
// - new prop: TevCustomEditor.OnSelectionChange.
// - new prop: TeeEditor.OnCursorInSelectionChange.
//
// Revision 1.26  2003/07/03 12:26:58  law
// - bug fix: ��������� ������������������ �� ������ ����.
//
// Revision 1.25  2003/07/01 12:02:48  nikitin75
// - bug fix: �� ������������� ����������� ����.
//
// Revision 1.24  2003/05/29 12:39:12  law
// - bug fix: ������������� ���������������� ScrollBar'��.
//
// Revision 1.23  2003/05/29 11:25:47  law
// - bug fix: ������������ ����� OnBlockScroll.
//
// Revision 1.22  2003/05/29 10:54:20  law
// - bug fix: ������������ ����� OnBlockChange.
//
// Revision 1.21  2003/05/28 16:15:20  law
// - change: ������� ee.dll.
//
// Revision 1.20  2003/02/28 16:31:43  law
// - �������� help.
//
// Revision 1.19  2002/11/14 09:31:07  law
// - new event: TeeCustomEditor.OnBlockScroll.
//
// Revision 1.18  2002/11/14 07:58:32  law
// - bug fix: �� ���������������� ������ ����� ����� �� �������� (�� ������ ��������� �������).
//
// Revision 1.17  2002/11/13 15:22:48  law
// - new class: TeeSubPanel.
//
// Revision 1.16  2002/11/13 12:54:21  law
// - change: ������ ������ ��� ��������� ������ Sub'��.
//
// Revision 1.15  2002/11/10 13:55:28  law
// - new interfaces: IeeHotSpot, IeePara.
//
// Revision 1.14  2002/11/04 15:58:28  law
// - new prop: TeeCustomEditor.OnBlockChange.
//
// Revision 1.13  2002/10/28 12:10:02  law
// - bug fix: ��������� ������� ������� �� ������������������ �� ScrollBar'���.
//
// Revision 1.12  2002/10/28 10:10:30  law
// - new behavior: ������������� ��������� �� �����������.
//
// Revision 1.11  2002/10/28 09:10:36  law
// - new prop: TeeCustomEditor.HScrollBar, TeeCustomEditor.VScrollBar.
//
// Revision 1.10  2002/10/17 10:10:22  law
// - bug fix: ������ IDE ��� ����������� ���� ���������.
// - new prop: ScrollStyle.
//
// Revision 1.9  2002/10/04 13:28:14  law
// - new behavior: � Design-Time �� �������� ���� �������������� �����.
//
// Revision 1.8  2002/10/04 12:29:33  law
// - new interface: IeeWindow.
//
// Revision 1.7  2002/10/04 10:29:51  law
// - new interface: Iee.
//
// Revision 1.6  2002/09/27 09:19:28  law
// - new property: Editor.
// - new behavior: ��������� ������� ���� ���������.
//
// Revision 1.5  2002/09/26 16:14:36  law
// - new behavior: �������� ����� ����������� ��������� �� dll.
//
// Revision 1.4  2002/09/26 15:20:53  law
// - rename unit: evEverestEngineInterfaces -> eeInterfaces.
// - new unit: eeEditorExport.
//
// Revision 1.3  2002/09/25 16:48:36  law
// - change: _IeeEditor - ������ ���������.
//
// Revision 1.2  2002/09/25 15:07:34  law
// no message
//
// Revision 1.1  2002/09/25 14:22:14  law
// - new folder: BCB.
//

{$Include eeDefine.inc }

interface

uses
  Windows,
  ActiveX,

  Classes,

  Controls,
  StdCtrls,
  Forms,

  evEditorWithOperations,

  eeInterfaces,

  eeEditorExport,

  eeSubPanel,
  l3Types
  ;

type
  TeeCustomEditor = class(TeeEditorExport)
   {* ��������� ��� ������� ���������. }
    protected
    // property methods
      function  pm_GetEditor: IeeEditor;
        {-}
    public
    // public methods
      constructor Create(anOwner: TComponent);
        override;
        {-}
    public
    // public properties
      property Editor: IeeEditor
        read pm_GetEditor;
        {* - ���������� ��������. }
    public
    // public events
      property OnBlockChange: TeeBlockChangeEvent
        read f_OnBlockChange
        write f_OnBlockChange;
        {* - ������� ��� ������� �� ��������� �������� �����. }
      property OnBlockScroll: TeeBlockScrollEvent
        read f_OnBlockScroll
        write f_OnBlockScroll;
        {* - ������� ��� ������� �� ��������� �������� �������� �����. }
      property OnCanSplitPara: TeeCanSplitParaEvent
        read f_OnCanSplitPara
        write f_OnCanSplitPara;
        {-}
      property OnUserCommentsHidden: TNotifyEvent
        read f_OnUserCommentsHidden
        write f_OnUserCommentsHidden;
        {-}
  end;//TeeCustomEditor

  TeeEditor = class(TeeCustomEditor)
   {* ��������� ��� ������� ���������. ��� ��������� �������������. }
    published
    // published properties
      property Align;
        {-}
      property TabOrder;
        {-}
      property Controller;
        {-}
      property TextSource;
        {-}
      property PopupMenu;
        {-}
      property IsStaticText;
        {-}
      property ScrollStyle;
        {-}
      property HScrollBar;
        {-}
      property VScrollBar;
        {-}
      property WebStyle
        default true;
        {-}
      property AutoHideSelection
        default false;
        {-}
      property VSubPanel;
        {-}
    published
    // published events
      property OnBlockChange;
        {-}
      property OnBlockScroll;
        {-}
      property OnMouseAction;
        {-}
      property OnCursorInSelectionChange;
        {-}
      property OnSelectionChange;
        {-}
      property OnGetHotSpotInfo;
        {* - ������� ��� ��������� ���������� � HotSpot'�. }
      property OnCanSplitPara;
        {-}
      property OnUserCommentsHidden;
        {-}
      property OnTextSourceChanged;
        {-}
      property OnCheckFocusedInPaint;
        {-}
      property OnAfterFirstPaint;
        {-}
      property OnJumpTo;
        {-}
      property OnCommentsVisibleChanged;
        {-}
      property OnShowDocumentPartsChanged;
        {-}
      property OnDrawSpecialChange;
        {-}
      property OnMakeMacroReplacer;
        {-}
  end;//TeeEditor

  TeeEditorWithoutOperations = class(TeeEditor)
  {* - �������� ��� ��������. }
  protected
  // protected methods
    function DefineProvideOperations: TevEditorProvideOperationTypes;
      override;
      {* - ����� �������� ����������� �����������. }
  end;//TeeEditorWithoutOperations

implementation

uses
  Messages,

  l3Interfaces,
  l3InternalInterfaces,
  l3Units,

  evEditorWindow,
  eeExceptions,
  evOp
  ;

// start class TeeCustomEditor

constructor TeeCustomEditor.Create(anOwner: TComponent);
  //override;
  {-}
begin
 inherited;
 WebStyle := true;
 AutoHideSelection := false;
end;

function TeeCustomEditor.pm_GetEditor: IeeEditor;
  {-}
begin
 Result := Self;
end;

{ TeeEditorWithoutOperations }

function TeeEditorWithoutOperations.DefineProvideOperations: TevEditorProvideOperationTypes;
  {* - ����� �������� ����������� �����������. }
begin
 Result := [];
end;

end.

