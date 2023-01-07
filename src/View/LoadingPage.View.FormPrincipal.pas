unit LoadingPage.View.FormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TFormPrincipal = class(TForm)
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Button1: TButton;
    FDQuery1TrackId: TIntegerField;
    FDQuery1Name: TWideStringField;
    FDQuery1AlbumId: TIntegerField;
    FDQuery1MediaTypeId: TIntegerField;
    FDQuery1GenreId: TIntegerField;
    FDQuery1Composer: TWideStringField;
    FDQuery1Milliseconds: TIntegerField;
    FDQuery1Bytes: TIntegerField;
    FDQuery1UnitPrice: TBCDField;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

procedure TFormPrincipal.Button1Click(Sender: TObject);
begin
  FDQuery1.Close;
  FDQuery1.Open;
end;

end.
