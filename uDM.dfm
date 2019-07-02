object DM: TDM
  OldCreateOrder = False
  Height = 500
  Width = 575
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Password=123'
      'User_Name=postgres'
      'Database=lojadecalcados'
      'Server=localhost'
      'Port=5433'
      'DriverID=PG')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 200
  end
  object qryClientes: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from clientes')
    Left = 112
    Top = 24
  end
  object qryVendedores: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from vendedores')
    Left = 192
    Top = 24
  end
  object qryPedidos: TFDQuery
    Active = True
    BeforePost = qryPedidosBeforePost
    Connection = FDConnection1
    SQL.Strings = (
      'select * from pedidos'
      '')
    Left = 264
    Top = 24
  end
  object qryPedidos_Itens: TFDQuery
    Active = True
    BeforePost = qryPedidos_ItensBeforePost
    IndexFieldNames = 'ped_id'
    MasterSource = dsPedidos
    MasterFields = 'ped_id'
    Connection = FDConnection1
    SQL.Strings = (
      'select * from pedidos_itens where ped_id=:ped_id')
    Left = 344
    Top = 24
    ParamData = <
      item
        Name = 'PED_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryPedidos_Itenspedite_id: TIntegerField
      FieldName = 'pedite_id'
      Origin = 'pedite_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryPedidos_Itenspedite_qtd: TIntegerField
      FieldName = 'pedite_qtd'
      Origin = 'pedite_qtd'
    end
    object qryPedidos_Itensped_id: TIntegerField
      FieldName = 'ped_id'
      Origin = 'ped_id'
    end
    object qryPedidos_Itensite_id: TIntegerField
      FieldName = 'ite_id'
      Origin = 'ite_id'
    end
  end
  object qryFornecedores: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from fornecedores')
    Left = 112
    Top = 112
  end
  object qryItens: TFDQuery
    Active = True
    AfterPost = qryItensAfterPost
    Connection = FDConnection1
    SQL.Strings = (
      'select * from itens')
    Left = 112
    Top = 200
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    DriverID = 'PG'
    VendorHome = 'C:\Users\Einstein\Documents'
    VendorLib = 'libpq.dll'
    Left = 32
    Top = 272
  end
  object qryFor_Telefones: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from for_telefones')
    Left = 272
    Top = 232
  end
  object dsPedidos: TDataSource
    DataSet = qryPedidos
    Left = 432
    Top = 24
  end
  object qryRecebimento_Pedido: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select rp.recped_id, recped_data, v.ven_id, v.ven_nome, p.ped_id' +
        ' '
      'from recebimento_pedido as rp'
      'inner join vendedores as v on v.ven_id = rp.ven_id'
      'inner join pedidos as p on p.recped_id = rp.recped_id')
    Left = 448
    Top = 144
  end
  object qrySomaPedidos: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select max(ped_id)'
      'from pedidos')
    Left = 440
    Top = 352
  end
  object qryFuncaoBackupClientes: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'create or replace function salvar()'
      'returns trigger as'
      '$BODY$'
      'begin'
      'insert into clientes_backup'
      'values(old.cli_id,old.cli_endereco,old.cli_cpf,old.cli_nome);'
      'return null;'
      'end;'
      '$BODY$'
      'language '#39'plpgsql'#39)
    Left = 208
    Top = 392
  end
  object qryTriggerExclu_cli: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'create trigger exclu_cli'
      'before delete'
      'on clientes'
      'for each row'
      'execute procedure salvar();')
    Left = 328
    Top = 392
  end
  object qryIteCaro: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from iteCaro')
    Left = 24
    Top = 408
  end
  object qrySomaItens: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select fn_t() as somaTotal')
    Left = 528
    Top = 408
  end
end
