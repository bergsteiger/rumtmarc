object en_PictureInfo: Ten_PictureInfo
  Left = 338
  Top = 141
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1082#1072#1088#1090#1080#1085#1082#1077
  ClientHeight = 185
  ClientWidth = 340
  Color = $00F9F8FA
  Position = poScreenCenter
  ZoneType = vcm_ztModal
  PixelsPerInch = 96
  TextHeight = 13
  object Info: TeeMemoWithEditOperations
    Left = 0
    Top = 0
    Width = 340
    Height = 185
    AutoSelect = False
    TextSource.ReadOnly = True
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsSingle
    ReadOnly = True
    TabOrder = 0
    TabStop = True
  end
  object Entities: TvcmEntities
    Entities = <
      item
        Name = 'enResult'
        Operations = <
          item
            Name = 'opCancel'
          end>
        ToolbarPos = vcm_tbpBottom
      end
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
            Name = 'opCut'
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
          end>
        Controls = <
          item
            Control = Info
          end>
      end>
    Left = 10
    Top = 6
  end
end
