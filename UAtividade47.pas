unit UAtividade47;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TfrmAtividade47 = class(TForm)
    Timer: TTimer;
    procedure TimerTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade47: TfrmAtividade47;

implementation

{$R *.dfm}

procedure TfrmAtividade47.FormShow(Sender: TObject);
begin
 Timer.Interval := 10;
 Timer.Enabled := True;
end;

procedure TfrmAtividade47.TimerTimer(Sender: TObject);
var
  contador, nDigitado: Integer;
  vDigitado, par, impar: String;
begin
 for contador := 1 to 6 do
 begin
    Timer.Enabled := False;

   vDigitado := InputBox('Verificador',
    'Digite um numero ','');

    nDigitado := StrToInt(vDigitado);

    if odd(nDigitado) = false  then
    begin
      par := par + vDigitado + #13
    end
    else
    if odd(nDigitado) = true  then
    begin
      impar := impar + vDigitado + #13
    end;

 end;
  MessageBox(Application.Handle,Pchar('Numeros pares: '+#13+par+' '+'Numeros impares: '+#13+impar), 'Verificador',MB_OK);
  Close;
  end;
end.
