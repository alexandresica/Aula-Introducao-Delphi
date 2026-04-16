object frmAtividade07: TfrmAtividade07
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Atividade 7'
  ClientHeight = 444
  ClientWidth = 555
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object lbl_nome: TLabel
    Left = 24
    Top = 70
    Width = 63
    Height = 33
    Caption = 'Nome'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -28
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object lbl_salariohora: TLabel
    Left = 24
    Top = 171
    Width = 65
    Height = 33
    Caption = '$/hora'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -28
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object lbl_horames: TLabel
    Left = 24
    Top = 272
    Width = 110
    Height = 33
    Caption = 'Horas M'#234's'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -28
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object edt_nome: TEdit
    Left = 93
    Top = 62
    Width = 436
    Height = 46
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -28
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object edt_salarioHora: TEdit
    Left = 176
    Top = 168
    Width = 353
    Height = 41
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -28
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object edt_horaMes: TEdit
    Left = 176
    Top = 269
    Width = 353
    Height = 41
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -28
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object btn_calcSalario: TButton
    Left = 40
    Top = 368
    Width = 473
    Height = 49
    Caption = 'Calcular Sal'#225'rio'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -28
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btn_calcSalarioClick
  end
end
