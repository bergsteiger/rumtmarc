object cfAdminForm: TcfAdminForm
  Left = 45
  Top = 119
  Width = 670
  Height = 483
  ActiveControl = TreeZone
  Caption = #1040#1076#1084#1080#1085#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085#1080#1077' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077#1081
  Color = $00F9F8FA
  ZoneType = vcm_ztParent
  Zones = <
    item
      Control = TreeZone
      ZoneType = vcm_ztParent
    end
    item
      Control = PropertyZone
      ZoneType = vcm_ztChild
    end>
  PixelsPerInch = 96
  TextHeight = 13
  object BackgroundPanel: TvtProportionalPanel
    Left = 0
    Top = 0
    Width = 654
    Height = 447
    TabOrder = 0
    object TreeZone: TvtPanel
      Left = 1
      Top = 1
      Width = 652
      Height = 250
      Align = alClient
      BevelOuter = bvNone
      Caption = 'TreeZone'
      Constraints.MinHeight = 100
      TabOrder = 0
    end
    object PropertyZone: TvtSizeablePanel
      Left = 1
      Top = 251
      Width = 652
      Height = 195
      ResizeAreaWidth = 5
      SizeableSides = [szTop]
      SplitterBevel = bvRaised
      Align = alBottom
      BevelOuter = bvNone
      Caption = 'PropertyZone'
      TabOrder = 1
    end
  end
  object Entities: TvcmEntities
    Entities = <
      item
        Name = 'enResult'
        Operations = <
          item
            Name = 'opOkExt'
          end
          item
            Name = 'opCancel'
          end>
      end>
    Left = 10
    Top = 10
  end
end
