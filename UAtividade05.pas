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
    btn_exibirpass: TButton;
    procedure btn_logonClick(Sender: TObject);
    procedure edt_passwordChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_userKeyPress(Sender: TObject; var Key: Char);
    procedure edt_passwordKeyPress(Sender: TObject; var Key: Char);
    procedure btn_exibirpassMouseActivate(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y, HitTest: Integer;
      var MouseActivate: TMouseActivate);
    procedure btn_exibirpassMouseLeave(Sender: TObject);
  private
    usuario, senha : String;
  public
    { Public declarations }
  end;

var
  frmAtividade05: TfrmAtividade05;

implementation

{$R *.dfm}

procedure TfrmAtividade05.btn_exibirpassMouseActivate(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
begin
  edt_password.PasswordChar := #0;
end;

procedure TfrmAtividade05.btn_exibirpassMouseLeave(Sender: TObject);
begin
  edt_password.PasswordChar := '*';
end;

procedure TfrmAtividade05.btn_logonClick(Sender: TObject);
begin

  if (edt_user.Text = usuario) and (edt_password.Text = senha) then
  begin
    ShowMessage('Acesso Liberado');
    Close;
  end;

  if (edt_user.Text <> usuario) or (edt_password.Text <> senha) then
  begin
    ShowMessage('Acesso Negado');
    edt_user.SetFocus;
  end;

  edt_user.Clear;
  edt_password.Clear;


end;

procedure TfrmAtividade05.edt_passwordChange(Sender: TObject);
begin
  edt_password.PasswordChar := '*';
end;

procedure TfrmAtividade05.edt_passwordKeyPress(Sender: TObject; var Key: Char);
begin
  if( Key = #13 ) then
  begin
  btn_logon.SetFocus;
  end;
end;

procedure TfrmAtividade05.edt_userKeyPress(Sender: TObject; var Key: Char);
begin
  if( Key = #13 ) then
  begin
  edt_password.SetFocus;
  end;
end;

procedure TfrmAtividade05.FormShow(Sender: TObject);
begin
  usuario := 'user01';
  senha := '147';
end;

end.
