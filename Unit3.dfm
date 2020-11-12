object MainForm: TMainForm
  Left = 485
  Top = 200
  BorderStyle = bsSingle
  Caption = #1055#1088#1086#1089#1090#1086#1077' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1077' "'#1050#1083#1080#1077#1085#1090'-'#1089#1077#1088#1074#1077#1088'"'
  ClientHeight = 251
  ClientWidth = 402
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 96
    Top = 136
    object N1: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
      object N4: TMenuItem
        Caption = #1058#1086#1074#1072#1088
        OnClick = N4Click
      end
      object N5: TMenuItem
        Caption = #1060#1080#1088#1084#1099
        OnClick = N5Click
      end
    end
    object N2: TMenuItem
      Caption = #1055#1088#1086#1076#1072#1078#1072
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1054#1090#1095#1077#1090#1099
      OnClick = N3Click
    end
  end
end
