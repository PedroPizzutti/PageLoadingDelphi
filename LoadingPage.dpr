program LoadingPage;

{$R *.dres}

uses
  Vcl.Forms,
  LoadingPage.View.FormPrincipal in 'src\View\LoadingPage.View.FormPrincipal.pas' {FormPrincipal},
  LoadingPage.Model.Conexao.Interfaces in 'src\Model\Conexao\LoadingPage.Model.Conexao.Interfaces.pas',
  LoadingPage.Model.Conexao.Impl.ConexaoFiredac in 'src\Model\Conexao\Impl\LoadingPage.Model.Conexao.Impl.ConexaoFiredac.pas',
  LoadingPage.Model.Conexao.Impl.QueryFiredac in 'src\Model\Conexao\Impl\LoadingPage.Model.Conexao.Impl.QueryFiredac.pas',
  LoadingPage.Model.Conexao.Impl.ConexaoFactory in 'src\Model\Conexao\Impl\LoadingPage.Model.Conexao.Impl.ConexaoFactory.pas',
  LoadingPage.Model.Entidade.Interfaces in 'src\Model\Entidade\LoadingPage.Model.Entidade.Interfaces.pas',
  LoadingPage.Model.Entidade.Impl.Musica in 'src\Model\Entidade\Impl\LoadingPage.Model.Entidade.Impl.Musica.pas',
  LoadingPage.Model.Entidade.Impl.Factory in 'src\Model\Entidade\Impl\LoadingPage.Model.Entidade.Impl.Factory.pas' {,
  LoadingPage.Controller.EntidadeController.Interfaces in 'src\Controller\LoadingPage.Controller.EntidadeController.Interfaces.pas',
  LoadingPage.Controller.Impl.EntidadeController in 'src\Controller\Impl\LoadingPage.Controller.Impl.EntidadeController.pas' {$R *.res},
  LoadingPage.Controller.EntidadeController.Interfaces in 'src\Controller\LoadingPage.Controller.EntidadeController.Interfaces.pas',
  LoadingPage.Controller.Impl.EntidadeController in 'src\Controller\Impl\LoadingPage.Controller.Impl.EntidadeController.pas' {,
  LoadingPage.View.LoadingForm in 'src\View\LoadingPage.View.LoadingForm.pas' {FormLoadGif},
  LoadingPage.View.LoadingForm in 'src\View\LoadingPage.View.LoadingForm.pas' {FormLoadGif},
  LoadingPage.Model.Servico.Interfaces in 'src\Model\Serviço\LoadingPage.Model.Servico.Interfaces.pas',
  LoadingPage.Model.Servico.Impl.Tarefa in 'src\Model\Serviço\Impl\LoadingPage.Model.Servico.Impl.Tarefa.pas',
  LoadingPage.Controller.Impl.Tarefa in 'src\Controller\Impl\LoadingPage.Controller.Impl.Tarefa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  ReportMemoryLeaksOnShutdown := True;
  Application.Run;

end.
