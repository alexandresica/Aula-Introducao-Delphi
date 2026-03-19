object frmAtividade04: TfrmAtividade04
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Atividade 4'
  ClientHeight = 534
  ClientWidth = 823
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object lbl_nome: TLabel
    Left = 48
    Top = 57
    Width = 88
    Height = 45
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lbl_nota1: TLabel
    Left = 48
    Top = 176
    Width = 96
    Height = 45
    Caption = 'Nota 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lbl_nota2: TLabel
    Left = 178
    Top = 176
    Width = 96
    Height = 45
    Caption = 'Nota 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lbl_nota3: TLabel
    Left = 309
    Top = 176
    Width = 96
    Height = 45
    Caption = 'Nota 3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lbl_nota4: TLabel
    Left = 450
    Top = 176
    Width = 96
    Height = 45
    Caption = 'Nota 4'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lbl_media: TLabel
    Left = 584
    Top = 176
    Width = 89
    Height = 45
    Caption = 'Media'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lbl_exibeMedia: TLabel
    Left = 616
    Top = 240
    Width = 70
    Height = 53
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    Layout = tlCenter
    OnDblClick = lbl_exibeMediaDblClick
  end
  object lbl_texto: TLabel
    Left = 32
    Top = 344
    Width = 385
    Height = 153
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object edt_nome: TEdit
    Left = 176
    Top = 54
    Width = 377
    Height = 67
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object edt_n1: TEdit
    Left = 55
    Top = 240
    Width = 81
    Height = 53
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object edt_n2: TEdit
    Left = 189
    Top = 240
    Width = 81
    Height = 53
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object edt_n3: TEdit
    Left = 320
    Top = 240
    Width = 81
    Height = 53
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object edt_n4: TEdit
    Left = 461
    Top = 240
    Width = 81
    Height = 53
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object btn_calcular: TButton
    Left = 584
    Top = 54
    Width = 129
    Height = 88
    Caption = 'Calcular Media'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    WordWrap = True
    OnClick = btn_calcularClick
  end
end
