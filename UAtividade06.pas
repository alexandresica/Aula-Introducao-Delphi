unit UAtividade06;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade06 = class(TForm)
    btnMensagem: TButton;
    procedure btnMensagemClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade06: TfrmAtividade06;

implementation

{$R *.dfm}

procedure TfrmAtividade06.btnMensagemClick(Sender: TObject);
var
  mensagem : integer;
begin
  mensagem := MessageBox(Application.Handle,
  'Selecione uma opção para exibir seu valor', 'Saída',
  MB_ICONQUESTION + MB_YESNOCANCEL + MB_DEFBUTTON2);
  if (mensagem = idNo) then
  MessageBox(Application.Handle,
end;

end.
