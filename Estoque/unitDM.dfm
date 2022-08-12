object DM: TDM
  OldCreateOrder = False
  Height = 453
  Width = 818
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=estoque'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 88
  end
  object tbProdutos: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = Conexao
    TableName = 'estoque.produtos'
    Left = 296
    Top = 264
    object tbProdutosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
    end
    object tbProdutosnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
    object tbProdutosfabricante: TStringField
      FieldName = 'fabricante'
      Origin = 'fabricante'
      Required = True
      Size = 30
    end
    object tbProdutosvalidade: TDateField
      FieldName = 'validade'
      Origin = 'validade'
      Required = True
      EditMask = '##/##/####;1;_'
    end
    object tbProdutosestoqueAtual: TIntegerField
      FieldName = 'estoqueAtual'
      Origin = 'estoqueAtual'
    end
  end
  object dsProdutos: TDataSource
    DataSet = tbProdutos
    Left = 304
    Top = 328
  end
  object tbMovimentacoes: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = Conexao
    TableName = 'estoque.movimentacao'
    Left = 408
    Top = 264
    object tbMovimentacoesid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
    end
    object tbMovimentacoestipo: TStringField
      FieldName = 'tipo'
      Origin = 'tipo'
      Required = True
    end
    object tbMovimentacoesdata_hora: TDateTimeField
      FieldName = 'data_hora'
      Origin = 'data_hora'
      Required = True
    end
    object tbMovimentacoesresponsavel: TStringField
      FieldName = 'responsavel'
      Origin = 'responsavel'
      Required = True
      Size = 30
    end
    object tbMovimentacoesobservacoes: TMemoField
      FieldName = 'observacoes'
      Origin = 'observacoes'
      Required = True
      BlobType = ftMemo
    end
  end
  object dsMovimentacoes: TDataSource
    DataSet = tbMovimentacoes
    Left = 400
    Top = 336
  end
  object tbMovProdutos: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = Conexao
    TableName = 'estoque.movimentacao_produtos'
    Left = 512
    Top = 272
  end
  object dsMovProdutos: TDataSource
    DataSet = tbMovProdutos
    Left = 508
    Top = 328
  end
  object sqlAumentaEstoque: TFDCommand
    Connection = Conexao
    ParamData = <
      item
        Name = 'pId'
      end
      item
        Name = 'pQtd'
      end>
    Left = 392
    Top = 208
  end
  object sqlDiminueEstoque: TFDCommand
    Connection = Conexao
    ParamData = <
      item
        Name = 'pId'
      end
      item
        Name = 'pQtd'
      end>
    Left = 232
    Top = 200
  end
  object sqlMovimentacoes: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'SELECT *FROM movimentacao')
    Left = 544
    Top = 136
  end
  object dsSqlMovimentacoes: TDataSource
    DataSet = sqlMovimentacoes
    Left = 368
    Top = 88
  end
end
