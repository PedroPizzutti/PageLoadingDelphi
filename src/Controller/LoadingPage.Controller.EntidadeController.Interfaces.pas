unit LoadingPage.Controller.EntidadeController.Interfaces;

interface

uses
  LoadingPage.Model.Entidade.Interfaces,
  LoadingPage.Model.Servico.Interfaces;

type
  iControllerEntidade = interface
  ['{22CE5E81-7C99-40D2-8397-7AC452B5AA97}']
    function Entidade: iModelEntidadeFactory;
  end;

  iControllerTarefa = interface
    ['{0F2CC7F0-3C9E-4817-A1C8-86E87986E962}']
    function Tarefa: iTarefa;
  end;

implementation

end.
