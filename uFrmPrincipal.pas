unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, uDM;

type
  TFrmPrincipal = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    PnlTop: TPanel;
    Label1: TLabel;
    DBCmbCliente: TDBLookupComboBox;
    BtnBuscar: TButton;
    BtnCadastrar: TButton;
    btnItens: TButton;
    Label3: TLabel;
    LblMeioDePag: TLabel;
    DBCmbVendedor: TDBLookupComboBox;
    Label2: TLabel;
    PnlBottom: TPanel;
    PnlClient: TPanel;
    PnlMenuTabela: TPanel;
    dbgridVenda: TDBGrid;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    GBDadosItens: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    dbedtMarcaItens: TDBEdit;
    dbedtModeloItens: TDBEdit;
    dbedtTamanhoItens: TDBEdit;
    dbedtCorItens: TDBEdit;
    dbedtQtdItens: TDBEdit;
    dbedtQtdMinItens: TDBEdit;
    dbgridItens: TDBGrid;
    gbBuscarItem: TGroupBox;
    Label10: TLabel;
    cbCampoItens: TComboBox;
    edtConsultaItens: TEdit;
    btnListarTudoItens: TButton;
    btnConsultarItens: TButton;
    dbgridFornecedores: TDBGrid;
    gbBuscarFornecedor: TGroupBox;
    Label11: TLabel;
    cbCampoFornecedores: TComboBox;
    edtConsultaFornecedores: TEdit;
    btnListarTudoFornecedores: TButton;
    btnConsultarFornecedores: TButton;
    gbDadosFornecedor: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    dbedtCNPJFornecedores: TDBEdit;
    dbedtNomeFornecedores: TDBEdit;
    dbedtEmailFornecedores: TDBEdit;
    dbgridVendedores: TDBGrid;
    GroupBox3: TGroupBox;
    Label18: TLabel;
    cbCampoVendedores: TComboBox;
    edtConsultaVendedores: TEdit;
    btnListarTudoVendedores: TButton;
    btnConsultarVendedores: TButton;
    GroupBox4: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    dbedtCPFVendedores: TDBEdit;
    dbedtNomeVendedores: TDBEdit;
    dbgridPedidos: TDBGrid;
    GroupBox5: TGroupBox;
    Label25: TLabel;
    cbCampoPedidos: TComboBox;
    edtConsultaPedidos: TEdit;
    btnListarTudoPedidos: TButton;
    btnConsultarPedidos: TButton;
    GroupBox6: TGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    dbedtCPFClientePedidos: TDBEdit;
    dbedtNomeClientePedidos: TDBEdit;
    dbgridClientes: TDBGrid;
    GroupBox7: TGroupBox;
    Label32: TLabel;
    cbCampoClientes: TComboBox;
    edtConsultaClientes: TEdit;
    btnListarTudoClientes: TButton;
    btnConsultarClientes: TButton;
    GroupBox8: TGroupBox;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    dbedtCPFClientes: TDBEdit;
    dbedtNomeClientes: TDBEdit;
    dbedtEnderecoClientes: TDBEdit;
    dtpDataDeNascVendedores: TDateTimePicker;
    dtpDataPedidoPedidos: TDateTimePicker;
    dblcbMeioDePagPedidos: TDBLookupComboBox;
    DBNavigator2: TDBNavigator;
    DBNavigator1: TDBNavigator;
    DBNavigator3: TDBNavigator;
    dbedtIDPedido: TDBEdit;
    cbMeioDePag: TComboBox;
    dsCliente: TDataSource;
    dsVendedor: TDataSource;
    dsPedido: TDataSource;
    dsPedidosItens: TDataSource;
    DBNavigator6: TDBNavigator;
    DBNavigator7: TDBNavigator;
    dsFornecedores: TDataSource;
    dsItens: TDataSource;
    dsTelefones: TDataSource;
    dsVendedorAux: TDataSource;
    DBNavigator5: TDBNavigator;
    btnAdicionar: TButton;
    TabSheet8: TTabSheet;
    DBGrid1: TDBGrid;
    dsIteCaro: TDataSource;
    Button1: TButton;
    dsSomaItens: TDataSource;
    btnAtualizar: TButton;
    DBEdit1: TDBEdit;
    procedure PageControl1Enter(Sender: TObject);
    procedure btnConsultarFornecedoresClick(Sender: TObject);
    procedure btnConsultarItensClick(Sender: TObject);
    procedure btnConsultarVendedoresClick(Sender: TObject);
    procedure btnConsultarPedidosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnItensClick(Sender: TObject);
    procedure btnConsultarClientesClick(Sender: TObject);
    procedure btnListarTudoFornecedoresClick(Sender: TObject);
    procedure btnListarTudoItensClick(Sender: TObject);
    procedure btnListarTudoVendedoresClick(Sender: TObject);
    procedure btnListarTudoClientesClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}


