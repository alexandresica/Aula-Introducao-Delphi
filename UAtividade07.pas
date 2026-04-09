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
    edt_salariohora: TEdit;
    lbl_horames: TLabel;
    edt_horames: TEdit;
    btn_calcSalario: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade07: TfrmAtividade07;

implementation

{$R *.dfm}

end.
