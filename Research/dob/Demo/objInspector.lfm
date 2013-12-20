object ObjInspectForm: TObjInspectForm
  Left = 555
  Top = 182
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Object Inspector'
  ClientHeight = 622
  ClientWidth = 320
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 15
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 320
    Height = 36
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object eComponentInfo: TEdit
      Left = 8
      Top = 6
      Width = 233
      Height = 23
      TabStop = False
      ReadOnly = True
      TabOrder = 0
    end
    object btnClose: TButton
      Left = 250
      Top = 6
      Width = 60
      Height = 23
      Caption = '&Close'
      TabOrder = 1
      OnClick = btnCloseClick
    end
  end
  object vle: TValueListEditor
    Left = 0
    Top = 36
    Width = 320
    Height = 579
    Align = alClient
    Color = clBtnFace
    DefaultColWidth = 160
    DefaultRowHeight = 19
    DisplayOptions = [doAutoColResize, doKeyColFixed]
    FixedCols = 1
    TabOrder = 0
    OnEditButtonClick = vleEditButtonClick
    OnKeyPress = vleKeyPress
    OnSetEditText = vleSetEditText
    OnValidate = vleValidate
    ColWidths = (
      160
      154)
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 615
    Width = 320
    Height = 7
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 24
    Top = 80
  end
  object ColorDialog1: TColorDialog
    Left = 24
    Top = 112
  end
end
