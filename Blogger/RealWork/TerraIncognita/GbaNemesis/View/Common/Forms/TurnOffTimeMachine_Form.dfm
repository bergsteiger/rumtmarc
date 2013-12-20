object en_TurnOffTimeMachine: Ten_TurnOffTimeMachine
  Left = 302
  Top = 123
  BorderStyle = bsDialog
  Caption = #1042#1099#1082#1083#1102#1095#1080#1090#1100' '#1052#1072#1096#1080#1085#1091' '#1074#1088#1077#1084#1077#1085#1080' / '#1048#1079#1084#1077#1085#1080#1090#1100' '#1076#1072#1090#1091
  ClientHeight = 267
  ClientWidth = 379
  Color = 16382202
  OnCreate = vcmEntityFormRefCreate
  OnShow = vcmEntityFormRefShow
  ZoneType = vcm_ztModal
  PixelsPerInch = 96
  TextHeight = 13
  object pbDialogIcon: TPaintBox
    Left = 15
    Top = 10
    Width = 31
    Height = 32
    OnPaint = pbDialogIconPaint
  end
  object lblTurnOnTimeMachineInfo: TvtLabel
    Left = 64
    Top = 16
    Width = 247
    Height = 39
    Caption = 
      #1042#1099#1073#1077#1088#1080#1090#1077' '#1074#1072#1088#1080#1072#1085#1090' '#1074#1099#1082#1083#1102#1095#1077#1085#1080#1103' '#1052#1072#1096#1080#1085#1099' '#1074#1088#1077#1084#1077#1085#1080' '#1080#1083#1080' '#1080#1079#1084#1077#1085#1080#1090#1077' '#1076#1072#1090#1091' '#1074' '#1052 +
      #1072#1096#1080#1085#1077' '#1074#1088#1077#1084#1077#1085#1080':'
    Font.Style = [fsBold]
    WordWrap = True
  end
  object rb_totmChangeDate: TvtRadioButton
    Left = 57
    Top = 161
    Width = 288
    Height = 17
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1076#1072#1090#1091' '#1074' '#1052#1072#1096#1080#1085#1077' '#1074#1088#1077#1084#1077#1085#1080
    TabOrder = 2
  end
  object rb_totmStayInCurrentRedaction: TvtRadioButton
    Left = 57
    Top = 115
    Width = 280
    Height = 33
    Caption = #1042#1099#1082#1083#1102#1095#1080#1090#1100' '#1052#1072#1096#1080#1085#1091' '#1074#1088#1077#1084#1077#1085#1080' '#1080' '#1086#1089#1090#1072#1090#1100#1089#1103' '#1074' '#1076#1072#1085#1085#1086#1081' '#1088#1077#1076#1072#1082#1094#1080#1080
    TabOrder = 1
    WordWrap = True
  end
  object btnOk: TvtButton
    Left = 199
    Top = 225
    Width = 74
    Height = 25
    Caption = 'OK'
    TabOrder = 4
    OnClick = btnOkClick
  end
  object btnCancel: TvtButton
    Left = 287
    Top = 225
    Width = 74
    Height = 25
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 5
    ModalResult = 2
  end
  object deChangeDate: TvtDblClickDateEdit
    Left = 76
    Top = 185
    Width = 121
    Height = 21
    ParentFont = True
    Style = csDropDown
    TabOrder = 3
    OnChange = deChangeDateChange
  end
  object rb_totmGotoActualRedaction: TvtRadioButton
    Left = 57
    Top = 70
    Width = 273
    Height = 33
    Caption = #1042#1099#1082#1083#1102#1095#1080#1090#1100' '#1052#1072#1096#1080#1085#1091' '#1074#1088#1077#1084#1077#1085#1080' '#1080' '#1087#1077#1088#1077#1081#1090#1080' '#1074' '#1072#1082#1090#1091#1072#1083#1100#1085#1091#1102' '#1088#1077#1076#1072#1082#1094#1080#1102
    TabOrder = 0
    WordWrap = True
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
    Top = 66
  end
end
