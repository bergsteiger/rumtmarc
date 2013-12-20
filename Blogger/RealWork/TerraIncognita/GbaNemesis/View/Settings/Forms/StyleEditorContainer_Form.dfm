object StyleEditorContainerForm: TStyleEditorContainerForm
  Left = 341
  Top = 139
  ActiveControl = f_NavigatorZone
  Anchors = []
  AutoScroll = False
  Caption = #1056#1077#1076#1072#1082#1090#1086#1088' '#1089#1090#1080#1083#1077#1081
  ClientHeight = 483
  ClientWidth = 602
  Color = $00F9F8FA
  Constraints.MinHeight = 510
  Constraints.MinWidth = 610
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnResize = FormResize
  OnCloseQueryEx = vcmContainerFormCloseQueryEx
  ZoneType = vcm_ztManualModal
  Zones = <
    item
      Control = f_ParentZone
      ZoneType = vcm_ztParent
    end
    item
      Control = f_NavigatorZone
      ZoneType = vcm_ztNavigator
    end
    item
      Control = f_ChildZone
      ZoneType = vcm_ztChild
    end>
  PixelsPerInch = 96
  TextHeight = 13
  object BackgroundPanel: TvtProportionalPanel
    Left = 0
    Top = 0
    Width = 602
    Height = 483
    BevelOuter = bvNone
    TabOrder = 0
    object f_MainZone: TvtPanel
      Left = 182
      Top = 0
      Width = 420
      Height = 483
      Align = alClient
      BevelOuter = bvNone
      Constraints.MinWidth = 410
      TabOrder = 0
      object f_ParentZone: TvtSizeablePanel
        Left = 0
        Top = 0
        Width = 420
        Height = 130
        SizeableSides = [szBottom]
        Align = alTop
        BevelOuter = bvNone
        Constraints.MinHeight = 130
        TabOrder = 0
      end
      object f_ChildZone: TvtPanel
        Left = 0
        Top = 130
        Width = 420
        Height = 353
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
      end
    end
    object f_NavigatorZone: TvtSizeablePanel
      Left = 0
      Top = 0
      Width = 182
      Height = 483
      ResizeAreaWidth = 5
      SizeableSides = [szRight]
      SplitterBevel = bvRaised
      Align = alLeft
      BevelOuter = bvNone
      Constraints.MinWidth = 182
      TabOrder = 1
    end
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
          end
          item
            Name = 'opRestore'
          end
          item
            Name = 'opSaveAsDefault'
          end>
        ToolbarPos = vcm_tbpBottom
      end>
    Left = 10
    Top = 10
  end
end
