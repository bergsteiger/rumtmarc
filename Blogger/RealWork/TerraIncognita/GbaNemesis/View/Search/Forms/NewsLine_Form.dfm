object enNewsLine: TenNewsLine
  Left = 302
  Top = 123
  Width = 289
  Height = 518
  Caption = #1055#1056#1040#1049#1052'. '#1052#1086#1103' '#1085#1086#1074#1086#1089#1090#1085#1072#1103' '#1083#1077#1085#1090#1072
  Color = $00F9F8FA
  Scaled = False
  OnCloseQuery = vcmEntityFormCloseQuery
  OnInit = vcmEntityFormInit
  PixelsPerInch = 96
  TextHeight = 13
  object DateList: TnscTreeView
    Left = 0
    Top = 0
    Width = 273
    Height = 482
    Align = alClient
    BorderStyle = bsNone
    TabOrder = 0
    MultiStrokeItem = True
    ActionElementMode = l3_amSingleClick
    ViewOptions = [voShowInterRowSpace, voShowIcons, voShowExpandable, voShowLines]
    ClearTreeStructOnSaveState = False
    OnGetItemImage = DateListGetItemImage
    OnActionElement = DateListActionElement
  end
  object Entities: TvcmEntities
    Entities = <
      item
        Name = 'enNewsThemes'
        Operations = <
          item
            Name = 'opSelectCurrent'
          end>
      end
      item
        Name = 'enDateInterval'
        Operations = <
          item
            Name = 'opOpen'
          end>
      end
      item
        Name = 'enSwitcher'
        Operations = <
          item
            Name = 'opBecomeActive'
            OnExecute = SwitcheropSetActiveExecute
          end>
      end
      item
        Name = 'enEdit'
        Controls = <
          item
            Control = DateList
          end>
      end
      item
        Name = 'enTree'
        Controls = <
          item
            Control = DateList
          end>
      end>
    Left = 10
    Top = 26
  end
end
