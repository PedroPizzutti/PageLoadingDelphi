program LoadingPage;

uses
  Vcl.Forms,
  LoadingPage.View.FormPrincipal in 'src\View\LoadingPage.View.FormPrincipal.pas' {FormPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
