unit LoadingPage.Model.Entidade.Interfaces;

interface

uses
  Data.DB;

type
  iModelEntidade = interface
  ['{44824EE6-0820-4830-9EFC-E7FE2D1922C2}']
    function DataSet(aValue: TDataSource): iModelEntidade;
    procedure Open;
  end;

  iModelEntidadeFactory = interface
  ['{E121F8A4-92C5-4018-950B-D91C7F41072E}']
    function Musica: iModelEntidade;
  end;

implementation

end.
