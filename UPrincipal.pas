unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    btnExemplo01: TButton;
    btnAtividade01: TButton;
    btnExemplo02: TButton;
    btnAtividade02: TButton;
    btnAtividade03: TButton;
    btnAtividade04: TButton;
    btnAtividade05: TButton;
    btnAtividade06: TButton;
    btnAtividade07: TButton;
    btnAtividade46: TButton;
    btnExemplo23: TButton;
    procedure btnExemplo01Click(Sender: TObject);
    procedure btnAtividade01Click(Sender: TObject);
    procedure btnExemplo02Click(Sender: TObject);
    procedure btnAtividade02Click(Sender: TObject);
    procedure btnAtividade03Click(Sender: TObject);
    procedure btnAtividade04Click(Sender: TObject);
    procedure btnAtividade05Click(Sender: TObject);
    procedure btnAtividade06Click(Sender: TObject);
    procedure btnAtividade07Click(Sender: TObject);
    procedure btnExemplo23Click(Sender: TObject);
    procedure btnAtividade46Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses UExemplo01, UAtividade01, UExemplo02, UAtividade02, UAtividade03,
  UAtividade04, UAtividade05, UAtividade06, UAtividade07, UEx_24, UAtividade26;



procedure TfrmPrincipal.btnAtividade01Click(Sender: TObject);
begin
  frmAtividade01.ShowModal;
end;

procedure TfrmPrincipal.btnAtividade02Click(Sender: TObject);
begin
  frmAtividade02.ShowModal;
end;

procedure TfrmPrincipal.btnAtividade03Click(Sender: TObject);
begin
  frmAtividade03.ShowModal
end;

procedure TfrmPrincipal.btnAtividade04Click(Sender: TObject);
begin
  frmAtividade04.ShowModal;
end;

procedure TfrmPrincipal.btnAtividade05Click(Sender: TObject);
begin
 frmAtividade05.ShowModal;
end;

procedure TfrmPrincipal.btnAtividade06Click(Sender: TObject);
begin
  frmAtividade06.ShowModal;
end;

procedure TfrmPrincipal.btnAtividade07Click(Sender: TObject);
begin
  frmAtividade07.ShowModal;
end;

procedure TfrmPrincipal.btnAtividade46Click(Sender: TObject);
begin
  frmAtividade46.ShowModal;
end;

procedure TfrmPrincipal.btnExemplo01Click(Sender: TObject);
begin
  frmExemplo01.ShowModal;
end;

procedure TfrmPrincipal.btnExemplo02Click(Sender: TObject);
begin
  frmExemplo02.ShowModal;
end;

procedure TfrmPrincipal.btnExemplo23Click(Sender: TObject);
begin
  frmEx_24.ShowModal;
end;

end.
