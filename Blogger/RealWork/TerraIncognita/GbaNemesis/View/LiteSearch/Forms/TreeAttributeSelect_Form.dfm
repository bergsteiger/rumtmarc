object efTreeAttributeSelect: TefTreeAttributeSelect
  Left = 532
  Top = 122
  Width = 525
  Height = 402
  ActiveControl = AttributeTree
  Caption = #1042#1099#1073#1086#1088' '#1079#1085#1072#1095#1077#1085#1080#1081' '#1076#1088#1077#1074#1086#1074#1080#1076#1085#1086#1075#1086' '#1072#1090#1088#1080#1073#1091#1090#1072
  Color = $00F9F8FA
  Scaled = False
  ZoneType = vcm_ztParent
  OnChangedDataSource = vcmEntityFormChangedDataSource
  OnInit = vcmEntityFormInit
  OnLoadState = vcmEntityFormLoadState
  OnSaveState = vcmEntityFormSaveState
  PixelsPerInch = 96
  TextHeight = 13
  object BackgroundPanel: TvtPanel
    Left = 0
    Top = 0
    Width = 509
    Height = 366
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object ContextFilter: TnscContextFilter
      Left = 0
      Top = 0
      Width = 509
      Height = 31
      ImageIndex = 77
      ContextFilterTarget = AttributeTree
      OnChange = ContextFilterChange
      OnWrongContext = ContextFilterWrongContext
    end
    object AttributeTree: TnscTreeView
      Left = 0
      Top = 31
      Width = 509
      Height = 335
      OnIsCommandProcessed = AttributeTreeIsCommandProcessed
      OnAfterFirstPaint = AttributeTreeAfterFirstPaint
      Align = alClient
      BorderStyle = bsNone
      TabOrder = 1
      DblClickOnFolder = False
      MultiSelect = True
      MultiStrokeItem = True
      ViewOptions = [voShowInterRowSpace, voShowIcons, voShowExpandable, voShowLines, voShowOpenChip]
      OnLMouseDown = AttributeTreeLMouseDown
      OnGetItemImage = AttributeTreeGetItemImage
      OnActionElement = AttributeTreeActionElement
      OnCurrentChanged = AttributeTreeCurrentChanged
      OnTreeChanged = AttributeTreeTreeChanged
      OnNewCharPressed = AttributeTreeNewCharPressed
      SettingId = 'stidAttributeTree'
    end
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
            Name = 'opUndo'
          end
          item
            Name = 'opRedo'
          end
          item
            Name = 'opPaste'
          end
          item
            Name = 'opCopy'
          end
          item
            Name = 'opCut'
          end
          item
            Name = 'opSelectAll'
          end
          item
            Name = 'opDeselect'
          end>
        Controls = <
          item
            Control = ContextFilter.InternalEditor
          end
          item
            Control = AttributeTree
          end>
      end
      item
        Name = 'enAttribute'
        Operations = <
          item
            Name = 'opLogicOr'
            OnTest = enAttributeopLogicOrTest
            OnExecute = enAttributeopLogicOrExecute
            OnContextTest = enAttributeopLogicOrContextTest
          end
          item
            Name = 'opLogicAnd'
            OnTest = enAttributeopLogicAndTest
            OnExecute = enAttributeopLogicAndExecute
            OnContextTest = enAttributeopLogicAndContextTest
          end
          item
            Name = 'opLogicNot'
            OnTest = enAttributeopLogicNotTest
            OnExecute = enAttributeopLogicNotExecute
            OnContextTest = enAttributeopLogicNotContextTest
          end
          item
            Name = 'opDefaultAction'
            OnExecute = enAttributeopDefaultActionExecute
          end
          item
            Name = 'opLogicOrShortcut'
          end>
        Controls = <
          item
            Control = AttributeTree
          end>
      end
      item
        Name = 'enSelection'
        Operations = <
          item
            Name = 'opDropSelection'
          end>
        Controls = <
          item
            Control = AttributeTree
          end>
      end
      item
        Name = 'enFolder'
        Operations = <
          item
            Name = 'opFindFirstSelected'
          end>
      end
      item
        Name = 'enResult'
        Operations = <
          item
            Name = 'opOk'
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
            Control = AttributeTree
          end>
      end
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
