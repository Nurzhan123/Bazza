object ProdazhaForm: TProdazhaForm
  Left = 684
  Top = 231
  BorderStyle = bsSingle
  Caption = #1055#1088#1086#1076#1072#1078#1072
  ClientHeight = 398
  ClientWidth = 578
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 32
    Top = 224
    Width = 33
    Height = 33
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
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 80
    Top = 224
    Width = 33
    Height = 33
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
    OnClick = SpeedButton2Click
  end
  object Label3: TLabel
    Left = 152
    Top = 320
    Width = 47
    Height = 13
    Caption = #1076#1086#1073#1072#1074#1080#1090#1100
  end
  object Label4: TLabel
    Left = 224
    Top = 320
    Width = 53
    Height = 13
    Caption = #1080#1089#1087#1088#1072#1074#1080#1090#1100
  end
  object Label5: TLabel
    Left = 304
    Top = 320
    Width = 29
    Height = 13
    Caption = #1076#1077#1083#1080#1090
  end
  object Label1: TLabel
    Left = 160
    Top = 328
    Width = 47
    Height = 13
    Caption = #1076#1086#1073#1072#1074#1080#1090#1100
  end
  object Label2: TLabel
    Left = 232
    Top = 328
    Width = 53
    Height = 13
    Caption = #1080#1089#1087#1088#1072#1074#1080#1090#1100
  end
  object Label6: TLabel
    Left = 312
    Top = 328
    Width = 29
    Height = 13
    Caption = #1076#1077#1083#1080#1090
  end
  object GroupBox1: TGroupBox
    Left = 32
    Top = 272
    Width = 417
    Height = 73
    Caption = #1047#1072#1087#1080#1089#1100
    Color = clBtnFace
    ParentColor = False
    TabOrder = 0
    object Button3: TButton
      Left = 8
      Top = 24
      Width = 75
      Height = 25
      Caption = #1055#1088#1086#1076#1072#1090#1100
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
  object DBGrid1: TDBGrid
    Left = 24
    Top = 32
    Width = 537
    Height = 185
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'SALEID_24'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'NAME_24'
        Title.Caption = #1060#1080#1088#1084#1072
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME_241'
        Title.Caption = #1058#1086#1074#1072#1088
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FIRMKOD_24'
        Title.Caption = #1062#1077#1085#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REM_24'
        Title.Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
        Width = 200
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 344
    Top = 360
  end
  object IBQuery1: TIBQuery
    Database = DM.IBDb1
    Transaction = DM.IBT1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT SALE.SALEID_24, FIRM.NAME_24, TOVAR.NAME_24, SALE.FIRMKOD' +
        '_24, SALE.REM_24'
      ''
      'FROM FIRM, SALE, TOVAR'
      ''
      'WHERE SALE.NAME_24 = FIRM.FIRMID_24'
      'AND SALE.TOVARKOD_24 = TOVAR.TOVARID_24')
    Left = 64
    Top = 352
    object IBQuery1SALEID_24: TIntegerField
      FieldName = 'SALEID_24'
      Origin = 'SALE.SALEID_24'
      Required = True
    end
    object IBQuery1NAME_241: TIBStringField
      FieldName = 'NAME_241'
      Origin = 'TOVAR.NAME_24'
      Required = True
      Size = 100
    end
    object IBQuery1FIRMKOD_24: TIntegerField
      FieldName = 'FIRMKOD_24'
      Origin = 'SALE.FIRMKOD_24'
      Required = True
    end
    object IBQuery1REM_24: TIBStringField
      FieldName = 'REM_24'
      Origin = 'SALE.REM_24'
      Size = 100
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
      
        'INSERT INTO SALE(SALEID_24, NAME_24, FIRMKOD_24, TOVARKOD_24, RE' +
        'M_24)'
      'VALUES (:SALEID_24, :NAME, :FIRMKOD, :TOVARKOD, :REM)')
    Left = 136
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SALEID_24'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FIRMKOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TOVARKOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'REM'
        ParamType = ptUnknown
      end>
  end
  object IBQuery4: TIBQuery
    Database = DM.IBDb1
    Transaction = DM.IBT1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Update SALE'
      'set REM_24=:REM_24'
      'where SALEID_24=:ID')
    Left = 208
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'REM_24'
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
      'DELETE FROM SALE'
      'WHERE SALEID_24=:Par1')
    Left = 280
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Par1'
        ParamType = ptUnknown
      end>
  end
end
