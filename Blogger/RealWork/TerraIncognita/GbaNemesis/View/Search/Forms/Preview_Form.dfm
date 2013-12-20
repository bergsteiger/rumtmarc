object efPreviewForm: TefPreviewForm
  Left = 324
  Top = 109
  Width = 505
  Height = 526
  ActiveControl = PreviewPanel
  Color = $00F9F8FA
  Position = poScreenCenter
  ZoneType = vcm_ztParent
  PixelsPerInch = 96
  TextHeight = 13
  object PreviewPanel: TnscPreviewPanel
    Left = 0
    Top = 0
    Width = 489
    Height = 490
    Cursor = 1
    Align = alClient
    BevelOuter = bvNone
    Constraints.MinHeight = 120
    Constraints.MinWidth = 160
    UseDockManager = False
    TabOrder = 0
    TabStop = True
  end
  object Entities: TvcmEntities
    Entities = <
      item
        Name = 'enFile'
        Operations = <
          item
            Name = 'opPrint'
          end
          item
            Name = 'opPrintDialog'
          end>
        Controls = <
          item
            Control = PreviewPanel
          end>
      end
      item
        Name = 'enPreview'
        Operations = <
          item
            Name = 'opZoomIn'
          end
          item
            Name = 'opZoomOut'
          end
          item
            Name = 'opZoomWidth'
          end
          item
            Name = 'opZoomPage'
          end>
        Controls = <
          item
            Control = PreviewPanel
          end>
      end
      item
        Name = 'enDocument'
        Operations = <
          item
            Name = 'opFullSelectedSwitch'
          end
          item
            Name = 'opRGBGrayscaleSwitch'
          end
          item
            Name = 'opPrintInfoSwitch'
          end>
        Controls = <
          item
            Control = PreviewPanel
          end>
      end
      item
        Name = 'enResult'
        Operations = <
          item
            Name = 'opOk'
          end
          item
            Name = 'opCancel'
          end>
        ToolbarPos = vcm_tbpBottom
      end>
    Left = 10
    Top = 10
  end
end
