object StyleEditorExampleForm: TStyleEditorExampleForm
  Left = 302
  Top = 124
  ActiveControl = f_Editor
  Anchors = []
  AutoScroll = False
  BorderIcons = []
  Caption = #1055#1088#1080#1084#1077#1088' '#1090#1077#1082#1089#1090#1072
  ClientHeight = 262
  ClientWidth = 373
  Color = $00F9F8FA
  OldCreateOrder = False
  ZoneType = vcm_ztChild
  OnInit = EntityFormInit
  PixelsPerInch = 96
  TextHeight = 13
  object f_EditorPanel: TvtPanel
    Left = 0
    Top = 0
    Width = 373
    Height = 262
    Align = alClient
    Anchors = []
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object f_Editor: TeeEditorWithoutOperations
      Left = 2
      Top = 2
      Width = 369
      Height = 258
      Align = alClient
      TabOrder = 0
      TextSource = f_TextSource
      IsStaticText = True
      OnGetHotSpotInfo = f_EditorGetHotSpotInfo
    end
  end
  object Entities: TvcmEntities
    Left = 12
    Top = 12
  end
  object f_TextSource: TnscTextSource
    Left = 72
    Top = 12
  end
end
