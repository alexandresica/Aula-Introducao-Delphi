object frmAtividade03: TfrmAtividade03
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Atividade 3'
  ClientHeight = 371
  ClientWidth = 669
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -32
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 45
  object lbl_nome: TLabel
    Left = 72
    Top = 61
    Width = 93
    Height = 45
    Caption = 'NOME'
  end
  object lbl_idade: TLabel
    Left = 72
    Top = 120
    Width = 89
    Height = 45
    Caption = 'IDADE'
  end
  object lbl_texto: TLabel
    Left = 24
    Top = 200
    Width = 609
    Height = 153
    WordWrap = True
  end
  object edt_nome: TEdit
    Left = 192
    Top = 57
    Width = 345
    Height = 53
    TabOrder = 0
  end
  object edt_idade: TEdit
    Left = 192
    Top = 116
    Width = 81
    Height = 53
    TabOrder = 1
  end
  object btn_exibir: TButton
    Left = 287
    Top = 116
    Width = 250
    Height = 53
    Caption = 'Exibe idade'
    TabOrder = 2
    OnClick = btn_exibirClick
  end
end
