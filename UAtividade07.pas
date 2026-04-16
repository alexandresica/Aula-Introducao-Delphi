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
  inss, iR, sindicato, fgts, salarBruto, salarLiquido, salarioHora, horaMes, 
  descontos  : Real;
  nomeFuncionario : String;
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
  end
  else if (salarBruto <= 3500) then
  begin
    iR := 0.05;
  end
  else if (salarBruto <= 7500) then
  begin
    iR := 0.10;
  end
  else if (salarBruto > 3500) then
  begin
    iR := 0.20;
  end;

  descontos := inss + iR + sindicato;
  salarLiquido := salarBruto - descontos;

  MessageBox(Application.Handle, Pchar('Funcionario: '+nomeFuncionario +sLineBreak
                                        +'Salario Bruto: R$ '+FormatFloat('0.00', salarBruto)+sLineBreak
                                        + '(-) IR: '+FormatFloat('0.00"%"', iR * 100)+sLineBreak
                                        +'(-) '),
  'Confimação:', MB_OK + MB_DEFBUTTON1)
end;

end.
