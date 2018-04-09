unit UFrmFamProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmCadpadrao, Data.DB, Data.FMTBcd,
  Data.SqlExpr, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinGlassOceans, dxSkinOffice2013White,
  dxSkinVisualStudio2013Light, cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit,
  dxSkinWhiteprint, Vcl.Mask, dxSkinLiquidSky, dxSkinOffice2007Black,
  dxSkinOffice2013LightGray, frxClass, frxDBSet, Vcl.DBCtrls, Vcl.ToolWin;

type
  TFormFamProduto = class(TFormCadPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    FrFamPro: TfrxReport;
    frxDBDatasetFamPro: TfrxDBDataset;
    DBEdit1: TDBEdit;
    procedure TabConsultaShow(Sender: TObject);
    procedure TabCadastroShow(Sender: TObject);
    procedure BtConsultarClick(Sender: TObject);
    procedure EdconsultaKeyPress(Sender: TObject; var Key: Char);
    procedure cbConsultaSelect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFamProduto: TFormFamProduto;

implementation

{$R *.dfm}

uses UDmCadastro;

procedure TFormFamProduto.BtConsultarClick(Sender: TObject);
begin
  inherited;
 if (cbConsulta.ItemIndex = 0) and (Edconsulta.Text <> '') then {consulta por Numero CEP %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%}
 begin
   DMcadastro.cdsFamProduto.Close;
   DMcadastro.SQLFamProduto.CommandText := '';
   DMcadastro.SQLFamProduto.CommandText := 'select * from DB_FAM_PRODUTO where ID =:PConsulta';
   DMcadastro.SQLFamProduto.ParamByName('pconsulta').AsString := EdConsulta.Text;
   DMcadastro.cdsFamProduto.Open;
 end;

 if (cbConsulta.ItemIndex = 1) and (Edconsulta.Text <> '') then {consulta por Numero CEP %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%}
 begin
   DMcadastro.cdsFamProduto.Close;
   DMcadastro.SQLFamProduto.CommandText := '';
   DMcadastro.SQLFamProduto.CommandText := 'select * from DB_FAM_PRODUTO where db_fam_produto.nm_fam_pdt containing :PConsulta';
   DMcadastro.SQLFamProduto.ParamByName('pconsulta').AsString := EdConsulta.Text;
   DMcadastro.cdsFamProduto.Open;
 end;

end;

procedure TFormFamProduto.cbConsultaSelect(Sender: TObject);
begin
  inherited;

  Edconsulta.Clear;
end;

procedure TFormFamProduto.EdconsultaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if cbConsulta.ItemIndex = 0 then
 begin
 if not(key in ['0'..'9',#8,#13]) then
 key := #0;
 end;
end;

procedure TFormFamProduto.TabCadastroShow(Sender: TObject);
begin
  inherited;
//Height := 219;
//Width  := 640;
//FormFamProduto.Top := (Screen.DesktopHeight - FormFamProduto.Height) DIV 2;
//FormFamProduto.Left := (Screen.DesktopWidth - FormFamProduto.Width) DIV 2;
 if DSpadrao.DataSet.State in [dsInsert]   then
   DSpadrao.DataSet.FieldByName('DT_CAD').AsDateTime := date

end;

procedure TFormFamProduto.TabConsultaShow(Sender: TObject);
begin
  inherited;
//Height := 631;
//Width  := 896;
//FormFamProduto.Top := (Screen.DesktopHeight - FormFamProduto.Height) DIV 2;
//FormFamProduto.Left := (Screen.DesktopWidth - FormFamProduto.Width) DIV 2;
end;

end.
