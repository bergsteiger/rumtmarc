object nsRegistrationForm: TnsRegistrationForm
  Left = 161
  Top = 240
  Anchors = [akTop, akRight]
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103
  ClientHeight = 262
  ClientWidth = 476
  Color = $00F9F8FA
  Font.Height = -13
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  ZoneType = vcm_ztManualModal
  PixelsPerInch = 96
  TextHeight = 13
  object pnMainData: TvtPanel
    Left = 0
    Top = 0
    Width = 476
    Height = 229
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      476
      229)
    object UserNameLabel: TvtLabel
      Left = 0
      Top = 150
      Width = 207
      Height = 17
      Alignment = taRightJustify
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = #1060#1048#1054' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103':'
      ParentBiDiMode = False
    end
    object PasswordLabel: TvtLabel
      Left = 0
      Top = 102
      Width = 207
      Height = 17
      Alignment = taRightJustify
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = #1053#1086#1074#1099#1081' '#1087#1072#1088#1086#1083#1100':'
      ParentBiDiMode = False
    end
    object LoginLabel: TvtLabel
      Left = 0
      Top = 78
      Width = 207
      Height = 17
      Alignment = taRightJustify
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = #1053#1086#1074#1086#1077' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1086#1077' '#1080#1084#1103':'
      ParentBiDiMode = False
    end
    object InfoLabel: TvtLabel
      Left = 222
      Top = 214
      Width = 249
      Height = 17
      Anchors = [akTop, akRight]
      Caption = '* - '#1087#1086#1083#1103', '#1086#1073#1103#1079#1072#1090#1077#1083#1100#1085#1099#1077' '#1076#1083#1103' '#1079#1072#1087#1086#1083#1085#1077#1085#1080#1103
    end
    object EMailLabel: TvtLabel
      Left = 0
      Top = 174
      Width = 207
      Height = 17
      Alignment = taRightJustify
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = #1069#1083#1077#1082#1090#1088#1086#1085#1085#1072#1103' '#1087#1086#1095#1090#1072':'
      ParentBiDiMode = False
    end
    object ConfirmPasswordLabel: TvtLabel
      Left = 0
      Top = 126
      Width = 207
      Height = 17
      Alignment = taRightJustify
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = #1055#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077' '#1087#1072#1088#1086#1083#1103':'
      ParentBiDiMode = False
    end
    object vtAsteriskLabelLogin: TvtLabel
      Left = 207
      Top = 78
      Width = 9
      Height = 17
      Alignment = taRightJustify
      BiDiMode = bdLeftToRight
      Caption = ' *'
      ParentBiDiMode = False
    end
    object vtAsteriskLabelFIO: TvtLabel
      Left = 207
      Top = 150
      Width = 9
      Height = 17
      Alignment = taRightJustify
      BiDiMode = bdLeftToRight
      Caption = ' *'
      ParentBiDiMode = False
    end
    object edPassword: TnscComboBoxWithPwdChar
      Left = 222
      Top = 100
      Width = 249
      Height = 21
      Hint = #1042#1074#1077#1076#1080#1090#1077' '#1087#1072#1088#1086#1083#1100' '#1076#1083#1103' '#1072#1074#1090#1086#1088#1080#1079#1072#1094#1080#1080' '#1074' '#1089#1080#1089#1090#1077#1084#1077
      OnChange = edPasswordChange
      Anchors = [akTop, akRight]
      TabOrder = 1
      ParentShowHint = False
      ShowHint = True
      MaxLength = 255
      PasswordChar = '*'
    end
    object edUserName: TnscEdit
      Left = 222
      Top = 148
      Width = 249
      Height = 21
      Hint = #1042#1074#1077#1076#1080#1090#1077' '#1089#1074#1086#1080' '#1080#1084#1103', '#1092#1072#1084#1080#1083#1080#1102' '#1080' '#1086#1090#1095#1077#1089#1090#1074#1086
      OnChange = edUserNameChange
      Anchors = [akTop, akRight]
      TabOrder = 3
      ParentShowHint = False
      ShowHint = True
    end
    object edLogin: TnscEdit
      Left = 222
      Top = 76
      Width = 249
      Height = 21
      Hint = #1042#1074#1077#1076#1080#1090#1077' '#1080#1084#1103' '#1076#1083#1103' '#1088#1072#1073#1086#1090#1099' '#1074' '#1089#1080#1089#1090#1077#1084#1077' '#1043#1040#1056#1040#1053#1058
      OnChange = edLoginChange
      Anchors = [akTop, akRight]
      TabOrder = 0
      ParentShowHint = False
      ShowHint = True
      MaxLength = 31
    end
    object edEmail: TnscEdit
      Left = 222
      Top = 172
      Width = 249
      Height = 21
      Hint = 
        #1069#1083#1077#1082#1090#1088#1086#1085#1085#1072#1103' '#1087#1086#1095#1090#1072': '#1072#1076#1088#1077#1089', '#1085#1072' '#1082#1086#1090#1086#1088#1099#1081' '#1073#1091#1076#1077#1090' '#1074#1099#1089#1083#1072#1085' '#1079#1072#1073#1099#1090#1099#1081' '#1042#1072#1084#1080' '#1087 +
        #1072#1088#1086#1083#1100
      OnChange = edUserNameChange
      Anchors = [akTop, akRight]
      TabOrder = 4
      ParentShowHint = False
      ShowHint = True
    end
    object edConfirm: TnscComboBoxWithPwdChar
      Left = 222
      Top = 124
      Width = 249
      Height = 21
      Hint = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1077' '#1087#1072#1088#1086#1083#1100', '#1074#1074#1077#1076#1077#1085#1085#1099#1081' '#1074' '#1087#1088#1077#1076#1099#1076#1091#1097#1077#1081' '#1089#1090#1088#1086#1082#1077
      OnChange = edConfirmChange
      Anchors = [akTop, akRight]
      TabOrder = 2
      ParentShowHint = False
      ShowHint = True
      MaxLength = 255
      PasswordChar = '*'
    end
    object cbAutoLogin: TeeCheckBox
      Left = 222
      Top = 194
      Width = 250
      Height = 17
      Anchors = [akTop, akRight]
      Caption = #1047#1072#1087#1086#1084#1085#1080#1090#1100' '#1087#1072#1088#1086#1083#1100
      Enabled = False
      TabOrder = 5
    end
    object NewUserGroupBox: TvtGroupBox
      Left = 6
      Top = 7
      Width = 462
      Height = 64
      Caption = ' '#1053#1086#1074#1099#1081' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100' '
      Font.Height = -13
      ParentFont = False
      TabOrder = 6
      DesignSize = (
        462
        64)
      object NewUserLabel: TvtLabel
        Left = 69
        Top = 17
        Width = 312
        Height = 45
        Anchors = [akLeft, akTop, akRight]
        Caption = 
          #1063#1090#1086#1073#1099' '#1085#1072#1095#1072#1090#1100' '#1088#1072#1073#1086#1090#1091' '#1089' '#1089#1080#1089#1090#1077#1084#1086#1081' '#1043#1040#1056#1040#1053#1058' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086' '#1079#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1086#1074#1072#1090 +
          #1100#1089#1103' '#1074' '#1089#1080#1089#1090#1077#1084#1077', '#1089#1086#1079#1076#1072#1074' '#1089#1074#1086#1102' '#1091#1095#1077#1090#1085#1091#1102' '#1079#1072#1087#1080#1089#1100'.'
        Font.Height = -12
        ParentFont = False
        Layout = tlCenter
        WordWrap = True
      end
      object NewUserPaintBox: TPaintBox
        Left = 15
        Top = 20
        Width = 32
        Height = 32
        OnPaint = NewUserPaintBoxPaint
      end
    end
  end
  object BottomPanel: TvtPanel
    Left = 0
    Top = 229
    Width = 476
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      476
      33)
    object RegisterButton: TElPopupButton
      Left = 265
      Top = 0
      Width = 205
      Height = 25
      DrawDefaultFrame = False
      Default = True
      NumGlyphs = 1
      Caption = #1047#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1086#1074#1072#1090#1100#1089#1103
      Enabled = False
      TabOrder = 0
      OnClick = RegisterButtonClick
      Anchors = [akTop, akRight]
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object HelpPanel: TvtPanel
      Left = 9
      Top = 7
      Width = 85
      Height = 19
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
      object HelpPaintBox: TPaintBox
        Left = 0
        Top = 0
        Width =	 16
        Height = 19
        OnPaint = HelpPaintBoxPaint
      end
      object HelpLabel: TvtFocusLabel
        Left = 20
        Top = 0
        Width = 56
        Height = 19
        Cursor = crHandPoint
        Caption = #1055#1086#1084#1086#1097#1100
        TabOrder = 0
        Font.Color = clBlue
        Font.Height = -13
        HighlightColor = clBlue
        Hyperlink = True
        OnClick = HelpLabelClick
      end
    end
  end
end
