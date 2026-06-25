unit UAtividade66;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade66 = class(TForm)
    lbl_usuario: TLabel;
    lbl_senha: TLabel;
    edt_usuario: TEdit;
    edt_senha: TEdit;
    btn_testar: TButton;
    procedure btn_testarClick(Sender: TObject);
    procedure edt_usuarioKeyPress(Sender: TObject; var Key: Char);
    procedure edt_senhaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure testarLogin;
  public
    { Public declarations }
  end;

var
  frmAtividade66: TfrmAtividade66;

implementation

{$R *.dfm}

procedure TfrmAtividade66.btn_testarClick(Sender: TObject);
begin
  testarLogin;
end;

procedure TfrmAtividade66.edt_senhaKeyPress(Sender: TObject; var Key: Char);
begin
if( Key = #13 ) then
  begin
   btn_testar.SetFocus;
  end;
end;

procedure TfrmAtividade66.edt_usuarioKeyPress(Sender: TObject; var Key: Char);
begin
if( Key = #13 ) then
  begin
   edt_senha.SetFocus;
  end;
end;

procedure TfrmAtividade66.testarLogin;
var
  user, pass : string;

begin
  user := 'admin';
  pass := 'admin';

  if (edt_usuario.Text = user) and (edt_senha.Text = pass) then
  begin
    ShowMessage('Correto');
  end
  else
  begin
    ShowMessage('Errado');
  end;

end;

end.
