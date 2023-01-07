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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlGrid: TPanel
    Left = 0
    Top = 57
    Width = 885
    Height = 242
    Align = alClient
    Caption = 'pnlGrid'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 883
      Height = 240
      Align = alClient
      DataSource = dsMusicas
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object pnlTopo: TPanel
    Left = 0
    Top = 0
    Width = 885
    Height = 57
    Align = alTop
    TabOrder = 1
    object btnCarregaMusicas: TButton
      Left = 640
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
