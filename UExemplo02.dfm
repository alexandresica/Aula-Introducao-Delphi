object frmExemplo02: TfrmExemplo02
  Left = 0
  Top = 0
  Caption = 'Exemplo 2'
  ClientHeight = 308
  ClientWidth = 678
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -28
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 38
  object lbl_sinal: TLabel
    Left = 152
    Top = 80
    Width = 19
    Height = 38
    Caption = '+'
  end
  object lbl_resultado: TLabel
    Left = 440
    Top = 80
    Width = 8
    Height = 38
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 289
    Width = 678
    Height = 19
    Panels = <>
    ExplicitTop = 272
    ExplicitWidth = 672
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 678
    Height = 29
    Caption = 'ToolBar1'
    TabOrder = 1
    ExplicitWidth = 672
  end
  object edt_vlr_1: TEdit
    Left = 8
    Top = 80
    Width = 121
    Height = 46
    TabOrder = 2
  end
  object edt_vlr_2: TEdit
    Left = 192
    Top = 80
    Width = 121
    Height = 46
    TabOrder = 3
  end
  object btn_resultado: TButton
    Left = 328
    Top = 80
    Width = 81
    Height = 46
    Caption = '='
    TabOrder = 4
    OnClick = btn_resultadoClick
  end
end
