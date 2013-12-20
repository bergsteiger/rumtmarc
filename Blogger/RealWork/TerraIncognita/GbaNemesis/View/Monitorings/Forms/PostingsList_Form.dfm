object enPostingsList: TenPostingsList
  Left = 292
  Top = 200
  Width = 570
  Height = 291
  Caption = #1055#1056#1040#1049#1052'. '#1052#1086#1103' '#1085#1086#1074#1086#1089#1090#1085#1072#1103' '#1083#1077#1085#1090#1072
  Color = $00F9F8FA
  Font.Height = -10
  OnCloseQuery = vcmEntityFormCloseQuery
  OnShow = vcmEntityFormShow
  OnInit = vcmEntityFormInit
  PixelsPerInch = 96
  TextHeight = 13
  object tvPostings: TeeTreeView
    Left = 0
    Top = 0
    Width = 554
    Height = 255
    Align = alClient
    BorderStyle = bsNone
    TabOrder = 0
    MultiSelect = True
    MultiStrokeItem = True
    ActionElementMode = l3_amSecondSingleClick
    OnGetItemImage = tvPostingsGetItemImage
    OnActionElement = tvPostingsActionElement
  end
  object Entities: TvcmEntities
    Entities = <
      item
        Name = 'enPostingToolBar'
        Operations = <
          item
            Name = 'ptNewTheme'
          end
          item
            Name = 'ptEditPosting'
          end
          item
            Name = 'ptDeletePosting'
          end
          item
            Name = 'opSavePostList'
          end
          item
            Name = 'opExportSelected'
          end>
      end>
    Left = 10
    Top = 10
  end
end
