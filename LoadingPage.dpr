program LoadingPage;

uses
  Vcl.Forms,
  LoadingPage.View.FormPrincipal in 'src\View\LoadingPage.View.FormPrincipal.pas' {FormPrincipal},
  LoadingPage.Model.Conexao.Interfaces in 'src\Model\Conexao\LoadingPage.Model.Conexao.Interfaces.pas',
  LoadingPage.Model.Conexao.Impl.ConexaoFiredac in 'src\Model\Conexao\Impl\LoadingPage.Model.Conexao.Impl.ConexaoFiredac.pas',
  LoadingPage.Model.Conexao.Impl.QueryFiredac in 'src\Model\Conexao\Impl\LoadingPage.Model.Conexao.Impl.QueryFiredac.pas',
  LoadingPage.Model.Conexao.Impl.ConexaoFactory in 'src\Model\Conexao\Impl\LoadingPage.Model.Conexao.Impl.ConexaoFactory.pas',
  LoadingPage.Model.Entidade.Interfaces in 'src\Model\Entidade\LoadingPage.Model.Entidade.Interfaces.pas',
  LoadingPage.Model.Entidade.Impl.Musica in 'src\Model\Entidade\Impl\LoadingPage.Model.Entidade.Impl.Musica.pas',
  LoadingPage.Model.Entidade.Impl.Factory in 'src\Model\Entidade\Impl\LoadingPage.Model.Entidade.Impl.Factory.pas',
  LoadingPage.Controller.EntidadeController.Interfaces in 'src\Controller\LoadingPage.Controller.EntidadeController.Interfaces.pas',
  LoadingPage.Controller.Impl.EntidadeController in 'src\Controller\Impl\LoadingPage.Controller.Impl.EntidadeController.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;

end.
