object dmMain: TdmMain
  OldCreateOrder = False
  Height = 317
  Width = 408
  object conMain: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=database.mdb;Mode=R' +
      'eadWrite;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 232
    Top = 72
  end
  object adoUsers: TADOTable
    Active = True
    Connection = conMain
    CursorType = ctStatic
    TableName = 'tblLoginDetails'
    Left = 168
    Top = 120
  end
  object adoNotices: TADOTable
    Active = True
    Connection = conMain
    CursorType = ctStatic
    TableName = 'tblNotices'
    Left = 112
    Top = 120
  end
  object srcNotices: TDataSource
    DataSet = adoNotices
    Left = 168
    Top = 64
  end
  object adoUpcoming: TADOTable
    Active = True
    Connection = conMain
    CursorType = ctStatic
    TableName = 'tblUpcoming'
    Left = 160
    Top = 184
  end
  object srcAssess: TDataSource
    DataSet = qryAssess
    Left = 232
    Top = 184
  end
  object qryAssess: TADOQuery
    Active = True
    Connection = conMain
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT*'
      'FROM tblUpcoming')
    Left = 96
    Top = 184
  end
  object srcAssess2: TDataSource
    DataSet = adoUpcoming
    Left = 288
    Top = 184
  end
  object adoTextbooks: TADOTable
    Active = True
    Connection = conMain
    CursorType = ctStatic
    TableName = 'tblTextBooks'
    Left = 288
    Top = 120
  end
  object srcTextbooks: TDataSource
    DataSet = adoTextbooks
    Left = 336
    Top = 184
  end
end
