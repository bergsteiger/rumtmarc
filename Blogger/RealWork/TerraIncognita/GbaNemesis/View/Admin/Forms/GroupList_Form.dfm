object efGroupList: TefGroupList
  Left = 389
  Top = 123
  Width = 196
  Height = 461
  ActiveControl = GroupsTree
  Caption = #1043#1088#1091#1087#1087#1099' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077#1081
  Color = $00F9F8FA
  FormStyle = fsStayOnTop
  Scaled = False
  ZoneType = vcm_ztNavigator
  OnChangedDataSource = vcmEntityFormRefChangedDataSource
  OnInit = vcmEntityFormRefInit
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
    object GroupsTree: TeeTreeView
      Left = 0
      Top = 0
      Width = 180
      Height = 425
      OnCountChanged = GroupsTreeCountChanged
      Align = alClient
      BorderStyle = bsNone
      TabOrder = 0
      ActionElementMode = l3_amSingleClick
      ViewOptions = [voShowIcons]
      OnGetItemImage = GroupsTreeGetItemImage
      OnCurrentChanged = GroupsTreeCurrentChanged
      OnTreeChanged = GroupsTreeTreeChanged
      OnSelectCountChanged = GroupsTreeSelectCountChanged
      OnFormatStatusInfo = GroupsTreeFormatStatusInfo
      DragAndDropSupported = True
    end
  end
  object Entities: TvcmEntities
    Entities = <
      item
        Name = 'enSwitcher'
        Operations = <
          item
            Name = 'opBecomeActive'
            OnExecute = SwitcheropSetActiveExecute
          end>
      end
      item
        Name = 'enEdit'
        Operations = <
          item
            Name = 'opDelete'
          end>
        Controls = <
          item
          end
          item
            Control = GroupsTree
          end>
      end
      item
        Name = 'enGroups'
        Operations = <
          item
            Name = 'opAdd'
          end
          item
            Name = 'opRename'
          end
          item
            Name = 'opChangeBaseAccess'
          end>
      end>
    Left = 10
    Top = 10
  end
end
