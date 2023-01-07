unit LoadingPage.View.LoadingForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.GIFImg, Vcl.ExtCtrls;

type
  TFormLoadGif = class(TForm)
    imgLoadGif: TImage;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLoadGif: TFormLoadGif;

implementation

{$R *.dfm}

procedure TFormLoadGif.FormCreate(Sender: TObject);
begin
  TGIFImage(imgLoadGif.Picture.Graphic).Animate := True;
end;

end.
