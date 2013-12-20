object StyleEditorNavigatorForm: TStyleEditorNavigatorForm
  Left = 302
  Top = 123
  ActiveControl = f_StyleTreeView
  Anchors = []
  AutoScroll = False
  BorderIcons = []
  Caption = #1044#1077#1088#1077#1074#1086' '#1089#1090#1080#1083#1077#1081
  ClientHeight = 446
  ClientWidth = 172
  Color = $00F9F8FA
  OldCreateOrder = False
  Scaled = False
  ZoneType = vcm_ztNavigator
  OnInit = EntityFormInit
  PixelsPerInch = 96
  TextHeight = 13
  object f_StyleTreeView: TnscTreeView
    Left = 0
    Top = 0
    Width = 172
    Height = 446
    Align = alClient
    BorderStyle = bsNone
    TabOrder = 0
    OnGetItemImage = StyleTreeViewGetItemImage
    OnCurrentChanged = StyleTreeViewCurrentChanged
    OnRootChanged = StyleTreeViewRootChanged
    SettingId = 'stidStyleTreeView'
  end
  object Entities: TvcmEntities
    Entities = <
      item
        Name = 'enTree'
        Controls = <
          item
            Control = f_StyleTreeView
          end>
      end
      item
        Name = 'enEdit'
        Controls = <
          item
            Control = f_StyleTreeView
          end>
      end>
    Left = 12
    Top = 12
  end
end
