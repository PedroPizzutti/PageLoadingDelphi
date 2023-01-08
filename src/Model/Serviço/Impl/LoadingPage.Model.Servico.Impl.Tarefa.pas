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
      FTamanhoArray: Integer;
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
  FTamanhoArray := 1;
end;

function TTarefa.CriaTarefa(aProcedure: TProc): iTarefa;
begin
  Result := Self;
  SetLength(FTarefas, FTamanhoArray);
  FTarefas[High(FTarefas)] := TTask.Create(aProcedure);
  Inc(FTamanhoArray);
end;

destructor TTarefa.Destroy;
begin
  inherited;
end;

function TTarefa.EsperaTarefas: iTarefa;
begin
  Result := Self;
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

    Finalize(FTarefas);
    FTamanhoArray := 1;
  end);
end;

function TTarefa.ExecutaTarefas: iTarefa;
var
  I: Integer;
begin
  Result := Self;
  for I := Low(FTarefas) to High(FTarefas) do
    FTarefas[I].Start;
end;

class function TTarefa.New: iTarefa;
begin
  Result := Self.Create;
end;

end.
