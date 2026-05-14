unit UAtividade49;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TfrmAtividade49 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade49: TfrmAtividade49;

implementation

{$R *.dfm}

procedure TfrmAtividade49.FormCreate(Sender: TObject);
var
contador, vlrInit, vlrEnd, vlrDivisivel : Integer;
v1, v2, vD : String;

begin
v1 := InputBox('Atividade 49',
    'Digite um valor inicial ','');

v2 := InputBox('Atividade 48',
    'Digite um valor final ','');

vD := InputBox('Atividade 48',
    'Digite um numero ','');

vlrInit := StrToInt(v1);
vlrEnd := StrToInt(v2);

for contador := vlrInit to vlrEnd do

end;

end.
