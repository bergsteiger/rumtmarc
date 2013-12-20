object efUserProperty: TefUserProperty
  Left = 547
  Top = 341
  Width = 598
  Height = 276
  Caption = #1057#1074#1086#1081#1089#1090#1074#1072' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
  Color = 16382202
  OnCloseQueryEx = vcmEntityFormCloseQueryEx
  Style.Toolbars.Bottom.MergeWithContainer = vcm_bTrue
  ZoneType = vcm_ztChild
  OnChangedDataSource = vcmEntityFormChangedDataSource
  PixelsPerInch = 96
  TextHeight = 13
  object pnMainData: TvtPanel
    Left = 0
    Top = 0
    Width = 582
    Height = 240
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object f_TopPanel: TvtPanel
      Left = 0
      Top = 0
      Width = 582
      Height = 153
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object UserNameLabel: TvtLabel
        Left = 0
        Top = 81
        Width = 182
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BiDiMode = bdLeftToRight
        Caption = '*'#1060#1048#1054' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103':'
        ParentBiDiMode = False
      end
      object PasswordLabel: TvtLabel
        Left = 0
        Top = 33
        Width = 182
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BiDiMode = bdLeftToRight
        Caption = #1055#1072#1088#1086#1083#1100':'
        ParentBiDiMode = False
      end
      object LoginLabel: TvtLabel
        Left = 0
        Top = 9
        Width = 182
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BiDiMode = bdLeftToRight
        Caption = '*'#1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1086#1077' '#1080#1084#1103':'
        ParentBiDiMode = False
      end
      object EMailLabel: TvtLabel
        Left = 0
        Top = 105
        Width = 182
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BiDiMode = bdLeftToRight
        Caption = #1069#1083#1077#1082#1090#1088#1086#1085#1085#1072#1103' '#1087#1086#1095#1090#1072':'
        ParentBiDiMode = False
      end
      object ConfirmPasswordLabel: TvtLabel
        Left = 0
        Top = 57
        Width = 182
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BiDiMode = bdLeftToRight
        Caption = #1055#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077' '#1087#1072#1088#1086#1083#1103':'
        ParentBiDiMode = False
      end
      object GroupLabel: TvtLabel
        Left = 0
        Top = 129
        Width = 182
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BiDiMode = bdLeftToRight
        Caption = #1043#1088#1091#1087#1087#1072':'
        ParentBiDiMode = False
      end
      object edPassword: TnscComboBoxWithPwdChar
        Left = 194
        Top = 32
        Width = 382
        Height = 21
        Hint = #1053#1086#1074#1099#1081' '#1055#1072#1088#1086#1083#1100': '#1076#1086#1083#1078#1077#1085' '#1089#1086#1074#1087#1072#1076#1072#1090#1100' '#1089' '#1087#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077#1084' '#1087#1072#1088#1086#1083#1103
        OnChange = edPasswordChange
        TabOrder = 1
        ParentShowHint = False
        ShowHint = True
        MaxLength = 255
        PasswordChar = '*'
      end
      object edUserName: TnscEdit
        Left = 194
        Top = 80
        Width = 382
        Height = 21
        Hint = #1048#1084#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103': '#1085#1077' '#1076#1086#1083#1078#1085#1086' '#1073#1099#1090#1100' '#1087#1091#1089#1090#1099#1084
        OnChange = edUserNameChange
        TabOrder = 3
        ParentShowHint = False
        ShowHint = True
      end
      object edLogin: TnscEdit
        Left = 194
        Top = 8
        Width = 382
        Height = 21
        Hint = #1053#1086#1074#1086#1077' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1086#1077' '#1080#1084#1103
        OnChange = edLoginChange
        TabOrder = 0
        ParentShowHint = False
        ShowHint = True
        MaxLength = 31
      end
      object edEmail: TnscEdit
        Left = 194
        Top = 104
        Width = 382
        Height = 21
        Hint = 
          #1069#1083#1077#1082#1090#1088#1086#1085#1085#1072#1103' '#1087#1086#1095#1090#1072': '#1072#1076#1088#1077#1089', '#1085#1072' '#1082#1086#1090#1086#1088#1099#1081' '#1073#1091#1076#1077#1090' '#1074#1099#1089#1083#1072#1085' '#1079#1072#1073#1099#1090#1099#1081' '#1042#1072#1084#1080' '#1087 +
          #1072#1088#1086#1083#1100
        OnChange = edEmailChange
        TabOrder = 4
        ParentShowHint = False
        ShowHint = True
      end
      object edConfirm: TnscComboBoxWithPwdChar
        Left = 194
        Top = 56
        Width = 382
        Height = 21
        Hint = #1055#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077' '#1087#1072#1088#1086#1083#1103': '#1076#1086#1083#1078#1085#1086' '#1089#1086#1074#1087#1072#1076#1072#1090#1100' '#1089' '#1085#1086#1074#1099#1084' '#1087#1072#1088#1086#1083#1077#1084
        OnChange = edConfirmChange
        TabOrder = 2
        ParentShowHint = False
        ShowHint = True
        MaxLength = 255
        PasswordChar = '*'
      end
      object edGroup: TvtComboBoxQS
        Left = 194
        Top = 128
        Width = 382
        Height = 21
        Hint = #1043#1088#1091#1087#1087#1072' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
        OnChange = edGroupChange
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        ComboStyle = ct_cbDropDownList
      end
    end
    object f_MiddlePanel: TvtPanel
      Left = 0
      Top = 153
      Width = 582
      Height = 34
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object edPrivilegedUser: TeeCheckBox
        Left = 194
        Top = 0
        Width = 346
        Height = 17
        Caption = #1055#1088#1080#1074#1080#1083#1077#1075#1080#1088#1086#1074#1072#1085#1085#1099#1081' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
        TabOrder = 0
        OnClick = edPrivilegedUserClick
      end
      object edBuyConsulting: TeeCheckBox
        Left = 194
        Top = 17
        Width = 376
        Height = 17
        Caption = #1056#1072#1079#1088#1077#1096#1077#1085#1086' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1077' '#1091#1089#1083#1091#1075#1080' '#1055#1088#1072#1074#1086#1074#1086#1075#1086' '#1082#1086#1085#1089#1072#1083#1090#1080#1085#1075#1072
        TabOrder = 1
        OnClick = edBuyConsultingClick
      end
    end
    object f_DontDeleteIdleUserPanel: TvtPanel
      Left = 0
      Top = 187
      Width = 582
      Height = 17
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object edDontDeleteIdleUser: TeeCheckBox
        Left = 194
        Top = 0
        Width = 346
        Height = 17
        Caption = #1053#1077' '#1091#1076#1072#1083#1103#1090#1100' '#1087#1088#1080' '#1073#1077#1079#1076#1077#1081#1089#1090#1074#1080#1080
        TabOrder = 0
        OnClick = edDontDeleteIdleUserClick
      end
    end
    object f_BottomPanel: TvtPanel
      Left = 0
      Top = 204
      Width = 582
      Height = 34
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object InfoLabel: TvtLabel
        Left = 8
        Top = 17
        Width = 505
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = '* - '#1087#1086#1083#1103', '#1086#1073#1103#1079#1072#1090#1077#1083#1100#1085#1099#1077' '#1076#1083#1103' '#1079#1072#1087#1086#1083#1085#1077#1085#1080#1103
      end
      object edHasSharedFilters: TeeCheckBox
        Left = 194
        Top = 0
        Width = 346
        Height = 17
        Caption = #1060#1080#1083#1100#1090#1088#1099' '#1101#1090#1086#1075#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103' '#1103#1074#1083#1103#1102#1090#1089#1103' '#1086#1073#1097#1080#1084#1080
        TabOrder = 0
        OnClick = edHasSharedFiltersClick
      end
    end
  end
  object Entities: TvcmEntities
    Entities = <
      item
        Name = 'enResult'
        Operations = <
          item
            Name = 'opSave'
          end
          item
            Name = 'opCancel'
          end>
        ToolbarPos = vcm_tbpBottom
      end
      item
        Name = 'enEdit'
        Controls = <
          item
            Control = edPassword
          end
          item
            Control = edUserName
          end
          item
            Control = edLogin
          end
          item
            Control = edEmail
          end
          item
            Control = edConfirm
          end
          item
            Control = edGroup
          end>
      end
      item
        Name = 'enText'
        Controls = <
          item
            Control = edPassword
          end
          item
            Control = edUserName
          end
          item
            Control = edLogin
          end
          item
            Control = edEmail
          end
          item
            Control = edConfirm
          end
          item
            Control = edGroup
          end>
      end
      item
        Name = 'enFile'
        Controls = <
          item
            Control = edPassword
          end
          item
            Control = edUserName
          end
          item
            Control = edLogin
          end
          item
            Control = edEmail
          end
          item
            Control = edConfirm
          end>
      end>
    Left = 10
    Top = 10
  end
end
