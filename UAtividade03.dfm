object frmAtividade03: TfrmAtividade03
  Left = 0
  Top = 0
  Caption = 'Atividade 3'
  ClientHeight = 310
  ClientWidth = 540
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lbl_nome: TLabel
    Left = 72
    Top = 61
    Width = 35
    Height = 15
    Caption = 'NOME'
  end
  object lbl_idade: TLabel
    Left = 72
    Top = 120
    Width = 33
    Height = 15
    Caption = 'IDADE'
  end
  object lbl_texto: TLabel
    Left = 72
    Top = 168
    Width = 3
    Height = 15
  end
  object edt_nome: TEdit
    Left = 136
    Top = 58
    Width = 193
    Height = 23
    TabOrder = 0
  end
  object edt_idade: TEdit
    Left = 136
    Top = 117
    Width = 81
    Height = 23
    TabOrder = 1
  end
  object btn_exibir: TButton
    Left = 223
    Top = 116
    Width = 106
    Height = 25
    Caption = 'Exibe idade'
    TabOrder = 2
    OnClick = btn_exibirClick
  end
end
