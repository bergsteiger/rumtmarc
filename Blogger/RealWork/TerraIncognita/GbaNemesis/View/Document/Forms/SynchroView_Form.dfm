object fcSynchroView: TfcSynchroView
  Left = 217
  Top = 242
  Width = 375
  Height = 237
  Caption = #1057#1080#1085#1093#1088#1086#1085#1085#1099#1081' '#1087#1088#1086#1089#1084#1086#1090#1088
  Color = $00F9F8FA
  ZoneType = vcm_ztChild
  Zones = <
    item
      Control = DocView
      ZoneType = vcm_ztChild
      FormStyle.Toolbars.Top.MergeWithContainer = vcm_bTrue
    end>
  PixelsPerInch = 96
  TextHeight = 13
  object DocView: TvtPanel
    Left = 0
    Top = 0
    Width = 359
    Height = 201
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
  end
  object Entities: TvcmEntities
    Entities = <
      item
        Name = 'enSynchroView'
        Operations = <
          item
            Name = 'ShowText'
            AutoLock = True
          end
          item
            Name = 'opAnnotation'
          end
          item
            Name = 'ShowAttributes'
            AutoLock = True
          end
          item
            Name = 'ShowRelated'
            AutoLock = True
          end
          item
            Name = 'ShowUserCRList1'
            AutoLock = True
          end
          item
            Name = 'ShowUserCRList2'
            AutoLock = True
          end
          item
            Name = 'opSimilarDocuments'
          end>
      end>
    Left = 10
    Top = 10
  end
end
