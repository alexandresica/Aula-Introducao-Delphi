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
  UAtividade05 in 'UAtividade05.pas' {frmAtividade05},
  UAtividade06 in 'UAtividade06.pas' {frmAtividade06},
  UAtividade07 in 'UAtividade07.pas' {frmAtividade07},
  UEx_24 in 'UEx_24.pas' {frmEx_24},
  UAtividade26 in 'UAtividade26.pas' {frmAtividade46},
  UAtividade47 in 'UAtividade47.pas' {frmAtividade47},
  UAtividade48 in 'UAtividade48.pas' {frmAtividade48},
  UAtividade49 in 'UAtividade49.pas' {frmAtividade49};

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
  Application.CreateForm(TfrmAtividade06, frmAtividade06);
  Application.CreateForm(TfrmAtividade07, frmAtividade07);
  Application.CreateForm(TfrmEx_24, frmEx_24);
  Application.CreateForm(TfrmAtividade46, frmAtividade46);
  Application.CreateForm(TfrmAtividade47, frmAtividade47);
  Application.CreateForm(TfrmAtividade48, frmAtividade48);
  Application.CreateForm(TfrmAtividade49, frmAtividade49);
  Application.Run;
end.
