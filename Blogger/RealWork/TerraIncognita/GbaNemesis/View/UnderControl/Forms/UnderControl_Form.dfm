object enUnderControl: TenUnderControl
  Left = 452
  Top = 173
  Width = 220
  Height = 480
  ActiveControl = UnderControlList
  Caption = #1053#1072' '#1082#1086#1085#1090#1088#1086#1083#1077
  Color = 16382202
  Scaled = False
  ZoneType = vcm_ztNavigator
  OnInit = vcmEntityFormInit
  OnGetStatus = vcmEntityFormGetStatus
  PixelsPerInch = 96
  TextHeight = 13
  object UnderControlList: TnscTreeView
    Left = 0
    Top = 0
    Width = 204
    Height = 444
    Align = alClient
    BorderStyle = bsNone
    TabOrder = 0
    MultiSelect = True
    MultiStrokeItem = True
    ActionElementMode = l3_amSecondSingleClick
    ViewOptions = [voShowInterRowSpace, voShowIcons, voShowExpandable, voShowLines, voShowOpenChip, voVariableItemHeight]
    OnSelectChanged = UnderControlListSelectChanged
    OnGetItemIconHint = UnderControlListGetItemIconHint
    OnMakeTreeSource = UnderControlListMakeTreeSource
    OnGetItemImage = UnderControlListGetItemImage
    OnGetItemTextHint = UnderControlListGetItemTextHint
    OnActionElement = UnderControlListActionElement
    OnCurrentChanged = UnderControlListCurrentChanged
    OnGetItemFont = UnderControlListGetItemFont
    SettingId = 'stidUnderControlList'
  end
  object Entities: TvcmEntities
    Entities = <
      item
        Name = 'enControlCenter'
        Operations = <
          item
            Name = 'opAdd'
          end
          item
            Name = 'opCreateList'
          end
          item
            Name = 'opSort'
            AutoFocus = True
          end
          item
            Name = 'opClearAllStatus'
          end>
      end
      item
        Name = 'enEdit'
        Operations = <
          item
            Name = 'opDelete'
          end
          item
            Name = 'opSelectAll'
          end
          item
            Name = 'opDeselect'
          end
          item
            Name = 'opCopy'
          end
          item
            Name = 'opPaste'
          end>
        Controls = <
          item
            Control = UnderControlList
          end>
      end
      item
        Name = 'enDocument'
      end
      item
        Name = 'enControledObject'
        Operations = <
          item
            Name = 'opOpen'
          end
          item
            Name = 'opClearStatus'
          end>
      end
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
            Control = UnderControlList
          end>
      end>
    Left = 10
    Top = 10
  end
end
