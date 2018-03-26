unit UFrmHistCons;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFormHistCons = class(TForm)
    DBGridHistorico: TDBGrid;
    DSHistorico: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormHistCons: TFormHistCons;

implementation

{$R *.dfm}

uses UDmCadastro, uFrmClientes;

procedure TFormHistCons.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DSHistorico.DataSet.Close;
end;

procedure TFormHistCons.FormCreate(Sender: TObject);
begin
 DeleteMenu(GetSystemMenu(Handle,False),SC_MOVE,MF_BYCOMMAND);DeleteMenu(GetSystemMenu(Handle,False),SC_MAXIMIZE,MF_BYCOMMAND);
end;

procedure TFormHistCons.FormShow(Sender: TObject);
begin
DMcadastro.CDS_Historico_ALT.Close;
DMcadastro.SQL_Historico_ALT.ParamByName('pCliente').AsInteger :=  FormClientes.DSpadrao.DataSet.FieldByName('id').AsInteger;
DMcadastro.CDS_Historico_ALT.Open;

FormHistCons.Caption := 'Histórico de alteração do tipo de consumidor do Cliente ' + FormClientes.DSpadrao.DataSet.FieldByName('NM_CLI').AsString;

end;

end.
