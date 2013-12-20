object cf_Settings: Tcf_Settings
  Left = 303
  Top = 213
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1082#1086#1085#1092#1080#1075#1091#1088#1072#1094#1080#1080
  ClientHeight = 232
  ClientWidth = 446
  Color = $00F9F8FA
  KeyPreview = True
  Position = poScreenCenter
  ShowHint = True
  OnClose = vcmContainerFormClose
  OnKeyDown = vcmContainerFormKeyDown
  OnShow = vcmContainerFormShow
  ZoneType = vcm_ztManualModal
  PixelsPerInch = 96
  TextHeight = 13
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
            Name = 'opRestoreConf'
          end
          item
            Name = 'opSaveAsDefaultConf'
          end
          item
            Name = 'opRestoreAllSettings'
          end>
        ToolbarPos = vcm_tbpBottom
      end>
    Left = 10
    Top = 10
  end
end
