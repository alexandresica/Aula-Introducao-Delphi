unit UAtividade53;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmCadastro = class(TForm)
    edtNome: TEdit;
    edtEndereco: TEdit;
    lblNome: TLabel;
    lblEndereço: TLabel;
    gpbSexo: TGroupBox;
    rbtMasc: TRadioButton;
    rbtFem: TRadioButton;
    cbbCidade: TComboBox;
    gpbFrutas: TGroupBox;
    ccbMaca: TCheckBox;
    ccbBanana: TCheckBox;
    ccbUva: TCheckBox;
    ccbMorango: TCheckBox;
    ccbJaca: TCheckBox;
    ccbManga: TCheckBox;
    mmoRegistros: TMemo;
    btnCadastrar: TButton;
    btnLimpar: TButton;
    procedure btnCadastrarClick(Sender: TObject);
  private
    { Private declarations }
    nRegistro : Integer;

  public
    { Public declarations }
  end;

var
  frmCadastro: TfrmCadastro;

implementation

{$R *.dfm}


procedure TfrmCadastro.btnCadastrarClick(Sender: TObject);
var

nome, endereco, dados : String;

begin

nome := edtNome.Text;
endereco := edtEndereco.Text;

if  (nome = '') then
begin
  ShowMessage('Nome não pode ser vazio!')
end


else if  (endereco = '') then
begin
  ShowMessage('Endereço não pode ser vazio!')
end

else if ((rbtFem.Checked = False) and (rbtMasc.Checked = False)) then
begin
   ShowMessage('Sexo não pode ser vazio!')
end

else if (cbbCidade.Items[cbbCidade.ItemIndex] = '' ) then
begin
   ShowMessage('Cidade não pode ser vazio!')
end;

dados := 'Nome: '+nome+sLineBreak+'Endereço: '+endereco+sLineBreak



end;

end.
