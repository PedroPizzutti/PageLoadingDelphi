unit LoadingPage.Model.Servico.Interfaces;

interface

uses
  System.SysUtils,
  System.Threading;

type
  iTarefa = interface
  ['{EC5FC3D7-CD36-453F-9D71-2454CB48C2C0}']
    function CriaTarefa(aProcedure: TProc): iTarefa;
    function ExecutaTarefas: iTarefa;
    function EsperaTarefas: iTarefa;
  end;

implementation

end.
