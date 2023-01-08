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
    procedure FormCreate(Sender: TObject);
    procedure btnCarregaMusicasClick(Sender: TObject);
  private
    { Private declarations }
    FController: iControllerEntidade;
    FFormLoading: TFormLoadGif;
    AllTasks: Array of ITask;

    procedure CriaTarefa(aProcedure: TProc);
    procedure ExecutaTarefas(aTarefas: Array of ITask);
    procedure EsperaTarefas;

    procedure BuscaMusicas;
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses
  LoadingPage.Controller.Impl.EntidadeController;

{$R *.dfm}

procedure TFormPrincipal.FormCreate(Sender: TObject);
begin
  FController := TControllerEntidade.New;
end;

procedure TFormPrincipal.btnCarregaMusicasClick(Sender: TObject);
begin
  CriaTarefa(BuscaMusicas);
  ExecutaTarefas(AllTasks);
  EsperaTarefas;
end;

procedure TFormPrincipal.ExecutaTarefas(aTarefas: Array of ITask);
var
  I: Integer;
begin
  for I := Low(aTarefas) to High(aTarefas) do
  begin
    aTarefas[I].Start;
  end;
end;

procedure TFormPrincipal.BuscaMusicas;
begin
  if Assigned(gridMusicas.DataSource.DataSet) then
    gridMusicas.DataSource.DataSet.Close;

  Sleep(3000);

  TThread.Synchronize(nil,
    procedure
    begin
      FController
        .Entidade
        .Musica
        .DataSet(dsMusicas)
        .Open;
    end);
end;

procedure TFormPrincipal.CriaTarefa(aProcedure: TProc);
begin
  SetLength(AllTasks, 1);
  AllTasks[High(AllTasks)] := TTask.Create(aProcedure);
end;

procedure TFormPrincipal.EsperaTarefas;
begin
   TTask.Run(
    procedure
    begin
       TThread.Synchronize(TThread.CurrentThread,
        procedure
        begin
          FFormLoading := TFormLoadGif.Create(nil);
          FFormLoading.Show;
        end);

      TTask.WaitForAll(AllTasks);

      TThread.Queue(TThread.CurrentThread,
        procedure
        begin
          FFormLoading.Close;
          FFormLoading.DisposeOf;
        end);
    end);
end;

end.
