unit LoadingPage.View.FormPrincipal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.Grids,
  Vcl.DBGrids,
  Data.DB,
  LoadingPage.Controller.EntidadeController.Interfaces;
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
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses
  LoadingPage.Controller.Impl.EntidadeController,
  LoadingPage.View.LoadingForm;

{$R *.dfm}

procedure TFormPrincipal.btnCarregaMusicasClick(Sender: TObject);
begin
  FController
    .Entidade
    .Musica
    .DataSet(dsMusicas)
    .Open;
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
begin
  FController := TControllerEntidade.New;
end;

end.
