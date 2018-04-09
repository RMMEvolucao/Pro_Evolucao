unit UFrmGruProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmCadpadrao, Data.DB, Data.FMTBcd,
  Vcl.DBCtrls, Vcl.StdCtrls, Data.SqlExpr, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, Vcl.Mask, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, frxClass, frxDBSet, cxGraphics, Vcl.ToolWin;

type
  TFormGruProduto = class(TFormCadPadrao)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    DBEditCodGrupo: TDBEdit;
    Label2: TLabel;
    DBEditGrupoProduto: TDBEdit;
    Label3: TLabel;
    DBcbFamPro: TDBLookupComboBox;
    DsFamPro: TDataSource;
    FrGrupoPro: TfrxReport;
    frxDBDatasetGruPro: TfrxDBDataset;
    procedure TabCadastroShow(Sender: TObject);
    procedure TabConsultaShow(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdconsultaKeyPress(Sender: TObject; var Key: Char);
    procedure BtConsultarClick(Sender: TObject);
    procedure AcGravarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGruProduto: TFormGruProduto;

implementation

{$R *.dfm}

uses UDmCadastro;

procedure TFormGruProduto.AcGravarExecute(Sender: TObject);
begin
  inherited;
//DSpadrao.DataSet.Close;
DSpadrao.DataSet.Refresh;
end;

procedure TFormGruProduto.BtConsultarClick(Sender: TObject);
var teste: string;
begin
  inherited;
  if (cbConsulta.ItemIndex = 0) and (Edconsulta.Text <> '') then {consulta por Numero CEP %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%}
 begin
   DMcadastro.cdsgruProduto.Close;
   DMcadastro.SQLGruProduto.CommandText := '';
   DMcadastro.SQLGruProduto.CommandText := 'select g.*,f.nm_fam_pdt from db_gru_produto G '
                                          +'inner join db_fam_produto f on f.id = g.id_fam_pdt '
                                          +'where g.id =:pConsulta';
   DMcadastro.SQLGruProduto.ParamByName('pconsulta').AsString := EdConsulta.Text;
   DMcadastro.cdsgruProduto.Open;
 end;

   if (cbConsulta.ItemIndex = 1) and (Edconsulta.Text <> '') then {consulta por Numero CEP %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%}
 begin
   DMcadastro.cdsgruProduto.Close;
   DMcadastro.SQLGruProduto.CommandText := '';
   DMcadastro.SQLGruProduto.CommandText := 'select g.*,f.nm_fam_pdt from db_gru_produto G '
                                          +'inner join db_fam_produto f on f.id = g.id_fam_pdt '
                                          +'where g.nm_gru_pdt containing :pConsulta';
   DMcadastro.SQLGruProduto.ParamByName('pconsulta').AsString := EdConsulta.Text;
   DMcadastro.cdsgruProduto.Open;
 end;

   if (cbConsulta.ItemIndex = 2) and (Edconsulta.Text <> '') then {consulta por Numero CEP %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%}
 begin
   DMcadastro.SQLGruProduto.Close;
   DMcadastro.SQLGruProduto.CommandText := '';
   DMcadastro.SQLGruProduto.CommandText :='select g.*,f.nm_fam_pdt from db_gru_produto G inner join '
                                          +'db_fam_produto f on f.id = g.id_fam_pdt '
                                          +'where f.nm_fam_pdt containing :pConsulta';
   teste := DMcadastro.SQLGruProduto.CommandText;

   DMcadastro.SQLGruProduto.ParamByName('pconsulta').AsString := EdConsulta.Text;
   DMcadastro.cdsgruProduto.Open;
 end;




end;

procedure TFormGruProduto.EdconsultaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if cbConsulta.ItemIndex = 0 then
 begin
 if not(key in ['0'..'9',#8,#13]) then
 key := #0;
 end;
end;

procedure TFormGruProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
DsFamPro.DataSet.close;
end;

procedure TFormGruProduto.FormShow(Sender: TObject);
begin
  inherited;
DsFamPro.DataSet.Open;
end;

procedure TFormGruProduto.TabCadastroShow(Sender: TObject);
begin
  inherited;
Height := 277;
Width  := 669;
FormGruProduto.Top := (Screen.DesktopHeight - FormGruProduto.Height) DIV 2;
FormGruProduto.Left := (Screen.DesktopWidth - FormGruProduto.Width) DIV 2;
 if DSpadrao.DataSet.State in [dsInsert]   then
   DSpadrao.DataSet.FieldByName('DT_CAD').AsDateTime := date
end;

procedure TFormGruProduto.TabConsultaShow(Sender: TObject);
begin
  inherited;
Height := 800;
Width  := 1024;
FormGruProduto.Top := (Screen.DesktopHeight - FormGruProduto.Height) DIV 2;
FormGruProduto.Left := (Screen.DesktopWidth - FormGruProduto.Width) DIV 2;
end;

end.
