object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Loja de Cal'#231'ados'
  ClientHeight = 464
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 784
    Height = 464
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    OnEnter = PageControl1Enter
    object TabSheet1: TTabSheet
      Caption = 'Venda'
      object PnlTop: TPanel
        Left = 0
        Top = 0
        Width = 776
        Height = 105
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 32
          Top = 28
          Width = 37
          Height = 13
          Caption = 'Cliente:'
        end
        object Label3: TLabel
          Left = 640
          Top = 21
          Width = 50
          Height = 13
          Caption = 'ID Pedido:'
        end
        object LblMeioDePag: TLabel
          Left = 272
          Top = 72
          Width = 66
          Height = 13
          Caption = 'Meio de pag.:'
        end
        object Label2: TLabel
          Left = 32
          Top = 72
          Width = 50
          Height = 13
          Caption = 'Vendedor:'
        end
        object DBCmbCliente: TDBLookupComboBox
          Left = 97
          Top = 20
          Width = 145
          Height = 21
          DataField = 'cli_id'
          DataSource = dsPedido
          KeyField = 'cli_id'
          ListField = 'cli_nome'
          ListSource = dsCliente
          TabOrder = 0
        end
        object BtnBuscar: TButton
          Left = 272
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Buscar'
          TabOrder = 1
        end
        object BtnCadastrar: TButton
          Left = 376
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Cadastrar'
          TabOrder = 2
        end
        object btnItens: TButton
          Left = 677
          Top = 62
          Width = 75
          Height = 25
          Caption = 'Itens'
          TabOrder = 3
          OnClick = btnItensClick
        end
        object DBCmbVendedor: TDBLookupComboBox
          Left = 97
          Top = 64
          Width = 145
          Height = 21
          DataField = 'ven_id'
          DataSource = dsPedido
          KeyField = 'ven_id'
          ListField = 'ven_nome'
          ListSource = dsVendedor
          TabOrder = 4
        end
        object dbedtIDPedido: TDBEdit
          Left = 696
          Top = 18
          Width = 56
          Height = 21
          DataField = 'ped_id'
          DataSource = dsPedido
          TabOrder = 5
        end
        object cbMeioDePag: TComboBox
          Left = 360
          Top = 64
          Width = 145
          Height = 21
          TabOrder = 6
          TextHint = 'Selecione o Meio de pag.'
          Items.Strings = (
            'Boleto'
            'Cart'#227'o de cr'#233'dito'
            'Cart'#227'o de d'#233'bito')
        end
      end
      object PnlClient: TPanel
        Left = 0
        Top = 105
        Width = 776
        Height = 290
        Align = alClient
        TabOrder = 1
        object PnlMenuTabela: TPanel
          Left = 1
          Top = 1
          Width = 774
          Height = 41
          Align = alTop
          TabOrder = 0
          object DBNavigator7: TDBNavigator
            Left = 0
            Top = 16
            Width = 120
            Height = 25
            DataSource = dsPedidosItens
            VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
            TabOrder = 0
          end
        end
        object dbgridVenda: TDBGrid
          Left = 1
          Top = 42
          Width = 774
          Height = 247
          Align = alClient
          DataSource = dsPedidosItens
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'pedite_id'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pedite_qtd'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ped_id'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ite_id'
              Visible = True
            end>
        end
      end
      object PnlBottom: TPanel
        Left = 0
        Top = 395
        Width = 776
        Height = 41
        Align = alBottom
        TabOrder = 2
        object DBNavigator6: TDBNavigator
          Left = 320
          Top = 3
          Width = 120
          Height = 36
          DataSource = dsPedido
          VisibleButtons = [nbInsert, nbDelete]
          TabOrder = 0
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Ger'#234'ncia'
      ImageIndex = 1
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 776
        Height = 436
        ActivePage = TabSheet3
        Align = alClient
        TabOrder = 0
        object TabSheet3: TTabSheet
          Caption = 'Fornecedores'
          object dbgridFornecedores: TDBGrid
            Left = 0
            Top = 153
            Width = 765
            Height = 175
            DataSource = dsFornecedores
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'for_id'
                Title.Caption = 'ID'
                Width = 37
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'for_cnpj'
                Title.Caption = 'CNPJ'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'for_nome'
                Title.Caption = 'Nome Empresa'
                Width = 265
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'for_email'
                Title.Caption = 'Email'
                Width = 268
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'for_telefone'
                Title.Caption = 'Telefone'
                Width = 98
                Visible = True
              end>
          end
          object gbBuscarFornecedor: TGroupBox
            Left = 0
            Top = 334
            Width = 765
            Height = 71
            Caption = 'Buscar item'
            TabOrder = 1
            object Label11: TLabel
              Left = 16
              Top = 32
              Width = 37
              Height = 13
              Caption = 'Campo:'
            end
            object cbCampoFornecedores: TComboBox
              Left = 80
              Top = 29
              Width = 145
              Height = 21
              TabOrder = 0
              TextHint = 'Selecione o campo'
              Items.Strings = (
                'CNPJ'
                'Nome'
                'Email'
                'Telefone')
            end
            object edtConsultaFornecedores: TEdit
              Left = 248
              Top = 29
              Width = 321
              Height = 21
              TabOrder = 1
              TextHint = 'Digite a palavra-chave'
            end
            object btnListarTudoFornecedores: TButton
              Left = 672
              Top = 27
              Width = 75
              Height = 25
              Caption = 'Listar Tudo'
              TabOrder = 2
              OnClick = btnListarTudoFornecedoresClick
            end
            object btnConsultarFornecedores: TButton
              Left = 591
              Top = 27
              Width = 75
              Height = 25
              Caption = 'Consultar'
              TabOrder = 3
              OnClick = btnConsultarFornecedoresClick
            end
          end
          object gbDadosFornecedor: TGroupBox
            Left = 0
            Top = 0
            Width = 765
            Height = 147
            Caption = 'Dados do item'
            TabOrder = 2
            object Label12: TLabel
              Left = 16
              Top = 31
              Width = 29
              Height = 13
              Caption = 'CNPJ:'
            end
            object Label13: TLabel
              Left = 16
              Top = 71
              Width = 31
              Height = 13
              Caption = 'Nome:'
            end
            object Label14: TLabel
              Left = 16
              Top = 109
              Width = 28
              Height = 13
              Caption = 'Email:'
            end
            object dbedtCNPJFornecedores: TDBEdit
              Left = 80
              Top = 28
              Width = 121
              Height = 21
              DataField = 'for_cnpj'
              DataSource = dsFornecedores
              TabOrder = 0
            end
            object dbedtNomeFornecedores: TDBEdit
              Left = 80
              Top = 68
              Width = 289
              Height = 21
              DataField = 'for_nome'
              DataSource = dsFornecedores
              TabOrder = 1
            end
            object dbedtEmailFornecedores: TDBEdit
              Left = 80
              Top = 108
              Width = 289
              Height = 21
              DataField = 'for_email'
              DataSource = dsFornecedores
              TabOrder = 2
            end
            object DBNavigator2: TDBNavigator
              Left = 591
              Top = 108
              Width = 156
              Height = 25
              DataSource = dsFornecedores
              VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
              TabOrder = 3
            end
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Itens'
          ImageIndex = 1
          object GBDadosItens: TGroupBox
            Left = 0
            Top = 0
            Width = 765
            Height = 147
            Caption = 'Dados do item'
            TabOrder = 0
            object Label4: TLabel
              Left = 16
              Top = 31
              Width = 33
              Height = 13
              Caption = 'Marca:'
            end
            object Label5: TLabel
              Left = 16
              Top = 71
              Width = 38
              Height = 13
              Caption = 'Modelo:'
            end
            object Label6: TLabel
              Left = 16
              Top = 109
              Width = 48
              Height = 13
              Caption = 'Tamanho:'
            end
            object Label7: TLabel
              Left = 384
              Top = 31
              Width = 21
              Height = 13
              Caption = 'Cor:'
            end
            object Label8: TLabel
              Left = 384
              Top = 71
              Width = 26
              Height = 13
              Caption = 'Qtd.:'
            end
            object Label9: TLabel
              Left = 384
              Top = 111
              Width = 49
              Height = 13
              Caption = 'Qtd. Min.:'
            end
            object dbedtMarcaItens: TDBEdit
              Left = 80
              Top = 28
              Width = 201
              Height = 21
              DataField = 'ite_marca'
              DataSource = dsItens
              TabOrder = 0
            end
            object dbedtModeloItens: TDBEdit
              Left = 80
              Top = 68
              Width = 289
              Height = 21
              DataField = 'ite_modelo'
              DataSource = dsItens
              TabOrder = 1
            end
            object dbedtTamanhoItens: TDBEdit
              Left = 80
              Top = 108
              Width = 41
              Height = 21
              DataField = 'ite_tamanho'
              DataSource = dsItens
              TabOrder = 2
            end
            object dbedtCorItens: TDBEdit
              Left = 448
              Top = 28
              Width = 145
              Height = 21
              DataField = 'ite_cor'
              DataSource = dsItens
              TabOrder = 3
            end
            object dbedtQtdItens: TDBEdit
              Left = 448
              Top = 68
              Width = 41
              Height = 21
              DataField = 'ite_qtd'
              DataSource = dsItens
              TabOrder = 4
            end
            object dbedtQtdMinItens: TDBEdit
              Left = 448
              Top = 108
              Width = 41
              Height = 21
              DataField = 'ite_qtdminima'
              DataSource = dsItens
              TabOrder = 5
            end
            object DBNavigator1: TDBNavigator
              Left = 591
              Top = 108
              Width = 156
              Height = 25
              DataSource = dsItens
              VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
              TabOrder = 6
            end
            object btnAtualizar: TButton
              Left = 672
              Top = 55
              Width = 75
              Height = 25
              Caption = 'Atualizar'
              TabOrder = 7
              OnClick = btnAtualizarClick
            end
            object DBEdit1: TDBEdit
              Left = 626
              Top = 28
              Width = 121
              Height = 21
              DataField = 'somatotal'
              DataSource = dsSomaItens
              TabOrder = 8
            end
          end
          object dbgridItens: TDBGrid
            Left = 0
            Top = 153
            Width = 765
            Height = 175
            DataSource = dsItens
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'ite_id'
                Title.Caption = 'ID'
                Width = 22
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ite_marca'
                Title.Caption = 'Marca'
                Width = 120
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ite_modelo'
                Title.Caption = 'Modelo'
                Width = 276
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ite_tamanho'
                Title.Caption = 'Tamanho'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ite_valor'
                Title.Caption = 'Valor'
                Width = 72
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ite_cor'
                Title.Caption = 'Cor'
                Width = 74
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ite_qtd'
                Title.Caption = 'Qtd.'
                Width = 57
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ite_qtdminima'
                Title.Caption = 'Qtd. Min.'
                Visible = True
              end>
          end
          object gbBuscarItem: TGroupBox
            Left = 0
            Top = 334
            Width = 765
            Height = 71
            Caption = 'Buscar item'
            TabOrder = 2
            object Label10: TLabel
              Left = 16
              Top = 32
              Width = 37
              Height = 13
              Caption = 'Campo:'
            end
            object cbCampoItens: TComboBox
              Left = 80
              Top = 29
              Width = 145
              Height = 21
              TabOrder = 0
              TextHint = 'Selecione o campo'
              Items.Strings = (
                'Marca'
                'Modelo'
                'Tamanho'
                'Cor'
                'Quantidade'
                'Qtd. M'#237'nima')
            end
            object edtConsultaItens: TEdit
              Left = 248
              Top = 29
              Width = 321
              Height = 21
              TabOrder = 1
              TextHint = 'Digite a palavra-chave'
            end
            object btnListarTudoItens: TButton
              Left = 674
              Top = 27
              Width = 75
              Height = 25
              Caption = 'Listar Tudo'
              TabOrder = 2
              OnClick = btnListarTudoItensClick
            end
            object btnConsultarItens: TButton
              Left = 591
              Top = 27
              Width = 75
              Height = 25
              Caption = 'Consultar'
              TabOrder = 3
              OnClick = btnConsultarItensClick
            end
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Vendedores'
          ImageIndex = 2
          object dbgridVendedores: TDBGrid
            Left = 0
            Top = 153
            Width = 765
            Height = 175
            DataSource = dsVendedor
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'ven_id'
                Title.Caption = 'ID'
                Width = 35
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ven_cpf'
                Title.Caption = 'CPF'
                Width = 126
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ven_nome'
                Title.Caption = 'Nome'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ven_datanascimento'
                Title.Caption = 'Data de Nascimento'
                Visible = True
              end>
          end
          object GroupBox3: TGroupBox
            Left = 0
            Top = 334
            Width = 765
            Height = 71
            Caption = 'Buscar item'
            TabOrder = 1
            object Label18: TLabel
              Left = 16
              Top = 32
              Width = 37
              Height = 13
              Caption = 'Campo:'
            end
            object cbCampoVendedores: TComboBox
              Left = 80
              Top = 29
              Width = 145
              Height = 21
              TabOrder = 0
              TextHint = 'Selecione o campo'
              Items.Strings = (
                'CPF'
                'Nome'
                'Data de Nascimento')
            end
            object edtConsultaVendedores: TEdit
              Left = 248
              Top = 29
              Width = 321
              Height = 21
              TabOrder = 1
              TextHint = 'Digite a palavra-chave'
            end
            object btnListarTudoVendedores: TButton
              Left = 674
              Top = 27
              Width = 75
              Height = 25
              Caption = 'Listar Tudo'
              TabOrder = 2
              OnClick = btnListarTudoVendedoresClick
            end
            object btnConsultarVendedores: TButton
              Left = 591
              Top = 27
              Width = 75
              Height = 25
              Caption = 'Consultar'
              TabOrder = 3
              OnClick = btnConsultarVendedoresClick
            end
          end
          object GroupBox4: TGroupBox
            Left = 0
            Top = 0
            Width = 765
            Height = 147
            Caption = 'Dados do item'
            TabOrder = 2
            object Label19: TLabel
              Left = 16
              Top = 31
              Width = 23
              Height = 13
              Caption = 'CPF:'
            end
            object Label20: TLabel
              Left = 16
              Top = 71
              Width = 31
              Height = 13
              Caption = 'Nome:'
            end
            object Label21: TLabel
              Left = 16
              Top = 109
              Width = 72
              Height = 13
              Caption = 'Data de Nasc.:'
            end
            object dbedtCPFVendedores: TDBEdit
              Left = 97
              Top = 28
              Width = 128
              Height = 21
              DataField = 'ven_cpf'
              DataSource = dsVendedor
              TabOrder = 0
            end
            object dbedtNomeVendedores: TDBEdit
              Left = 97
              Top = 68
              Width = 336
              Height = 21
              DataField = 'ven_nome'
              DataSource = dsVendedor
              TabOrder = 1
            end
            object dtpDataDeNascVendedores: TDateTimePicker
              Left = 97
              Top = 108
              Width = 128
              Height = 21
              Date = 43646.801291145840000000
              Time = 43646.801291145840000000
              TabOrder = 2
            end
            object DBNavigator3: TDBNavigator
              Left = 591
              Top = 108
              Width = 156
              Height = 25
              DataSource = dsVendedor
              VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
              TabOrder = 3
            end
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'Pedidos'
          ImageIndex = 3
          object dbgridPedidos: TDBGrid
            Left = 0
            Top = 153
            Width = 765
            Height = 175
            DataSource = dsPedido
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
          object GroupBox5: TGroupBox
            Left = 0
            Top = 334
            Width = 765
            Height = 71
            Caption = 'Buscar item'
            TabOrder = 1
            object Label25: TLabel
              Left = 16
              Top = 32
              Width = 37
              Height = 13
              Caption = 'Campo:'
            end
            object cbCampoPedidos: TComboBox
              Left = 80
              Top = 29
              Width = 145
              Height = 21
              TabOrder = 0
              TextHint = 'Selecione o campo'
              Items.Strings = (
                'CPF Cliente'
                'Nome Cliente'
                'Data Pedido'
                'Meio de pagamento'
                'Valor do pedido')
            end
            object edtConsultaPedidos: TEdit
              Left = 248
              Top = 29
              Width = 321
              Height = 21
              TabOrder = 1
              TextHint = 'Digite a palavra-chave'
            end
            object btnListarTudoPedidos: TButton
              Left = 674
              Top = 27
              Width = 75
              Height = 25
              Caption = 'Listar Tudo'
              TabOrder = 2
            end
            object btnConsultarPedidos: TButton
              Left = 591
              Top = 27
              Width = 75
              Height = 25
              Caption = 'Consultar'
              TabOrder = 3
              OnClick = btnConsultarPedidosClick
            end
          end
          object GroupBox6: TGroupBox
            Left = 0
            Top = 0
            Width = 765
            Height = 147
            Caption = 'Dados do item'
            TabOrder = 2
            object Label26: TLabel
              Left = 16
              Top = 31
              Width = 59
              Height = 13
              Caption = 'CPF Cliente:'
            end
            object Label27: TLabel
              Left = 16
              Top = 71
              Width = 67
              Height = 13
              Caption = 'Nome Cliente:'
            end
            object Label28: TLabel
              Left = 16
              Top = 109
              Width = 62
              Height = 13
              Caption = 'Data Pedido:'
            end
            object Label29: TLabel
              Left = 384
              Top = 31
              Width = 66
              Height = 13
              Caption = 'Meio de pag.:'
            end
            object dbedtCPFClientePedidos: TDBEdit
              Left = 104
              Top = 28
              Width = 121
              Height = 21
              DataField = 'cli_id'
              DataSource = dsPedido
              TabOrder = 0
            end
            object dbedtNomeClientePedidos: TDBEdit
              Left = 104
              Top = 68
              Width = 257
              Height = 21
              DataField = 'cli_nome'
              DataSource = dsCliente
              TabOrder = 1
            end
            object dtpDataPedidoPedidos: TDateTimePicker
              Left = 104
              Top = 108
              Width = 121
              Height = 21
              Date = 43646.804441782410000000
              Time = 43646.804441782410000000
              TabOrder = 2
            end
            object dblcbMeioDePagPedidos: TDBLookupComboBox
              Left = 468
              Top = 28
              Width = 145
              Height = 21
              DataField = 'ped_meiodepagamento'
              DataSource = dsPedido
              TabOrder = 3
            end
            object btnAdicionar: TButton
              Left = 674
              Top = 104
              Width = 75
              Height = 25
              Caption = 'btnAdicionar'
              TabOrder = 4
              OnClick = btnAdicionarClick
            end
          end
        end
        object TabSheet7: TTabSheet
          Caption = 'Clientes'
          ImageIndex = 4
          object dbgridClientes: TDBGrid
            Left = 0
            Top = 153
            Width = 765
            Height = 175
            DataSource = dsCliente
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'cli_id'
                Title.Caption = 'ID'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cli_cpf'
                Title.Caption = 'CPF'
                Width = 79
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cli_nome'
                Title.Caption = 'Nome'
                Width = 332
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cli_endereco'
                Title.Caption = 'Endere'#231'o'
                Visible = True
              end>
          end
          object GroupBox7: TGroupBox
            Left = 0
            Top = 334
            Width = 765
            Height = 71
            Caption = 'Buscar item'
            TabOrder = 1
            object Label32: TLabel
              Left = 16
              Top = 32
              Width = 37
              Height = 13
              Caption = 'Campo:'
            end
            object cbCampoClientes: TComboBox
              Left = 80
              Top = 29
              Width = 145
              Height = 21
              TabOrder = 0
              TextHint = 'Selecione o campo'
              Items.Strings = (
                'CPF'
                'Nome'
                'Endere'#231'o')
            end
            object edtConsultaClientes: TEdit
              Left = 248
              Top = 29
              Width = 321
              Height = 21
              TabOrder = 1
              TextHint = 'Digite a palavra-chave'
            end
            object btnListarTudoClientes: TButton
              Left = 674
              Top = 27
              Width = 75
              Height = 25
              Caption = 'Listar Tudo'
              TabOrder = 2
              OnClick = btnListarTudoClientesClick
            end
            object btnConsultarClientes: TButton
              Left = 591
              Top = 27
              Width = 75
              Height = 25
              Caption = 'Consultar'
              TabOrder = 3
              OnClick = btnConsultarClientesClick
            end
          end
          object GroupBox8: TGroupBox
            Left = 0
            Top = 0
            Width = 765
            Height = 147
            Caption = 'Dados do item'
            TabOrder = 2
            object Label33: TLabel
              Left = 16
              Top = 31
              Width = 23
              Height = 13
              Caption = 'CPF:'
            end
            object Label34: TLabel
              Left = 16
              Top = 71
              Width = 31
              Height = 13
              Caption = 'Nome:'
            end
            object Label35: TLabel
              Left = 16
              Top = 109
              Width = 49
              Height = 13
              Caption = 'Endere'#231'o:'
            end
            object dbedtCPFClientes: TDBEdit
              Left = 80
              Top = 28
              Width = 121
              Height = 21
              DataField = 'cli_cpf'
              DataSource = dsCliente
              TabOrder = 0
            end
            object dbedtNomeClientes: TDBEdit
              Left = 80
              Top = 68
              Width = 345
              Height = 21
              DataField = 'cli_nome'
              DataSource = dsCliente
              TabOrder = 1
            end
            object dbedtEnderecoClientes: TDBEdit
              Left = 80
              Top = 108
              Width = 489
              Height = 21
              DataField = 'cli_endereco'
              DataSource = dsCliente
              TabOrder = 2
            end
            object DBNavigator5: TDBNavigator
              Left = 593
              Top = 108
              Width = 156
              Height = 25
              DataSource = dsCliente
              VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
              TabOrder = 3
            end
          end
        end
        object TabSheet8: TTabSheet
          Caption = 'Itens Caros'
          ImageIndex = 5
          object DBGrid1: TDBGrid
            Left = 0
            Top = 64
            Width = 768
            Height = 296
            DataSource = dsIteCaro
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
          object Button1: TButton
            Left = 336
            Top = 16
            Width = 75
            Height = 25
            Caption = 'Ver'
            TabOrder = 1
            OnClick = Button1Click
          end
        end
      end
    end
  end
  object dsCliente: TDataSource
    DataSet = DM.qryClientes
    Top = 40
  end
  object dsVendedor: TDataSource
    DataSet = DM.qryVendedores
    Top = 136
  end
  object dsPedido: TDataSource
    DataSet = DM.qryPedidos
    Left = 600
    Top = 32
  end
  object dsPedidosItens: TDataSource
    DataSet = DM.qryPedidos_Itens
    Left = 712
    Top = 256
  end
  object dsFornecedores: TDataSource
    DataSet = DM.qryFornecedores
    Left = 24
    Top = 328
  end
  object dsItens: TDataSource
    DataSet = DM.qryItens
    Left = 112
    Top = 328
  end
  object dsTelefones: TDataSource
    DataSet = DM.qryFor_Telefones
    Left = 624
    Top = 96
  end
  object dsVendedorAux: TDataSource
    Left = 312
    Top = 264
  end
  object dsIteCaro: TDataSource
    DataSet = DM.qryIteCaro
    Left = 432
    Top = 120
  end
  object dsSomaItens: TDataSource
    DataSet = DM.qrySomaItens
    Left = 720
    Top = 96
  end
end