procedure TFrmPrincipal.btnAdicionarClick(Sender: TObject);
begin
  with DM.qryPedidos do
  begin
    Close;
    SQL.Text := 'insert into pedidos values('+QuotedStr(dbedtCPFClientePedidos.Text)+
                ', '+QuotedStr(dbedtNomeClientePedidos.Text)+//', '+dtpDataPedidoPedidos.DateTime+
                ', '+QuotedStr(dblcbMeioDePagPedidos.Text)+')';
    Open;
  end;
end;

procedure TFrmPrincipal.btnAtualizarClick(Sender: TObject);
begin
  DM.qrySomaItens.Close;
  DM.qrySomaItens.SQL.Text := 'select fn_t() as somaTotal';
  DM.qrySomaItens.Open;
end;

procedure TFrmPrincipal.btnConsultarClientesClick(Sender: TObject);
begin
  with DM.qryClientes do
  begin
    if(cbCampoClientes.Text = 'CPF') then
    begin
      Close;
      SQL.Text := 'select * from clientes ' +
                  'where cli_cpf = ' + QuotedStr(edtConsultaClientes.Text);
      Open;
    end;

    if(cbCampoClientes.Text = 'Nome') then
    begin
      Close;
      SQL.Text := 'select * from clientes ' +
                  'where cli_nome = ' + QuotedStr(edtConsultaClientes.Text);
      Open;
    end;

    if(cbCampoClientes.Text = 'Endereço') then
    begin
      Close;
      SQL.Text := 'select * from clientes ' +
                  'where cli_endereco = ' + QuotedStr(edtConsultaClientes.Text);
      Open;
    end;
  end;
end;

procedure TFrmPrincipal.btnConsultarFornecedoresClick(Sender: TObject);
begin
  with DM.qryFornecedores do
  begin
    if(cbCampoFornecedores.Text = 'CNPJ') then
    begin
      Close;
      SQL.Text := 'select * from fornecedores ' +
                  'where for_cnpj = ' + QuotedStr(edtConsultaFornecedores.Text);
      Open;
    end;

    if(cbCampoFornecedores.Text = 'Nome') then
    begin
      Close;
      SQL.Text := 'select * from fornecedores ' +
                  'where for_nome = ' + QuotedStr(edtConsultaFornecedores.Text);
      Open;
    end;

    if(cbCampoFornecedores.Text = 'Email') then
    begin
      Close;
      SQL.Text := 'select * from fornecedores ' +
                  'where for_email = ' + QuotedStr(edtConsultaFornecedores.Text);
      Open;
    end;

    {if(cbCampoFornecedores.Text = 'Telefone') then
    begin
      Close;
      SQL.Text := 'select * from fornecedores' +
                  'where for_cnpj = ' + QuotedStr(edtConsultaFornecedores);
    end;}
  end;
end;

procedure TFrmPrincipal.btnConsultarItensClick(Sender: TObject);
begin
  with DM.qryItens do
  begin
    if(cbCampoItens.Text = 'Marca') then
    begin
      Close;
      SQL.Text := 'select * from itens ' +
                  'where ite_marca = ' + QuotedStr(edtConsultaItens.Text);
      Open;
    end;

    if(cbCampoItens.Text = 'Modelo') then
    begin
      Close;
      SQL.Text := 'select * from itens ' +
                  'where ite_modelo = ' + QuotedStr(edtConsultaItens.Text);
      Open;
    end;

   if(cbCampoItens.Text = 'Tamanho') then
    begin
      Close;
      SQL.Text := 'select * from itens ' +
                  'where ite_tamanho = ' + QuotedStr(edtConsultaItens.Text);
      Open;
    end;

    if(cbCampoItens.Text = 'Cor') then
    begin
      Close;
      SQL.Text := 'select * from itens ' +
                  'where ite_cor = ' + QuotedStr(edtConsultaItens.Text);
      Open;
    end;

    if(cbCampoItens.Text = 'Quantidade') then
    begin
      Close;
      SQL.Text := 'select * from itens ' +
                  'where ite_qtd = ' + edtConsultaItens.Text;
      Open;
    end;

    if(cbCampoItens.Text = 'Qtd. Mínima') then
    begin
      Close;
      SQL.Text := 'select * from itens ' +
                  'where ite_qtdminima = ' + edtConsultaItens.Text;
      Open;
    end;
  end;
