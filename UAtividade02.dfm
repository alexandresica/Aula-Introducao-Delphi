object frmAtividade02: TfrmAtividade02
  Left = 0
  Top = 0
  Caption = 'Atividade 2'
  ClientHeight = 415
  ClientWidth = 763
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -28
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 38
  object lbl_operacao: TLabel
    Left = 210
    Top = 53
    Width = 13
    Height = 38
    Caption = '?'
  end
  object lbl_igualdade: TLabel
    Left = 415
    Top = 53
    Width = 19
    Height = 38
    Caption = '='
  end
  object lbl_resultado: TLabel
    Left = 488
    Top = 53
    Width = 8
    Height = 38
  end
  object edt_vlr_1: TEdit
    Left = 56
    Top = 53
    Width = 121
    Height = 46
    TabOrder = 0
  end
  object edt_vlr_2: TEdit
    Left = 264
    Top = 53
    Width = 121
    Height = 46
    TabOrder = 1
  end
  object btn_adicao: TButton
    Left = 56
    Top = 184
    Width = 65
    Height = 49
    Caption = '+'
    TabOrder = 2
    OnClick = btn_adicaoClick
  end
  object btn_subtracao: TButton
    Left = 158
    Top = 184
    Width = 65
    Height = 49
    Caption = '-'
    TabOrder = 3
    OnClick = btn_subtracaoClick
  end
  object btn_multiplicacao: TButton
    Left = 248
    Top = 184
    Width = 65
    Height = 49
    Caption = 'x'
    TabOrder = 4
    OnClick = btn_multiplicacaoClick
  end
  object btn_divisao: TButton
    Left = 344
    Top = 184
    Width = 65
    Height = 49
    Caption = '/'
    TabOrder = 5
    OnClick = btn_divisaoClick
  end
  object btn_executar: TButton
    Left = 199
    Top = 288
    Width = 65
    Height = 49
    Caption = '='
    TabOrder = 6
    OnClick = btn_executarClick
  end
end
