unit UAtividade05;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade05 = class(TForm)
    lbl_login: TLabel;
    lbl_usuario: TLabel;
    edt_user: TEdit;
    lbl_senha: TLabel;
    edt_password: TEdit;
    btn_logon: TButton;
    procedure btn_logonClick(Sender: TObject);
    procedure edt_passwordChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade05: TfrmAtividade05;

implementation

{$R *.dfm}

procedure TfrmAtividade05.btn_logonClick(Sender: TObject);
begin
  var usuario, senha : String;

  usuario := 'user01';
  senha := '147';

  if (edt_user.Text = usuario) and (edt_password.Text = senha) then
  begin
    ShowMessage('Acesso Liberado');
  end;

  if (edt_user.Text <> usuario) or (edt_password.Text <> senha) then
  begin
    ShowMessage('Acesso Negado');
  end;

  edt_user.Text := '';
  edt_password.Text := '';


end;

procedure TfrmAtividade05.edt_passwordChange(Sender: TObject);
begin
  edt_password.PasswordChar := '*';
end;

end.
