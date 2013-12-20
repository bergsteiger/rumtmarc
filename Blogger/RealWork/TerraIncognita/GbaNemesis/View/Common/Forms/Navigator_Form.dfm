object en_Navigator: Ten_Navigator
  Left = 389
  Top = 123
  Width = 196
  Height = 461
  ActiveControl = NavigatorTree
  Caption = #1052#1077#1085#1102
  Color = $00F9F8FA
  FormStyle = fsStayOnTop
  Scaled = False
  ZoneType = vcm_ztNavigator
  OnInit = vcmEntityFormInit
  PixelsPerInch = 96
  TextHeight = 13
  object BackgroundPanel: TvtPanel
    Left = 0
    Top = 0
    Width = 180
    Height = 425
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object ContextFilter: TnscContextFilter
      Left = 0
      Top = 0
      Width = 180
      Height = 31
      ImageIndex = 77
      LabelVisible = False
      ContextFilterTarget = NavigatorTree
      OnChange = ContextFilterChange
      OnWrongContext = ContextFilterWrongContext
    end
    object NavigatorTree: TnscTreeView
      Left = 0
      Top = 31
      Width = 180
      Height = 394
      Align = alClient
      BorderStyle = bsNone
      TabOrder = 1
      ActionElementMode = l3_amSingleClick
      OnMakeTreeSource = NavigatorTreeMakeTreeSource
      OnGetItemImage = NavigatorTreeGetItemImage
      OnActionElement = NavigatorTreeActionElement
      OnTreeChanged = NavigatorTreeTreeChanged
      OnNewCharPressed = NavigatorTreeNewCharPressed
      SettingId = 'stidNavigatorTree'
    end
  end
  object Entities: TvcmEntities
    Entities = <
      item
        Name = 'enNavigatorElement'
        Operations = <
          item
            Name = 'opInfo'
          end
          item
            Name = 'opExecute'
          end>
      end
      item
        Name = 'enSwitcher'
        Operations = <
          item
            Name = 'opBecomeActive'
            OnExecute = SwitcheropSetActiveExecute
          end>
      end
      item
        Name = 'enTree'
        Controls = <
          item
            Control = NavigatorTree
          end>
      end
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
          end
          item
            Control = ContextFilter.InternalEditor
          end
          item
            Control = NavigatorTree
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
