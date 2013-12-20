object cfFoldersInfo: TcfFoldersInfo
  Left = 281
  Top = 159
  Width = 391
  Height = 292
  Color = $00F9F8FA
  ZoneType = vcm_ztManualModal
  Zones = <
    item
      Control = ChildZone
      ZoneType = vcm_ztChild
    end>
  PixelsPerInch = 96
  TextHeight = 13
  object ChildZone: TvtPanel
    Left = 0
    Top = 0
    Width = 375
    Height = 256
    Align = alClient
    BevelOuter = bvNone
    Caption = 'ChildZone'
    TabOrder = 0
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
        ToolbarPos = vcm_tbpBottom
      end>
    Left = 10
    Top = 10
  end
end
