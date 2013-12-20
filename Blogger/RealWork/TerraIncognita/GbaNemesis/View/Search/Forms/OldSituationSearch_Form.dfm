object cfOldSituationSearch: TcfOldSituationSearch
  Left = 47
  Top = 66
  Width = 603
  Height = 504
  ActiveControl = MainZone
  Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1089#1080#1090#1091#1072#1094#1080#1080
  Color = $00F9F8FA
  Scaled = False
  OnInit = vcmContainerFormInit
  OnLoadState = vcmContainerFormLoadState
  OnSaveState = vcmContainerFormSaveState
  Zones = <
    item
      Control = MainZone
    end
    item
      Control = ChildZone
      ZoneType = vcm_ztChild
    end
    item
      Control = ParentZone
      ZoneType = vcm_ztParent
      FormStyle.Toolbars.Bottom.MergeWithContainer = vcm_bTrue
    end>
  PixelsPerInch = 96
  TextHeight = 13
  object BackgroundPanel: TvtPanel
    Left = 0
    Top = 0
    Width = 587
    Height = 468
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object ContextFilter: TnscContextFilter
      Left = 0
      Top = 0
      Width = 587
      Height = 31
      ImageIndex = 77
      OnChange = ContextFilterChange
      OnWrongContext = ContextFilterWrongContext
    end
    object InnerBackgroundPanel: TvtProportionalPanel
      Left = 0
      Top = 31
      Width = 587
      Height = 437
      TabOrder = 1
      object BotomPanel: TvtSizeablePanel
        Left = 1
        Top = 262
        Width = 585
        Height = 174
        ResizeAreaWidth = 5
        SizeableSides = [szTop]
        SplitterBevel = bvRaised
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object ParentZone: TvtPanel
          Left = 0
          Top = 5
          Width = 585
          Height = 169
          Align = alClient
          BevelOuter = bvNone
          Caption = 'ParentZone'
          TabOrder = 0
        end
      end
      object ZoneContainer: TvtProportionalPanel
        Left = 1
        Top = 1
        Width = 585
        Height = 261
        BevelOuter = bvNone
        TabOrder = 1
        object ChildZone: TvtPanel
          Left = 281
          Top = 0
          Width = 304
          Height = 261
          Align = alClient
          BevelOuter = bvNone
          Caption = 'ChildZone'
          TabOrder = 1
        end
        object MainZone: TvtSizeablePanel
          Left = 0
          Top = 0
          Width = 281
          Height = 261
          ResizeAreaWidth = 5
          SizeableSides = [szRight]
          SplitterBevel = bvRaised
          Align = alLeft
          BevelOuter = bvNone
          Caption = 'MainZone'
          TabOrder = 0
        end
      end
    end
  end
  object Entities: TvcmEntities
    Entities = <
      item
        Name = 'enText'
        Controls = <
          item
            Control = ContextFilter.InternalEditor
          end>
      end>
    Left = 10
    Top = 10
  end
end
