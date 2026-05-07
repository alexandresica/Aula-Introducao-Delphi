unit UAtividade48;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TfrmAtividade48 = class(TForm)
    Timer: TTimer;
    procedure FormShow(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade48: TfrmAtividade48;

implementation

{$R *.dfm}

procedure TfrmAtividade48.FormShow(Sender: TObject);
begin
begin
 Timer.Interval := 10;
 Timer.Enabled := True;
end;
end;

procedure TfrmAtividade48.TimerTimer(Sender: TObject);
var
nDigitado : String;
  contador: Integer;
  numero, soma, media : Real;

begin
repeat
  nDigitado := InputBox('Atividade 48',
    'Digite um numero ','');
    contador++
    numero := StrToFloat(nDigitado);

    soma := soma + numero;
    media := soma / contador

until nDigitado = '0' ;
end;

end.
