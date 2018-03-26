unit UFrmMetaVen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmCadpadrao, Data.DB, Data.FMTBcd,
  Data.SqlExpr, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons,dbclient, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.DBCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Vcl.Menus, dxSkinsCore, dxSkinGlassOceans, dxSkinOffice2013White,
  dxSkinWhiteprint, cxButtons, dxSkinLiquidSky, dxSkinOffice2007Black,
  dxSkinOffice2013LightGray, cxClasses, dxSkinsForm,dxSkinVisualStudio2013Light;

type
  TFormMetaVenda = class(TFormCadPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit_ID: TDBEdit;
    DBEdit_NM_GRU_MET: TDBEdit;
    Label3: TLabel;
    DBEdit_DT_CAD: TDBEdit;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    DSGruMetas: TDataSource;
    DSGruProduto: TDataSource;
    GbGrupoProduto: TGroupBox;
    Label4: TLabel;
    DbcomboMetas: TDBLookupComboBox;
    Panel3: TPanel;
    Btn_Novo: TcxButton;
    Btn_excluir: TcxButton;
    Btn_Cancelar: TcxButton;
    Btn_Gravar: TcxButton;
    procedure AcIncluirExecute(Sender: TObject);
    procedure AcGravarExecute(Sender: TObject);
    procedure Btn_NovoClick(Sender: TObject);
    procedure Btn_GravarClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Btn_excluirClick(Sender: TObject);
    procedure AcEditarExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure EdconsultaKeyPress(Sender: TObject; var Key: Char);
    procedure cbConsultaSelect(Sender: TObject);
    procedure BtConsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMetaVenda: TFormMetaVenda;

implementation

{$R *.dfm}

uses UDmCadastro, UFrmVendedor;

procedure TFormMetaVenda.AcEditarExecute(Sender: TObject);
begin
  inherited;
  DSGruMetas.DataSet.Close;
  DMcadastro.sqlGruMeta.ParamByName('PGrupoVenda').AsInteger := DSpadrao.DataSet.FieldByName('id').AsInteger;
  DSGruMetas.DataSet.Open;
end;

procedure TFormMetaVenda.AcGravarExecute(Sender: TObject);
begin
  if (DSGruMetas.DataSet.RecordCount > 0) and
     (DSGruMetas.DataSet.State in [dsBrowse]) then
  begin
    Verifica_Campos_Em_Branco;
    inherited;
    tclientdataset(DSGruMetas.DataSet).ApplyUpdates(0);
  end;
end;

procedure TFormMetaVenda.AcIncluirExecute(Sender: TObject);
begin
  inherited;
  DMcadastro.CDSVendaMeta.FieldByName('DT_CAD').AsDateTime := now;
  DSGruMetas.DataSet.Close;
  DMcadastro.sqlGruMeta.ParamByName('PGrupoVenda').AsInteger := DSpadrao.DataSet.FieldByName('id').AsInteger;
  DSGruMetas.DataSet.Open;
end;

procedure TFormMetaVenda.BtConsultarClick(Sender: TObject);
begin
  inherited;

    if cbConsulta.ItemIndex = 0 then
  begin
    DMcadastro.CDSVendaMeta.Close;
    DMcadastro.SQLVendaMeta.CommandText :='';
    DMcadastro.SQLVendaMeta.CommandText := 'select * from DB_VENDA_META '+
                                           'where db_venda_meta.id =:pConsulta';
    DMcadastro.SQLVendaMeta.ParamByName('pconsulta').AsInteger :=  StrToInt(Edconsulta.Text);
    DMcadastro.CDSVendaMeta.Open;
  end;


  if cbConsulta.ItemIndex = 1 then
  begin
    DMcadastro.CDSVendaMeta.Close;
    DMcadastro.SQLVendaMeta.CommandText :='';
    DMcadastro.SQLVendaMeta.CommandText := 'select * from DB_VENDA_META '+
                                           'where db_venda_meta.nm_gru_met containing :pConsulta';
    DMcadastro.SQLVendaMeta.ParamByName('pconsulta').AsString :=  Edconsulta.Text;
    DMcadastro.CDSVendaMeta.Open;
  end;

end;

procedure TFormMetaVenda.Btn_CancelarClick(Sender: TObject);
begin
  inherited;
  if DSGruMetas.DataSet.State in [dsEdit,dsInsert] then
  begin
  DSGruMetas.DataSet.Cancel;
  GbGrupoProduto.Enabled := false;
  end;
end;

procedure TFormMetaVenda.Btn_excluirClick(Sender: TObject);
begin
  inherited;
if Application.MessageBox('Deseja Deletar o Registro ?? ', 'Excluir', mb_iconquestion + mb_yesno) = idYes then
    if (DSGruMetas.DataSet.State in [dsBrowse]) and (not DSGruMetas.DataSet.IsEmpty)then
    begin
       DSGruMetas.DataSet.Delete;
    end;
end;

procedure TFormMetaVenda.Btn_GravarClick(Sender: TObject);
begin
  inherited;
  if DSGruMetas.DataSet.State in [dsEdit,dsInsert] then
   begin
   DSGruMetas.DataSet.FieldByName('ID_VENDA_META').AsInteger :=  DSpadrao.DataSet.FieldByName('id').AsInteger;
   DSGruMetas.DataSet.Post;
   GbGrupoProduto.Enabled := false;
   end;
end;

procedure TFormMetaVenda.Btn_NovoClick(Sender: TObject);
begin
  inherited;
  if DSGruMetas.DataSet.State in [dsBrowse] then
   begin
   DSGruMetas.DataSet.Insert;
   GbGrupoProduto.Enabled :=  true;
   end;

end;

procedure TFormMetaVenda.cbConsultaSelect(Sender: TObject);
begin
  inherited;
Edconsulta.Clear;
end;

procedure TFormMetaVenda.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if FormVendedor <> nil then
  begin
   FormVendedor.DsVendedorMetas.DataSet.FieldByName('ID_GRU_PRO').AsInteger := DSpadrao.DataSet.FieldByName('id').AsInteger;
   FormMetaVenda.Close;
  end;






end;

procedure TFormMetaVenda.EdconsultaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if cbConsulta.ItemIndex = 0 then
 begin
 if not(key in ['0'..'9',#8,#13]) then
 key := #0;
 end;
end;

procedure TFormMetaVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
DSGruMetas.DataSet.close;
DSGruProduto.DataSet.close;
end;

procedure TFormMetaVenda.FormShow(Sender: TObject);
begin
  inherited;
DSGruProduto.DataSet.Open;
end;

end.
