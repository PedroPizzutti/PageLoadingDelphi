unit LoadingPage.Model.Entidade.Impl.Factory;

interface

uses
  LoadingPage.Model.Entidade.Interfaces;

type
  TModelEntidadesFactory = class(TInterfacedObject, iModelEntidadeFactory)
    private
      FMusica: iModelEntidade;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iModelEntidadeFactory;

      function Musica: iModelEntidade;
  end;

implementation

uses
  LoadingPage.Model.Entidade.Impl.Musica;

{ TModelEntidadesFactory }

constructor TModelEntidadesFactory.Create;
begin

end;

destructor TModelEntidadesFactory.Destroy;
begin

  inherited;
end;

function TModelEntidadesFactory.Musica: iModelEntidade;
begin
  if not Assigned(FMusica) then
    FMusica := TModelEntidadeMusica.New;

  Result := FMusica;
end;

class function TModelEntidadesFactory.New: iModelEntidadeFactory;
begin
  Result := Self.Create;
end;

end.
