object frmDsgnImageList: TfrmDsgnImageList
  Left = 465
  Top = 251
  ActiveControl = vgScene1
  BorderStyle = bsNone
  Caption = 'ImageList Designer'
  ClientHeight = 361
  ClientWidth = 501
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object vgScene1: TvgScene
    Left = 0
    Top = 0
    Width = 501
    Height = 361
    Align = alClient
    Transparency = True
    DesignSnapGridShow = False
    DesignSnapToGrid = False
    DesignSnapToLines = True
    object Root1: TvgBackground
      Width = 501.000000000000000000
      Height = 361.000000000000000000
      HitTest = False
      object HudWindow1: TvgHudWindow
        Align = vaContents
        Width = 501.000000000000000000
        Height = 361.000000000000000000
        HitTest = False
        TabOrder = 0
        Font.Style = vgFontBold
        TextAlign = vgTextAlignNear
        Text = 'ImageList Designer'
        object ImageList: TvgImageListBox
          Position.Point = '(26,77)'
          Width = 451.000000000000000000
          Height = 225.000000000000000000
          Resource = 'listboxstyle'
          TabOrder = 1
          DisableFocusEffect = True
          Columns = 4
          ItemIndex = -1
          ItemWidth = 100.000000000000000000
          ItemHeight = 100.000000000000000000
          ShowFileName = False
          UseThumbnails = False
        end
        object btnAddFiles: TvgHudButton
          Position.Point = '(26,42)'
          Width = 69.000000000000000000
          Height = 25.000000000000000000
          OnClick = btnAddFilesClick
          TabOrder = 0
          StaysPressed = False
          IsPressed = False
          TextAlign = vgTextAlignCenter
          Text = 'Add...'
        end
        object HudButton1: TvgHudButton
          Position.Point = '(26,310)'
          Width = 85.000000000000000000
          Height = 25.000000000000000000
          TabOrder = 2
          StaysPressed = False
          IsPressed = False
          ModalResult = 1
          TextAlign = vgTextAlignCenter
          Text = 'OK'
          Default = True
        end
        object btnDelete: TvgHudButton
          Position.Point = '(103,42)'
          Width = 68.000000000000000000
          Height = 25.000000000000000000
          OnClick = btnDeleteClick
          TabOrder = 4
          StaysPressed = False
          IsPressed = False
          TextAlign = vgTextAlignCenter
          Text = 'Delete'
        end
        object btnClear: TvgHudButton
          Position.Point = '(179,42)'
          Width = 82.000000000000000000
          Height = 24.000000000000000000
          OnClick = btnClearClick
          TabOrder = 3
          StaysPressed = False
          IsPressed = False
          TextAlign = vgTextAlignCenter
          Text = 'Clear'
        end
        object btnCancel: TvgHudButton
          Position.Point = '(123,310)'
          Width = 80.000000000000000000
          Height = 25.000000000000000000
          TabOrder = 5
          StaysPressed = False
          IsPressed = False
          ModalResult = 2
          TextAlign = vgTextAlignCenter
          Text = 'Cancel'
          Cancel = True
        end
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 176
    Top = 152
  end
end
