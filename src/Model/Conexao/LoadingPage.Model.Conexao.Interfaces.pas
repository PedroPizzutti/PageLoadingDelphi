unit LoadingPage.Model.Conexao.Interfaces;

interface

type
  iModelQuery = interface;

  iModelConexao = interface
  ['{CF656B88-0E7D-416A-8237-31DA9A787F1C}']
    function Connection: TObject;
  end;

  iModelConexaoFactory = interface
  ['{37AA2ECD-CE41-450C-811A-021D9991CCA9}']
    function Conexao: iModelConexao;
    function Query: iModelQuery;
  end;

  iModelQuery = interface
  ['{87E40E4F-F201-4DCA-B013-5A5AE86CAD45}']
    function Query: TObject;
    function Open(aSQL: String): iModelQuery;
    function ExecSQL(aSQL: String): iModelQuery;
  end;


implementation

end.
