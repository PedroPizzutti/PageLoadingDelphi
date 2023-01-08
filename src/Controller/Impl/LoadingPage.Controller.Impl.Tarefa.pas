unit LoadingPage.Controller.Impl.Tarefa;

interface

uses
  LoadingPage.Controller.EntidadeController.Interfaces,
  LoadingPage.Model.Servico.Interfaces;

type
  TTarefaController = class(TInterfacedObject, iControllerTarefa)
    private
      FTarefa: iTarefa;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iControllerTarefa;

      function Tarefa: iTarefa;
  end;

implementation

uses
  LoadingPage.Model.Servico.Impl.Tarefa;

{ TTarefaController }

constructor TTarefaController.Create;
begin
  FTarefa := TTarefa.New;
end;

destructor TTarefaController.Destroy;
begin

  inherited;
end;

class function TTarefaController.New: iControllerTarefa;
begin
  Result := Self.Create;
end;

function TTarefaController.Tarefa: iTarefa;
begin
  Result := FTarefa;
end;

end.
