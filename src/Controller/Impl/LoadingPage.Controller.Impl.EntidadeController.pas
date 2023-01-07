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

      function Entidades: iModelEntidadeFactory;
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

function TControllerEntidade.Entidades: iModelEntidadeFactory;
begin
  Result := FModelEntidades;
end;

class function TControllerEntidade.New: iControllerEntidade;
begin
  Self.Create;
end;

end.
