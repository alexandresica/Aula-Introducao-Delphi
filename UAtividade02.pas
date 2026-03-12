unit UAtividade02;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade02 = class(TForm)
    lbl_operacao: TLabel;
    lbl_igualdade: TLabel;
    edt_vlr_1: TEdit;
    edt_vlr_2: TEdit;
    btn_adicao: TButton;
    btn_subtracao: TButton;
    btn_multiplicacao: TButton;
    btn_divisao: TButton;
    lbl_resultado: TLabel;
    btn_executar: TButton;
    procedure btn_adicaoClick(Sender: TObject);
    procedure btn_subtracaoClick(Sender: TObject);
    procedure btn_multiplicacaoClick(Sender: TObject);
    procedure btn_divisaoClick(Sender: TObject);
    procedure btn_executarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade02: TfrmAtividade02;

implementation

{$R *.dfm}

procedure TfrmAtividade02.btn_adicaoClick(Sender: TObject);
var operacao : char;
begin
  lbl_operacao.Caption := btn_adicao.Caption;
end;

procedure TfrmAtividade02.btn_divisaoClick(Sender: TObject);
begin
  lbl_operacao.Caption := btn_divisao.Caption;
end;

procedure TfrmAtividade02.btn_executarClick(Sender: TObject);
var n1, n2, total : Real;
begin

  if lbl_operacao.Caption = '+' then
    n1 := StrToFloat(edt_vlr_1.Text);
    n2 := StrToFloat(edt_vlr_2.Text);
    total := n1 + n2;
    lbl_resultado.Caption :=  FloatToStr(total);

  else
    lbl_operacao.Caption = '-' then
    n1 := StrToFloat(edt_vlr_1.Text);
    n2 := StrToFloat(edt_vlr_2.Text);
    total := n1 - n2;
    lbl_resultado.Caption :=  FloatToStr(total);

  else
    lbl_operacao.Caption = 'x' then
    n1 := StrToFloat(edt_vlr_1.Text);
    n2 := StrToFloat(edt_vlr_2.Text);
    total := n1 * n2;
    lbl_resultado.Caption :=  FloatToStr(total);

  else
    lbl_operacao.Caption = '/' then
    n1 := StrToFloat(edt_vlr_1.Text);
    n2 := StrToFloat(edt_vlr_2.Text);
    total := n1 / n2;
    lbl_resultado.Caption :=  FloatToStr(total);

end;

procedure TfrmAtividade02.btn_multiplicacaoClick(Sender: TObject);
begin
  lbl_operacao.Caption := btn_multiplicacao.Caption;
end;

procedure TfrmAtividade02.btn_subtracaoClick(Sender: TObject);
begin
  lbl_operacao.Caption := btn_subtracao.Caption;
end;

end.
