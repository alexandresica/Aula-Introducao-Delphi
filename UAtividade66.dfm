object frmAtividade66: TfrmAtividade66
  Left = 0
  Top = 0
  Caption = 'Atividade 66'
  ClientHeight = 489
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lbl_usuario: TLabel
    Left = 74
    Top = 104
    Width = 108
    Height = 45
    Caption = 'Usu'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lbl_senha: TLabel
    Left = 74
    Top = 232
    Width = 86
    Height = 45
    Caption = 'Senha'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object edt_usuario: TEdit
    Left = 264
    Top = 104
    Width = 313
    Height = 57
    TabOrder = 0
  end
  object edt_senha: TEdit
    Left = 264
    Top = 232
    Width = 313
    Height = 57
    TabOrder = 1
  end
  object btn_testar: TButton
    Left = 74
    Top = 344
    Width = 503
    Height = 65
    Caption = 'Testar Login'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btn_testarClick
  end
end
