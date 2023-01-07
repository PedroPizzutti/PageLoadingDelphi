object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  Caption = 'FormPrincipal'
  ClientHeight = 299
  ClientWidth = 676
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlGrid: TPanel
    Left = 0
    Top = 57
    Width = 676
    Height = 242
    Align = alClient
    Caption = 'pnlGrid'
    TabOrder = 0
    object gridMusicas: TDBGrid
      Left = 1
      Top = 1
      Width = 674
      Height = 240
      Align = alClient
      DataSource = dsMusicas
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'TrackId'
          Title.Caption = 'ID'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Name'
          Title.Caption = 'Nome'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Composer'
          Title.Caption = 'Compositor'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Milliseconds'
          Title.Caption = 'Dura'#231#227'o(ms)'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Bytes'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UnitPrice'
          Title.Caption = 'Pre'#231'o'
          Width = 85
          Visible = True
        end>
    end
  end
  object pnlTopo: TPanel
    Left = 0
    Top = 0
    Width = 676
    Height = 57
    Align = alTop
    TabOrder = 1
    object btnCarregaMusicas: TButton
      Left = 424
      Top = 8
      Width = 233
      Height = 43
      Caption = 'Carregar M'#250'sicas'
      TabOrder = 0
      OnClick = btnCarregaMusicasClick
    end
  end
  object dsMusicas: TDataSource
    Left = 48
    Top = 16
  end
end
