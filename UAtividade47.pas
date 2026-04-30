unit UAtividade47;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TfrmAtividade47 = class(TForm)
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
var
  contador, ivDigitado: Integer;
  vDigitado, par, impar: String;
begin
 for contador := 1 to 6 do
 begin
   vDigitado := InputBox('Verificador',
    'Digite um numero ','');

    if (StrToInt(vDigitado) mod 2 = 0)  then
    begin
      par := par + vDigitado + #13
    end
    else
    if (StrToInt(vDigitado)) mod 2 <> 0  then
    begin
      impar := impar + vDigitado + #13
    end;

    Application.MessageBox('Pares: '+ #13 + PChar(par), 'AVISO', 16);
      Application.Terminate;

 end;

end;

end.
