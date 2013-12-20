object efTreeAttributeFirstLevel: TefTreeAttributeFirstLevel
  Left = 331
  Top = 178
  Width = 233
  Height = 480
  ActiveControl = FirstLevelContent
  Color = $00F9F8FA
  Scaled = False
  ZoneType = vcm_ztNavigator
  OnChangedDataSource = vcmEntityFormChangedDataSource
  OnInit = vcmEntityFormInit
  PixelsPerInch = 96
  TextHeight = 13
  object FirstLevelContent: TnscTreeView
    Left = 0
    Top = 0
    Width = 217
    Height = 444
    Align = alClient
    BorderStyle = bsNone
    TabOrder = 0
    ViewOptions = [voShowIcons]
    OnGetItemImage = FirstLevelContentGetItemImage
    OnCurrentChanged = FirstLevelContentCurrentChanged
    OnNewCharPressed = FirstLevelContentNewCharPressed
    SettingId = 'stidFirstLevelContent'
  end
  object Entities: TvcmEntities
    Entities = <
      item
        Name = 'enTree'
        Operations = <
          item
            Name = 'opExpandAll'
            OnTest = enTreeopExpandAllTest
          end
          item
            Name = 'opCollapseAll'
            OnTest = enTreeopCollapseAllTest
          end
          item
            Name = 'opWrap'
          end>
        Controls = <
          item
            Control = FirstLevelContent
          end>
      end
      item
        Name = 'enEdit'
        Controls = <
          item
            Control = FirstLevelContent
          end>
      end>
    Left = 10
    Top = 10
  end
end
