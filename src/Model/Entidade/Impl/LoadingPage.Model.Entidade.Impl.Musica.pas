unit LoadingPage.Model.Entidade.Impl.Musica;

interface

uses
  Data.DB,
  LoadingPage.Model.Entidade.Interfaces,
  LoadingPage.Model.Conexao.Interfaces;

type
  TModelEntidadeMusica = class(TInterfacedObject, iModelEntidade)
    private
      FQuery: iModelQuery;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iModelEntidade;

      function DataSet(aValue: TDataSource): iModelEntidade;
      procedure Open;
  end;

implementation

uses
  LoadingPage.Model.Conexao.Impl.ConexaoFactory;

{ TModelEntidadeMusica }

constructor TModelEntidadeMusica.Create;
begin
  FQuery := TModelConexaoFactory.New.Query;
end;

function TModelEntidadeMusica.DataSet(aValue: TDataSource): iModelEntidade;
begin
  Result := Self;
  aValue.DataSet := TDataSet(FQuery.Query);
end;

destructor TModelEntidadeMusica.Destroy;
begin

  inherited;
end;

class function TModelEntidadeMusica.New: iModelEntidade;
begin
  Result := Self.Create;
end;

procedure TModelEntidadeMusica.Open;
begin
  FQuery.Open('SELECT * FROM TRACK');
end;

end.
