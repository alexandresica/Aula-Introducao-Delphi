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
    procedure btnLimparClick(Sender: TObject);
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
contador, registro : Integer;

begin
registro := 0;
contador := 0;
nome := edtNome.Text;
endereco := edtEndereco.Text;

inc(registro);
dados := 'Registro: n°' +IntToStr(registro) +sLineBreak;
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

dados := dados + 'Nome: '+nome+sLineBreak+'Endereço: '+endereco+sLineBreak;

if(rbtMasc.Checked = True) then
begin
  dados := dados + 'Sexo: Masculino' +sLineBreak;
end
else if(rbtFem.Checked = True) then
begin
  dados := dados + 'Sexo: Feminino' +sLineBreak;
end;

dados := dados + 'Cidade: ' + cbbCidade.Items[cbbCidade.ItemIndex] +sLineBreak;

dados := dados + 'Frutas Favoritas: ' ;
if (ccbBanana.Checked = True) then
begin
   dados := dados +sLineBreak+ 'Banana';
   inc(contador);
end;
if (ccbJaca.Checked = True) then
begin
   dados := dados +sLineBreak+ 'Jaca';
   inc(contador);
end;
if (ccbMaca.Checked = True) then
begin
   dados := dados +sLineBreak+ 'Maçã';
   inc(contador);
end;
if (ccbManga.Checked = True) then
begin
   dados := dados +sLineBreak+ 'Manga';
   inc(contador);
end;
if (ccbMorango.Checked = True) then
begin
   dados := dados +sLineBreak+ 'Morango';
   inc(contador);
end;
if (ccbUva.Checked = True) then
begin
   dados := dados +sLineBreak+ 'Uva';
   inc(contador);
end;

if (contador = 0) then
begin
  ShowMessage('Escolha uma Fruta!');
  Close;

end;

mmoRegistros.Lines.Add(dados)

end;

procedure TfrmCadastro.btnLimparClick(Sender: TObject);
begin
  mmoRegistros.Lines.Clear
end;

end.
