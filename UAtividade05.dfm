object frmAtividade05: TfrmAtividade05
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Atividade 5'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object lbl_login: TLabel
    Left = 232
    Top = 16
    Width = 127
    Height = 65
    Caption = 'Login'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl_usuario: TLabel
    Left = 248
    Top = 104
    Width = 101
    Height = 37
    Caption = 'Usuario:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl_senha: TLabel
    Left = 256
    Top = 189
    Width = 82
    Height = 37
    Caption = 'Senha:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edt_user: TEdit
    Left = 232
    Top = 160
    Width = 129
    Height = 23
    TabOrder = 0
  end
  object edt_password: TEdit
    Left = 232
    Top = 248
    Width = 129
    Height = 23
    TabOrder = 1
    OnChange = edt_passwordChange
  end
  object btn_logon: TButton
    Left = 256
    Top = 304
    Width = 86
    Height = 33
    Caption = 'Acessar'
    TabOrder = 2
    OnClick = btn_logonClick
  end
end
