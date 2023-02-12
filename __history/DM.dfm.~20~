object frm_dm: Tfrm_dm
  Height = 480
  Width = 640
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=masknk_data'
      'User_Name=hamza'
      'Server=localhost'
      'Password=Hamza7911-/*'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Left = 64
    Top = 24
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 144
    Top = 24
  end
  object table_users: TFDTable
    Active = True
    IndexFieldNames = 'user'
    Connection = FDConnection1
    TableName = 'masknk_data.dbo.users'
    Left = 64
    Top = 104
  end
  object table_lands: TFDTable
    Active = True
    IndexFieldNames = 'land_number'
    Connection = FDConnection1
    TableName = 'masknk_data.dbo.lands'
    Left = 64
    Top = 160
  end
  object table_houses: TFDTable
    Active = True
    IndexFieldNames = 'house_num'
    Connection = FDConnection1
    TableName = 'houses'
    Left = 64
    Top = 216
  end
  object table_costumer_requests: TFDTable
    Active = True
    IndexFieldNames = 'id_costumer'
    Connection = FDConnection1
    TableName = 'masknk_data.dbo.customer_requests'
    Left = 64
    Top = 272
  end
  object table_expenses: TFDTable
    Active = True
    IndexFieldNames = 'id_expenses'
    Connection = FDConnection1
    TableName = 'expenses'
    Left = 64
    Top = 328
  end
  object FDQuery2: TFDQuery
    Connection = FDConnection1
    Left = 536
    Top = 32
  end
end
