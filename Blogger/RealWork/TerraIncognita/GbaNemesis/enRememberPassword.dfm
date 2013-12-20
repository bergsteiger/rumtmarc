object nsRememberPasswordForm: TnsRememberPasswordForm
  Left = 332
  Top = 313
  ActiveControl = btnCancel
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1047#1072#1073#1099#1083#1080' '#1087#1072#1088#1086#1083#1100'?'
  ClientHeight = 127
  ClientWidth = 423
  Color = $00F9F8FA
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  ZoneType = vcm_ztManualModal
  DesignSize = (
    423
    127)
  PixelsPerInch = 96
  TextHeight = 13
  object EMailLabel: TvtLabel
    Left = 8
    Top = 7
    Width = 125
    Height = 17
    Alignment = taRightJustify
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    BiDiMode = bdLeftToRight
    Caption = '*'#1069#1083#1077#1082#1090#1088#1086#1085#1085#1072#1103' '#1087#1086#1095#1090#1072':'
    ParentBiDiMode = False
  end
  object HintLabel: TvtLabel
    Left = 8
    Top = 32
    Width = 409
    Height = 56
    Alignment = taCenter
    AutoSize = False
    Caption = 
      '*'#1040#1076#1088#1077#1089' '#1101#1083#1077#1082#1090#1088#1086#1085#1085#1086#1081' '#1087#1086#1095#1090#1099', '#1091#1082#1072#1079#1072#1085#1085#1099#1081' '#1087#1088#1080' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080'. '#1053#1072' '#1101#1090#1086#1090' '#1072#1076#1088 +
      #1077#1089' '#1073#1091#1076#1077#1090' '#1074#1099#1089#1083#1072#1085#1086' '#1087#1080#1089#1100#1084#1086', '#1089#1086#1076#1077#1088#1078#1072#1097#1077#1077' '#1042#1072#1096#1080' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1086#1077' '#1080#1084#1103' '#1080' '#1087 +
      #1072#1088#1086#1083#1100'.'
    WordWrap = True
  end
  object btnCancel: TElPopupButton
    Left = 342
    Top = 94
    Width = 75
    Height = 25
    DrawDefaultFrame = False
    Cancel = True
    ModalResult = 2
    NumGlyphs = 1
    ThinFrame = True
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 0
    ParentFont = True
    DockOrientation = doNoOrient
    DoubleBuffered = False
  end
  object btnSend: TElPopupButton
    Left = 210
    Top = 94
    Width = 122
    Height = 25
    DrawDefaultFrame = False
    Default = True
    ModalResult = 2
    NumGlyphs = 1
    ThinFrame = True
    Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1079#1072#1087#1088#1086#1089
    Enabled = False
    TabOrder = 1
    ParentFont = True
    OnClick = btnSendClick
    DockOrientation = doNoOrient
    DoubleBuffered = False
  end
  object edEmail: TnscEdit
    Left = 146
    Top = 6
    Width = 267
    Height = 21
    OnChange = EMailEditChange
    TabOrder = 2
    ParentShowHint = False
    ShowHint = True
  end
end
