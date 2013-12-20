object enQueryCard: TenQueryCard
  Left = 0
  Top = 90
  Width = 650
  Height = 480
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  ActiveControl = Editor
  Caption = #1050#1072#1088#1090#1086#1095#1082#1072' '#1079#1072#1087#1088#1086#1089#1086#1074
  Color = $00F9F8FA
  ZoneType = vcm_ztParent
  OnChangedDataSource = vcmEntityFormChangedDataSource
  OnLoadState = vcmEntityFormLoadState
  OnSaveState = vcmEntityFormSaveState
  PixelsPerInch = 96
  TextHeight = 13
  object Editor: TevQueryCardEditor
    Left = 0
    Top = 0
    Width = 634
    Height = 444
    Cursor = crArrow
    Align = alClient
    ScrollStyle = ssVertical
    TextSource = TextSource
    OnJumpTo = EditorJumpTo
    OnAfterFirstPaint = EditorAfterFirstPaint
    Color = clWhite
    TabOrder = 0
    TabStop = True
  end
  object Entities: TvcmEntities
    Entities = <
      item
        Name = 'enEdit'
        Operations = <
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
          end
          item
            Name = 'opUndo'
          end
          item
            Name = 'opRedo'
          end
          item
            Name = 'opDelete'
          end
          item
            Name = 'opCut'
          end>
        Controls = <
          item
            Control = Editor
          end>
      end
      item
        Name = 'enCardOperation'
        Operations = <
          item
            Name = 'opExpandCollapse'
          end
          item
            Name = 'opDeleteAll'
          end
          item
            Name = 'opCreateAttr'
          end
          item
            Name = 'opOpenTreeSelection'
          end>
        Controls = <
          item
            Control = Editor
          end>
      end
      item
        Name = 'enFile'
        Operations = <
          item
            Name = 'opPrintDialog'
          end
          item
            Name = 'opPrintPreview'
          end>
        Controls = <
          item
            Control = Editor
          end>
      end
      item
        Name = 'enSubPanelSettings'
        Operations = <
          item
            Name = 'opShowSpecial'
          end>
      end>
    Left = 18
    Top = 10
  end
  object TextSource: TevTextSource
    OnGetControlItemImg = TextSourceGetControlItemImg
    OnDocumentChanged = TextSourceDocumentChanged
    Left = 16
    Top = 48
  end
end
