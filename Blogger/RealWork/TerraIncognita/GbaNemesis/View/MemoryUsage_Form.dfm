object MemoryUsageDlg: TMemoryUsageDlg
  Left = 430
  Top = 126
  Width = 506
  Height = 308
  Caption = #1048#1089#1087#1086#1083#1100#1079#1091#1077#1084#1099#1077' '#1088#1077#1089#1091#1088#1089#1099
  Color = 16382202
  Font.Height = -10
  Position = poScreenCenter
  ShowHint = True
  ZoneType = vcm_ztModal
  OnInit = vcmEntityFormInit
  PixelsPerInch = 96
  TextHeight = 13
  object pnTagTree: TvtPanel
    Left = 305
    Top = 0
    Width = 185
    Height = 272
    Align = alClient
    TabOrder = 0
    object TagTree: TeeTreeView
      Left = 1
      Top = 1
      Width = 183
      Height = 141
      Align = alClient
      BorderStyle = bsNone
      TabOrder = 0
    end
    object pnMemClasses: TvtSizeablePanel
      Left = 1
      Top = 142
      Width = 183
      Height = 129
      ResizeAreaWidth = 5
      SizeableSides = [szTop]
      SplitterBevel = bvRaised
      Align = alBottom
      BevelOuter = bvNone
      Caption = 'pnMemClasses'
      TabOrder = 1
      object memClasses: TevMemo
        Left = 0
        Top = 5
        Width = 183
        Height = 124
        AutoSelect = False
        Align = alClient
        TabOrder = 0
        TabStop = True
      end
    end
  end
  object pnSummary: TvtSizeablePanel
    Left = 0
    Top = 0
    Width = 305
    Height = 272
    ResizeAreaWidth = 5
    SizeableSides = [szRight]
    SplitterBevel = bvRaised
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 1
    object lbLocalMemory: TvtLabel
      Left = 14
      Top = 10
      Width = 283
      Height = 16
      AutoSize = False
      Caption = 'lblLocalMemory'
      DrawDirection = ddHorizontal
    end
    object lbObjectMemory: TvtLabel
      Left = 14
      Top = 70
      Width = 283
      Height = 17
      AutoSize = False
      Caption = 'lbObjectMemory'
      DrawDirection = ddHorizontal
    end
    object lbObjectCount: TvtLabel
      Left = 14
      Top = 110
      Width = 283
      Height = 16
      AutoSize = False
      Caption = 'lbObjectCount'
      DrawDirection = ddHorizontal
    end
    object lbGlobalMemory: TvtLabel
      Left = 14
      Top = 50
      Width = 283
      Height = 16
      AutoSize = False
      Caption = 'lbGlobalMemory'
      DrawDirection = ddHorizontal
    end
    object lbDocumentsInCacheCount: TvtLabel
      Left = 14
      Top = 130
      Width = 253
      Height = 13
      AutoSize = False
      Caption = 'lbDocumentsInCacheCount'
      DrawDirection = ddHorizontal
    end
    object lbAllLocalMemory: TvtLabel
      Left = 14
      Top = 30
      Width = 275
      Height = 13
      AutoSize = False
      Caption = 'lbAllLocalMemory'
      DrawDirection = ddHorizontal
    end
    object lbTotalMemory: TvtLabel
      Left = 14
      Top = 90
      Width = 275
      Height = 13
      AutoSize = False
      Caption = 'lbTotalMemory'
      DrawDirection = ddHorizontal
    end
  end
  object Entities: TvcmEntities
    Entities = <
      item
        Name = 'enResult'
        Operations = <
          item
            Name = 'opOk'
            OnTest = enResultopOkTest
            OnExecute = enResultopOkExecute
          end
          item
            Name = 'opCancel'
            OnExecute = enResultopCancelExecute
          end
          item
            Name = 'opHelp'
            OnTest = enResultopHelpTest
            OnExecute = enResultopCancelExecute
          end>
        ToolbarPos = vcm_tbpBottom
      end
      item
        Name = 'DocumentsCache'
        Operations = <
          item
            Name = 'Clear'
            OnExecute = DocumentsCacheClearExecute
          end
          item
            Name = 'Disable'
            OnTest = DocumentsCacheDisableTest
            OnExecute = DocumentsCacheDisableExecute
          end>
      end
      item
        Name = 'enEdit'
        Controls = <
          item
            Control = memClasses
          end>
      end
      item
        Name = 'enFile'
        Controls = <
          item
            Control = memClasses
          end>
      end
      item
        Name = 'enText'
        Controls = <
          item
            Control = memClasses
          end>
      end>
  end
end
