object cfFolders: TcfFolders
  Left = 337
  Top = 97
  Width = 349
  Height = 531
  ActiveControl = ParentZone
  Caption = #1052#1086#1080' '#1076#1086#1082#1091#1084#1077#1085#1090#1099
  Color = $00F9F8FA
  ZoneType = vcm_ztNavigator
  Zones = <
    item
      Control = ParentZone
      ZoneType = vcm_ztParent
      FormStyle.Toolbars.Top.MergeWithContainer = vcm_bTrue
    end
    item
      Control = ChildZone
      ZoneType = vcm_ztChild
    end>
  PixelsPerInch = 96
  TextHeight = 13
  object BackgroundPanel: TvtProportionalPanel
    Left = 0
    Top = 0
    Width = 333
    Height = 495
    BevelOuter = bvNone
    TabOrder = 0
    object ParentZone: TvtPanel
      Left = 0
      Top = 0
      Width = 333
      Height = 262
      Align = alClient
      BevelOuter = bvNone
      Caption = 'ParentZone'
      TabOrder = 0
    end
    object ChildZone: TvtSizeablePanel
      Left = 0
      Top = 262
      Width = 333
      Height = 233
      ResizeAreaWidth = 5
      SizeableSides = [szTop]
      SplitterBevel = bvRaised
      Align = alBottom
      BevelOuter = bvNone
      Caption = 'ChildZone'
      TabOrder = 1
    end
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
            Name = 'opAppend'
          end
          item
            Name = 'opCancel'
          end>
        ToolbarPos = vcm_tbpBottom
      end>
    Left = 10
    Top = 10
  end
end
