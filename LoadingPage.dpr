program LoadingPage;

uses
  Vcl.Forms,
  LoadingPage.View.FormPrincipal in 'src\View\LoadingPage.View.FormPrincipal.pas' {FormPrincipal},
  LoadingPage.Model.Conexao.Interfaces in 'src\Model\Conexao\LoadingPage.Model.Conexao.Interfaces.pas',
  LoadingPage.Model.Conexao.Impl.ConexaoFiredac in 'src\Model\Conexao\Impl\LoadingPage.Model.Conexao.Impl.ConexaoFiredac.pas',
  LoadingPage.Model.Conexao.Impl.QueryFiredac in 'src\Model\Conexao\Impl\LoadingPage.Model.Conexao.Impl.QueryFiredac.pas',
  LoadingPage.Model.Conexao.Impl.ConexaoFactory in 'src\Model\Conexao\Impl\LoadingPage.Model.Conexao.Impl.ConexaoFactory.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;

end.
