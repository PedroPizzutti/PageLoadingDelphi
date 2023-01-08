unit LoadingPage.Model.Conexao.Impl.QueryFiredac;

interface

uses
  Data.DB,
  FireDAC.Comp.Client,
  LoadingPage.Model.Conexao.Interfaces,
  LoadingPage.Model.Conexao.Impl.ConexaoFiredac;

type
  TModelFiredacQuery = class(TInterfacedObject, iModelQuery)
    private
      FQuery: TFDQuery;
      FConexao: iModelConexao;
    public
      constructor Create(aValue: iModelConexao);
      destructor Destroy; override;
      class function New(aValue: iModelConexao): iModelQuery;

      function Query: TObject;
      function Open(aSQL: String): iModelQuery;
      function ExecSQL(aSQL: String): iModelQuery;
  end;

implementation

{ TModelFiredacQuery }

constructor TModelFiredacQuery.Create(aValue: iModelConexao);
begin
  FConexao := aValue;
  FQuery := TFDQuery.Create(nil);
  FQuery.Connection := TFDConnection(FConexao.Connection);
end;

destructor TModelFiredacQuery.Destroy;
begin
  FQuery.DisposeOf;
  inherited;
end;

function TModelFiredacQuery.ExecSQL(aSQL: String): iModelQuery;
begin
  Result := Self;
  FQuery.ExecSQL(aSQL);
end;

class function TModelFiredacQuery.New(aValue: iModelConexao): iModelQuery;
begin
  Result := Self.Create(aValue);
end;

function TModelFiredacQuery.Open(aSQL: String): iModelQuery;
begin
  Result := Self;
  FQuery.Close;
  FQuery.Open(aSQL);
end;

function TModelFiredacQuery.Query: TObject;
begin
  Result := FQuery;
end;

end.
