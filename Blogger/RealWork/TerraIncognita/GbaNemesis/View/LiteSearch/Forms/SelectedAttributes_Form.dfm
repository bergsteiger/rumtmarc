object enSelectedAttributes: TenSelectedAttributes
  Left = 401
  Top = 203
  Width = 365
  Height = 243
  ActiveControl = SelectedTree
  Color = $00F9F8FA
  Scaled = False
  Style.Toolbars.Top.MergeWithContainer = vcm_bFalse
  ZoneType = vcm_ztChild
  OnChangedDataSource = vcmEntityFormChangedDataSource
  OnInit = vcmEntityFormInit
  PixelsPerInch = 96
  TextHeight = 13
  object SelectedTree: TnscTreeView
    Left = 0
    Top = 0
    Width = 349
    Height = 207
    Align = alClient
    BorderStyle = bsNone
    TabOrder = 0
    ShowRoot = True
    MultiStrokeItem = True
    ViewOptions = [voShowInterRowSpace, voShowIcons, voShowExpandable, voShowRoot, voShowLines, voShowOpenChip]
    OnMakeTreeSource = SelectedTreeMakeTreeSource
    OnGetItemImage = SelectedTreeGetItemImage
    OnActionElement = SelectedTreeActionElement
    OnCurrentChanged = SelectedTreeCurrentChanged
    SettingId = 'stidSelectedTree'
  end
  object Entities: TvcmEntities
    Entities = <
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
            Control = SelectedTree
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
            Control = SelectedTree
          end>
      end>
    Left = 10
    Top = 10
  end
end
