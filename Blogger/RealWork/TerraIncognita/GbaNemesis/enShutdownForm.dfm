object enShutdown: TenShutdown
  Left = 197
  Top = 185
  ActiveControl = CloseButton
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = #1055#1088#1077#1076#1091#1087#1088#1077#1078#1076#1077#1085#1080#1077
  ClientHeight = 89
  ClientWidth = 437
  Color = $00F9F8FA
  OnCloseQuery = vcmEntityFormCloseQuery
  ZoneType = vcm_ztFloating
  OnInit = vcmEntityFormInit
  PixelsPerInch = 96
  TextHeight = 13
  object vtPanel1: TvtPanel
    Left = 0
    Top = 0
    Width = 437
    Height = 49
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object WarningText: TvtLabel
      Left = 65
      Top = 0
      Width = 372
      Height = 49
      Align = alClient
      Layout = tlCenter
      WordWrap = True
    end
    object LeftPanel: TvtPanel
      Left = 0
      Top = 0
      Width = 65
      Height = 49
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object Image: TImage
        Left = 15
        Top = 11
        Width = 32
        Height = 32
      end
    end
  end
  object pnlBottom: TvtPanel
    Left = 0
    Top = 49
    Width = 437
    Height = 40
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      437
      40)
    object CloseButton: TeeButton
      Left = 353
      Top = 5
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #1042#1099#1093#1086#1076
      ModalResult = 1
      TabOrder = 0
      OnClick = CloseButtonClick
    end
  end
  object Entities: TvcmEntities
    Left = 34
    Top = 66
  end
  object ShutdownTimer: TTimer
    Enabled = False
    OnTimer = ShutdownTimerTimer
    Top = 64
  end
end
