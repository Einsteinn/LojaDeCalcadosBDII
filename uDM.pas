unit uDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDM = class(TDataModule)
    FDConnection1: TFDConnection;
    qryClientes: TFDQuery;
    qryVendedores: TFDQuery;
    qryPedidos: TFDQuery;
    qryPedidos_Itens: TFDQuery;
    qryFornecedores: TFDQuery;
    qryItens: TFDQuery;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    qryFor_Telefones: TFDQuery;
    dsPedidos: TDataSource;
    qryRecebimento_Pedido: TFDQuery;
    qrySomaPedidos: TFDQuery;
    qryPedidos_Itenspedite_id: TIntegerField;
    qryPedidos_Itenspedite_qtd: TIntegerField;
    qryPedidos_Itensped_id: TIntegerField;
    qryPedidos_Itensite_id: TIntegerField;
    qryFuncaoBackupClientes: TFDQuery;
    qryTriggerExclu_cli: TFDQuery;
    qryIteCaro: TFDQuery;
    qrySomaItens: TFDQuery;
    procedure qryItensAfterPost(DataSet: TDataSet);
    procedure qryPedidos_ItensBeforePost(DataSet: TDataSet);
    procedure qryPedidosBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.qryItensAfterPost(DataSet: TDataSet);
begin
  //qryItens.FieldByName('ite_id') :=
end;

procedure TDM.qryPedidosBeforePost(DataSet: TDataSet);
begin

  qryPedidos.FieldByName('ped_valor').AsFloat := 0;
  qryPedidos.FieldByName('ped_data').AsDateTime := now;
end;

procedure TDM.qryPedidos_ItensBeforePost(DataSet: TDataSet);
begin
  {with qryPedidos_Itens do
  begin
    SQL.Clear;
    SQL.Add('Select currval("recped_id") as Cod from recebimento_pedido');
    Open;
  end;}
  qryPedidos_Itens.FieldByName('pedite_id').AsInteger := 0;
  qryPedidos_Itens.FieldByName('ped_id').AsInteger := qryPedidos.FieldByName('ped_id').AsInteger;
end;

end.
