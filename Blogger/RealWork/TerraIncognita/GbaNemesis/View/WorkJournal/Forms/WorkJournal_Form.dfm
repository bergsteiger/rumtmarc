object WorkJournalForm: TWorkJournalForm
  Left = 512
  Top = 128
  Width = 286
  Height = 478
  ActiveControl = JournalTree
  Caption = #1046#1091#1088#1085#1072#1083' '#1088#1072#1073#1086#1090#1099
  Color = $00F9F8FA
  Scaled = False
  ZoneType = vcm_ztNavigator
  PixelsPerInch = 96
  TextHeight = 13
  object JournalTree: TnscTreeView
    Left = 0
    Top = 0
    Width = 270
    Height = 442
    Align = alClient
    BorderStyle = bsNone
    TabOrder = 0
    ActionElementMode = l3_amSecondSingleClick
    OnMakeTreeSource = JournalTreeMakeTreeSource
    OnGetItemImage = JournalTreeGetItemImage
    OnActionElement = JournalTreeActionElement
    DragAndDropSupported = True
    SettingId = 'stidJournalTree'
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
            Control = JournalTree
          end>
      end
      item
        Name = 'enSavedQuery'
        Operations = <
          item
            Name = 'opOpenQuery'
          end
          item
            Name = 'opExecuteQuery'
          end>
      end
      item
        Name = 'enJournal'
        Operations = <
          item
            Name = 'opClear'
          end>
      end
      item
        Name = 'enTree'
        Operations = <
          item
            Name = 'opExpandAll'
          end
          item
            Name = 'opCollapseAll'
          end
          item
            Name = 'opWrap'
          end>
        Controls = <
          item
            Control = JournalTree
          end>
      end>
    Left = 10
    Top = 10
  end
end
