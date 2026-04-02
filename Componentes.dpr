program Componentes;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {frmPrincipal},
  UExemplo01 in 'UExemplo01.pas' {frmExemplo01},
  UAtividade01 in 'UAtividade01.pas' {frmAtividade01},
  UExemplo02 in 'UExemplo02.pas' {frmExemplo02},
  UAtividade02 in 'UAtividade02.pas' {frmAtividade02},
  UAtividade03 in 'UAtividade03.pas' {frmAtividade03},
  UAtividade04 in 'UAtividade04.pas' {frmAtividade04},
  UAtividade05 in 'UAtividade05.pas' {frmAtividade05};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmExemplo01, frmExemplo01);
  Application.CreateForm(TfrmAtividade01, frmAtividade01);
  Application.CreateForm(TfrmExemplo02, frmExemplo02);
  Application.CreateForm(TfrmAtividade02, frmAtividade02);
  Application.CreateForm(TfrmAtividade03, frmAtividade03);
  Application.CreateForm(TfrmAtividade04, frmAtividade04);
  Application.CreateForm(TfrmAtividade05, frmAtividade05);
  Application.Run;
end.
