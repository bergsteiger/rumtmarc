object MainForm: TMainForm
  Left = 231
  Top = 147
  Width = 870
  Height = 640
  Caption = #1047#1072#1075#1088#1091#1079#1082#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
  Color = $00F9F8FA
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Toolbar: TvtPanel
    Left = 0
    Top = 0
    Width = 854
    Height = 41
    Align = alTop
    TabOrder = 0
    DesignSize = (
      854
      41)
    object btLoad: TButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = #1047#1072#1075#1088#1091#1079#1082#1072
      TabOrder = 0
      OnClick = btLoadClick
    end
    object edFileName: TFilenameEdit
      Left = 91
      Top = 10
      Width = 470
      Height = 21
      InitialDir = 'P:\GbaNemesis\Test\Documents'
      Anchors = [akLeft, akTop, akRight]
      NumGlyphs = 1
      TabOrder = 1
      Text = 'P:\GbaNemesis\Test\Documents\gkbp2.evd'
    end
    object cbShow: TeeCheckBox
      Left = 570
      Top = 11
      Width = 143
      Height = 17
      Anchors = [akTop, akRight]
      Caption = #1054#1090#1086#1073#1088#1072#1078#1072#1090#1100' '#1090#1077#1082#1089#1090
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object cbWeb: TeeCheckBox
      Left = 712
      Top = 11
      Width = 97
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Web'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
  end
  object Footer: TvtPanel
    Left = 0
    Top = 570
    Width = 854
    Height = 34
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      854
      34)
    object lbProgress: TvtLabel
      Left = 208
      Top = 10
      Width = 425
      Height = 13
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      Caption = 'lbProgress'
      Color = $00F9F8FA
      ParentColor = False
    end
    object lbTime: TvtLabel
      Left = 712
      Top = 10
      Width = 145
      Height = 13
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      Caption = 'lbTime'
    end
    object lbTotal: TvtLabel
      Left = 640
      Top = 10
      Width = 70
      Height = 13
      AutoSize = False
      Caption = 'lbTotal'
    end
    object Meter: TW95Meter
      Left = 7
      Top = 8
      Width = 193
      OnSetStr = MeterSetStr
      HideInactive = True
    end
  end
  object Editor: TevEditor
    Left = 185
    Top = 41
    Width = 669
    Height = 529
    Align = alClient
    TextSource = TextSource
    TabOrder = 2
    TabStop = True
  end
  object vtSizeablePanel1: TvtSizeablePanel
    Left = 0
    Top = 41
    Width = 185
    Height = 529
    SizeableSides = [szRight]
    Align = alLeft
    TabOrder = 3
    object Contents: TvtOutliner
      Left = 1
      Top = 1
      Width = 180
      Height = 400
      AutoRowHeight = False
      IntegralHeight = False
      ProtectColor.BackColor = clRed
      ProtectColor.TextColor = clWhite
      SelectColor.BackColor = clHighlight
      SelectColor.TextColor = clHighlightText
      SelectNonFocusColor.BackColor = $00F9F8FA
      SelectNonFocusColor.TextColor = clBtnText
      Align = alTop
      ParentColor = False
      TabOrder = 0
      TabStop = True
    end
    object vtSizeablePanel2: TvtSizeablePanel
      Left = 1
      Top = 401
      Width = 180
      Height = 127
      SizeableSides = [szTop]
      Align = alClient
      TabOrder = 1
      object btScroll: TButton
        Left = 8
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Scroll'
        TabOrder = 0
        OnClick = btScrollClick
      end
    end
  end
  object TextSource: TevTextSource
    Left = 8
    Top = 48
  end
  object LoadManager: TevLoadDocumentManager
    Left = 48
    Top = 48
  end
end
