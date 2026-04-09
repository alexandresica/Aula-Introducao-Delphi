unit UAtividade06;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade06 = class(TForm)
    btnMensagem: TButton;
    btnInput: TButton;
    procedure btnMensagemClick(Sender: TObject);
    procedure btnInputClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade06: TfrmAtividade06;

implementation

{$R *.dfm}

procedure TfrmAtividade06.btnInputClick(Sender: TObject);
var
  nomePais : string;
begin
  nomePais := InputBox('Seleção de País', 'Digite o nome de um país:', '');
  MessageBox(Application.Handle, Pchar('O país selecionado foi: '+''+nomePais),
  'Confimação:', MB_ICONINFORMATION + MB_OK + MB_DEFBUTTON1)
end;

procedure TfrmAtividade06.btnMensagemClick(Sender: TObject);
var
  mensagem : integer;
begin
  mensagem := MessageBox(Application.Handle,
  'Selecione uma opção para exibir seu valor', 'Saída',
  MB_ICONEXCLAMATION + MB_YESNOCANCEL + MB_DEFBUTTON2);
  if (mensagem = IDYES) then
  begin
    MessageBox(Application.Handle, 'Você selecionou "IdYes"', 'Opção: 6',
    MB_ICONINFORMATION + MB_OK + MB_DEFBUTTON1)
  end
  else
  if (mensagem = IDNO) then
  begin
   MessageBox(Application.Handle, 'Você selecionou "IdNo"', 'Opção: 7',
   MB_ICONINFORMATION + MB_OK + MB_DEFBUTTON1)
  end
  else
  if (mensagem = IDCANCEL) then
  begin
   MessageBox(Application.Handle, 'Você selecionou "IdCancel"', 'Opção: 2',
   MB_ICONINFORMATION + MB_OK + MB_DEFBUTTON1)
  end;
end;

end.
