object efStartupTips: TefStartupTips
  Left = 420
  Top = 344
  ActiveControl = NextButton
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1057#1086#1074#1077#1090' '#1076#1085#1103
  ClientHeight = 246
  ClientWidth = 407
  Color = 16382202
  Position = poMainFormCenter
  OnShow = vcmEntityFormShow
  ZoneType = vcm_ztFloating
  OnInit = vcmEntityFormInit
  PixelsPerInch = 96
  TextHeight = 13
  object TopPanel: TvtPanel
    Left = 0
    Top = 0
    Width = 407
    Height = 41
    Align = alTop
    TabOrder = 0
    DesignSize = (
      407
      41)
    object TitlePaintBox: TPaintBox
      Left = 12
      Top = 4
      Width = 32
      Height = 32
      OnPaint = TitlePaintBoxPaint
    end
    object TitleLabel: TvtLabel
      Left = 57
      Top = 11
      Width = 156
      Height = 19
      Anchors = [akLeft, akTop, akRight]
      Caption = #1047#1085#1072#1077#1090#1077' '#1083#1080' '#1042#1099', '#1095#1090#1086'...'
      Font.Height = -16
      Font.Style = [fsBold]
      Layout = tlCenter
    end
  end
  object BottomPanel: TvtPanel
    Left = 0
    Top = 41
    Width = 407
    Height = 205
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object HintPanel: TvtPanel
      Left = 13
      Top = 22
      Width = 272
      Height = 123
      BorderStyle = bsSingle
      Color = clWindow
      TabOrder = 0
      object TipLabel: TvtLabel
        Left = 11
        Top = 9
        Width = 6
        Height = 16
        AutoSize = False
        WordWrap = True
      end
      object DetailLabel: TvtFocusLabel
        Left = 142
        Top = 93
        Width = 103
        Height = 18
        Cursor = crHandPoint
        Caption = #1057#1084'. '#1087#1086#1076#1088#1086#1073#1085#1077#1077
        TabOrder = 0
        Font.Color = clBlue
        Font.Style = [fsBold]
        HighlightColor = clBlue
        Hyperlink = True
        OnClick = DetailLabelClick
      end
    end
    object ShowCheckBox: TvtCheckBox
      Left = 13
      Top = 153
      Width = 268
      Height = 17
      Caption = #1053#1077' '#1087#1086#1082#1072#1079#1099#1074#1072#1090#1100' '#1089#1086#1074#1077#1090' '#1076#1085#1103' '#1087#1088#1080' '#1079#1072#1087#1091#1089#1082#1077
      TabOrder = 1
      OnClick = ShowCheckBoxClick
    end
    object wwwPanel: TvtPanel
      Left = 11
      Top = 178
      Width = 270
      Height = 19
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 2
      object wwwPaintBox: TPaintBox
        Left = 0
        Top = 2
        Width = 16
        Height = 16
        OnPaint = wwwPaintBoxPaint
      end
      object wwwLabel: TvtFocusLabel
        Left = 20
        Top = 1
        Width = 192
        Height = 18
        Cursor = crHandPoint
        Caption = #1057#1086#1074#1077#1090#1099' '#1076#1085#1103' '#1074' '#1053#1086#1074#1086#1089#1090#1103#1093' '#1086#1085#1083#1072#1081#1085
        TabOrder = 0
        Font.Color = clBlue
        HighlightColor = clBlue
        Hyperlink = True
        OnClick = wwwLabelClick
      end
    end
    object NextButton: TElPopupButton
      Left = 290
      Top = 22
      Width = 105
      Height = 26
      DrawDefaultFrame = False
      Default = True
      NumGlyphs = 1
      ThinFrame = True
      Caption = #1057#1083#1077#1076#1091#1102#1097#1080#1081
      TabOrder = 3
      ParentFont = True
      OnClick = NextButtonClick
      DockOrientation = doNoOrient
    end
    object PrevButton: TElPopupButton
      Left = 290
      Top = 56
      Width = 105
      Height = 26
      DrawDefaultFrame = False
      Default = True
      NumGlyphs = 1
      ThinFrame = True
      Caption = #1055#1088#1077#1076#1099#1076#1091#1097#1080#1081
      TabOrder = 4
      ParentFont = True
      OnClick = PrevButtonClick
      DockOrientation = doNoOrient
    end
    object CloseButton: TElPopupButton
      Left = 290
      Top = 163
      Width = 105
      Height = 26
      DrawDefaultFrame = False
      Cancel = True
      Default = True
      NumGlyphs = 1
      ThinFrame = True
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 5
      ParentFont = True
      OnClick = CloseButtonClick
      DockOrientation = doNoOrient
    end
  end
  object Entities: TvcmEntities
    Left = 338
    Top = 86
  end
end
