object efGroupProperty: TefGroupProperty
  Left = 420
  Top = 174
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1057#1074#1086#1081#1089#1090#1074#1072' '#1075#1088#1091#1087#1087#1099
  ClientHeight = 39
  ClientWidth = 279
  Color = $00F9F8FA
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  ZoneType = vcm_ztModal
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TvtLabel
    Left = 8
    Top = 12
    Width = 105
    Height = 16
    AutoSize = False
    Caption = #1048#1084#1103' '#1075#1088#1091#1087#1087#1099
  end
  object edName: TnscEdit
    Left = 120
    Top = 8
    Width = 153
    Height = 21
    TabOrder = 0
    ParentShowHint = False
    ShowHint = True
  end
  object Entities: TvcmEntities
    Entities = <
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
      end
      item
        Name = 'enEdit'
        Controls = <
          item
            Control = edName
          end>
      end
      item
        Name = 'enText'
        Controls = <
          item
            Control = edName
          end>
      end>
    Left = 184
  end
end
