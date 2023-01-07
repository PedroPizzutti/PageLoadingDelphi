unit LoadingPage.Controller.EntidadeController.Interfaces;

interface

uses
  LoadingPage.Model.Entidade.Interfaces;

type
  iControllerEntidade = interface
  ['{22CE5E81-7C99-40D2-8397-7AC452B5AA97}']
    function Entidade: iModelEntidadeFactory;
  end;

implementation

end.
