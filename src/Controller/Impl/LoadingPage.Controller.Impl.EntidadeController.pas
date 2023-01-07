unit LoadingPage.Controller.Impl.EntidadeController;

interface

uses
  LoadingPage.Controller.EntidadeController.Interfaces,
  LoadingPage.Model.Entidade.Interfaces;

type
  TControllerEntidade = class(TInterfacedObject, iControllerEntidade)
    private
      FModelEntidades: iModelEntidadeFactory;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iControllerEntidade;

      function Entidade: iModelEntidadeFactory;
  end;

implementation

uses
  LoadingPage.Model.Entidade.Impl.Factory;

{ TControllerEntidade }

constructor TControllerEntidade.Create;
begin
  FModelEntidades := TModelEntidadesFactory.New;
end;

destructor TControllerEntidade.Destroy;
begin
  inherited;
end;

function TControllerEntidade.Entidade: iModelEntidadeFactory;
begin
  Result := FModelEntidades;
end;

class function TControllerEntidade.New: iControllerEntidade;
begin
  Result := Self.Create;
end;

end.
