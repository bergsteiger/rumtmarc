object en_TurnOnTimeMachine: Ten_TurnOnTimeMachine
  Left = 445
  Top = 133
  BorderStyle = bsDialog
  Caption = #1042#1082#1083#1102#1095#1080#1090#1100' '#1052#1072#1096#1080#1085#1091' '#1074#1088#1077#1084#1077#1085#1080
  ClientHeight = 227
  ClientWidth = 388
  Color = $00F9F8FA
  OnShow = vcmEntityFormRefShow  
  ZoneType = vcm_ztModal
  DesignSize = (
    388
    227)
  PixelsPerInch = 96
  TextHeight = 13
  object pbDialogIcon: TPaintBox
    Left = 15
    Top = 10
    Width = 32
    Height = 32
    OnPaint = pbDialogIconPaint
  end
  object lblTurnOnTimeMachineInfo: TvtLabel
    Left = 64
    Top = 16
    Width = 269
    Height = 32
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1074#1072#1088#1080#1072#1085#1090' '#1074#1082#1083#1102#1095#1077#1085#1080#1103' '#1052#1072#1096#1080#1085#1099' '#1074#1088#1077#1084#1077#1085#1080':'
    Font.Style = [fsBold]
    WordWrap = True
  end
  object rb_totmOnDate: TvtRadioButton
    Left = 64
    Top = 53
    Width = 289
    Height = 32
    Caption = #1042#1082#1083#1102#1095#1080#1090#1100' '#1052#1072#1096#1080#1085#1091' '#1074#1088#1077#1084#1077#1085#1080' '#1089' '#1082#1072#1083#1077#1085#1076#1072#1088#1085#1086#1081' '#1076#1072#1090#1099
    TabOrder = 0
    WordWrap = True
  end
  object rb_totmOnCurrentRedation: TvtRadioButton
    Left = 64
    Top = 127
    Width = 281
    Height = 33
    Caption = #1042#1082#1083#1102#1095#1080#1090#1100' '#1052#1072#1096#1080#1085#1091' '#1074#1088#1077#1084#1077#1085#1080' '#1089' '#1085#1072#1095#1072#1083#1072' '#1076#1077#1081#1089#1090#1074#1080#1103' '#1090#1077#1082#1091#1097#1077#1081' '#1088#1077#1076#1072#1082#1094#1080#1080
    TabOrder = 2
    WordWrap = True
  end
  object btnOk: TvtButton
    Left = 210
    Top = 184
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'OK'
    TabOrder = 3
    OnClick = btnOkClick
  end
  object btnCancel: TvtButton
    Left = 298
    Top = 184
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 4
  end
  object deDate: TvtDblClickDateEdit
    Left = 83
    Top = 96
    Width = 121
    Height = 24
    Style = csDropDown
    TabOrder = 1
    OnChange = deDateChange
  end
  object Entities: TvcmEntities
    Entities = <
      item
        Name = 'enResult'
        Operations = <
          item
            Name = 'opOk'
          end
          item
            Name = 'opCancel'
          end>
      end>
    Left = 18
    Top = 58
  end
end