end;

procedure TFrmPrincipal.btnConsultarPedidosClick(Sender: TObject);
begin

{CPF Cliente
Nome Cliente
Data Pedido
Meio de pagamento
Valor do pedido


  with DM.qryPedidos do
  begin
    if(cbCampoItens.Text = 'CPF Cliente') then
    begin
      Close;
      SQL.Text := 'select * from itens ' +
                  'where ite_marca = ' + QuotedStr(edtConsultaItens.Text);
      Open;
    end;
  end;}
end;

procedure TFrmPrincipal.btnConsultarVendedoresClick(Sender: TObject);
begin
  with DM.qryVendedores do
  begin
    if(cbCampoVendedores.Text = 'CPF') then
    begin
      Close;
      SQL.Text := 'select * from vendedores ' +
                  'where ven_cpf = ' + QuotedStr(edtConsultaVendedores.Text);
      Open;
    end;

    if(cbCampoVendedores.Text = 'Nome') then
    begin
      Close;
      SQL.Text := 'select * from vendedores ' +
                  'where ven_nome = ' + QuotedStr(edtConsultaVendedores.Text);
      Open;
    end;

    if(cbCampoVendedores.Text = 'Data de Nascimento') then
    begin
      Close;
      SQL.Text := 'select * from vendedores ' +
                  'where ven_datanascimento = ' + QuotedStr(edtConsultaVendedores.Text);
      Open;
    end;
  end;
end;

procedure TFrmPrincipal.btnItensClick(Sender: TObject);
begin
  DM.qryPedidos.FieldByName('ped_meiodepagamento').AsString := cbMeioDePag.Text;
  pnlClient.Visible := true;
  DM.qryPedidos.Post;
  DM.qryPedidos.ApplyUpdates(-1);
  DM.qryPedidos.Refresh;
end;

procedure TFrmPrincipal.btnListarTudoClientesClick(Sender: TObject);
begin
  DM.qryClientes.Close;
  DM.qryClientes.SQL.Text := 'select * from clientes order by cli_id';
  DM.qryClientes.Open;
end;

procedure TFrmPrincipal.btnListarTudoFornecedoresClick(Sender: TObject);
begin
  DM.qryFornecedores.Close;
  DM.qryFornecedores.SQL.Text := 'select * from fornecedores order by for_id';
  DM.qryFornecedores.Open;
end;

procedure TFrmPrincipal.btnListarTudoItensClick(Sender: TObject);
begin
  DM.qryItens.Close;
  DM.qryItens.SQL.Text := 'select * from itens order by ite_id';
  DM.qryItens.Open;
end;


procedure TFrmPrincipal.btnListarTudoVendedoresClick(Sender: TObject);
begin
  DM.qryVendedores.Close;
  DM.qryVendedores.SQL.Text := 'select * from vendedores order by ven_id';
  DM.qryVendedores.Open;
end;

procedure TFrmPrincipal.Button1Click(Sender: TObject);
begin
  DM.qryIteCaro.Close;
  DM.qryIteCaro.SQL.Text := 'select * from iteCaro order by ite_id';
  DM.qryIteCaro.Open;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  PnlClient.Visible := false;

  with DM.qryPedidos_Itens do
  begin
    Close;

    ParamByName('ped_id');
    Open;
  end;
end;

procedure TFrmPrincipal.PageControl1Enter(Sender: TObject);
begin
  {with DM.qryPedidos do
  begin
    Close;
    ParamByName('ped_id');
    Open;
  end;}
end;

end.
