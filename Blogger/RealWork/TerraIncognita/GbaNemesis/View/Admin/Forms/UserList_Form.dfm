object efUserList: TefUserList
  Left = 302
  Top = 123
  Width = 696
  Height = 480
  ActiveControl = trUserList
  Color = $00F9F8FA
  OnChangedDataSource = vcmEntityFormChangedDataSource
  OnInit = vcmEntityFormInit
  PixelsPerInch = 96
  TextHeight = 13
  object BackgroundPanel: TvtPanel
    Left = 0
    Top = 0
    Width = 680
    Height = 444
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object ContextFilter: TnscContextFilter
      Left = 0
      Top = 0
      Width = 680
      Height = 31
      ImageIndex = 77
      ContextFilterTarget = trUserList
      OnChange = ContextFilterChange
      OnWrongContext = ContextFilterWrongContext
    end
    object trUserList: TeeTreeView
      Left = 0
      Top = 31
      Width = 680
      Height = 413
      OnCountChanged = trUserListCountChanged
      Align = alClient
      BorderStyle = bsNone
      TabOrder = 1
      MultiSelect = True
      ViewOptions = [voShowIcons]
      NeedStatus = True
      OnGetItemImage = trUserListGetItemImage
      OnCurrentChanged = trUserListCurrentChanged
      OnTreeChanged = trUserListTreeChanged
      OnSelectCountChanged = trUserListSelectCountChanged
      OnFormatStatusInfo = trUserListFormatStatusInfo
      OnNewCharPressed = trUserListNewCharPressed
      DragAndDropSupported = True
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
            Control = trUserList
          end>
      end
      item
        Name = 'enUsers'
        Operations = <
          item
            Name = 'opLogoutUser'
          end
          item
            Name = 'opUserFilter'
          end
          item
            Name = 'opDisableConsulting'
          end
          item
            Name = 'OpEnableConsulting'
          end
          item
            Name = 'opConsultingStateForNewbie'
          end
          item
            Name = 'opAutoregistration'
          end
          item
            Name = 'opAddPrivelegedRight'
          end
          item
            Name = 'opRemovePrivelegedRight'
          end>
      end
      item
        Name = 'enText'
        Controls = <
          item
            Control = ContextFilter.InternalEditor
          end>
      end
      item
        Name = 'enFile'
        Controls = <
          item
            Control = ContextFilter.InternalEditor
          end>
      end>
    Left = 10
    Top = 10
  end
end
