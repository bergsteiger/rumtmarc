object enLongProcessMessage: TenLongProcessMessage
  Left = 346
  Top = 311
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103
  ClientHeight = 143
  ClientWidth = 362
  Color = $00F9F8FA
  Position = poScreenCenter
  OnCloseQuery = vcmEntityFormCloseQuery
  ZoneType = vcm_ztManualModal
  PixelsPerInch = 96
  TextHeight = 13
  object ClientPanel: TvtPanel
    Left = 49
    Top = 0
    Width = 313
    Height = 87
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 4
    TabOrder = 0
    object MessageLabel: TvtLabel
      Left = 4
      Top = 4
      Width = 305
      Height = 79
      Align = alClient
      WordWrap = True
    end
  end
  object BottomPanel: TvtPanel
    Left = 0
    Top = 117
    Width = 362
    Height = 26
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      362
      26)
    object ProgressBar: TvtGradientWaitbar
      Left = 2
      Top = 2
      Width = 358
      Height = 22
      Active = False
      Color1 = clSkyBlue
      Color2 = clBlue
      Anchors = [akLeft, akTop, akRight, akBottom]
    end
  end
  object LeftPanel: TvtPanel
    Left = 0
    Top = 0
    Width = 49
    Height = 87
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 2
    object Image: TImage
      Left = 8
      Top = 8
      Width = 32
      Height = 32
    end
  end
  object ButtonPanel: TvtPanel
    Left = 0
    Top = 87
    Width = 362
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    DesignSize = (
      362
      30)
    object btnExit: TeeButton
      Left = 280
      Top = 1
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #1042#1099#1093#1086#1076
      TabOrder = 0
      OnClick = btnExitClick
    end
  end
  object Entities: TvcmEntities
    Left = 10
    Top = 42
  end
end
