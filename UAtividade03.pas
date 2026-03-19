unit UAtividade03;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade03 = class(TForm)
    lbl_nome: TLabel;
    lbl_idade: TLabel;
    edt_nome: TEdit;
    edt_idade: TEdit;
    btn_exibir: TButton;
    lbl_texto: TLabel;
    procedure btn_exibirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade03: TfrmAtividade03;

implementation

{$R *.dfm}

procedure TfrmAtividade03.btn_exibirClick(Sender: TObject);
var
  idade, idadeFutura : integer;
  nome, mensagem : string;
begin
  nome := edt_nome.Text;
  idade := StrToInt(edt_idade.Text);

  idadeFutura := idade + 28
  mensagem :=  nome+ 'daqui a 28 anos você vai ter' + IntToStr(idadeFutura)+ 'anos!';

  lbl_Texto.Caption :=  mensagem
end;

end.
