unit LoadingPage.Model.Servico.Impl.Tarefa;

interface

uses
  System.SysUtils,
  System.Threading,
  LoadingPage.Model.Servico.Interfaces,
  LoadingPage.View.LoadingForm;

type
  TTarefa = class(TInterfacedObject, iTarefa)
    private
      FTarefas: Array of ITask;
      FFormLoading: TFormLoadGif;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iTarefa;

      function CriaTarefa(aProcedure: TProc): iTarefa;
      function ExecutaTarefas: iTarefa;
      function EsperaTarefas: iTarefa;
  end;

implementation

uses
  System.Classes;

{ TTarefa }

constructor TTarefa.Create;
begin

end;

function TTarefa.CriaTarefa(aProcedure: TProc): iTarefa;
begin
  SetLength(FTarefas, 1);
  FTarefas[High(FTarefas)] := TTask.Create(aProcedure);
end;

destructor TTarefa.Destroy;
begin

  inherited;
end;

function TTarefa.EsperaTarefas: iTarefa;
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

        TTask.WaitForAll(FTarefas);

        TThread.Queue(TThread.CurrentThread,
          procedure
          begin
            FFormLoading.Close;
            FFormLoading.DisposeOf;
          end);
    end);

end;

function TTarefa.ExecutaTarefas: iTarefa;
var
  I: Integer;
begin
  for I := Low(FTarefas) to High(FTarefas) do
    FTarefas[I].Start;
end;

class function TTarefa.New: iTarefa;
begin
  Result := Self.Create;
end;

end.
