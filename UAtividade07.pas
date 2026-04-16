unit UAtividade07;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade07 = class(TForm)
    lbl_nome: TLabel;
    edt_nome: TEdit;
    lbl_salariohora: TLabel;
    edt_salarioHora: TEdit;
    lbl_horames: TLabel;
    edt_horaMes: TEdit;
    btn_calcSalario: TButton;
    procedure btn_calcSalarioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade07: TfrmAtividade07;

implementation

{$R *.dfm}

procedure TfrmAtividade07.btn_calcSalarioClick(Sender: TObject);
var
  inss, iR, sindicato, fgts, salarBruto, salarLiquido : Real;
  salarioHora, horaMes, descontos  : Real;
  nomeFuncionario, salarBrutoMsg, irMsg, inssMsg, sindicatoMsg : String;
  totalDescontos, salarLiquidoMsg, mensagem, fgtsMsg : String;

begin
  nomeFuncionario := edt_nome.Text;
  salarioHora := StrToFloat(edt_salarioHora.Text);
  horaMes := StrToFloat(edt_horaMes.Text);
  salarBruto := salarioHora * horaMes;
  inss := salarBruto * 0.10;
  sindicato := salarBruto * 0.03;
  fgts := salarBruto * 0.11;


 { Calculo do Imposto de Renda de acordo com faixa saarial }

  if (salarBruto <= 1900) then
  begin
    iR := 0;
    irMsg := '(-) IR(Isento): R$ '+FormatFloat('0.00', iR);
  end
  else if (salarBruto <= 3500) then
  begin
    iR := salarBruto * 0.05;
    irMsg := '(-) IR(5%): R$ '+FormatFloat('0.00', iR);
  end
  else if (salarBruto <= 7500) then
  begin
    iR := salarBruto * 0.10;
    irMsg := '(-) IR(10%): R$ '+FormatFloat('0.00', iR);
  end
  else if (salarBruto > 3500) then
  begin
    iR := salarBruto * 0.20;
    irMsg := '(-) IR(20%): R$ '+FormatFloat('0.00', iR);
  end;

  descontos := inss + iR + sindicato;
  salarLiquido := salarBruto - descontos;

  salarBrutoMsg := 'Salario Bruto: R$ '+FormatFloat('0.00', salarBruto);
  inssMsg := '(-) INSS(10%): R$ '+FormatFloat('0.00', inss);
  sindicatoMsg := '(-) Sindicato(3%): R$ '+FormatFloat('0.00', sindicato);
  fgtsMsg := 'FGTS(11%): R$ '+FormatFloat('0.00', fgts);
  totalDescontos := 'Total de Descontos: R$ '+FormatFloat('0.00', descontos);
  salarLiquidoMsg := 'Salário Liquido: R$ '+FormatFloat('0.00', salarLiquido);

  mensagem := 'Nome do Funcionario: '+nomeFuncionario+sLineBreak+salarBrutoMsg
  +sLineBreak+irMsg+sLineBreak+inssMsg+sLineBreak+sindicatoMsg+sLineBreak+fgtsMsg
  +sLineBreak+totalDescontos+sLineBreak+salarLiquidoMsg;

  {MessageBox(Application.Handle,PChar(mensagem),
  'Confimação:', MB_OK + MB_DEFBUTTON1);}

  ShowMessage(mensagem);

end;

end.
