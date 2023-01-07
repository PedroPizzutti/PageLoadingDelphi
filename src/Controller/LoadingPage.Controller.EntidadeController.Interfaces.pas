unit LoadingPage.Controller.EntidadeController.Interfaces;

interface

uses
  LoadingPage.Model.Entidade.Interfaces;

type
  iControllerEntidade = interface
    function Entidade: iModelEntidadeFactory;
  end;

implementation

end.
