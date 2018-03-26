unit UFrmCest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmCadpadrao, Data.DB, Data.FMTBcd,
  Data.SqlExpr, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.DBCtrls, frxExportXLS, frxClass, frxExportPDF, frxDBSet,
  Vcl.Menus, frxDMPExport;

type
  TFormCest = class(TFormCadPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit_CD_CEST: TDBEdit;
    DBMemo_DS_CEST: TDBMemo;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    DBEdit_CD_NCM: TDBEdit;
    Label3: TLabel;
    FR_Cest_Laser: TfrxReport;
    frxDBDataCest: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    PopupMenu1: TPopupMenu;
    ImpressoraLaser1: TMenuItem;
    ImpressoraMatricial1: TMenuItem;
    ExportarPDF1: TMenuItem;
    ExportarExcel1: TMenuItem;
    FR_CEST_Matricial: TfrxReport;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    Label4: TLabel;
    DBMemo_Seguimento: TDBMemo;
    procedure DBEdit_CD_CESTKeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo_DS_CESTKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit_CD_NCMKeyPress(Sender: TObject; var Key: Char);
    procedure EdconsultaKeyPress(Sender: TObject; var Key: Char);
    procedure BtConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure ImpressoraLaser1Click(Sender: TObject);
    procedure FR_Cest_LaserGetValue(const VarName: string; var Value: Variant);
    procedure FR_CEST_MatricialGetValue(const VarName: string;
      var Value: Variant);
    procedure ImpressoraMatricial1Click(Sender: TObject);
    procedure ExportarPDF1Click(Sender: TObject);
    procedure ExportarExcel1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCest: TFormCest;

implementation

{$R *.dfm}

uses UDmCadastro, UFrmPrincipal, UFrmNBM;

procedure TFormCest.BtConsultarClick(Sender: TObject);
begin
  inherited;
if (cbConsulta.ItemIndex = 0) and (Edconsulta.Text <> '') then {consulta por Código Cest %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%}
 begin
   DMcadastro.CDSCest.Close;
   DMcadastro.SQLCest.CommandText := '';
   DMcadastro.SQLCest.CommandText := 'select * from db_cest where db_cest.cest =:pConsulta';
   DMcadastro.SQLCest.ParamByName('pconsulta').AsString := EdConsulta.Text;
   DMcadastro.CDSCest.Open;
 end;

   if (cbConsulta.ItemIndex = 1) and (Edconsulta.Text <> '') then {Descricao Cest %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%}
 begin
   DMcadastro.CDSCest.Close;
   DMcadastro.SQLCest.CommandText := '';
   DMcadastro.SQLCest.CommandText := 'select * from DB_CEST where DB_CEST.Descricao containing  :pConsulta  ';
   DMcadastro.SQLCest.ParamByName('pconsulta').AsString := EdConsulta.Text;
   DMcadastro.CDSCest.Open;
 end;

   if (cbConsulta.ItemIndex = 2) and (Edconsulta.Text <> '') then {Descricao Cest %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%}
 begin
   DMcadastro.CDSCest.Close;
   DMcadastro.SQLCest.CommandText := '';
   DMcadastro.SQLCest.CommandText := 'select * from DB_CEST where DB_CEST.seguimento containing  :pConsulta  ';
   DMcadastro.SQLCest.ParamByName('pconsulta').AsString := EdConsulta.Text;
   DMcadastro.CDSCest.Open;
 end;

   if (cbConsulta.ItemIndex = 3) and (Edconsulta.Text <> '') then {Descricao Cest %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%}
 begin
   DMcadastro.CDSCest.Close;
   DMcadastro.SQLCest.CommandText := '';
   DMcadastro.SQLCest.CommandText := 'select * from DB_CEST where DB_CEST.nbm containing  :pConsulta  ';
   DMcadastro.SQLCest.ParamByName('pconsulta').AsString := EdConsulta.Text;
   DMcadastro.CDSCest.Open;
 end;



end;

procedure TFormCest.btnImprimirClick(Sender: TObject);
var vPonto : TPoint;
begin
  inherited;

   vPonto := btnImprimir.ClientToScreen(Point(0, btnImprimir.Height));
   PopupMenu1.Popup(vPonto.X, vPonto.Y);
end;

procedure TFormCest.DBEdit_CD_CESTKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not(Key in ['0' .. '9', #8, #13]) then
    Key := #0;
end;

procedure TFormCest.DBEdit_CD_NCMKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not(Key in ['0' .. '9', #8, #13]) then
    Key := #0;
end;

procedure TFormCest.DBGrid1DblClick(Sender: TObject);
begin
if FormNBM <>  nil  then
 begin
  if DSpadrao.DataSet.FieldByName('NBM').AsString = DMcadastro.CDSNbmCD_NBM.AsString then
   begin
    DMcadastro.CDSNbmID_CEST.AsInteger  := DSpadrao.DataSet.FieldByName('id').AsInteger;
    DMcadastro.CDSNbmCEST.AsString      := DSpadrao.DataSet.FieldByName('cest').AsString;
    DMcadastro.CDSNbmDESCRICAO.Value    := DSpadrao.DataSet.FieldByName('descricao').value;
    close;
   end else
    begin
      ShowMessage('NBM incorreto !!!');
      abort;
    end;


 end else
   inherited;

end;

procedure TFormCest.DBMemo_DS_CESTKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 Key := AnsiUpperCase( Key )[1];
end;

procedure TFormCest.EdconsultaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if (cbConsulta.ItemIndex = 0 ) or(cbConsulta.ItemIndex = 3 ) then
  begin
    if not(Key in ['0' .. '9', #8, #13]) then
      Key := #0;
  end;
end;

procedure TFormCest.ExportarExcel1Click(Sender: TObject);
var caminhoxls : string;
begin
  inherited;
//  dmCadastro.CDSCest.DisableControls;
//  CAMINHOxls := ExtractFileDir(GetCurrentDir)+'\relatorios\excel';
//  FR_Cest_Laser.PrepareReport;
//  frxXLSExport1.DefaultPath  := CAMINHOxls;
//  frxXLSExport1.FileName     := 'rCEST_'+FormatDateTime('ddmmyyyy',Date)+ FormatDateTime('hhmmss',now);
//  FR_Cest_Laser.Export(frxXLSExport1);
//  dmCadastro.CDSCest.EnableControls;
end;

procedure TFormCest.ExportarPDF1Click(Sender: TObject);
var caminhoPDF : string;
begin
  inherited;
//  dmCadastro.CDSCest.DisableControls;
//  CaminhoPDF := ExtractFileDir(GetCurrentDir)+'\Relatorios\pdf';
//  FR_Cest_Laser.PrepareReport;
//  frxPDFExport1.DefaultPath := CaminhoPdf;
//  frxPDFExport1.FileName := 'rCEST_'+FormatDateTime('ddmmyyyy',Date)+ FormatDateTime('hhmmss',now)+'.pdf';
//  FR_Cest_Laser.Export(frxPDFExport1);
//  dmCadastro.CDSCest.EnableControls;
end;

procedure TFormCest.FormShow(Sender: TObject);
begin
  inherited;
//DMCadastro.CDSCest.Close;
//DMcadastro.SQLCest.CommandText := '';
//DMcadastro.SQLCest.CommandText := 'select first 50 * from DB_CEST';
//DMCadastro.CDSCest.Open;
end;

procedure TFormCest.FR_Cest_LaserGetValue(const VarName: string;
  var Value: Variant);
begin
  inherited;
if VARNAME = 'rUsuario' then value := 'Usuário: '+user+'('+idUsuario+')';
end;

procedure TFormCest.FR_CEST_MatricialGetValue(const VarName: string;
  var Value: Variant);
begin
  inherited;
if VARNAME = 'musuario' then value := 'Usuário: '+user+'('+idUsuario+')';
end;

procedure TFormCest.ImpressoraLaser1Click(Sender: TObject);
begin
  inherited;
 FR_Cest_Laser.ShowReport();
end;

procedure TFormCest.ImpressoraMatricial1Click(Sender: TObject);
begin
  inherited;
 FR_Cest_Matricial.ShowReport();
end;

end.
