unit LoadingPage.View.FormPrincipal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  System.Threading,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.Grids,
  Vcl.DBGrids,
  Data.DB,
  LoadingPage.Controller.EntidadeController.Interfaces,
  LoadingPage.View.LoadingForm;

type
  TFormPrincipal = class(TForm)
    pnlGrid: TPanel;
    pnlTopo: TPanel;
    btnCarregaMusicas: TButton;
    dsMusicas: TDataSource;
    gridMusicas: TDBGrid;
    lblTexto: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnCarregaMusicasClick(Sender: TObject);
  private
    { Private declarations }
    FControllerEntidade: iControllerEntidade;
    FControllerTarefa:  iControllerTarefa;

    procedure BuscaMusicas;
    procedure ImprimeMensagem;
    procedure AlteraLabel;
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses
  LoadingPage.Controller.Impl.EntidadeController,
  LoadingPage.Controller.Impl.Tarefa;

{$R *.dfm}

procedure TFormPrincipal.FormCreate(Sender: TObject);
begin
  FControllerEntidade := TControllerEntidade.New;
  FControllerTarefa := TControllerTarefa.New;
end;

procedure TFormPrincipal.ImprimeMensagem;
begin
  Sleep(1000);
  TThread.Synchronize(nil,
    procedure
    begin
      ShowMessage('Oi, eu sou uma tarefa em paralelo!!!');
    end);
end;

procedure TFormPrincipal.AlteraLabel;
begin
  Sleep(3000);
  TThread.Synchronize(nil,
    procedure
    begin
      lblTexto.Caption := 'Oi, outra tarefa em paralelo!!'
    end);
end;

procedure TFormPrincipal.btnCarregaMusicasClick(Sender: TObject);
begin
  FControllerTarefa
    .Tarefa
      .CriaTarefa(ImprimeMensagem)
      .CriaTarefa(BuscaMusicas)
      .CriaTarefa(AlteraLabel)
      .ExecutaTarefas
      .EsperaTarefas;
end;

procedure TFormPrincipal.BuscaMusicas;
begin
  Sleep(5000);
  TThread.Synchronize(nil,
    procedure
    begin
      if Assigned(gridMusicas.DataSource.DataSet) then
        gridMusicas.DataSource.DataSet.Close;

      FControllerEntidade
        .Entidade
          .Musica
          .DataSet(dsMusicas)
          .Open;
    end);
end;

end.
