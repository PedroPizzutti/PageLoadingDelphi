unit LoadingPage.Model.Conexao.Impl.ConexaoFiredac;

interface

uses
Data.DB,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDaC.DApt,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat,
  FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI,
  FireDAC.Comp.Client,
  System.SysUtils,
  LoadingPage.Model.Conexao.Interfaces;

type
  TModelFiredacConexao = class(TInterfacedObject, iModelConexao)
    private
      FConexao: TFDConnection;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iModelConexao;

      function Connection: TObject;
  end;

implementation

{ TModelFiredacConexao }

function TModelFiredacConexao.Connection: TObject;
begin
  Result := FConexao;
end;

constructor TModelFiredacConexao.Create;
begin
  FConexao := TFDConnection.Create(nil);
  FConexao.Params.DriverID := 'SQLite';
  FConexao.Params.Database := 'D:\Meus Documentos\Documentos\Fontes\MeusProjetos\loading_page_delphi\database\Chinook.db';
  FConexao.Params.UserName := '';
  FConexao.Params.Password := '';
  FConexao.Connected := True;
end;

destructor TModelFiredacConexao.Destroy;
begin
  FConexao.DisposeOf;
  inherited;
end;

class function TModelFiredacConexao.New: iModelConexao;
begin
  Result := Self.Create;
end;

end.
