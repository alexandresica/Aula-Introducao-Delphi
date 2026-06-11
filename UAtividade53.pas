unit UAtividade53;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
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
    procedure FormShow(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    { Private declarations }
    nRegistros: Integer;
  public
    { Public declarations }
  end;

var
  frmCadastro: TfrmCadastro;

implementation

{$R *.dfm}

procedure TfrmCadastro.btnCadastrarClick(Sender: TObject);
var
  nome, endereco, sexo, cidade, frutas, cadastro, erros: String;
  validacao: Boolean;
begin
  validacao := true;
  erros := '';

  if edtNome.Text = '' then
  begin
    validacao := false;
    erros := erros + '- Digite o nome para realizar o cadastro' + sLineBreak;
  end
  else
  begin
    nome := edtNome.Text;
  end;

  if edtEndereco.Text = '' then
  begin
    validacao := false;
    erros := erros + '- Digite o endereço para realizar o cadastro' +
      sLineBreak;
  end
  else
  begin
    endereco := edtEndereco.Text;
  end;

  // sexo
  sexo := 'Indefinido';
  if rbtMasc.Checked = true then
  begin
    sexo := 'Masculino';
  end;
  if rbtFem.Checked = true then
  begin
    sexo := 'Feminino';
  end;

  if cbbCidade.ItemIndex = -1 then
  begin
    validacao := false;
    erros := erros + '- Escolha a cidade para realizar o cadastro' + sLineBreak;
  end
  else
  begin
    cidade := cbbCidade.Items[cbbCidade.ItemIndex];
  end;

  // Frutas
  frutas := '';
  if ccbMaca.Checked = true then
  begin
    frutas := frutas + 'Maçã' + sLineBreak;
  end;
  if ccbBanana.Checked = true then
  begin
    frutas := frutas + 'Banana' + sLineBreak;
  end;
  if ccbUva.Checked = true then
  begin
    frutas := frutas + 'Uva' + sLineBreak;
  end;
  if ccbMorango.Checked = true then
  begin
    frutas := frutas + 'Morango' + sLineBreak;
  end;
  if ccbJaca.Checked = true then
  begin
    frutas := frutas + 'Jaca' + sLineBreak;
  end;
  if ccbManga.Checked = true then
  begin
    frutas := frutas + 'Manga' + sLineBreak;
  end;

  if frutas = '' then
  begin
    frutas := 'Nenhuma fruta selecionada';
  end;

  if validacao = true then
  begin
    Inc(nRegistros);
    cadastro := 'Registro nº ' + IntToStr(nRegistros) + sLineBreak + 'Nome: ' + nome + sLineBreak +
      'Endereço: ' + endereco + sLineBreak + 'Sexo: ' + sexo + sLineBreak +
      'Cidade: ' + cidade + sLineBreak + 'Frutas favoritas' + sLineBreak +
      frutas + sLineBreak;

    edtNome.Clear;
    edtEndereco.Clear;
    rbtMasc.Checked := false;
    rbtFem.Checked := false;
    cbbCidade.ItemIndex := -1;
    ccbMaca.Checked := false;
    ccbBanana.Checked := false;
    ccbUva.Checked := false;
    ccbMorango.Checked := false;
    ccbJaca.Checked := false;
    ccbManga.Checked := false;

    mmoRegistros.Lines.Add(cadastro);
  end
  else
  begin
    Application.MessageBox(pChar(erros), 'Erro', MB_OK + MB_ICONERROR);
  end;

end;

procedure TfrmCadastro.btnLimparClick(Sender: TObject);
begin
  mmoRegistros.Clear;
  nRegistros := 0;
end;

procedure TfrmCadastro.FormShow(Sender: TObject);
begin
  nRegistros := 0;
end;

end.
