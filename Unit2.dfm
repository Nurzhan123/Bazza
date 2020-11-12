object DM: TDM
  OldCreateOrder = False
  Left = 796
  Top = 330
  Height = 181
  Width = 286
  object IBDb1: TIBDatabase
    DatabaseName = 'C:\Nurzhan\Bazza\WORKIB.GDB'
    Params.Strings = (
      'password=123456'
      'lc_ctype=WIN1251'
      'user_name=P42_24')
    LoginPrompt = False
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 32
    Top = 40
  end
  object IBT1: TIBTransaction
    Active = False
    DefaultDatabase = IBDb1
    AutoStopAction = saNone
    Left = 112
    Top = 40
  end
end
