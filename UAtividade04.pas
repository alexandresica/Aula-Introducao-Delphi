unit UAtividade04;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade04 = class(TForm)
    lbl_nome: TLabel;
    lbl_nota1: TLabel;
    lbl_nota2: TLabel;
    lbl_nota3: TLabel;
    lbl_nota4: TLabel;
    lbl_media: TLabel;
    lbl_exibeMedia: TLabel;
    lbl_texto: TLabel;
    edt_nome: TEdit;
    edt_n1: TEdit;
    edt_n2: TEdit;
    edt_n3: TEdit;
    edt_n4: TEdit;
    btn_calcular: TButton;
    procedure btn_calcularClick(Sender: TObject);
    procedure lbl_exibeMediaDblClick(Sender: TObject);
  private
    texto : String;
  public
    { Public declarations }
  end;

var
  frmAtividade04: TfrmAtividade04;

implementation

{$R *.dfm}

procedure TfrmAtividade04.btn_calcularClick(Sender: TObject);
var
  nome : String;
  n1, n2, n3, n4, media : Real;
begin
  nome := edt_nome.Text;
  n1 := StrToFloat(edt_n1.Text);
  n2 := StrToFloat(edt_n2.Text);
  n3 := StrToFloat(edt_n3.Text);
  n4 := StrToFloat(edt_n4.Text);

  media := (n1 + n2 + n3 + n4) / 4;
  texto := 'Aluno(a): '+ nome + sLineBreak + 'Média = '+ FloatToStr(media);

  lbl_exibeMedia.Caption := FloatToStr(media);
end;

procedure TfrmAtividade04.lbl_exibeMediaDblClick(Sender: TObject);
begin
  lbl_texto.Caption := texto;
end;

end.
