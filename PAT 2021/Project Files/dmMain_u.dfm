object dmMain: TdmMain
  OldCreateOrder = False
  Height = 347
  Width = 538
  object srcBranch: TDataSource
    DataSet = tblBranch
    Left = 216
    Top = 152
  end
  object tblBranch: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Other Branches'
    Left = 296
    Top = 152
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=dbMain.mdb;Mode=Rea' +
      'dWrite;Persist Security Info=False;Jet OLEDB:System database="";' +
      'Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet OL' +
      'EDB:Engine Type=5;Jet OLEDB:Database Locking Mode=0;Jet OLEDB:Gl' +
      'obal Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet' +
      ' OLEDB:New Database Password="";Jet OLEDB:Create System Database' +
      '=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Loc' +
      'ale on Compact=False;Jet OLEDB:Compact Without Replica Repair=Fa' +
      'lse;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 136
    Top = 152
  end
  object tblContact: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Contact Details'
    Left = 296
    Top = 208
  end
  object srcContact: TDataSource
    DataSet = tblContact
    Left = 216
    Top = 216
  end
  object tblMenu: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Menu Items'
    Left = 296
    Top = 272
  end
  object srcMenu: TDataSource
    DataSet = tblMenu
    Left = 216
    Top = 272
  end
  object srcHist: TDataSource
    DataSet = tblHist
    Left = 216
    Top = 104
  end
  object tblHist: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Purchase History'
    Left = 296
    Top = 104
  end
end
