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

 Timer.Interval := 10;
 Timer.Enabled := True;

end;

procedure TfrmAtividade48.TimerTimer(Sender: TObject);
var
nDigitado, controle : String;
  contador: Integer;
  numero, soma, media : Real;

begin

contador := 0;
controle := '1';

repeat
  nDigitado := InputBox('Atividade 48',
    'Digite um numero ','');
    Inc(contador);

    numero := StrToFloat(nDigitado);
    soma := soma + numero;


until controle = '0' ;

media := soma / contador;

MessageBox(Application.Handle,Pchar(
'Quantidade de numeros digitados: ' +IntToStr(contador)+#13+
'Soma: '+FloatToStr(soma)+#13+
'Media: '+FloatToStr(media)), 'CSM0',MB_OK);
  Close;
end;

end.
