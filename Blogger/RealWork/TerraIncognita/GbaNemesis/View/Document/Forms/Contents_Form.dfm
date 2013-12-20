object ContentsForm: TContentsForm
  Left = 302
  Top = 123
  Width = 187
  Height = 318
  ActiveControl = ContentsTree
  Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
  Color = clWhite
  Scaled = False
  ZoneType = vcm_ztNavigator
  PixelsPerInch = 96
  TextHeight = 13
  object BackgroundPanel: TvtPanel
    Left = 0
    Top = 0
    Width = 171
    Height = 282
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object ContextFilter: TnscContextFilter
      Left = 0
      Top = 0
      Width = 171
      Height = 31
      ImageIndex = 77
      LabelVisible = False
      ContextFilterTarget = ContentsTree
    end
    object ContentsTree: TnscTreeView
      Left = 0
      Top = 31
      Width = 171
      Height = 251
      Align = alClient
      BorderStyle = bsNone
      TabOrder = 1
      MultiSelect = True
      ActionElementMode = l3_amSecondSingleClick
      DragAndDropSupported = True
      SettingId = 'stidContentsTree'
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
            Control = ContentsTree
          end>
      end
      item
        Name = 'enFile'
        Operations = <
          item
            Name = 'opPrint'
          end
          item
            Name = 'opPrintDialog'
          end
          item
            Name = 'opPrintPreview'
          end
          item
            Name = 'opToMSWord'
          end>
        Controls = <
          item
            Control = ContentsTree
          end>
      end
      item
        Name = 'enDocumentBlock'
        Operations = <
          item
            Name = 'opCopy'
          end
          item
            Name = 'opPrint'
          end
          item
            Name = 'opPrintDialog'
          end
          item
            Name = 'opPrintPreview'
          end
          item
            Name = 'opToMSWord'
          end
          item
            Name = 'opSelect'
          end
          item
            Name = 'opGetCorrespondentList'
          end
          item
            Name = 'opGetRespondentList'
          end
          item
            Name = 'opGetTypedCorrespondentList'
          end
          item
            Name = 'opGetTypedRespondentList'
          end>
        Controls = <
          item
            Control = ContentsTree
          end>
      end    
      item
        Name = 'enDocumentBlockBookmarks'
        Operations = <
          item
            Name = 'opAddBookmark'
          end>
        Controls = <
          item
            Control = ContentsTree
          end>
      end
      item
        Name = 'enTree'
        Controls = <
          item
            Control = ContentsTree
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
