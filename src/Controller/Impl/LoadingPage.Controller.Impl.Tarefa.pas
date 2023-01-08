unit LoadingPage.Controller.Impl.Tarefa;

interface

uses
  LoadingPage.Controller.EntidadeController.Interfaces,
  LoadingPage.Model.Servico.Interfaces;

type
  TControllerTarefa = class(TInterfacedObject, iControllerTarefa)
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

{ TControllerTarefa }

constructor TControllerTarefa.Create;
begin
  FTarefa := TTarefa.New;
end;

destructor TControllerTarefa.Destroy;
begin

  inherited;
end;

class function TControllerTarefa.New: iControllerTarefa;
begin
  Result := Self.Create;
end;

function TControllerTarefa.Tarefa: iTarefa;
begin
  Result := FTarefa;
end;

end.
