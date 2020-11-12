object FormFirma: TFormFirma
  Left = 433
  Top = 123
  BorderStyle = bsSingle
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' - '#1092#1080#1088#1084#1099
  ClientHeight = 380
  ClientWidth = 523
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton3: TSpeedButton
    Left = 64
    Top = 192
    Width = 39
    Height = 30
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
      333333333337F33333333333333033333333333333373F333333333333090333
      33333333337F7F33333333333309033333333333337373F33333333330999033
      3333333337F337F33333333330999033333333333733373F3333333309999903
      333333337F33337F33333333099999033333333373333373F333333099999990
      33333337FFFF3FF7F33333300009000033333337777F77773333333333090333
      33333333337F7F33333333333309033333333333337F7F333333333333090333
      33333333337F7F33333333333309033333333333337F7F333333333333090333
      33333333337F7F33333333333300033333333333337773333333}
    NumGlyphs = 2
    OnClick = SpeedButton3Click
  end
  object SpeedButton4: TSpeedButton
    Left = 120
    Top = 192
    Width = 39
    Height = 30
    Enabled = False
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000333
      3333333333777F33333333333309033333333333337F7F333333333333090333
      33333333337F7F33333333333309033333333333337F7F333333333333090333
      33333333337F7F33333333333309033333333333FF7F7FFFF333333000090000
      3333333777737777F333333099999990333333373F3333373333333309999903
      333333337F33337F33333333099999033333333373F333733333333330999033
      3333333337F337F3333333333099903333333333373F37333333333333090333
      33333333337F7F33333333333309033333333333337373333333333333303333
      333333333337F333333333333330333333333333333733333333}
    NumGlyphs = 2
    OnClick = SpeedButton4Click
  end
  object DBGrid1: TDBGrid
    Left = 48
    Top = 32
    Width = 425
    Height = 153
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'FIRMID_24'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'NAME_24'
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1092#1080#1088#1084#1099
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 56
    Top = 232
    Width = 417
    Height = 73
    Caption = #1047#1072#1087#1080#1089#1100
    Color = clBtnFace
    ParentColor = False
    TabOrder = 1
    object Button3: TButton
      Left = 8
      Top = 24
      Width = 75
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 0
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 96
      Top = 24
      Width = 75
      Height = 25
      Caption = #1048#1089#1087#1088#1072#1074#1080#1090#1100
      TabOrder = 1
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 184
      Top = 24
      Width = 75
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100
      TabOrder = 2
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 304
      Top = 24
      Width = 75
      Height = 25
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      TabOrder = 3
      OnClick = Button6Click
    end
  end
  object Button1: TButton
    Left = 176
    Top = 192
    Width = 81
    Height = 33
    Caption = #1042#1099#1073#1088#1072#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 368
    Top = 320
  end
  object IBQuery1: TIBQuery
    Database = DM.IBDb1
    Transaction = DM.IBT1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from FIRM'
      'ORDER BY NAME_24')
    Left = 88
    Top = 312
    object IBQuery1FIRMID_24: TIntegerField
      FieldName = 'FIRMID_24'
      Origin = 'FIRM.FIRMID_24'
      Required = True
    end
    object IBQuery1NAME_24: TIBStringField
      FieldName = 'NAME_24'
      Origin = 'FIRM.NAME_24'
      Required = True
      Size = 100
    end
  end
  object IBQuery3: TIBQuery
    Database = DM.IBDb1
    Transaction = DM.IBT1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'INSERT INTO FIRM (NAME_24)'
      'VALUES (:NAME_24);')
    Left = 160
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NAME_24'
        ParamType = ptUnknown
      end>
  end
  object IBQuery4: TIBQuery
    Database = DM.IBDb1
    Transaction = DM.IBT1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Update FIRM'
      'set NAME_24=:NAME_24'
      'where FIRMID_24=:ID')
    Left = 232
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NAME_24'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end>
  end
  object IBQuery5: TIBQuery
    Database = DM.IBDb1
    Transaction = DM.IBT1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'DELETE FROM FIRM'
      'WHERE FIRMID_24=:Par1')
    Left = 304
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Par1'
        ParamType = ptUnknown
      end>
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 64
    object N1: TMenuItem
      Caption = #1052#1077#1085#1102
      object N2: TMenuItem
        Caption = #1043#1083#1072#1074#1085#1072#1103
        OnClick = N2Click
      end
    end
  end
end
