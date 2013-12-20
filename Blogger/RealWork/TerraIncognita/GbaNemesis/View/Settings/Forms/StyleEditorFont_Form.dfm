object StyleEditorFontForm: TStyleEditorFontForm
  Left = 489
  Top = 259
  Width = 428
  Height = 165
  Anchors = []
  BorderIcons = []
  Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1096#1088#1080#1092#1090#1072
  Color = 16382202
  Font.Height = -12
  OldCreateOrder = False
  ShowHint = True
  ZoneType = vcm_ztParent
  PixelsPerInch = 96
  TextHeight = 15
  object f_FontScrollBox: TScrollBox
    Left = 0
    Top = 0
    Width = 412
    Height = 129
    Align = alClient
    Anchors = []
    BevelInner = bvNone
    BevelOuter = bvNone
    TabOrder = 0
    object f_FontUnderlineLabel: TvtLabel
      Left = 260
      Top = 64
      Width = 108
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = #1055#1086#1076#1095#1077#1088#1082#1085#1091#1090#1099#1081
    end
    object f_FontStrikeoutLabel: TvtLabel
      Left = 260
      Top = 80
      Width = 108
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = #1055#1077#1088#1077#1095#1077#1088#1082#1085#1091#1090#1099#1081
    end
    object f_FontSizeLabel: TvtLabel
      Left = 278
      Top = 9
      Width = 56
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = #1056#1072#1079#1084#1077#1088
    end
    object f_FontNameLabel: TvtLabel
      Left = 10
      Top = 9
      Width = 63
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077
    end
    object f_FontItalicLabel: TvtLabel
      Left = 260
      Top = 48
      Width = 108
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = #1053#1072#1082#1083#1086#1085#1085#1099#1081
    end
    object f_FontForeColorLabel: TvtLabel
      Left = 10
      Top = 33
      Width = 63
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = #1062#1074#1077#1090
    end
    object f_FontBoldLabel: TvtLabel
      Left = 260
      Top = 32
      Width = 108
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = #1046#1080#1088#1085#1099#1081
      Layout = tlCenter
    end
    object f_FontBackColorLabel: TvtLabel
      Left = 0
      Top = 57
      Width = 73
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = #1060#1086#1085
    end
    object f_FontScalableLabel: TvtLabel
      Left = 260
      Top = 104
      Width = 108
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = #1052#1072#1089#1096#1090#1072#1073#1080#1088#1091#1077#1084#1099#1081
    end
    object f_FontScalableBevel: TBevel
      Left = 256
      Top = 100
      Width = 150
      Height = 4
      Shape = bsTopLine
    end
    object f_FontStrikeoutInheritanceButton: TElPopupButton
      Left = 371
      Top = 79
      Width = 16
      Height = 16
      Hint = #1058#1080#1087' '#1085#1072#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103' ('#1057#1086#1073#1089#1090#1074#1077#1085#1085#1086#1077', '#1056#1086#1076#1080#1090#1077#1083#1100#1089#1082#1086#1077', '#1055#1088#1086#1079#1088#1072#1095#1085#1086#1077')'
      DrawDefaultFrame = False
      AdjustSpaceForGlyph = False
      Flat = True
      NumGlyphs = 1
      TabOrder = 14
      ParentFont = True
      OnClick = FontStrikeoutInheritanceButtonClick
      DockOrientation = doNoOrient
    end
    object f_FontSizeInheritanceButton: TElPopupButton
      Left = 339
      Top = 9
      Width = 16
      Height = 16
      Hint = #1058#1080#1087' '#1085#1072#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103' ('#1057#1086#1073#1089#1090#1074#1077#1085#1085#1086#1077', '#1056#1086#1076#1080#1090#1077#1083#1100#1089#1082#1086#1077', '#1055#1088#1086#1079#1088#1072#1095#1085#1086#1077')'
      DrawDefaultFrame = False
      AdjustSpaceForGlyph = False
      Flat = True
      NumGlyphs = 1
      TabOrder = 6
      ParentFont = True
      OnClick = FontSizeInheritanceButtonClick
      DockOrientation = doNoOrient
    end
    object f_FontNameInheritanceButton: TElPopupButton
      Left = 76
      Top = 8
      Width = 16
      Height = 16
      Hint = #1058#1080#1087' '#1085#1072#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103' ('#1057#1086#1073#1089#1090#1074#1077#1085#1085#1086#1077', '#1056#1086#1076#1080#1090#1077#1083#1100#1089#1082#1086#1077', '#1055#1088#1086#1079#1088#1072#1095#1085#1086#1077')'
      DrawDefaultFrame = False
      AdjustSpaceForGlyph = False
      Flat = True
      NumGlyphs = 1
      TabOrder = 0
      ParentFont = True
      OnClick = FontNameInheritanceButtonClick
      DockOrientation = doNoOrient
    end
    object f_FontItalicInheritanceButton: TElPopupButton
      Left = 371
      Top = 47
      Width = 16
      Height = 16
      Hint = #1058#1080#1087' '#1085#1072#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103' ('#1057#1086#1073#1089#1090#1074#1077#1085#1085#1086#1077', '#1056#1086#1076#1080#1090#1077#1083#1100#1089#1082#1086#1077', '#1055#1088#1086#1079#1088#1072#1095#1085#1086#1077')'
      DrawDefaultFrame = False
      AdjustSpaceForGlyph = False
      Flat = True
      NumGlyphs = 1
      TabOrder = 10
      ParentFont = True
      OnClick = FontItalicInheritanceButtonClick
      DockOrientation = doNoOrient
    end
    object f_FontForeColorInheritanceButton: TElPopupButton
      Left = 76
      Top = 32
      Width = 16
      Height = 16
      Hint = #1058#1080#1087' '#1085#1072#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103' ('#1057#1086#1073#1089#1090#1074#1077#1085#1085#1086#1077', '#1056#1086#1076#1080#1090#1077#1083#1100#1089#1082#1086#1077', '#1055#1088#1086#1079#1088#1072#1095#1085#1086#1077')'
      DrawDefaultFrame = False
      AdjustSpaceForGlyph = False
      Flat = True
      NumGlyphs = 1
      TabOrder = 2
      ParentFont = True
      OnClick = FontForeColorInheritanceButtonClick
      DockOrientation = doNoOrient
    end
    object f_FontBoldInheritanceButton: TElPopupButton
      Left = 371
      Top = 31
      Width = 16
      Height = 16
      Hint = #1058#1080#1087' '#1085#1072#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103' ('#1057#1086#1073#1089#1090#1074#1077#1085#1085#1086#1077', '#1056#1086#1076#1080#1090#1077#1083#1100#1089#1082#1086#1077', '#1055#1088#1086#1079#1088#1072#1095#1085#1086#1077')'
      DrawDefaultFrame = False
      AdjustSpaceForGlyph = False
      Flat = True
      NumGlyphs = 1
      TabOrder = 8
      ParentFont = True
      OnClick = FontBoldInheritanceButtonClick
      DockOrientation = doNoOrient
    end
    object f_FontBackColorInheritanceButton: TElPopupButton
      Left = 76
      Top = 56
      Width = 16
      Height = 16
      Hint = #1058#1080#1087' '#1085#1072#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103' ('#1057#1086#1073#1089#1090#1074#1077#1085#1085#1086#1077', '#1056#1086#1076#1080#1090#1077#1083#1100#1089#1082#1086#1077', '#1055#1088#1086#1079#1088#1072#1095#1085#1086#1077')'
      DrawDefaultFrame = False
      AdjustSpaceForGlyph = False
      Flat = True
      NumGlyphs = 1
      TabOrder = 4
      ParentFont = True
      OnClick = FontBackColorInheritanceButtonClick
      DockOrientation = doNoOrient
    end
    object f_FontUnderlineInheritanceButton: TElPopupButton
      Left = 371
      Top = 63
      Width = 16
      Height = 16
      Hint = #1058#1080#1087' '#1085#1072#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103' ('#1057#1086#1073#1089#1090#1074#1077#1085#1085#1086#1077', '#1056#1086#1076#1080#1090#1077#1083#1100#1089#1082#1086#1077', '#1055#1088#1086#1079#1088#1072#1095#1085#1086#1077')'
      DrawDefaultFrame = False
      AdjustSpaceForGlyph = False
      Flat = True
      NumGlyphs = 1
      ShowGlyph = False
      TabOrder = 12
      ParentFont = True
      OnClick = FontUnderlineInheritanceButtonClick
      DockOrientation = doNoOrient
    end
    object f_FontUnderlineCheckBox: TeeCheckBox
      Left = 390
      Top = 64
      Width = 14
      Height = 14
      TabOrder = 13
      OnClick = FontUnderlineCheckBoxClick
    end
    object f_FontStrikeoutCheckBox: TeeCheckBox
      Left = 390
      Top = 80
      Width = 14
      Height = 14
      TabOrder = 15
      OnClick = FontStrikeoutCheckBoxClick
    end
    object f_FontSizeComboBox: TvtComboBoxQS
      Left = 357
      Top = 7
      Width = 46
      Height = 21
      OnChange = FontSizeComboBoxChange
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
    end
    object f_FontNameComboBox: TvtComboBoxQS
      Left = 95
      Top = 7
      Width = 158
      Height = 21
      OnChange = FontNameComboBoxChange
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      ComboStyle = ct_cbDropDownList
    end
    object f_FontItalicCheckBox: TeeCheckBox
      Left = 390
      Top = 48
      Width = 14
      Height = 14
      TabOrder = 11
      OnClick = FontItalicCheckBoxClick
    end
    object f_FontForeColorBox: TvtColorBox
      Left = 95
      Top = 31
      Width = 158
      Height = 21
      OnChange = FontForeColorBoxChange
      ColorStyle = [cbStandardColors, cbSystemColors, cbIncludeDefault, cbCustomColor, cbPrettyNames]
      DefaultColorColor = clWindowText
      NoneColorColor = clNone
      Selected = clScrollBar
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      TabStop = True
    end
    object f_FontBoldCheckBox: TeeCheckBox
      Left = 390
      Top = 32
      Width = 14
      Height = 14
      TabOrder = 9
      OnClick = FontBoldCheckBoxClick
    end
    object f_FontBackColorBox: TvtColorBox
      Left = 95
      Top = 55
      Width = 158
      Height = 21
      OnChange = FontBackColorBoxChange
      ColorStyle = [cbStandardColors, cbSystemColors, cbIncludeDefault, cbCustomColor, cbPrettyNames]
      DefaultColorColor = clWindow
      NoneColorColor = clNone
      Selected = clScrollBar
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      TabStop = True
    end
    object f_FontScalableCheckBox: TeeCheckBox
      Left = 390
      Top = 105
      Width = 14
      Height = 14
      TabOrder = 16
      OnClick = FontScalableCheckBoxClick
    end
  end
  object Entities: TvcmEntities
    Entities = <
      item
        Name = 'enText'
        Controls = <
          item
            Control = f_FontSizeComboBox
          end
          item
            Control = f_FontNameComboBox
          end
          item
            Control = f_FontForeColorBox
          end
          item
            Control = f_FontBackColorBox
          end>
      end
      item
        Name = 'enEdit'
        Controls = <
          item
            Control = f_FontSizeComboBox
          end
          item
            Control = f_FontNameComboBox
          end
          item
            Control = f_FontForeColorBox
          end
          item
            Control = f_FontBackColorBox
          end>
      end>
    Left = 5
    Top = 69
  end
end
