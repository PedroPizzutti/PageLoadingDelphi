object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  Caption = 'FormPrincipal'
  ClientHeight = 299
  ClientWidth = 885
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 57
    Width = 885
    Height = 242
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitTop = 55
    ExplicitWidth = 852
    ExplicitHeight = 244
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 883
      Height = 240
      Align = alClient
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 885
    Height = 57
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 852
    object Button1: TButton
      Left = 640
      Top = 8
      Width = 233
      Height = 43
      Caption = 'Button1'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=D:\Meus Documentos\Documentos\Fontes\MeusProjetos\loadi' +
        'ng_page_delphi\database\Chinook.db'
      'DriverID=SQLite')
    Connected = True
    Left = 400
    Top = 160
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT *'
      '  FROM TRACK')
    Left = 368
    Top = 160
    object FDQuery1TrackId: TIntegerField
      FieldName = 'TrackId'
      Origin = 'TrackId'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1Name: TWideStringField
      DisplayWidth = 80
      FieldName = 'Name'
      Origin = 'Name'
      Required = True
      Size = 80
    end
    object FDQuery1AlbumId: TIntegerField
      FieldName = 'AlbumId'
      Origin = 'AlbumId'
    end
    object FDQuery1MediaTypeId: TIntegerField
      FieldName = 'MediaTypeId'
      Origin = 'MediaTypeId'
      Required = True
    end
    object FDQuery1GenreId: TIntegerField
      FieldName = 'GenreId'
      Origin = 'GenreId'
    end
    object FDQuery1Composer: TWideStringField
      DisplayWidth = 80
      FieldName = 'Composer'
      Origin = 'Composer'
      Size = 80
    end
    object FDQuery1Milliseconds: TIntegerField
      FieldName = 'Milliseconds'
      Origin = 'Milliseconds'
      Required = True
    end
    object FDQuery1Bytes: TIntegerField
      FieldName = 'Bytes'
      Origin = 'Bytes'
    end
    object FDQuery1UnitPrice: TBCDField
      FieldName = 'UnitPrice'
      Origin = 'UnitPrice'
      Required = True
      Precision = 10
      Size = 2
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 336
    Top = 160
  end
end
